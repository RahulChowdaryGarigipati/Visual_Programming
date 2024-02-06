function Background(){
    this.gameBg = new Sprite("../Media/background-day.png");
    this.gameBg.EnableSprite(1);
    this.gameBg.SetFullScreen(true);
    this.gameBg.SetLayer(-1);
    /*this.SetAutomatic = function(){
        var xbox = this.gameBg.GetPosition();
        this.gameBg.SetPosition([xbox[0] -  0.01, 0, 0]);
        post("xbox", xbox);
    }*/
}