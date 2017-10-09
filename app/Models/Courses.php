<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Courses extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'courses';

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
                            'subject_id', 
                            'is_hot', 
                            'teacher_id',                              
                            'status', 
                            'display_order', 
                            'description',                             
                            'image_url',
                            'video_url',
                            'content', 
                            'object', 
                            'benefit',
                            'single',
                            'meta_id', 
                            'created_user', 
                            'updated_user'];
    
    public function createdUser()
    {
        return $this->belongsTo('App\Models\Account', 'created_user');
    }
     public function updatedUser()
    {
        return $this->belongsTo('App\Models\Account', 'updated_user');
    }
    public function teacher(){
        return $this->hasOne('App\Models\Objects', 'teacher_id');
    }
    public function subject(){
        return $this->hasOne('App\Models\Subjects', 'subject_id');
    }
}
