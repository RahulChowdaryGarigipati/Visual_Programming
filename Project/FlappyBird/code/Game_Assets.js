function Sprite(path){
    this.vp = new JitterObject("jit.gl.videoplane", glWorldName);

    this.position = [0,0,0];
    this.scale = 0.2;

    this.vp.blend.enable = 1;
    this.vp.depth_enable = 0;
    //videoplay disable false default
    this.vp.enable = 0;
    this.vp.scale = this.scale;
    this.vp.position = this.position;
    //this.vp.preserve_aspect = 1;

    this.mat_img = new JitterMatrix();
    

    this.LoadImg = function(path){
        this.mat_img.importmovie(path);
        this.vp.jit_matrix(this.mat_img.name);
    }
    this.LoadImg(path);

    this.SetLayer = function(val){
        this.vp.layer = val;
    }
    this.EnableSprite = function(val){
        this.vp.enable = val;
    }
    
    this.SetScale = function(scaleVal){
        this.scale = scaleVal;
        this.vp.scale = scaleVal;
    }
    this.GetPosition = function(){
        return this.position;
    }
    this.SetFullScreen = function(val){
        this.vp.transform_reset = 0;
        if(val){
            this.vp.transform_reset =2;
            this.SetScale(1);
        }
    }
    this.Destroy = function(){
        this.vp.freepeer();
        this.mat_img.freepeer();
    }
    this.SetPosition = function(pos){
        this.position = pos;
        this.vp.position = this.position;
    }
    this.GetImage = function(){
        return this.mat_img;
    }
}
