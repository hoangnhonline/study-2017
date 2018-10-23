<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class UserCourses extends Model  {

  /**
   * The database table used by the model.
   *
   * @var string
   */
  protected $table = 'user_courses';

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
    protected $fillable = [   
      'user_id',
      'courses_id',
      'score', 
      'type'   
    ];

    public function courses()
    {
        return $this->hasOne('App\Models\Courses', 'courses_id');
    }
}
