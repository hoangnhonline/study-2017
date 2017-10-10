<?php
namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Courses;
use App\Models\Settings;
use App\Models\Subjects;

use Helper, File, Session, Auth;
use Mail;

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

     public function detail(Request $request)
    { 
        $socialImage = null;
        $id = $request->id;

        $detail = Courses::find($id);
        
        if( $detail ){           

            $title = trim($detail->meta_title) ? $detail->meta_title : $detail->title;
            $settingArr = Settings::whereRaw('1')->lists('value', 'name');
            $otherList = Courses::getListOther(['id' => $id, 'limit' => 5]);
            $seo['title'] = $detail->meta_title ? $detail->meta_title : $detail->title;
            $seo['description'] = $detail->meta_description ? $detail->meta_description : $detail->title;
            $seo['keywords'] = $detail->meta_keywords ? $detail->meta_keywords : $detail->title;            

            $socialImage = $detail->image_url;
            Helper::counter($id, 2);
      
            return view('frontend.courses.detail', compact('detail', 'otherList', 'seo', 'socialImage'));

        }else{
            return view('erros.404');
        }
    }
}

