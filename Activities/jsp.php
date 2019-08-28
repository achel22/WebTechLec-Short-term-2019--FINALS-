<!DOCTYPE html>
<html>
    <head>
        <title>TRUE OR FALSE</title>
    </head>
    <body style="background-color: #99B898">
        <div class="quiz-content">
            <h1>TRUE OR FALSE</h1>
            <div class="timer">
                <p>Time:<p id="time001">200</p></p>
            </div>
            <form action="jsp.php" method="post">
                <?php
                    $GLOBALS['score'] = 0;
                    $conn = mysqli_connect("localhost", "root", "", "quizwebtech");
                    $query = $conn -> query("SELECT * FROM answers ORDER BY rand()");
                    
                    $GLOBALS['ans'] = array();
                    while($row = $query->fetch_array()) {
                        echo "<p>";
                        echo "<p>" . $row['questions'] . "</p>";
                        echo "<input type='radio' name='" . $row['answers_id'] . "' value='true'/> True";
                        echo "<input type='radio' name='" . $row['answers_id'] . "' value='false'/> False";
                        $newelem = array($row['answers_id'], $row['answers']);
                        array_push($GLOBALS['ans'], $newelem);
                    }
                    echo "<br>";
                    echo "<input type='submit' name='submit' value='Submit' id='submit' onclick='return hide();'>";
                    echo "</form>";

                    function compute() {
                        if($GLOBALS['score'] != 0) {
                            $GLOBALS['score'] = 0;
                        }
                        foreach($GLOBALS['ans'] as $val) {
                            if($val[1] == isset($_POST[$val[0]])) {
                                $GLOBALS['score'] += 2;
                            }
                        }
                        echo "<div style='z-index: 3; position: fixed; bottom: 700px; left: 850px; padding: 50px; background-color: white;'>";
                        echo "<h3>Your score is:</h3>";
                        echo "<p id='displayed' style='text-align: center;'>" . $GLOBALS['score'] . "</p>";
                        echo "</div>";
                    }
                    if(isset($_POST['submit'])) {
                        compute();
                    }
                ?>
        </div>
        <br>
        <a href="../index.html"><button class="btn">Home</button></a>
        <script>
            if(document.getElementById('displayed').innerHTML) {
                document.getElementById('submit').style.display = "none";
            }

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