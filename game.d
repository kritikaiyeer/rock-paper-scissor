import std;

class RockPaperScissor {
    /* Takes player move and print's the winner.
    *  args: string (player's move (rock/paper/scissor))*/
    void play(string player){
        // print player input
        write("Player's move: ");
        writeln(player);
        // getting computer input
        auto rnd = rndGen;
        auto randnum = uniform(0,3,rnd);
        string computer;
        if(randnum == 0){
        	computer = "rock";
        }else if(randnum == 1){
        	computer = "paper";
        } else{
        	computer = "scissor";
        }
        write("Computer's move: ");
        writeln(computer);
        // print winner
        if(player == computer){
        	writeln("It's draw!");
        }else if(checkPlayerWinner(player,computer)){
            writeln("Congratulations, you win!");
        }else{
        	writeln("Better Luck next time, you lost!");
        }
    }
    /* checks if player is winner
    *  args: string,string (player's move, computer's move)
    *  return: bool (true: player wins, false: player lost)*/
    bool checkPlayerWinner(string player,string computer){
        if(player == "rock"){
        	return computer == "scissor";
        }else if(player == "paper"){
        	return computer == "rock";
        }else{
        	return computer == "paper";
        }
    }
}
void main()
{
    RockPaperScissor game = new RockPaperScissor();
    game.play("rock");
}
