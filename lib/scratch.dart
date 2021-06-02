import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async{
  task1();
  task2();
  task3();
  String task3Result = await task3();
  task4(task3Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

void task2() {
  Duration fiveSeconds = Duration(seconds: 5);
  sleep(fiveSeconds);

  String result = 'task 2 data';
  print('Task 2 complete');
}

Future<String> task3() async {
  String result;
  Duration sevenSeconds = Duration(seconds: 7);
  await Future.delayed(sevenSeconds, () {
    result = 'task 3 data';
    print('Task 3 complete');
  });
  return result;
}

void task4(task3Data) {
  String result = 'task 4 data';
  print('Task 4 complete with $task3Data');
}
