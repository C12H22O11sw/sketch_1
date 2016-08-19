void setup(){
 size(1920,1000); 
}

void makeBlock(int x, int y,color BlockColor){
 fill(BlockColor);
 rect((x-1)*100,height-(y*100),100,100);
}
int blockY = 1;
int blockTrend = 1;
int blockExponant = -1;
int blockRandom = new Random.nextInt(4);
void draw(){
  for(int i = 0; i<19; i++){
    makeBlock(i,blockY,color(100,100,100));
    blockY+=blockTrend;
    blockTrend += blockExponant;
    blockExponant += blockRandom - 2;
  }
}
