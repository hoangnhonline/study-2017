<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class CoursesLession extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'courses_lession';

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
                            'part_id',
                            'content',                              
                            'status', 
                            'display_order',                             
                            'created_user', 
                            'updated_user'];
    
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
    public function part(){
        return $this->hasOne('App\Models\CoursesPart', 'part_id');
    }
}
