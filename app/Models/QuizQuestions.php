<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class QuizQuestions extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'quiz_questions';

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
                            'quiz_id',
                            'content',
                            'image_url',                       
                            'display_order',
                            'no_answer',
                            'answer_id'
                        ];

    public static function getList($params = []){

        $query = self::where('quiz_id', $quiz_id);
         
        return $query->orderBy('display_order')->get();
    }
    
    public function quiz(){
        return $this->hasOne('App\Models\Quiz', 'quiz_id');
    }
    public function answers(){
        return $this->hasMany('App\Models\QuizAnswers', 'question_id');
    }
}
