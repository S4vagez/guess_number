import 'dart:io';
import 'dart:math';

class Game{
  int answer = 0;
  int count = 0;
  Game(){
    var r = Random();
    answer = r.nextInt(100) + 1;
    print('คำตอบคือ $answer');
  }
  int doGuess(int num){
    if(num > answer){
      print('$num is too high');
      count++;
      return 0;
    }
    else if(num < answer){
      print('$num is too low');
      count++;
      return 0;
    }
    else if(num == answer){
      count++;
      print('$num is correct');
      print('total guesses: $count');
      return 1;
      //print('Do you want continue?');
      //var x = stdin.readLineSync();
      //if(x == "y" || x == "Y"){
        //return 0;
      //}
      //if(x == "n" || x == "N"){
        //return 1;
      }
      else{
       //print('error!!');
        return 0;
      //}
    }
  }
}