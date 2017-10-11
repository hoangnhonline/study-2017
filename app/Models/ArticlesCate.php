<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class ArticlesCate extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'articles_cate';	

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
    protected $fillable = ['name', 'slug', 'alias', 'is_hot', 'status', 'display_order', 'description', 'meta_title', 'meta_description', 'meta_keywords', 'custom_text', 'image_url', 'type'];

    public function articles()
    {
        return $this->hasMany('App\Models\Articles', 'cate_id');
    }
    public static function getList($params = []){
        $query = self::where('status', 1);
        if( isset($params['type']) && $params['type'] ){
            $query->where('type', $params['type']);
        }
        if( isset($params['except']) && $params['except'] ){
            $query->where('id', '<>',  $params['except']);
        }          
        $query->orderBy('is_hot', 'desc')->orderBy('display_order');
        if(isset($params['limit']) && $params['limit']){
            return $query->limit($params['limit'])->get();
        }
        if(isset($params['pagination']) && $params['pagination']){
            return $query->paginate($params['pagination']);
        }                
    }
}
