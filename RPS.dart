import 'dart:io';
import 'dart:math';
enum Choice{rock,paper,scissors}
void main() {

  while (true) {
  print("Welcome");
  print("If you want to quit game write the Q");
  var u_score=0;
  var pc_score=0;
  var pc_move="";
  var u_move="";
    
  while (u_score<2 && pc_score<2) { 
  Random r=new Random();
  int number=r.nextInt(3);  
  print("Write your choice(Rock,Paper or Sciccors):");
  u_move=stdin.readLineSync() ?? "";
  u_move=u_move.toLowerCase();
  if (u_move=="q") {
    exit(0);
  }
  if (u_move.isEmpty || (u_move!="rock" && u_move!="paper" && u_move!="scissors") ) {
    continue;
  }
  if (u_move == "rock") {
    u_move == Choice.rock;
    print("Your Choice: rock");
  }
  if (u_move == "paper") {
    u_move == Choice.paper;
    print("Your Choice: paper");
  } 
  if (u_move == "scissors") {
    u_move == Choice.scissors;
    print("Your Choice: scissors");
  }

  switch (number) {
    case 0:
    pc_move="rock";
    break;
    case 1:
    pc_move="paper";
    break;
    case 2:
    pc_move="scissors";
    break;      
    default:
    break;
  }
  print("PC's Choice: "+pc_move);

  if (u_move == pc_move) {
    print("Tie");
  }
  else if (u_move=="rock" && pc_move=="scissors") {
    print("You win.");
    u_score++;
  }
  else if (u_move=="scissors" && pc_move=="paper") {
    print("You win.");
    u_score++;
  }  
  else if (u_move=="paper" && pc_move=="rock") {
    print("You win.");
    u_score++;
  }
  else {
    print("You lose.");
    pc_score++;
  }
  print("Score");
  print("You:"+u_score.toString()+" PC:"+pc_score.toString());
  }
  print("Result");
  if (u_score==2) {
    print("You win");
  }
  else {
  print("You lose");
  }
  print("If you restart the game write the R");
  print("If you want to exit write other than R");
  var game=stdin.readLineSync() ??"";
  game=game.toLowerCase();
  if (game=="r") {
    continue;
  }
  else 
    exit(0);
  }
}
