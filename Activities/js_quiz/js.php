<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>JavaScript - Type Match Quiz</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
    <?php
    $conn = mysqli_connect("localhost", "root", "", "quizwebtech");

    //fetches the the first question from the database js_quiz
    $getQuestion = "SELECT * from tblQuestion";
    $result_getQuestion = mysqli_query($conn, $getQuestion);
    $row_getQuestion = mysqli_fetchArray($result_getQuestion);

    $correctAns = $row_getQuestion['correctAns'];
    $selected_radio = $_POST['response'];

    if ($selected_radio == $correctAns)
          echo "Correct!";
      else
          echo "Wrong. The answer should be $correctAns.";

    //fetches a new question by random from the database
    $getQuestion = "SELECT * FROM tblQuestion ORDER BY rand() LIMIT 1";
    $result_getQuestion = mysqli_query($conn, $getQuestion);
    $row_getQuestion = mysqli_fetchArray($result_getQuestion);

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
      <Input type = "submit" Name = "submit" Value = "Answer">
    </form>

</body>

</html>
