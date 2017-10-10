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
    public $timestamps = true;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
                            'quiz_id',
                            'content',
                            'image_url',                       
                            'display_order'                          
                        ];

    public static function getList($params = []){

        $query = self::where('quiz_id', $quiz_id);
         
        return $query->orderBy('display_order')->get();
    }
    
    public function quiz(){
        return $this->hasOne('App\Models\Quiz', 'quiz_id');
    }

}
