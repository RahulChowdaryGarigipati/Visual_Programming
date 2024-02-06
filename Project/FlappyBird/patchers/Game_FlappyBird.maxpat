function FlappyBird(){
    this.birdSprite = new Sprite("../Media/bird.png");
    this.birdPos = null;
    this.birdSprite.EnableSprite(1);
    this.birdSprite.SetScale(0.04);
    this.birdSprite.SetLayer(1);
    this.birdSprite.SetPosition(this.birdSprite.GetPosition());
    this.birdPos = this.birdSprite.GetPosition();
    this.UpdateBirdPosition = function(){
        this.birdPos = this.birdSprite.GetPosition();
        this.birdPos[0] += 0.01;
        this.birdSprite.SetPosition(this.birdPos);
        return this.birdPos;
    }
    this.Reset = function(){
        this.birdSprite.SetPosition([0,0,0]);
        this.birdPos = this.birdSprite.GetPosition();
        return this.birdPos;
    }
}