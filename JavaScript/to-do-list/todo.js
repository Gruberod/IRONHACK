
window.onload = function() {
  var saveButton = document.getElementById('save-button');
  saveButton.addEventListener('click', addToDoItem, false);

  var doneButton = document.getElementById('done-button');
  doneButton.addEventListener('click', markAsDone, false);

  var textBox = document.getElementById('todoInput');

  function addToDoItem() {
    var listElement = document.createElement('li');
    var toDoList = document.getElementById('todo-list-items');
    toDoList.parentNode.insertBefore(listElement, toDoList);
    listElement.innerText = todoInput.value;

    textBox.value = "";
  }

  function markAsDone() {
    var itemToBeDone = document.querySelector('li:nth-of-type(1)');
    var listElement = document.createElement('li');
    listElement.innerText = itemToBeDone.innerText;
    var doneList = document.getElementById('done-items')
    doneList.appendChild(listElement);

    doneList.classList.add('done');

    itemToBeDone.parentNode.removeChild(itemToBeDone);

  }

}
