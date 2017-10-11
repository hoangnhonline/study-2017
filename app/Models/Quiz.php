<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Quiz extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'quiz';

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
                            'name', 
                            'slug', 
                            'alias', 
                            'subject_id', 
                            'is_hot',
                            'cate_id',
                            'image_url', 
                            'status', 
                            'display_order', 
                            'description',                                                         
                            'content', 
                            'meta_id', 
                            'created_user', 
                            'updated_user'
                        ];

    public static function getList($params = []){
        $query = self::where('status', 1);                
        if( isset($params['is_hot']) && $params['is_hot'] ){
            $query->where('is_hot', $params['is_hot']);
        }        
        $query->orderBy('is_hot', 'desc')->orderBy('id', 'desc');
        if(isset($params['limit']) && $params['limit']){
            return $query->limit($params['limit'])->get();
        }
        if(isset($params['pagination']) && $params['pagination']){
            return $query->paginate($params['pagination']);
        }                
    }
    
    public function createdUser()
    {
        return $this->belongsTo('App\Models\Account', 'created_user');
    }
     public function updatedUser()
    {
        return $this->belongsTo('App\Models\Account', 'updated_user');
    }
    public function questions(){
        return $this->hasMany('App\Models\QuizQuestions', 'quiz_id');
    }
    public function cates(){
        return $this->hasOne('App\Models\QuizCate', 'id' ,'cate_id');
    }

}
