<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class TeacherSubject extends Model  {

  /**
   * The database table used by the model.
   *
   * @var string
   */
  protected $table = 'teacher_subject';

   /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [   
      'teacher_id',
      'subject_id'      
    ];
}
