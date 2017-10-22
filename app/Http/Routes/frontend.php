<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::get('/test', function() {
    return view('frontend.email.thanks');
});


Route::group(['prefix' => 'social-auth'], function () {
    Route::group(['prefix' => 'facebook'], function () {
        Route::get('redirect/', ['as' => 'fb-auth', 'uses' => 'SocialAuthController@redirect']);
        Route::get('callback/', ['as' => 'fb-callback', 'uses' => 'SocialAuthController@callback']);
        Route::post('fb-login', ['as' => 'ajax-login-by-fb', 'uses' => 'SocialAuthController@fbLogin']);
    });

    Route::group(['prefix' => 'google'], function () {
        Route::get('redirect/', ['as' => 'gg-auth', 'uses' => 'SocialAuthController@googleRedirect']);
        Route::get('callback/', ['as' => 'gg-callback', 'uses' => 'SocialAuthController@googleCallback']);
    });

});

Route::group(['prefix' => 'authentication'], function () {
    Route::post('check_login', ['as' => 'auth-login', 'uses' => 'AuthenticationController@checkLogin']);
    Route::post('login_ajax', ['as' =>  'auth-login-ajax', 'uses' => 'AuthenticationController@checkLoginAjax']);
    Route::get('/user-logout', ['as' => 'user-logout', 'uses' => 'AuthenticationController@logout']);
});
Route::group(['namespace' => 'Frontend'], function()
{
    Route::get('/', ['as' => 'home', 'uses' => 'HomeController@index']);   
    Route::get('/rss', ['as' => 'rss', 'uses' => 'HomeController@rss']);
    Route::post('/rating', ['as' => 'rating', 'uses' => 'HomeController@insertRating']);    
    Route::post('/send-contact', ['as' => 'send-contact', 'uses' => 'ContactController@store']);
    Route::post('/send-bao-gia', ['as' => 'send-thi-cong', 'uses' => 'ContactController@storeThiCong']);
    Route::post('/send-thiet-ke', ['as' => 'send-thiet-ke', 'uses' => 'ContactController@storeThietKe']);
    
    Route::get('/khoa-hoc', ['as' => 'courses-list', 'uses' => 'CoursesController@index']);
    Route::get('/giao-vien', ['as' => 'teacher-list', 'uses' => 'ObjectsController@teacher']);
    Route::get('/hoc-vien', ['as' => 'student-list', 'uses' => 'ObjectsController@student']);
    Route::get('/giao-vien/{slug}-{id}.html', ['as' => 'teacher-detail', 'uses' => 'ObjectsController@detail']);
    Route::get('/hoc-vien/{slug}-{id}.html', ['as' => 'student-detail', 'uses' => 'ObjectsController@detail']);
    Route::get('/khoa-hoc/{slug}-{id}.html', ['as' => 'courses-detail', 'uses' => 'CoursesController@detail']);
    Route::get('/bai-hoc/{slug}-{id}.html', ['as' => 'lession-detail', 'uses' => 'CoursesController@lession']);

    Route::get('tag/{slug}', ['as' => 'tag', 'uses' => 'DetailController@tagDetail']);
    Route::get('tin-tuc/{slug}', ['as' => 'news-list', 'uses' => 'NewsController@newsList']);
    Route::get('trac-nghiem/{slug}', ['as' => 'quiz-list', 'uses' => 'QuizController@index']);    
    Route::get('/tin-tuc/{slug}-p{id}.html', ['as' => 'news-detail', 'uses' => 'NewsController@newsDetail']);
    Route::get('trac-nghiem/xac-nhan/{slug}-{id}.html', ['as' => 'quiz-confirm', 'uses' => 'QuizController@confirm']);
    Route::get('trac-nghiem/lam-bai/{slug}-{id}.html', ['as' => 'quiz-doing', 'uses' => 'QuizController@doing']);
    Route::post('trac-nghiem/lam-bai/nop-bai', ['as' => 'nop-bai', 'uses' => 'QuizController@nopBai']);
    Route::get('/dich-vu/{slug}-s{id}.html', ['as' => 'services-detail', 'uses' => 'NewsController@newsDetail']);

    Route::get('{slug}-{id}.html', ['as' => 'product', 'uses' => 'DetailController@index']);
    
    
    
    Route::get('/dang-tin-ky-gui.html', ['as' => 'ky-gui', 'uses' => 'DetailController@kygui']);
    Route::get('/dang-tin-thanh-cong.html', ['as' => 'ky-gui-thanh-cong', 'uses' => 'DetailController@kyguiSuccess']);    
    Route::post('/post-ky-gui', ['as' => 'post-ky-gui', 'uses' => 'DetailController@postKygui']);    

    Route::post('/dang-ki-newsletter', ['as' => 'register.newsletter', 'uses' => 'HomeController@registerNews']);    
    
    Route::get('/tim-kiem.html', ['as' => 'search', 'uses' => 'HomeController@search']);

    Route::get('lien-he.html', ['as' => 'contact', 'uses' => 'HomeController@contact']);
    Route::get('dich-vu.html', ['as' => 'services', 'uses' => 'HomeController@services']);

    Route::get('{slug}.html', ['as' => 'pages', 'uses' => 'HomeController@pages']);    
    Route::get('{slugCateParent}', ['as' => 'cate-parent', 'uses' => 'CateController@cateParent']);    
    Route::get('{slugCateParent}/{slugCateChild}', ['as' => 'cate', 'uses' => 'CateController@cateChild']);
    
    Route::post('/customer/update', ['as' => 'update-customer', 'uses' => 'CustomerController@update']);
    Route::post('/customer/register', ['as' => 'register-customer', 'uses' => 'CustomerController@register']);
    Route::post('/customer/register-ajax', ['as' => 'register-customer-ajax', 'uses' => 'CustomerController@registerAjax']);
    Route::post('/customer/checkemail', ['as' => 'checkemail-customer', 'uses' => 'CustomerController@isEmailExist']);  

});

