<!--author @Zealbert Bayle and Kyle Mangahas-->
<!--designer and collaborator @Riechel Angeli Fabrigas-->
<!--helped in implementing the dbase @Mitchelle Buen-->
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="styles/activities.css">
        <title>Identification(Acronyms)</title>
        <script>
            window.onload = function () {
                load();
            }
        </script>
    </head>
    <body style="background-color: #8F8FBC">
        <div class="timer">
            <text>Time:<text id="time002">200</text></text>
        </div>
        <h1> ACRONYM</h1>
        <p style="text-align:center; color:#fbfbf8">Give the meaning of each Acronym</p>
	 	<p style="text-align:center; margin-top: 10%;" id="question"></p>
		<p style="text-align: center;"><input type="text" id="answer">
		<button type="button" class="btn btn-primary" onclick="loadOther()"> Submit </button></p>
        
        <div id = 'scoreBox' style = 'display: none; z-index: 3; position: fixed; bottom: 50%; left: 43%; padding: 50px; background-color: white;'>
            <h3>Your score is:</h3>
            
            <p id = 'score' style = 'text-align: center;'></p>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div class="container">
        <a href="../index.html"><button class="btn">Home</button></a>
        </div>
    <?php
    $conn = mysqli_connect("localhost", "root", "", "finals");
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
                scoreBox.style.display = "block"
                score.innerHTML = ""+points;
            } else {
                document.getElementById('question').innerHTML = y[index].qst;
                document.getElementById('answer').value = "";
            }

            

        }
        
        function timer001() {
            c = c-1;
            if (c==0) {
                alert('time is up');
                window.location.href = 'choices.html'
            }
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
