int temp;
int number = 32;
int x[]= new int[number];
int i = 0,j = 0;
int runtimes;
void setup(){
  size(510,number*10);
  frameRate(24);
  for (int p = 0; p <= number-1; p++){
    x[p] = (int)random(1,100);}
    for (int k = 0; k <= number-1  ; k++){
       rect(0,10*k,5*x[k],10);}
}
  
void draw() {
if(j<number - 1){
  background(0);
  if ( i <= number - 2 - runtimes){
    if (x[i] >= x[i+1]){
      temp = x[i];
      x[i] = x[i+1];
      x[i+1] = temp;
      }
      i++;
  }
      if ( i == number - 1 - runtimes){
      j++;
      runtimes++;
     i=0; 
  }
    for (int k = 0; k<= number-1; k++){
       fill(255);
       rect(0,10*k,5*x[k],10);
       fill(255,0,0);
       rect(0,10*i,5*x[i],10);
       rect(0,10*i+10,5*x[i+1],10);
       fill(255);
       text(x[k],5*x[k],10*k+10);
     }
  }
 if(j==number-1){
   for (int k = 0; k<= number-1; k++){
     fill(255);
     rect(0,10*k,5*x[k],10);
   }
 }
}
