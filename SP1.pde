String[][] grupper = { 
  {"russia", "saudi", "egypt", "uruguay"}, 
  {"france", "australia", "peru", "denmark"},
  {"portugal", "spain", "morocco", "iran"}, 
  {"argentina", "iceland", "croatia", "nigeria"},
};

String[] gruppeNavne = {"GROUP A","GROUP C", "GROUP B" , "GROUP D"};

// Farver til overskrifter
color[] gruppeFarver = { 
  color(0, 200, 255), // lyseblå
  color(0, 200, 255), // lyseblå
  color(255, 220, 0), // gul 
  color(255, 200, 0)  // gul 
};

PImage[][] flag; // 2D array til flag 

void setup() { 
  size(1200, 700); 
  textAlign(LEFT, CENTER);
  textSize(22);
  
  // Load flag-billeder 
  flag = new PImage[grupper.length][4];
  for (int g = 0; g < grupper.length; g++) {
    for (int t = 0; t < grupper[g].length; t++) {
      flag[g][t] = loadImage(grupper[g][t] + ".png"); 
      flag[g][t].resize(40, 25); // skaler flag 
    }
  }
}

void draw() { 
  background(43, 56, 108); // Mørk baggrund 
  
  rectMode(CORNER);
  imageMode(CORNER);

  int boxW = width/2 - 80;  // bredde til hver gruppe
  int boxH = height/2 - 60;
  int idx = 0;

  // Hvid midterlinje
  stroke(255);
  strokeWeight(6);
  line(width/2, 0, width/2, height);

  noStroke();
  
  for (int row = 0; row < 2; row++) { 
    for (int col = 0; col < 2; col++) { 
      int x = 40 + col * (boxW + 100); 
      int y = 40 + row * (boxH + 80);
      
      // Overskriftsbjælke
      fill(0, 30, 70);
      rect(x, y, boxW, 40);
      
      // Overskrift tekst
      fill(gruppeFarver[idx]);
      textAlign(CENTER, CENTER);
      text(gruppeNavne[idx], x + boxW/2, y + 20);
      textAlign(LEFT, CENTER);
      
      // Tegn holdbokse
      for (int i = 0; i < 4; i++) { 
        int yPos = y + 60 + i*60;
        
        // Hvid baggrundsboks
        fill(255);
        rect(x, yPos-20, boxW, 40);
        
        // Flag
        image(flag[idx][i], x+5, yPos-12);
        
        // Holdnavn
        fill(0); // sort tekst
        text(grupper[idx][i].toUpperCase(), x + 55, yPos);
      }
      idx++;
    }
  }
}
