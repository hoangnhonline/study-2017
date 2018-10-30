<?php
namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Courses;
use App\Models\Settings;
use App\Models\Subjects;
use App\Models\CoursesLession;
use App\Models\CoursesPart;
use App\Models\MetaData;
use App\Models\CoursesCate;
use App\Models\CoursesChild;


use Helper, File, Session, Auth;
use Mail, DB;

class CoursesController extends Controller
{
    public function index(Request $request)
    {
        $socialImage = null;
        $seo['title'] = $seo['description'] = $seo['keywords'] = 'Danh sách khóa học';

        $coursesList = Courses::getList(['single' => 0, 'pagination' => '36']);
        $type = 1;
        $subjectList = Subjects::getList(['limit' => 100]);
        return view('frontend.courses.index', compact('coursesList', 'seo', 'socialImage', 'type', 'subjectList'));
    }
    public function cate(Request $request)
    {
        $is_thpt = false;
        $subjectSlug = $subjectDetail = $slugOriginal = null;
        $slug  = $slugRequest = $request->slug;       
        $cateDetail = CoursesCate::where('slug', $slug)->first();
        if(!$cateDetail){
            $tmp = explode('-', $slug);            
            $arr = array_slice($tmp, -2, 2, true);
            $slug = $slugOriginal = implode($arr, '-');                  
            $cateDetail = CoursesCate::where('slug', $slug)->first();
            $subjectSlug = str_replace("-".$slug, '', $slugRequest);        
            $subjectDetail = Subjects::where('slug', $subjectSlug)->first();
            if(!$cateDetail){
                return redirect()->route('home');
            }
            $is_thpt = true;
        }else{
            $slugOriginal = $slug;
        }
        if( $cateDetail->meta_id > 0){
           $meta = MetaData::find( $cateDetail->meta_id )->toArray();
           $seo['title'] = $meta['title'] != '' ? $meta['title'] : $cateDetail->name;
           $seo['description'] = $meta['description'] != '' ? $meta['description'] : $cateDetail->name;
           $seo['keywords'] = $meta['keywords'] != '' ? $meta['keywords'] : $cateDetail->name;
        }else{
            $seo['title'] = $seo['description'] = $seo['keywords'] = $cateDetail->name;
        } 

        $coursesList = Courses::getList(['single' => 0, 'cate_id' => $cateDetail->id, 'pagination' => '36']);
        $type = 1;
        $subjectList = Subjects::getList(['limit' => 100]);
        return view('frontend.courses.cate', compact('coursesList', 'seo', 'socialImage', 'type', 'subjectList', 'cateDetail', 'subjectSlug', 'subjectDetail', 'slugOriginal', 'is_thpt'));
    }
    public function cateChild(Request $request)
    {
        $is_thpt = false;
        $subjectSlug = $subjectDetail = $slugOriginal = null;
        $slug  = $slugRequest = $request->slug;       
        $slugChild  = $request->slugChild;       
        $cateDetail = CoursesCate::where('slug', $slug)->first();
        $childDetail = CoursesChild::where('slug', $slugChild)->first();
        if( $childDetail->meta_id > 0){
           $meta = MetaData::find( $childDetail->meta_id )->toArray();
           $seo['title'] = $meta['title'] != '' ? $meta['title'] : $childDetail->name;
           $seo['description'] = $meta['description'] != '' ? $meta['description'] : $childDetail->name;
           $seo['keywords'] = $meta['keywords'] != '' ? $meta['keywords'] : $childDetail->name;
        }else{
            $seo['title'] = $seo['description'] = $seo['keywords'] = $childDetail->name;
        } 

        $coursesList = Courses::getList(['single' => 0, 'child_id' => $childDetail->id, 'pagination' => '36']);
        $type = 1;
        $subjectList = Subjects::getList(['limit' => 100]);
        return view('frontend.courses.child', compact('coursesList', 'seo', 'socialImage', 'type', 'subjectList', 'cateDetail', 'subjectSlug', 'subjectDetail', 'slugOriginal', 'is_thpt', 'childDetail'));
    }
     public function detail(Request $request)
    { 
        $socialImage = null;
        $id = $request->id;

        $detail = Courses::find($id);
        
        if( $detail ){           
            $settingArr = Settings::whereRaw('1')->lists('value', 'name');
            $otherList = Courses::getListOther(['id' => $id, 'limit' => 5]);
            if( $detail->meta_id > 0){
               $meta = MetaData::find( $detail->meta_id )->toArray();
               $seo['title'] = $meta['title'] != '' ? $meta['title'] : $detail->name;
               $seo['description'] = $meta['description'] != '' ? $meta['description'] : $detail->name;
               $seo['keywords'] = $meta['keywords'] != '' ? $meta['keywords'] : $detail->name;
            }else{
                $seo['title'] = $seo['description'] = $seo['keywords'] = $detail->name;
            }           

            $socialImage = $detail->image_url;
            Helper::counter($id, 2);
            $firstLession = Courses::getFirstLession($id);
            
            return view('frontend.courses.detail', compact('detail', 'otherList', 'seo', 'socialImage', 'firstLession'));

        }else{
            return view('errors.404');
        }
    }
    public function lession(Request $request)
    { 
       
        
        $socialImage = null;
        $id = $request->id;

        $detail = CoursesLession::find($id);        
        $coursesDetail = Courses::find($detail->courses_id);

        $user_id = Session::get('userId');
        if( $coursesDetail->is_share == 1 || $coursesDetail->score > 0){
            $coursesArr = [];
            if($user_id > 0){
                $coursesArr = DB::table('user_courses')->where('user_id', $user_id)->where('type', 1)->pluck('courses_id');
            }
            if( !in_array($detail->courses_id, $coursesArr)){
                return redirect()->route('home');
            }
        }
        if( $detail ){     
        
            $lessionArr = [];
            
            $settingArr = Settings::whereRaw('1')->lists('value', 'name');
           
            $seo['title'] = $seo['description'] = $seo['keywords'] = $detail->name;           

            $socialImage = $detail->image_url;
            Helper::counter($id, 2);
            $partList = CoursesPart::getList(['courses_id' => $detail->courses_id]);
            if($partList){
                foreach($partList as $part){
                    $lessionArr[$part->id] = CoursesLession::getList(['part_id' => $part->id]);
                }
            }
            $nextVideo = CoursesLession::where('id', '>', $detail->id)->where('courses_id', $detail->courses_id)->orderBy('id', 'asc')->limit(1)->first();
            $preVideo = CoursesLession::where('id', '<', $detail->id)->where('courses_id', $detail->courses_id)->orderBy('id', 'desc')->limit(1)->first();            
            return view('frontend.courses.lession', compact('detail', 'seo', 'socialImage', 'partList', 'lessionArr', 'nextVideo', 'preVideo'));
            

        }else{
            return view('errors.404');
        }
    }
}

