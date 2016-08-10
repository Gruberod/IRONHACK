var user = {}
var responses = []

function question1() {
  var name = prompt('What is your name?')
  user.name = name
}
question1();

function question2() {

  var firstQuestion = prompt('Does null === 0 ? (Yes or No)')

  if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true
  } else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false
  } else {
    alert("Please answer either Yes or No");
    return question2();
  }
  responses.push(firstQuestion);
}
question2();

function question3() {
  var js = prompt('What was the original name for JavaScript: Java, LiveScript, JavaLive, or ScriptyScript?');
  js = js.toLowerCase();
  switch (js) {
    case "java":
    js = false;
    break;
  case "livescript":
    js = true;
    break;
  case "javalive":
    js = false;
    break;
  case "scriptyscript":
    js = false;
    break;
  default:
    alert("Please pick one from given choices");
    return question3();
  }
  responses.push(js);
}
question3();

function question4() {

  var thirdQuestion = prompt('Is there anything like a LOLCODE programing language? (Yes or No)')

  if (thirdQuestion.toLowerCase() === 'yes') {
    thirdQuestion = true
  } else if (thirdQuestion.toLowerCase() === 'no') {
    thirdQuestion = false
  } else {
    alert("Please answer either Yes or No");
    return question4();
  }
  responses.push(thirdQuestion);
}
question4();

function question5() {
  var js = prompt('Did the Apple iPhone first become available in 2005, 2006 or 2007?');
  js = js.toLowerCase();
  switch (js) {
    case "2005":
    js = false;
    break;
  case "2006":
    js = false;
    break;
  case "2007":
    js = true;
    break;
  default:
    alert("Please pick one from given choices");
    return question5();
  }
  responses.push(js);
}
question5();

function evaluate(responsesArray) {
  var correct = 0;
  user.correct = correct
  var incorrect = 0;
  user.incorrect = incorrect

  for (var i = 0; i < responsesArray.length; i++) {
      if (responsesArray[i] == true) {
          user.correct++;
        } else if (responsesArray[i] == false) {
          user.incorrect++;
        }
  }
  return user
};

evaluate(responses);

function showResults() {

  window.alert(JSON.stringify(user, null, 4))

}

showResults();
