


void setup(){ 
background(43,56,108);
size(1000,500);
}


void draw () { 
  
  //Øvre række firkanter
  rect (10,30,500,50);
  rect (10,85,500,50);
  rect (10,140,500,50);
  rect (10,195,500,50);
  
  // text 
  
 
  
  // Nedre række firkanter 
  rect(10,280,500,50);
  rect(10,335,500,50);
  rect(10,390,500,50);
  rect(10,445,500,50);
  
  // Lige linje ned igennem 
  
  strokeWeight(4);
  stroke(255);
  line(525,500,525,0);
  
  // Firkanter i højre øvre hjørne 
  rect(540,30,500,50);
  rect(540,85,500,50);
  rect(540,140,500,50);
  rect(540,195,500,50);
  
  //Firkanter i højre nedre hjørne 
  
  rect(540,280,500,50);
  rect(540,335,500,50);
  rect(540,390,500,50);
  rect(540,445,500,50);
  
  
} 
