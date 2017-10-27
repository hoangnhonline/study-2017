<!DOCTYPE html>
<html>
    <head>
        <title>Kết quả bài test</title>
        <meta name="twitter:image:src" content="{{ Helper::showImage($detail->image_url) }}">
        <meta property="og:image" content="{{ Helper::showImage($detail->image_url) }}">   
    </head>
    <body>
    <script type="text/javascript">
        setTimeout(function(){
            location.href = "{{ route('quiz-confirm', [$quizDetail->slug, $quizDetail->id])}}";
        }, 3000);

    </script>
    </body>
</html>