//Blue Print of First Player shooter Game ;
class CS {
    constructor(playerName, email_id) {
        this.playerName = playerName;
        this.email_id = email_id;
        this.score = 0;
        this.lives = 3;
        this.isALive = true;


    }
    gotHit() {
        if (this.lives >= 0) {
            this.lives--;
        } else {
            this.isALive = false;
        }
    }
    gotPoint() {
        if (this.isALive) {
            this.score++;
        }
        console.log("PLayer Scored one point");
    }
    getReport() {
        return `Player name ${this.playerName} 
                Score : ${this.score}
                Lives Remaining : ${this.lives}`;
    }

}
const player1 = new CS('Vidit Shah', 'vidit.shah@somaiya.edu');
console.log(player1.gotPoint())
console.log(player1.gotHit())
console.log(player1.gotHit());
console.log(player1.getReport());