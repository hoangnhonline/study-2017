<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Objects extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'objects';

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
                            'type', 
                            'status', 
                            'display_order', 
                            'description', 
                            'school_name', 
                            'image_url', 
                            'content', 
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
    public function courses(){
        return $this->hasMany('App\Models\Courses', 'teacher_id');
    }
}
