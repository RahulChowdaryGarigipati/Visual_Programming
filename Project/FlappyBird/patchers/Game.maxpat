autowatch= 1;

include("Game_Assets.js");
include("Game_FlappyBird.js")
include("Game_Background.js")
include("Game_Pillar.js")

var glWorldName = "game";
var gFlappyBird = new FlappyBird();
var gBackground = new Background();
var gPillar = new Pillar();
this.birdPos = [0, 0 ,0];
this.pillarPos = [0.5, 0 ,0];
//var gRotatePillar = new RotatePillar();

function on_move(){
    //gFlappyBird.Update();
}
function bang(){
    this.birdPos = gFlappyBird.UpdateBirdPosition();
    this.pillarPos = gPillar.SetAutomatic();
    
    if (this.birdPos[0] == 0.48 ){
        this.birdPos = gFlappyBird.Reset();
        post("birdPos reached : 0.48");
    }
    if (this.pillarPos[0] == 0.10 ){
        this.pillarPos = gPillar.Reset();
        post("pillarPos reached : 0.10");
    }

    
    post("birdPos:", this.birdPos);
    post("pillarPos:", this.pillarPos);
}

function notifydeleted(){
    post("cleaning"); post();
    gFlappyBird.Destroy();
    gBackground.Destroy();
    gPillar.Destroy();
    gRotatePillar.Destroy();
}
