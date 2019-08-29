<!DOCTYPE html>
<html lang="en">
<head>
    </meta charset="utf-8">
    <title>Multiple Choice</title>
</head>

<body>

<div class="quiz-container">
  <h1>Mutiple Choice Quiz</h1>
    <div class="timer">
        <text>Time:<text id="time001">200</text></text>
    </div>
    <form action="multiple_choice.php" method="post"></form>

    <?php
    $GLOBALS['score'] = 0;
    $conn = mysqli_connect("localhost", "root", "", "quizwebtech");
    $query = mysql_query("SELECT * FROM tblQuestion ORDER BY rand()");

    $GLOBALS['correctAns'] = array();
    while ($row = mysql_fetch_assoc($query)) {
        echo $row['ansA'] . '<input type="radio" name="ans_A" value="ansA"><br>';
        echo $row['ansB'] . '<input type="radio" name="ans_A" value="ansA"><br>';
        echo $row['ansC'] . '<input type="radio" name="ans_A" value="ansA"><br>';
        echo $row['ansD'] . '<input type="radio" name="ans_A" value="ansA"><br>';
        $next = array($row['id'], $row['question']);
        array_push($GLOBALS['correctAns'], $next);
    }
    echo "<br>";
    echo "<input type='submit' name='submit' value='Submit'>";
    echo "</form>";

    $var = "SELECT FROM tblQuestion WHERE correctAns ='correctAns'";

    if (isset($var)) {
        echo 'You got it right!';
    } else {
        echo 'Your answer is wrong.';
    }

    function compute() {
        if($GLOBALS['score'] != 0) {
            $GLOBALS['score'] = 0;
        }
        foreach($GLOBALS['correctAns'] as $val) {
            if($val[1] == isset($_POST[$val[0]])) {
                $GLOBALS['score'] += 2;
            }

        }
        echo "<p>" . $GLOBALS['score'] . "</p>";
    }
    if(isset($_POST['submit'])) {
        compute();
    }
?>
</div>

<a href="../index.html"><button class="btn">Home</button></a>
<script>
    var c = 200;

    function timer001 () {
        c = c-1;
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
