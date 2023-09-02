var tasks = [];

function addTask(task) {
  tasks.push(task);
}

function deleteTask(index) {
  tasks.splice(index, 1);
}

function printTasks() {
  console.log(tasks);
}
