int[][] grid,futureGrid;

void setup(){
  size(540,100);
  frameRate(8);
  grid=new int[width][height];
  futureGrid=new int[width][height];
  float density=0.3*width*height;
  for(int i=0;i<density;i++){
    grid[int(random(width))][int(random(height))]=1;
  }
  background(0);
}

void draw(){
  for(int x=1;x<width-1;x++){
    for(int y=1;y<height-1;y++){
      int nb=neighbors(x,y);
      if((grid[x][y]==1)&&(nb<2)){
        futureGrid[x][y]=0;
        set(x,y,color(0));
      }else if((grid[x][y]==1)&&(nb>3)){
        futureGrid[x][y]=0;
        set(x,y,color(0));
      }else if((grid[x][y]==0)&&(nb==3)){
        futureGrid[x][y]=1;
        set(x,y,color(255));
      }else{
        futureGrid[x][y]=grid[x][y];
      }
    }
  }
  int[][] temp=grid;
  grid=futureGrid;
  futureGrid=temp;
}

int neighbors(int x,int y){
  int north=(y+height-1)%height;
  int south=(y+1)%height;
  int east=(x+1)%width;
  int west=(x+width-1)%width;
  return grid[x][north]+
         grid[east][north]+
         grid[east][y]+
         grid[east][south]+
         grid[x][south]+
         grid[west][south]+
         grid[west][y]+
         grid[west][north];
}
