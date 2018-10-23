<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class GroupBai extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'group_bai';

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
    protected $fillable = ['name', 'slug', 'type', 'description', 'alias', 'created_user', 'updated_user', 'class_id', 'stem_class_id', 'teacher_id', 'subject_id', 'image_url'];

    public function baihoc()
    {
        return $this->hasMany('App\Models\ThptBaihoc', 'group_id');
    }
    
}
