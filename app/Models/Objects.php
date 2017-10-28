<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Objects extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'objects';

	 /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = true;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name', 
                            'slug', 
                            'alias',                            
                            'is_hot',
                            'type', 
                            'status', 
                            'display_order', 
                            'description', 
                            'school_name', 
                            'image_url', 
                            'content', 
                            'meta_id', 
                            'created_user', 
                            'updated_user'];
    public static function getList($params = []){
        $query = self::where('status', 1);
        if( isset($params['type']) && $params['type'] ){
            $query->where('type', $params['type']);
        }
        if( isset($params['subject_id']) && $params['subject_id'] ){
            $query->where('subject_id', $params['subject_id']);
        }
        if( isset($params['is_hot']) && $params['is_hot'] ){
            $query->where('is_hot', $params['is_hot']);
        }        
        $query->orderBy('is_hot', 'desc')->orderBy('id', 'desc');
        if(isset($params['limit']) && $params['limit']){
            return $query->limit($params['limit'])->get();
        }
        if(isset($params['pagination']) && $params['pagination']){
            return $query->paginate($params['pagination']);
        }                
    }
    public static function getListOther($params = []){
        $query = self::where('status', 1)->where('id', '<>', $params['id']);        
       if( isset($params['type']) && $params['type'] ){
            $query->where('type', $params['type']);
        }
        if( isset($params['subject_id']) && $params['subject_id'] ){
            $query->where('subject_id', $params['subject_id']);
        }
        if( isset($params['is_hot']) && $params['is_hot'] ){
            $query->where('is_hot', $params['is_hot']);
        }        
        $query->orderBy('is_hot', 'desc')->orderBy('id', 'desc');
        if(isset($params['limit']) && $params['limit']){
            return $query->limit($params['limit'])->get();
        }
        if(isset($params['pagination']) && $params['pagination']){
            return $query->paginate($params['pagination']);
        }                
    }
    public function createdUser()
    {
        return $this->belongsTo('App\Models\Account', 'created_user');
    }
     public function updatedUser()
    {
        return $this->belongsTo('App\Models\Account', 'updated_user');
    }
    public function courses(){
        return $this->hasMany('App\Models\Courses', 'teacher_id');
    }
    public function teacherSubject(){
        return $this->hasMany('App\Models\TeacherSubject', 'teacher_id');
    }
    public function subjects(){
        return $this->hasOne('App\Models\Subjects', 'id', 'subject_id');
    }
}
