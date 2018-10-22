<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class CoursesChild extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'courses_child';	

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
    protected $fillable = ['name', 'slug', 'is_hot', 'status', 'display_order', 'description', 'cate_id', 'created_user', 'updated_user'];

    public function courses()
    {
        return $this->belongsTo('App\Models\Courses', 'child_id');
    }
    public function articles()
    {
        return $this->hasMany('App\Models\Articles', 'child_id');
    }

}
