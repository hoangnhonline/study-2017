<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class CoursesPart extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'courses_part';

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
                            'courses_id',                              
                            'status', 
                            'display_order',                             
                            'created_user', 
                            'updated_user'];
    
    public static function getList($params = []){
        $query = self::where('status', 1);        
       if( isset($params['courses_id']) && $params['courses_id'] ){
            $query->where('courses_id', $params['courses_id']);
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
        return $this->hasOne('App\Models\Courses', 'courses_id');
    }
    public function lession(){
        return $this->hasMany('App\Models\CoursesLession', 'part_id');
    }
}
