var myRover = {
  position: [0,0],
  direction: 'N'
};

var commands = {
  "f": goForward,
  "b": goBackwards,
  "l": turnLeft,
  "r": turnRight
}

function doCommand(letter) {
  commands[letter](myRover)
};

function moveRover(sequence) {
  movement = sequence.split("")
  movement.forEach(doCommand)
};

function goForward(rover) {

  switch(rover.direction) {
    case 'N':
      rover.position[0]++
      break;
    case 'E':
      rover.position[1]++
      break;
    case 'S':
      rover.position[0]--
      break;
    case 'W':
      rover.position[1]--
      break;
  };
  if (myRover.position[0] === 11) {
    myRover.position[0] = 0
  }
  if (myRover.position[1] === 11) {
    myRover.position[1] = 0
  }
  if (myRover.position[0] === -1) {
    myRover.position[0] = 10
  }
  if (myRover.position[1] === -1) {
    myRover.position[1] = 10
  }
  console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
}

function turnLeft(rover) {
  switch(rover.direction) {
    case 'N':
      rover.direction = 'W'
      break;
    case 'E':
      rover.direction = 'N'
      break;
    case 'S':
      rover.direction = 'E'
      break;
    case 'W':
      rover.direction = 'S'
      break;
  };
}

function turnRight(rover) {
  switch(rover.direction) {
    case 'N':
      rover.direction = 'E'
      break;
    case 'E':
      rover.direction = 'S'
      break;
    case 'S':
      rover.direction = 'W'
      break;
    case 'W':
      rover.direction = 'N'
      break;
  };
}

function goBackwards(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[0]--
      break;
    case 'E':
      rover.position[1]--
      break;
    case 'S':
      rover.position[0]++
      break;
    case 'W':
      rover.position[1]++
      break;
  };
  if (myRover.position[0] === 11) {
    myRover.position[0] = 0
  }
  if (myRover.position[1] === 11) {
    myRover.position[1] = 0
  }
  if (myRover.position[0] === -1) {
    myRover.position[0] = 10
  }
  if (myRover.position[1] === -1) {
    myRover.position[1] = 10
  }
  console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
}
