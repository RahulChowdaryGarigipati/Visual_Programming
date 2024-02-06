function Pillar(){
    this.greenPillar = new Sprite("../Media/pipe.png");
    this.pillarPos = [0, 0, 0];
    this.greenPillar.EnableSprite(1);
    this.greenPillar.SetLayer(0);
    this.greenPillar.SetScale([0.03,0.4,0.01]);
    this.pillarPos[0] += 0.5;
    this.greenPillar.SetPosition(this.pillarPos);
    this.SetAutomatic = function(){
        this.pillarPos = this.greenPillar.GetPosition();
        this.greenPillar.SetPosition([pillarPos[0] -  0.01, 0, 0]);
        return this.greenPillar.GetPosition();
    }
    this.Reset = function(){
        this.greenPillar.SetPosition([0.5,0,0]);
        this.pillarPos = this.greenPillar.GetPosition();
        return this.pillarPos;
    }
}
/*function RotatePillar(){
    this.greenRotatePillar = new Sprite("../Media/pipe.png");
    this.rotatePillarPos = [0, 0, 0];
    this.greenRotatePillar.EnableSprite(1);
    this.greenRotatePillar.SetLayer(0);
    this.greenRotatePillar.SetScale([0.03,0.2,0.01]);
    this.greenRotatePillar[0] += 0.5;
    this.greenRotatePillar.SetPosition(this.pillarPos);
    this.greenRotatePillar.SetRotate();
}*/