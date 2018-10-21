<?php
// Authentication routes...
Route::get('backend/login', ['as' => 'backend.login-form', 'uses' => 'Backend\UserController@loginForm']);
Route::post('backend/login', ['as' => 'backend.check-login', 'uses' => 'Backend\UserController@checkLogin']);
Route::get('backend/logout', ['as' => 'backend.logout', 'uses' => 'Backend\UserController@logout']);
Route::group(['namespace' => 'Backend', 'prefix' => 'backend', 'middleware' => 'isAdmin'], function()
{    
    Route::post('/change-value', ['as' => 'change-value', 'uses' => 'GeneralController@changeValue']);
    Route::get('dashboard', ['as' => 'dashboard.index', 'uses' => "SettingsController@dashboard"]);
    Route::post('save-content', ['as' => 'save-content', 'uses' => "SettingsController@saveContent"]);
    Route::group(['prefix' => 'compare'], function () {
        Route::get('/', ['as' => 'compare.index', 'uses' => 'CompareController@index']);
    });
    Route::group(['prefix' => 'settings'], function () {
        Route::get('/', ['as' => 'settings.index', 'uses' => 'SettingsController@index']);
        Route::post('/update', ['as' => 'settings.update', 'uses' => 'SettingsController@update']);
        Route::get('/noti', ['as' => 'settings.noti', 'uses' => 'SettingsController@noti']);        
        Route::post('/storeNoti', ['as' => 'settings.store-noti', 'uses' => 'SettingsController@storeNoti']);
    });
    Route::group(['prefix' => 'report'], function () {
        Route::get('/', ['as' => 'report.index', 'uses' => 'ReportController@index']);     
        Route::post('/search-price-other-site', ['as' => 'crawler.search-price-other-site', 'uses' => 'CompareController@search']);
    });
    Route::group(['prefix' => 'courses'], function () {
        Route::get('/', ['as' => 'courses.index', 'uses' => 'CoursesController@index']);
        Route::get('/create', ['as' => 'courses.create', 'uses' => 'CoursesController@create']);
        Route::post('/store', ['as' => 'courses.store', 'uses' => 'CoursesController@store']);
        Route::get('{id}/edit',   ['as' => 'courses.edit', 'uses' => 'CoursesController@edit']);       
        Route::get('{id}/destroy', ['as' => 'courses.destroy', 'uses' => 'CoursesController@destroy']);
        Route::post('/update', ['as' => 'courses.update', 'uses' => 'CoursesController@update']);
    });
    Route::group(['prefix' => 'livestream'], function () {
        Route::get('/', ['as' => 'livestream.index', 'uses' => 'LivestreamController@index']);
        Route::get('/create', ['as' => 'livestream.create', 'uses' => 'LivestreamController@create']);
        Route::post('/store', ['as' => 'livestream.store', 'uses' => 'LivestreamController@store']);
        Route::get('{id}/edit',   ['as' => 'livestream.edit', 'uses' => 'LivestreamController@edit']);       
        Route::get('{id}/destroy', ['as' => 'livestream.destroy', 'uses' => 'LivestreamController@destroy']);
        Route::post('/update', ['as' => 'livestream.update', 'uses' => 'LivestreamController@update']);
    });
    Route::group(['prefix' => 'quiz'], function () {
        Route::get('/', ['as' => 'quiz.index', 'uses' => 'QuizController@index']);
        Route::get('/create', ['as' => 'quiz.create', 'uses' => 'QuizController@create']);
        Route::post('/store', ['as' => 'quiz.store', 'uses' => 'QuizController@store']);
        Route::get('{id}/edit',   ['as' => 'quiz.edit', 'uses' => 'QuizController@edit']);       
        Route::get('{id}/destroy', ['as' => 'quiz.destroy', 'uses' => 'QuizController@destroy']);
        Route::post('/update', ['as' => 'quiz.update', 'uses' => 'QuizController@update']);
    });
    Route::group(['prefix' => 'quiz-cate'], function () {
        Route::get('/', ['as' => 'quiz-cate.index', 'uses' => 'QuizCateController@index']);
        Route::get('/create', ['as' => 'quiz-cate.create', 'uses' => 'QuizCateController@create']);
        Route::post('/store', ['as' => 'quiz-cate.store', 'uses' => 'QuizCateController@store']);
        Route::get('{id}/edit',   ['as' => 'quiz-cate.edit', 'uses' => 'QuizCateController@edit']);       
        Route::get('{id}/destroy', ['as' => 'quiz-cate.destroy', 'uses' => 'QuizCateController@destroy']);
        Route::post('/update', ['as' => 'quiz-cate.update', 'uses' => 'QuizCateController@update']);
    });
     Route::group(['prefix' => 'courses-cate'], function () {
        Route::get('/', ['as' => 'courses-cate.index', 'uses' => 'CoursesCateController@index']);
        Route::get('/create', ['as' => 'courses-cate.create', 'uses' => 'CoursesCateController@create']);
        Route::post('/store', ['as' => 'courses-cate.store', 'uses' => 'CoursesCateController@store']);
        Route::get('{id}/edit',   ['as' => 'courses-cate.edit', 'uses' => 'CoursesCateController@edit']);       
        Route::get('{id}/destroy', ['as' => 'courses-cate.destroy', 'uses' => 'CoursesCateController@destroy']);
        Route::post('/update', ['as' => 'courses-cate.update', 'uses' => 'CoursesCateController@update']);
    });
    Route::group(['prefix' => 'quiz-questions'], function () {
        Route::get('/', ['as' => 'quiz-questions.index', 'uses' => 'QuizQuestionsController@index']);
        Route::get('/create', ['as' => 'quiz-questions.create', 'uses' => 'QuizQuestionsController@create']);
        Route::post('/store', ['as' => 'quiz-questions.store', 'uses' => 'QuizQuestionsController@store']);
        Route::get('{id}/edit',   ['as' => 'quiz-questions.edit', 'uses' => 'QuizQuestionsController@edit']);       
        Route::get('{id}/destroy', ['as' => 'quiz-questions.destroy', 'uses' => 'QuizQuestionsController@destroy']);
        Route::post('/update', ['as' => 'quiz-questions.update', 'uses' => 'QuizQuestionsController@update']);
    });
    Route::group(['prefix' => 'quiz-answers'], function () {
        Route::get('/', ['as' => 'quiz-answers.index', 'uses' => 'QuizAnswersController@index']);
        Route::get('/create', ['as' => 'quiz-answers.create', 'uses' => 'QuizAnswersController@create']);
        Route::post('/store', ['as' => 'quiz-answers.store', 'uses' => 'QuizAnswersController@store']);
        Route::get('{id}/edit',   ['as' => 'quiz-answers.edit', 'uses' => 'QuizAnswersController@edit']);       
        Route::get('{id}/destroy', ['as' => 'quiz-answers.destroy', 'uses' => 'QuizAnswersController@destroy']);
        Route::post('/update', ['as' => 'quiz-answers.update', 'uses' => 'QuizAnswersController@update']);
    });
    Route::group(['prefix' => 'courses'], function () {
        Route::get('/', ['as' => 'courses.index', 'uses' => 'CoursesController@index']);
        Route::get('/create', ['as' => 'courses.create', 'uses' => 'CoursesController@create']);
        Route::post('/store', ['as' => 'courses.store', 'uses' => 'CoursesController@store']);
        Route::get('{id}/edit',   ['as' => 'courses.edit', 'uses' => 'CoursesController@edit']);       
        Route::get('{id}/destroy', ['as' => 'courses.destroy', 'uses' => 'CoursesController@destroy']);
        Route::post('/update', ['as' => 'courses.update', 'uses' => 'CoursesController@update']);
    });
    Route::group(['prefix' => 'courses-part'], function () {
        Route::get('/', ['as' => 'courses-part.index', 'uses' => 'CoursesPartController@index']);
        Route::get('/create', ['as' => 'courses-part.create', 'uses' => 'CoursesPartController@create']);
        Route::post('/store', ['as' => 'courses-part.store', 'uses' => 'CoursesPartController@store']);
        Route::get('{id}/edit',   ['as' => 'courses-part.edit', 'uses' => 'CoursesPartController@edit']);       
        Route::get('{id}/destroy', ['as' => 'courses-part.destroy', 'uses' => 'CoursesPartController@destroy']);
        Route::post('/update', ['as' => 'courses-part.update', 'uses' => 'CoursesPartController@update']);
    });
    Route::group(['prefix' => 'courses-lession'], function () {
        Route::get('/', ['as' => 'courses-lession.index', 'uses' => 'CoursesLessionController@index']);
        Route::get('/create', ['as' => 'courses-lession.create', 'uses' => 'CoursesLessionController@create']);
        Route::post('/store', ['as' => 'courses-lession.store', 'uses' => 'CoursesLessionController@store']);
        Route::get('{id}/edit',   ['as' => 'courses-lession.edit', 'uses' => 'CoursesLessionController@edit']);       
        Route::get('{id}/destroy', ['as' => 'courses-lession.destroy', 'uses' => 'CoursesLessionController@destroy']);
        Route::post('/update', ['as' => 'courses-lession.update', 'uses' => 'CoursesLessionController@update']);
    });
    Route::group(['prefix' => 'thpt-baihoc'], function () {
        Route::get('/', ['as' => 'thpt-baihoc.index', 'uses' => 'ThptBaihocController@index']);
        Route::get('/create', ['as' => 'thpt-baihoc.create', 'uses' => 'ThptBaihocController@create']);
        Route::post('/store', ['as' => 'thpt-baihoc.store', 'uses' => 'ThptBaihocController@store']);
        Route::get('{id}/edit',   ['as' => 'thpt-baihoc.edit', 'uses' => 'ThptBaihocController@edit']);       
        Route::get('{id}/destroy', ['as' => 'thpt-baihoc.destroy', 'uses' => 'ThptBaihocController@destroy']);
        Route::post('/update', ['as' => 'thpt-baihoc.update', 'uses' => 'ThptBaihocController@update']);
    });
    Route::group(['prefix' => 'menu'], function () {
        Route::get('/', ['as' => 'menu.index', 'uses' => 'MenuController@index']);
        Route::get('/create', ['as' => 'menu.create', 'uses' => 'MenuController@create']);
        Route::post('/store', ['as' => 'menu.store', 'uses' => 'MenuController@store']);
        Route::post('/store-order', ['as' => 'menu.store-order', 'uses' => 'MenuController@storeOrder']);
        Route::get('{id}/edit',   ['as' => 'menu.edit', 'uses' => 'MenuController@edit']); 
         Route::get('load-create',   ['as' => 'menu.load-create', 'uses' => 'MenuController@loadCreate']);       
        Route::get('{id}/destroy', ['as' => 'menu.destroy', 'uses' => 'MenuController@destroy']);
    });
    
    Route::group(['prefix' => 'pages'], function () {
        Route::get('/', ['as' => 'pages.index', 'uses' => 'PagesController@index']);
        Route::get('/create', ['as' => 'pages.create', 'uses' => 'PagesController@create']);
        Route::post('/store', ['as' => 'pages.store', 'uses' => 'PagesController@store']);
        Route::get('{id}/edit',   ['as' => 'pages.edit', 'uses' => 'PagesController@edit']);
        Route::post('/update', ['as' => 'pages.update', 'uses' => 'PagesController@update']);
        Route::get('{id}/destroy', ['as' => 'pages.destroy', 'uses' => 'PagesController@destroy']);
    });
    Route::group(['prefix' => 'custom-link'], function () {
        Route::get('/', ['as' => 'custom-link.index', 'uses' => 'CustomLinkController@index']);
        Route::get('/create', ['as' => 'custom-link.create', 'uses' => 'CustomLinkController@create']);
        Route::post('/store', ['as' => 'custom-link.store', 'uses' => 'CustomLinkController@store']);
        Route::get('{id}/edit',   ['as' => 'custom-link.edit', 'uses' => 'CustomLinkController@edit']);
        Route::post('/update', ['as' => 'custom-link.update', 'uses' => 'CustomLinkController@update']);
        Route::get('{id}/destroy', ['as' => 'custom-link.destroy', 'uses' => 'CustomLinkController@destroy']);
    });
    
    Route::group(['prefix' => 'subjects'], function () {
        Route::get('/', ['as' => 'subjects.index', 'uses' => 'SubjectsController@index']);
        Route::get('/create', ['as' => 'subjects.create', 'uses' => 'SubjectsController@create']);
        Route::post('/store', ['as' => 'subjects.store', 'uses' => 'SubjectsController@store']);
        Route::get('{id}/edit',   ['as' => 'subjects.edit', 'uses' => 'SubjectsController@edit']);
        Route::post('/update', ['as' => 'subjects.update', 'uses' => 'SubjectsController@update']);
        Route::get('{id}/destroy', ['as' => 'subjects.destroy', 'uses' => 'SubjectsController@destroy']);
    });
    
    Route::group(['prefix' => 'info-seo'], function () {
        Route::get('/', ['as' => 'info-seo.index', 'uses' => 'InfoSeoController@index']);
        Route::get('/create', ['as' => 'info-seo.create', 'uses' => 'InfoSeoController@create']);
        Route::post('/store', ['as' => 'info-seo.store', 'uses' => 'InfoSeoController@store']);
        Route::get('{id}/edit',   ['as' => 'info-seo.edit', 'uses' => 'InfoSeoController@edit']);
        Route::post('/update', ['as' => 'info-seo.update', 'uses' => 'InfoSeoController@update']);
        Route::get('{id}/destroy', ['as' => 'info-seo.destroy', 'uses' => 'InfoSeoController@destroy']);
    });
    Route::group(['prefix' => 'newsletter'], function () {
        Route::get('/', ['as' => 'newsletter.index', 'uses' => 'NewsletterController@index']);
        Route::post('/store', ['as' => 'newsletter.store', 'uses' => 'NewsletterController@store']);
        Route::get('{id}/edit',   ['as' => 'newsletter.edit', 'uses' => 'NewsletterController@edit']);
        Route::get('/export',   ['as' => 'newsletter.export', 'uses' => 'NewsletterController@download']);
        Route::post('/update', ['as' => 'newsletter.update', 'uses' => 'NewsletterController@update']);
        Route::get('{id}/destroy', ['as' => 'newsletter.destroy', 'uses' => 'NewsletterController@destroy']);
    });
    Route::group(['prefix' => 'customer'], function () {
        Route::get('/', ['as' => 'customer.index', 'uses' => 'CustomerController@index']);
        Route::post('/store', ['as' => 'customer.store', 'uses' => 'CustomerController@store']);
        Route::get('{id}/edit',   ['as' => 'customer.edit', 'uses' => 'CustomerController@edit']);
        Route::get('/export',   ['as' => 'customer.export', 'uses' => 'CustomerController@download']);
        Route::post('/update', ['as' => 'customer.update', 'uses' => 'CustomerController@update']);
        Route::get('{id}/destroy', ['as' => 'customer.destroy', 'uses' => 'CustomerController@destroy']);
    });
    Route::group(['prefix' => 'contact'], function () {
        Route::get('/', ['as' => 'contact.index', 'uses' => 'ContactController@index']);
        Route::post('/store', ['as' => 'contact.store', 'uses' => 'ContactController@store']);
        Route::get('{id}/edit',   ['as' => 'contact.edit', 'uses' => 'ContactController@edit']);
        Route::get('/export',   ['as' => 'contact.export', 'uses' => 'ContactController@download']);
        Route::post('/update', ['as' => 'contact.update', 'uses' => 'ContactController@update']);
        Route::get('{id}/destroy', ['as' => 'contact.destroy', 'uses' => 'ContactController@destroy']);
    });
    
    
    Route::group(['prefix' => 'banner'], function () {
        Route::get('/', ['as' => 'banner.index', 'uses' => 'BannerController@index']);
        Route::get('/create/', ['as' => 'banner.create', 'uses' => 'BannerController@create']);
        Route::get('/list', ['as' => 'banner.list', 'uses' => 'BannerController@lists']);
        Route::post('/store', ['as' => 'banner.store', 'uses' => 'BannerController@store']);
        Route::get('/edit',   ['as' => 'banner.edit', 'uses' => 'BannerController@edit']);
        Route::post('/update', ['as' => 'banner.update', 'uses' => 'BannerController@update']);
        Route::get('{id}/destroy', ['as' => 'banner.destroy', 'uses' => 'BannerController@destroy']);
    });
    
    Route::post('/tmp-upload', ['as' => 'image.tmp-upload', 'uses' => 'UploadController@tmpUpload']);
    Route::post('/tmp-upload-multiple', ['as' => 'image.tmp-upload-multiple', 'uses' => 'UploadController@tmpUploadMultiple']);
        
    Route::post('/update-order', ['as' => 'update-order', 'uses' => 'GeneralController@updateOrder']);
    Route::post('/ck-upload', ['as' => 'ck-upload', 'uses' => 'UploadController@ckUpload']);
    Route::post('/get-slug', ['as' => 'get-slug', 'uses' => 'GeneralController@getSlug']);    

     Route::group(['prefix' => 'articles-cate'], function () {
        Route::get('/', ['as' => 'articles-cate.index', 'uses' => 'ArticlesCateController@index']);
        Route::get('/create', ['as' => 'articles-cate.create', 'uses' => 'ArticlesCateController@create']);
        Route::post('/store', ['as' => 'articles-cate.store', 'uses' => 'ArticlesCateController@store']);
        Route::get('{id}/edit',   ['as' => 'articles-cate.edit', 'uses' => 'ArticlesCateController@edit']);
        Route::post('/update', ['as' => 'articles-cate.update', 'uses' => 'ArticlesCateController@update']);
        Route::get('{id}/destroy', ['as' => 'articles-cate.destroy', 'uses' => 'ArticlesCateController@destroy']);
    });
    Route::group(['prefix' => 'tag'], function () {
        Route::get('/', ['as' => 'tag.index', 'uses' => 'TagController@index']);
        Route::get('/create', ['as' => 'tag.create', 'uses' => 'TagController@create']);
        Route::post('/store', ['as' => 'tag.store', 'uses' => 'TagController@store']);
        Route::post('/ajaxSave', ['as' => 'tag.ajax-save', 'uses' => 'TagController@ajaxSave']);  
        Route::get('/ajax-list', ['as' => 'tag.ajax-list', 'uses' => 'TagController@ajaxList']);      
        Route::get('{id}/edit',   ['as' => 'tag.edit', 'uses' => 'TagController@edit']);
        Route::post('/update', ['as' => 'tag.update', 'uses' => 'TagController@update']);
        Route::get('{id}/destroy', ['as' => 'tag.destroy', 'uses' => 'TagController@destroy']);
    });
    Route::group(['prefix' => 'account'], function () {
        Route::get('/', ['as' => 'account.index', 'uses' => 'AccountController@index']);
        Route::get('/change-password', ['as' => 'account.change-pass', 'uses' => 'AccountController@changePass']);
        Route::post('/store-password', ['as' => 'account.store-pass', 'uses' => 'AccountController@storeNewPass']);
        Route::get('/update-status/{status}/{id}', ['as' => 'account.update-status', 'uses' => 'AccountController@updateStatus']);
        Route::get('/create', ['as' => 'account.create', 'uses' => 'AccountController@create']);
        Route::post('/store', ['as' => 'account.store', 'uses' => 'AccountController@store']);
        Route::get('{id}/edit',   ['as' => 'account.edit', 'uses' => 'AccountController@edit']);
        Route::post('/update', ['as' => 'account.update', 'uses' => 'AccountController@update']);
        Route::get('{id}/destroy', ['as' => 'account.destroy', 'uses' => 'AccountController@destroy']);
    });
    Route::group(['prefix' => 'articles'], function () {
        Route::get('/', ['as' => 'articles.index', 'uses' => 'ArticlesController@index']);
        Route::get('/create', ['as' => 'articles.create', 'uses' => 'ArticlesController@create']);
        Route::post('/store', ['as' => 'articles.store', 'uses' => 'ArticlesController@store']);
        Route::get('{id}/edit',   ['as' => 'articles.edit', 'uses' => 'ArticlesController@edit']);
        Route::post('/update', ['as' => 'articles.update', 'uses' => 'ArticlesController@update']);
        Route::get('{id}/destroy', ['as' => 'articles.destroy', 'uses' => 'ArticlesController@destroy']);
    }); 
    Route::group(['prefix' => 'teacher'], function () {
        Route::get('/', ['as' => 'teacher.index', 'uses' => 'TeacherController@index']);
        Route::get('/create', ['as' => 'teacher.create', 'uses' => 'TeacherController@create']);
        Route::post('/store', ['as' => 'teacher.store', 'uses' => 'TeacherController@store']);
        Route::get('{id}/edit',   ['as' => 'teacher.edit', 'uses' => 'TeacherController@edit']);
        Route::post('/update', ['as' => 'teacher.update', 'uses' => 'TeacherController@update']);
        Route::get('{id}/destroy', ['as' => 'teacher.destroy', 'uses' => 'TeacherController@destroy']);
    }); 
    Route::group(['prefix' => 'student'], function () {
        Route::get('/', ['as' => 'student.index', 'uses' => 'StudentController@index']);
        Route::get('/create', ['as' => 'student.create', 'uses' => 'StudentController@create']);
        Route::post('/store', ['as' => 'student.store', 'uses' => 'StudentController@store']);
        Route::get('{id}/edit',   ['as' => 'student.edit', 'uses' => 'StudentController@edit']);
        Route::post('/update', ['as' => 'student.update', 'uses' => 'StudentController@update']);
        Route::get('{id}/destroy', ['as' => 'student.destroy', 'uses' => 'StudentController@destroy']);
    });    
    
});