<?php
namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\ArticlesCate;
use App\Models\Articles;
use App\Models\Settings;
use App\Models\MetaData;
use App\Models\CateChild;

use Helper, File, Session, Auth;
use Mail;

class NewsController extends Controller
{
    public function newsList(Request $request)
    {
        $socialImage = null;
        $articleByCate = [];
        $slug = $request->slug;
        $cateArr = $cateActiveArr = $moviesActiveArr = [];
       
        $cateDetail = ArticlesCate::where('slug' , $slug)->first();

        if($cateDetail){
            $title = trim($cateDetail->meta_title) ? $cateDetail->meta_title : $cateDetail->name;
            $settingArr = Settings::whereRaw('1')->lists('value', 'name');
            $articlesList = Articles::getList(['cate_id' => $cateDetail->id, 'pagination' => $settingArr['articles_per_page']]);            
            $seo['title'] = $cateDetail->meta_title ? $cateDetail->meta_title : $cateDetail->name;
            $seo['description'] = $cateDetail->meta_description ? $cateDetail->meta_description : $cateDetail->title;
            $seo['keywords'] = $cateDetail->meta_keywords ? $cateDetail->meta_keywords : $cateDetail->name;
            if($cateDetail->image_url){
                $socialImage = $cateDetail->image_url; 
            }
            $cateList = ArticlesCate::getList(['limit' => 100, 'except' => $cateDetail->id, 'type' => 1]);
            if($cateList){
                foreach($cateList as $cate){
                    $articleByCate[$cate->id] = Articles::getList(['cate_id' => $cate->id, 'limit' => 5]);
                }
            }
            return view('frontend.news.index', compact('title', 'articlesList', 'cateDetail', 'seo', 'socialImage', 'cateList', 'articleByCate'));
        }else{
            return view('erros.404');
        }
    } 
    public function newsListChild(Request $request)
    {
        $socialImage = null;
        $articleByCate = [];
        $slug = $request->slug;
        $slugChild = $request->slugChild;
        $cateArr = $cateActiveArr = $moviesActiveArr = [];
       
        $cateDetail = ArticlesCate::where('slug' , $slug)->first();
        $childDetail = CateChild::where('slug', $slugChild)->first();
        if($childDetail){
            $title = $childDetail->name;
            $settingArr = Settings::whereRaw('1')->lists('value', 'name');
            $articlesList = Articles::getList(['cate_id' => $cateDetail->id, 'child_id' => $childDetail->id,  'pagination' => $settingArr['articles_per_page']]);            
            $seo['title'] = $seo['description'] = $seo['keywords'] = $childDetail->name;

            if($cateDetail->image_url){
                $socialImage = $cateDetail->image_url; 
            }
            $cateList = ArticlesCate::getList(['limit' => 100, 'except' => $cateDetail->id, 'type' => 1]);
            if($cateList){
                foreach($cateList as $cate){
                    $articleByCate[$cate->id] = Articles::getList(['cate_id' => $cate->id, 'limit' => 5]);
                }
            }
            return view('frontend.news.child', compact('title', 'articlesList', 'cateDetail', 'seo', 'socialImage', 'cateList', 'articleByCate', 'childDetail'));
        }else{
            return view('erros.404');
        }
    }      

     public function newsDetail(Request $request)
    { 
        $socialImage = null;
        $id = $request->id;

        $detail = Articles::find($id);
        $articleByCate = [];
        if( $detail ){           

            $title = trim($detail->meta_title) ? $detail->meta_title : $detail->title;
            
            $settingArr = Settings::whereRaw('1')->lists('value', 'name');
            
            $otherList = Articles::getList( ['cate_id' => $detail->cate_id, 'except' => $id, 'limit' => $settingArr['article_related']] );            

            if( $detail->meta_id > 0){
               $meta = MetaData::find( $detail->meta_id )->toArray();               
               $seo['title'] = $meta['title'] != '' ? $meta['title'] : $detail->title;
               $seo['description'] = $meta['description'] != '' ? $meta['description'] : $detail->title;
               $seo['keywords'] = $meta['keywords'] != '' ? $meta['keywords'] : $detail->title;
            }else{
                $seo['title'] = $seo['description'] = $seo['keywords'] = $detail->title;
            } 

            if($detail->image_url){
                $socialImage = str_replace("images/", "images/thumbs/", $detail->image_url);
            }
          
            $tagSelected = Articles::getListTag($id);
            $cateDetail = ArticlesCate::find($detail->cate_id);
            Helper::counter($id, 2);
            
            $cateList = ArticlesCate::getList(['limit' => 100]);
            if($cateList){
                foreach($cateList as $cate){
                    $articleByCate[$cate->id] = Articles::getList(['cate_id' => $cate->id, 'limit' => 5]);
                }
            }

            return view('frontend.news.news-detail', compact('title',  'otherList', 'detail', 'otherArr', 'seo', 'socialImage', 'tagSelected', 'cateDetail', 'articleByCate', 'cateList'));
            
        }else{
            return view('erros.404');
        }
    }
}

