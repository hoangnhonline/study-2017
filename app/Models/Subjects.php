<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Subjects extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'subjects';

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
    protected $fillable = ['name', 'class_id', 'display_order', 'status', 'created_user', 'updated_user', 'slug'];

    public function giaoVien()
    {
        return $this->hasMany('App\Models\Objects', 'subject_id');
    }
    public static function getList($params = []){
        $query = self::where('status', 1);
        
        $query->orderBy('id');
        if(isset($params['limit']) && $params['limit']){
            return $query->limit($params['limit'])->get();
        }
        if(isset($params['pagination']) && $params['pagination']){
            return $query->paginate($params['pagination']);
        }                
    }
    
}
