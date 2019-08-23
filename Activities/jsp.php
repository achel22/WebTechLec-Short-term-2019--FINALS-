<!DOCTYPE html>
<html>
    <head>
        <title></title>
    </head>
    <body style="background-color: #99B898">
        <div class="quiz-content">
            <h1>TRUE OR FALSE</h1>
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
                    echo "<input type='submit' name='submit' value='Submit'>";
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
                        echo "<p>" . $GLOBALS['score'] . "</p>";
                    }
                    if(isset($_POST['submit'])) {
                        compute();
                    }
                ?>
            
        </div>
        <br>

<a href="../index.html"><button class="btn">Home</button></a>
    </body>
</html>