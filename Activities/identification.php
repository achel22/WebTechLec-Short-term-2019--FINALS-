<html>
    <head>
        <meta charset="utf-8">
        <title>Identification(Acronyms)</title>
        <script>
            window.onload = function () {
                load();
            }
        </script>
    </head>
    <body>
        <div class="timer">
            <text>Time:<text id="time002">200</text></text>
        </div>
	 	<p id="question"></p>
			<input type="text" id="answer">
			<button type="button" class="btn btn-primary" onclick="loadOther()"> Submit </button>

    <?php
    $conn = mysqli_connect("localhost", "root", "", "quizwebtech");
    $query= $conn -> query("SELECT * FROM iden ORDER BY rand() LIMIT 20");
    ?>
    <script>
        var qstsList = [];
        var index = 0;
        var x, y,corAns, userAns;
        var points = 0;
        var c = 200;
        
        function load() {
            <?php
                while($row = $query->fetch_array()) {
            ?>
            qstsList.push({
                id: "<?php echo $row['qst_id']; ?>",
                qst: "<?php echo $row['qsts']; ?>",
                answer: "<?php echo $row['ans']; ?>"
            });

            <?php
                };
            ?>
            x = JSON.stringify(qstsList);
            y = JSON.parse(x);

            document.getElementById('question').innerHTML = y[index].qst;

        }

        function loadOther() {
            console.log(index);
            var corAns = (y[index].answer).toUpperCase();
            var userAns = (document.getElementById('answer').value).toUpperCase();
            console.log(corAns);
            console.log(userAns);
            if (corAns == userAns) {
                points += 2;
            }
            index++;
            if(index == y.length) {
                console.log(points);
                return;
            } else {
                document.getElementById('question').innerHTML = y[index].qst;
                document.getElementById('answer').value = "";
            }

        }
        
        function timer001 () {
            c = c-1;
            if (c < 200){
                time002.innerHTML = c;
            }

            if(c < 1) {
                window.clearInterval(update);
            }
        }
        
        update = setInterval("timer001()", 1000);


    </script>

    </body>
</html>