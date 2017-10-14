<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Livestream extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'livestream';

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
    protected $fillable = ['name', 
                            'slug', 
                            'alias',                                                    
                            'status', 
                            'teacher_id', 
                            'description', 
                            'video_id',  
                            'date_start' ,                  
                            'created_user', 
                            'updated_user'];
    public static function getList($params = []){
        $query = self::whereRaw('1');
        if( isset($params['status']) && $params['status'] ){
            $query->where('status', $params['status']);
        }                      
        $query->orderBy('id', 'desc');
        if(isset($params['limit']) && $params['limit']){
            return $query->limit($params['limit'])->get();
        }
        if(isset($params['pagination']) && $params['pagination']){
            return $query->paginate($params['pagination']);
        }                
    }
    public function teacher(){
        return $this->hasOne('App\Models\Objects', 'id', 'teacher_id');
    }
    public function createdUser()
    {
        return $this->belongsTo('App\Models\Account', 'created_user');
    }
     public function updatedUser()
    {
        return $this->belongsTo('App\Models\Account', 'updated_user');
    }
}
