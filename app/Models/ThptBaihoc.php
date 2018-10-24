<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class ThptBaihoc extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'thpt_baihoc';

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
                            'class_id',
                            'stem_class_id',
                            'video_id',
                            'image_url',
                            'subject_id',
                            'teacher_id',
                            'group_id',
                            'content',                              
                            'status', 
                            'is_hot',
                            'is_share',
                            'score',
                            'display_order',                             
                            'created_user', 
                            'updated_user',
                            'description'];
    
    public static function getList($params = []){
        $query = self::where('status', 1);        
       if( isset($params['part_id']) && $params['part_id'] ){
            $query->where('part_id', $params['part_id']);
        }
        return $query->orderBy('display_order')->get();
    }
    public function createdUser()
    {
        return $this->belongsTo('App\Models\Account', 'created_user');
    }
     public function updatedUser()
    {
        return $this->belongsTo('App\Models\Account', 'updated_user');
    }
    public function classthpt(){
        return $this->belongsTo('App\Models\Classthpt', 'class_id');
    }
    public function subject(){
        return $this->belongsTo('App\Models\Subjects', 'subject_id');
    }
    public function teacher(){
        return $this->belongsTo('App\Models\Objects', 'subject_id');
    }
    public function group(){
        return $this->belongsTo('App\Models\GroupBai', 'group_id');
    }
}
