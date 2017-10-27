<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class UserQuiz extends Model  {

  /**
   * The database table used by the model.
   *
   * @var string
   */
  protected $table = 'user_quiz';

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
      'quiz_id',
      'score',
      'duration',
      'is_share',
      'image_url'
    ];

    public function user()
    {
        return $this->belongsTo('App\Models\Customer', 'user_id');
    }
}
