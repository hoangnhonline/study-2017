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
use App\Models\GroupBai;

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
            $otherList = ThptBaihoc::where('id', '<>', $id)->where('subject_id', $detail->subject_id)->limit(4)->get();
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
            
            $firstLession = $detail;
            return view('frontend.thpt.detail', compact('detail', 'otherList', 'seo', 'socialImage', 'firstLession'));

        }else{
            return view('errors.404');
        }
    }
    public function detailGroup(Request $request)
    { 
        $socialImage = null;
        $id = $request->id;

        $detail = GroupBai::find($id);
        
         $firstLession = ThptBaihoc::where('group_id', $id)->orderBy('id', 'asc')->limit(1)->first();
       
       
        if( $firstLession ){           
            $settingArr = Settings::whereRaw('1')->lists('value', 'name');
            $otherList = ThptBaihoc::where('id', '<>', $firstLession->id)->where('subject_id', $firstLession->subject_id)->limit(4)->get();
            if( $firstLession->meta_id > 0){
               $firstLession = MetaData::find( $firstLession->meta_id )->toArray();
               $seo['title'] = $meta['title'] != '' ? $meta['title'] : $firstLession->name;
               $seo['description'] = $meta['description'] != '' ? $meta['description'] : $firstLession->name;
               $seo['keywords'] = $meta['keywords'] != '' ? $meta['keywords'] : $firstLession->name;
            }else{
                $seo['title'] = $seo['description'] = $seo['keywords'] = $firstLession->name;
            }           

            $socialImage = $detail->image_url;
            Helper::counter($id, 2);
            
            return view('frontend.thpt.detail-group', compact('detail', 'otherList', 'seo', 'socialImage', 'firstLession'));

        }else{
            return view('errors.404');
        }
    }
    public function lession(Request $request)
    { 
       
        
        $socialImage = null;
        $id = $request->id;
        $detail = ThptBaihoc::find($id);  
         $user_id = Session::get('userId');
         $groupDetail = null;
        if($detail->group_id > 0){
            $groupDetail = GroupBai::find($detail->group_id);           
            if( $groupDetail->is_share == 1 || $groupDetail->score > 0){
                $coursesArr = [];
                if($user_id > 0){
                    $coursesArr = DB::table('user_courses')->where('user_id', $user_id)->where('type', 3)->pluck('courses_id');
                }
                if( !in_array($groupDetail->id, $coursesArr)){
                    return redirect()->route('home');
                }
            } 
        }else{
            if( $detail->is_share == 1 || $detail->score > 0){
                $coursesArr = [];
                if($user_id > 0){
                    $coursesArr = DB::table('user_courses')->where('user_id', $user_id)->where('type', 2)->pluck('courses_id');
                }
                if( !in_array($detail->id, $coursesArr)){
                    return redirect()->route('home');
                }
            }
        }
        if( $detail ){     
        
            $lessionArr = [];
            
            $settingArr = Settings::whereRaw('1')->lists('value', 'name');
           
            $seo['title'] = $seo['description'] = $seo['keywords'] = $detail->name;           

            $socialImage = $detail->image_url;
            Helper::counter($id, 2);
            
            if($groupDetail){
                $seo['title'] = $seo['description'] = $seo['keywords'] = $groupDetail->name;    
                $lessionList = ThptBaihoc::where('group_id', $detail->group_id)->orderBy('id', 'asc')->get();
                return view('frontend.thpt.group-lession', compact('detail', 'seo', 'socialImage', 'partList', 'lessionList', 'groupDetail'));
            }else{
                return view('frontend.thpt.lession', compact('detail', 'seo', 'socialImage', 'partList', 'groupDetail'));    
            }
            
            

        }else{
            return view('erros.404');
        }
    }
}

