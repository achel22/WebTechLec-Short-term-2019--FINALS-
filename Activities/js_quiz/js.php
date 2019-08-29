<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>JavaScript - Type Match Quiz</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
    <div class="timer">
        <text>Time:<text id="time001">200</text></text>
    </div>
    <?php
    $conn = mysqli_connect("localhost", "root", "", "quizwebtech");

    //fetches the the first question from the database js_quiz
    $getQuestion = "SELECT * from tblQuestion";
    $result_getQuestion = mysqli_query($conn, $getQuestion);
    $row_getQuestion = mysqli_fetch_array($result_getQuestion);

    $correctAns = $row_getQuestion['correctAns'];
    $selected_radio = $_POST['response'];

    if ($selected_radio == $correctAns)
          echo "Correct!";
      

    //fetches a new question by random from the database
    $getQuestion = "SELECT * FROM tblQuestion ORDER BY rand() LIMIT 1";
    $result_getQuestion = mysqli_query($conn, $getQuestion);
    $row_getQuestion = mysqli_fetch_array($result_getQuestion);

    $id = $row_getQuestion['id'];
    $question = $row_getQuestion['question'];
    $ans1 = $row_getQuestion['ans1'];
    $ans2 = $row_getQuestion['ans2'];
    $ans3 = $row_getQuestion['ans3'];
    $ans4 = $row_getQuestion['ans4'];

    ?>

    <form method ="post" action ="">
      <input type="radio" name="ans1" value="<?=$a1?>"><?=$a1?><br>
      <input type="radio" name="ans2" value="<?=$a2?>"><?=$a2?><br>
      <input type="radio" name="ans3" value="<?=$a3?>"><?=$a3?><br>
      <input type="radio" name="ans4" value="<?=$a4?>"><?=$a4?><br>
        <input type = "submit" Name = "submit" Value = "Answer">
    </form>
    
    <script>
        var c = 200;
        function timer001 () {
            c = c-1;
            if (c==0) {
                alert('time is up');
                window.location.href = '../choices.html'
            }
            if (c < 200){
                time001.innerHTML = c;
            }

            if(c < 1) {
                window.clearInterval(update);
            }
        }
        
        update = setInterval("timer001()", 1000);
    </script>

</body>

</html>
