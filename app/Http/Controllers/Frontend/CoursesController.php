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
            $firstLession = Courses::getFirstLession($id);
            //dd($firstLession);
            return view('frontend.courses.detail', compact('detail', 'otherList', 'seo', 'socialImage', 'firstLession'));

        }else{
            return view('erros.404');
        }
    }
    public function lession(Request $request)
    { 
        $socialImage = null;
        $id = $request->id;

        $detail = CoursesLession::find($id);
        
        if( $detail ){           
            $lessionArr = [];
            $title = trim($detail->meta_title) ? $detail->meta_title : $detail->title;
            $settingArr = Settings::whereRaw('1')->lists('value', 'name');
           
            $seo['title'] = $detail->meta_title ? $detail->meta_title : $detail->title;
            $seo['description'] = $detail->meta_description ? $detail->meta_description : $detail->title;
            $seo['keywords'] = $detail->meta_keywords ? $detail->meta_keywords : $detail->title;            

            $socialImage = $detail->image_url;
            Helper::counter($id, 2);
            $partList = CoursesPart::getList(['courses_id' => $detail->courses_id]);
            if($partList){
                foreach($partList as $part){
                    $lessionArr[$part->id] = CoursesLession::getList(['part_id' => $part->id]);
                }
            }
            return view('frontend.courses.lession', compact('detail', 'seo', 'socialImage', 'partList', 'lessionArr'));
            

        }else{
            return view('erros.404');
        }
    }
}

