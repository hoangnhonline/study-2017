<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class ThptBaihoc extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'thpt_baihoc';

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
                            'class_id',
                            'stem_class_id',
                            'video_id',
                            'image_url',
                            'subject_id',
                            'content',                              
                            'status', 
                            'display_order',                             
                            'created_user', 
                            'updated_user'];
    
    public static function getList($params = []){
        $query = self::where('status', 1);        
       if( isset($params['part_id']) && $params['part_id'] ){
            $query->where('part_id', $params['part_id']);
        }
        return $query->orderBy('display_order')->get();
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
        return $this->hasOne('App\Models\Courses', 'id', 'courses_id');
    }
    public function part(){
        return $this->hasOne('App\Models\CoursesPart', 'part_id');
    }
}
