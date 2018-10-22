<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class CateChild extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'cate_child';	

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
    protected $fillable = ['name', 'slug', 'is_hot', 'status', 'display_order', 'description', 'cate_id', 'created_user', 'updated_user'];

    public function cate()
    {
        return $this->belongsTo('App\Models\ArticlesCate', 'cate_id');
    }
    public function articles()
    {
        return $this->hasMany('App\Models\Articles', 'child_id');
    }

}
