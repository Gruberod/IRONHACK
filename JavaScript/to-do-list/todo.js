
window.onload = function() {

// the following code adds event listeners to the buttons
// you'll learn more about this later
// for this exercise, you are going to write the functions for
// what happens when the user clicks on the buttons.
  var saveButton = document.getElementById('save-button');
  saveButton.addEventListener('click', addToDoItem, false);

  var doneButton = document.getElementById('done-button');
  doneButton.addEventListener('click', markAsDone, false);

  var textBox = document.getElementById('todoInput');

//  var list = document.getElementsByClassName('todo-list');

  function addToDoItem() {
    var listElement = document.createElement('li');
    var toDoList = document.getElementById('todo-list-items');
    toDoList.parentNode.insertBefore(listElement, toDoList);
    listElement.innerText = todoInput.value;

    textBox.value = "";
  }
    // add your code here
    // this should create a new list item in the to-do list
    // and set the text as the input from the todo-input field

  function markAsDone() {

    var itemToBeDone = document.querySelector('li:nth-of-type(1)');
    var listElement = document.createElement('li');
    listElement.innerText = itemToBeDone.innerText;
    var doneList = document.getElementById('done-items')
    doneList.appendChild(listElement);

    doneList.classList.add('done');

    itemToBeDone.innerText = "";

  }

}
