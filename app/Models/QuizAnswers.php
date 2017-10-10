<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class QuizAnswers extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'quiz_answers';

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
                            'question_id',
                            'content',
                            'display_order'
                        ];

    public static function getList($params = []){

        $query = self::where('question_id', $question_id);
         
        return $query->orderBy('display_order')->get();
    }
    
    public function questions(){
        return $this->hasOne('App\Models\QuizQuestions', 'question_id');
    }
    
}