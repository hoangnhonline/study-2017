<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class QuizCate extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'quiz_cate';

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
                            'is_hot',                            
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
        $query->orderBy('is_hot', 'desc')->orderBy('display_order');
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
    public function quiz(){
        return $this->hasMany('App\Models\Quiz', 'cate_id');
    }

}
