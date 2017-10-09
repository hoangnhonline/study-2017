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
    protected $fillable = ['name', 'display_order', 'created_user', 'updated_user'];

    public function giaoVien()
    {
        return $this->hasMany('App\Models\Objects', 'subject_id');
    }
    
}
