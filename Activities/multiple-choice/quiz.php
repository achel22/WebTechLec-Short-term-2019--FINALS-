<!--Multiple Choice Type Quiz-->
<!--author @Keilly Ruth Panis-->

<?php
  $conn = mysqli_connect("localhost", "root", "", "tblquestions");
  $query = mysqli_query($conn, "SELECT * FROM tblquestion ORDER BY rand() limit 3");
  $multiple_json = array();

  while ($row = $query->fetch_assoc()) {
    $multiple_json[] = array(
      'question' => $row["question"],
      'answers' => array('a' => $row["ansA"], 'b' => $row["ansB"], 'c' => $row["ansC"], 'd' => $row["ansD"]),
      'correctAnswer' => $row['correctAns']
    );
  }

  $multiplechoice_json = json_encode($multiple_json);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    </meta charset="utf-8">
    <title>Multiple Choice Quiz</title>
    <link rel="stylesheet" href="./quiz-style.css">
</head>

<body>
  <h1>Multiple Choice Quiz</h1>
      <div id="countdown"></div>
      <br>
      <br>
      <div id="results"></div>

    <div class="quiz-container">
      <div id="quiz"></div>
    </div>

      <button id="previous">Previous Question</button>
      <button id="next">Next Question</button>
      <button id="submit">Submit Quiz Answers</button>

<script>
var timeleft = 1200;
var downloadTimer = setInterval(function(){
  document.getElementById("countdown").innerHTML = timeleft + " seconds remaining";
  timeleft -= 1;

  if(timeleft <= -1){
    clearInterval(downloadTimer);
    const times = document.getElementById("countdown");
    alert('Time is Up');
    times.innerHTML = 'Finished';

    document.getElementById("previous").disabled = true;
    document.getElementById("next").disabled = true;
    const submitButton = document.getElementById("submit");
    const quizContainer = document.getElementById("quiz");
    quizContainer.style.display = "none";
    submitButton.style.display = "inline-block";
  }
}, 1000);
</script>

<script type="text/javascript">(function() {
var questions = JSON.parse('<?= $multiplechoice_json; ?>');

  function buildQuiz() {
    const output = [];

    questions.forEach((currentQuestion, questionNumber) => {
      const answers = [];

      for (letter in currentQuestion.answers) {
        answers.push(
          `<label>
             <input type="radio" name="question${questionNumber}" value="${letter}">
              ${currentQuestion.answers[letter]}
           </label>`
        );
      }

      output.push(
        `<div class="slide">
           <div class="question"> ${currentQuestion.question} </div>
           <div class="answers"> ${answers.join("")} </div>
         </div>`
      );
    });

    quizContainer.innerHTML = output.join("");
  }

  function showResults() {
    const answerContainers = quizContainer.querySelectorAll(".answers");

    let numCorrect = 0;

    questions.forEach((currentQuestion, questionNumber) => {
      const answerContainer = answerContainers[questionNumber];
      const selector = `input[name=question${questionNumber}]:checked`;
      const userAnswer = (answerContainer.querySelector(selector) || {}).value;

      if (userAnswer === currentQuestion.correctAnswer) {
        numCorrect++;
      }
    });

    const countdown = document.getElementById("countdown");
    countdown.style.display = "none";
    quizContainer.style.display = "none";
    document.getElementById("previous").disabled = true;

    resultsContainer.innerHTML = `Score: ${numCorrect} / ${questions.length}`;

  }

  function showSlide(n) {
    slides[currentSlide].classList.remove("active-slide");
    slides[n].classList.add("active-slide");
    currentSlide = n;

    if (currentSlide === 0) {
      prev.style.display = "none";
    } else {
      prev.style.display = "inline-block";
    }

    if (currentSlide === slides.length - 1) {
      next.style.display = "none";
      submitButton.style.display = "inline-block";
    } else {
      next.style.display = "inline-block";
      submitButton.style.display = "none";
    }
  }

  function showNextSlide() {
    showSlide(currentSlide + 1);
  }

  function showPreviousSlide() {
    showSlide(currentSlide - 1);
  }

  const quizContainer = document.getElementById("quiz");
  const resultsContainer = document.getElementById("results");
  const submitButton = document.getElementById("submit");

  //displays quiz immediately
  buildQuiz();

  const prev = document.getElementById("previous");
  const next = document.getElementById("next");
  const slides = document.querySelectorAll(".slide");
  let currentSlide = 0;

  showSlide(0);

  //shows results on submit
  submitButton.addEventListener("click", showResults);
  prev.addEventListener("click", showPreviousSlide);
  next.addEventListener("click", showNextSlide);
})();
</script>
</body>
</html>
