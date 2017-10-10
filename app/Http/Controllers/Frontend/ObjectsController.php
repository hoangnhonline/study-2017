<?php
namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Objects;
use App\Models\Settings;
use App\Models\Subjects;

use Helper, File, Session, Auth;
use Mail;

class ObjectsController extends Controller
{
    public function teacher(Request $request)
    {
        $socialImage = null;
        $seo['title'] = $seo['description'] = $seo['keywords'] = 'Danh sách giáo viên';

        $objectsList = Objects::getList(['type' => 1, 'pagination' => '36']);
        $type = 1;
        $subjectList = Subjects::getList(['limit' => 100]);
        return view('frontend.objects.index', compact('objectsList', 'seo', 'socialImage', 'type', 'subjectList'));
    }

    public function student(Request $request)
    {
        $socialImage = null;
        $seo['title'] = $seo['description'] = $seo['keywords'] = 'Danh sách học viên';

        $objectsList = Objects::getList(['type' => 2, 'pagination' => '36']);
        $type = 2;
        return view('frontend.objects.index', compact('objectsList', 'seo', 'socialImage', 'type'));
    }      

     public function detail(Request $request)
    { 
        $socialImage = null;
        $id = $request->id;

        $detail = Objects::find($id);
        
        if( $detail ){           

            $title = trim($detail->meta_title) ? $detail->meta_title : $detail->title;
            $settingArr = Settings::whereRaw('1')->lists('value', 'name');
            $otherList = Objects::getListOther(['id' => $id, 'type' => $detail->type, 'limit' => 5]);
            $seo['title'] = $detail->meta_title ? $detail->meta_title : $detail->title;
            $seo['description'] = $detail->meta_description ? $detail->meta_description : $detail->title;
            $seo['keywords'] = $detail->meta_keywords ? $detail->meta_keywords : $detail->title;            

            $socialImage = $detail->image_url;
            Helper::counter($id, 2);
            if( $detail->type == 1 ){
                return view('frontend.objects.detail-teacher', compact('detail', 'otherList', 'seo', 'socialImage'));
            }else{
                return view('frontend.objects.detail-student', compact('detail', 'otherList', 'seo', 'socialImage'));
            }
        }else{
            return view('erros.404');
        }
    }
}

