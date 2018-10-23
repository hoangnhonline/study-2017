<?php
namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\ThptBaihoc;
use App\Models\Settings;
use App\Models\Subjects;
use App\Models\MetaData;
use App\Models\Classthpt;


use Helper, File, Session, Auth;
use Mail, DB;

class ThptBaihocController extends Controller
{
    public function index(Request $request)
    {
        $socialImage = null;
        $seo['title'] = $seo['description'] = $seo['keywords'] = 'Danh sách khóa học';

        $coursesList = ThptBaihoc::getList(['single' => 0, 'pagination' => '36']);
        $coursesArr = [];
        if($coursesList->count() > 0){
            foreach($coursesList as $courses){
                if(!$courses->group_id){
                    $courses->group_id = 'group-'.$courses->id;
                }
                $coursesArr[$courses->group_id] = $courses;
            }
        }   
        $type = 1;
        $subjectList = Subjects::getList(['limit' => 100]);
        return view('frontend.thpt.index', compact('coursesList', 'seo', 'socialImage', 'type', 'subjectList', 'coursesArr'));
    }
    public function cate(Request $request)
    {
        $slugClass = $request->slugClass;              
        $classDetail = Classthpt::where('slug', $slugClass)->first();
        $class_id = $classDetail->id;
       
        
      
        $seo['title'] = $seo['description'] = $seo['keywords'] = $classDetail->name;
         

        $coursesList = ThptBaihoc::where('status', 1)->where('class_id', $class_id)->paginate(36);
        $coursesArr = [];
        if($coursesList->count() > 0){
            foreach($coursesList as $courses){
                if(!$courses->group_id){
                    $courses->group_id = 'group-'.$courses->id;
                }
                $coursesArr[$courses->group_id] = $courses;
            }
        }        
        $subjectList = Subjects::getList(['limit' => 100]);
        return view('frontend.thpt.cate', compact('coursesList', 'seo', 'socialImage', 'type', 'subjectList', 'cateDetail', 'classDetail', 'subjectDetail', 'coursesArr', 'slugClass', 'class_id'));
    }
    public function cateChild(Request $request)
    {
        $slugClass = $request->slugClass;              
        $slugSubjects = $request->slugSubjects;         

        $classDetail = Classthpt::where('slug', $slugClass)->first();
        $class_id = $classDetail->id;
        
        $stem_class_id = 0;
        $slugClassStem = null;
        if($class_id < 4){
            $subjectDetail = Subjects::where('class_id', $class_id)->where('slug', $slugSubjects)->first();
            $subject_id = $subjectDetail->id;
        }else{
            $subjectDetail = Classthpt::where('slug', $slugSubjects)->first();
            $stem_class_id = $subjectDetail->id;    
            $slugClassStem = $slugSubjects;                    
        }
        $seo['title'] = $seo['description'] = $seo['keywords'] = $subjectDetail->name;
        $subjectStemDetail = null;
        if($stem_class_id == 0){
            $coursesList = ThptBaihoc::where('status', 1)->where('class_id', $class_id)->where('subject_id', $subject_id)->paginate(36);
        }else{
            if(isset($request->m)){
                $slugSubjects = $request->m;
                $subjectStemDetail = Subjects::where('class_id', $subjectDetail->id)->where('slug', $slugSubjects)->first();
            }
            if($subjectStemDetail){
                $coursesList = ThptBaihoc::where('status', 1)->where('class_id', $class_id)->where('stem_class_id', $stem_class_id)->where('subject_id', $subjectStemDetail->id)->paginate(36);
                $subject_id = $subjectStemDetail->id;
            }else{
                $coursesList = ThptBaihoc::where('status', 1)->where('class_id', $class_id)->where('stem_class_id', $stem_class_id)->paginate(36);    
            }
            
        }
        $coursesArr = [];
        if($coursesList->count() > 0){
            foreach($coursesList as $courses){
                if(!$courses->group_id){
                    $courses->group_id = 'group-'.$courses->id;
                }
                $coursesArr[$courses->group_id] = $courses;
            }
        }     
        if($class_id == 4){   
            $subjectList = Subjects::where('class_id', $subjectDetail->id)->get();
        }else{
            $subjectList = Subjects::where('class_id', $class_id)->get();
        }
        return view('frontend.thpt.child', compact('coursesList', 'seo', 'socialImage', 'type', 'subjectList', 'cateDetail', 'classDetail', 'subjectDetail', 'coursesArr', 'slugClass', 'subject_id', 'stem_class_id', 'slugClassStem', 'subjectStemDetail', 'class_id'));
    }
    public function detail(Request $request)
    { 
        $socialImage = null;
        $id = $request->id;

        $detail = ThptBaihoc::find($id);
        
        if( $detail ){           
            $settingArr = Settings::whereRaw('1')->lists('value', 'name');
            $otherList = ThptBaihoc::getListOther(['id' => $id, 'limit' => 5]);
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
            $firstLession = ThptBaihoc::getFirstLession($id);
           
            return view('frontend.courses.detail', compact('detail', 'otherList', 'seo', 'socialImage', 'firstLession'));

        }else{
            return view('erros.404');
        }
    }
    public function lession(Request $request)
    { 
       
        
        $socialImage = null;
        $id = $request->id;

        $detail = ThptBaihocLession::find($id);        
        $coursesDetail = ThptBaihoc::find($detail->courses_id);

        $user_id = Session::get('userId');
        if( $coursesDetail->is_share == 1 || $coursesDetail->score > 0){
            $coursesArr = [];
            if($user_id > 0){
                $coursesArr = DB::table('user_courses')->where('user_id', $user_id)->pluck('courses_id');
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
            $partList = ThptBaihocPart::getList(['courses_id' => $detail->courses_id]);
            if($partList){
                foreach($partList as $part){
                    $lessionArr[$part->id] = ThptBaihocLession::getList(['part_id' => $part->id]);
                }
            }
            return view('frontend.courses.lession', compact('detail', 'seo', 'socialImage', 'partList', 'lessionArr'));
            

        }else{
            return view('erros.404');
        }
    }
}

