var user = {}
var responses = []

function question1() {
  var name = prompt('What is your name?')
  user.name = name
}
question1();

var questions = [
  { question: "Does null === 0 ? (Yes or No)",
    correctAnswer: 'yes',
    answer: ''
  },
  { question: "What was the original name for JavaScript: Java, LiveScript, JavaLive, or ScriptyScript?",
    correctAnswer: 'livescript',
    answer: ''
  },
  { question: "Is there anything like a LOLCODE programing language? (Yes or No)",
    correctAnswer: 'yes',
    answer: ''
  },
  { question: "Did the Apple iPhone first become available in 2005, 2006 or 2007?",
    correctAnswer: '2007',
    answer: ''
  }
];

function runQuiz(questions) {
  function askQuestions(questions) {
    for( var i=0; i < questions.length; i++ ) {
      var answer = prompt(questions[i].question);
      this.questions[i].answer = answer;
    }

    function compareAnswers(questions) {
      var correctAnswers = 0
      for( var i=0; i < questions.length; i++ ) {
        if (questions[i].correctAnswer === questions[i].answer ) {
          correctAnswers++
        }
      }
      user.correct = correctAnswers;
    }
    compareAnswers(questions);
  }
  askQuestions(questions);
  window.alert(JSON.stringify(user, null, 4));
}

runQuiz(questions);
