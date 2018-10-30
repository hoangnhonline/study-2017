<!DOCTYPE html>
<html>
    <head>
	 <meta charset="UTF-8">
        <title>Đã có lỗi xảy ra</title>
        <link rel="icon" href="https://vhvschool.online/public/assets/favicon.ico" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100" rel="stylesheet" type="text/css">

        <style>
            html, body {
                height: 100%;
            }

            body {
                margin: 0;
                padding: 0;
                width: 100%;
                color: #B0BEC5;
                display: table;
                font-weight: 100;
                font-family: 'Lato';
            }

            .container {
                text-align: center;
                display: table-cell;
                padding-top: 50px;
            }

            .content {
                text-align: center;
                display: inline-block;
            }

            .title {
                font-size: 30px;
                margin-bottom: 40px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="content">
                <div class="title"><h1>Đã có lỗi xảy ra!</h1></div>
                <a href="{{ route('home') }}" style="color: #000000">Về trang chủ</a>
            </div>
        </div>        
    </body>
</html>
