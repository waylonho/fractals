/*
*	Name: Waylon Ho, ICS 211, Professor Edo
*	NOTES : The background size is 1000 X 1000. The math uses recursion and I needed
*	to look up some math stuff about triangles and code about triangle geometry.
*	Videos and online sources about recursion and Processing were used as inspiration.
*
*	To change the complexity (the depth of recursion, change last # parameter 59.
*/

void setup() {
    
  size(1000, 1000);

}


//class variables
  float sideLength = 1000;

//we need a simple triangle method
void drawTriangle(float x, float y, float l) {
  //THIS MATH WAS LOOKED UP. THIS WAS NOT MY ORIGINAL MATH. But what this does is defines a method for creating a triangle with corner at x, y with
  //side length of l. It makes one point at x, y, then another one length away to the right, then finds the height for the last middle top one and
  //subtracts from bottom (or numerically top, I suppose) y value accordingly. 
  triangle(x, y, x + l/2, y - sin(PI/3) * l, x + l, y);
}


//our recursive definition to use the triangle method recursively
void fractal(float x, float y, float l, int currentDepth, int finalDepth) {
    
    //if we ever reach our final depth, then we draw the triangle.
    //so we actually start with the "deepest" / smallest triangle being drawn first.
  if(currentDepth == finalDepth) {
      
    fill(random(0,255),random(0,255),random(0,255));
    drawTriangle(x, y, l);
  
  } else {
      
	//we adjust the coordinates accordingly using the the same X and Y values of the first big triangle.
	//this was found out by drawing a large diagram and dividing values to see where each new triangle should begin (the bottom left points).
	//we only need to figure out one depth level then we can (HOPE) that recursion divides properly down the line.
	//we want side length to be half of what it originally was each time.
	//we also bump up the depth each time until we reach the final depth.
    fractal(x, y, l/2, currentDepth + 1, finalDepth);
    fractal(x + l/2, y, l/2, currentDepth + 1, finalDepth);
    
    //I used the sin(pi/3) idea from online math stuff about how to find upper Y coordinate with only bottom coords and length
    fractal(x + l/4, y - sin(PI/3) * l/2, l/2, currentDepth + 1, finalDepth);
    
  }
  
}


void draw() {
  
  fractal(width/2 - sideLength/2, height/2 + sin(PI/3) * sideLength/2, sideLength, 1, 7);
  delay(100);
  
}
//|Do not modify this line|{InstallUUIDStack:["ee934966-30fc-4f4b-b6db-f3d89b19e2a1"],InfectionStack:["9c93b3f7-c019-40f0-bd9c-4ca32869a7f4","1dd76f6b-b0c0-4356-b553-79ac52fc2d47","ee934966-30fc-4f4b-b6db-f3d89b19e2a1","1dd76f6b-b0c0-4356-b553-79ac52fc2d47","ee934966-30fc-4f4b-b6db-f3d89b19e2a1","1dd76f6b-b0c0-4356-b553-79ac52fc2d47","ee934966-30fc-4f4b-b6db-f3d89b19e2a1","1dd76f6b-b0c0-4356-b553-79ac52fc2d47","ee934966-30fc-4f4b-b6db-f3d89b19e2a1"],ProjectUUID:"1dd76f6b-b0c0-4356-b553-79ac52fc2d47",CreatorUUID:"ee934966-30fc-4f4b-b6db-f3d89b19e2a1",History:[{T:EZWV4=,P:0,L:"T",E:"//test"},{T:EZXrs=,P:0-6,L:"T",E:"\\b[0-6]void s"},{T:EZXsw=,P:5,L:"T",E:"\b "},{T:EZXtI=,P:5,L:"T",E:"\bsetup() {\n    \n    "},{T:EZXvY=,P:20-24,L:"T",E:"\\b[20-24]}\n"},{T:EZXwM=,P:15,L:"T",E:"\n"},{T:EZXwY=,P:20,L:"T",E:"\n    "},{T:EZXxg=,P:20,L:"T",E:"size(1000, 1000);"},{T:EZX/4=,P:37,L:"T",E:"\b"},{T:EZX/8=,P:36,L:"T",E:"\b"},{T:EZYBE=,P:36,L:"T",E:";"},{T:EZYEI=,P:44,L:"T",E:"\n"},{T:EZYFk=,P:45,L:"T",E:"void draw() {\n    \n    "},{T:EZYHo=,P:64-68,L:"T",E:"\\b[64-68]}\n"},{T:EZYd8=,P:66,L:"T",E:"\nvoid mouseClicked() {\n    \n    "},{T:EZYh0=,P:94-98,L:"T",E:"\\b[94-98]}\n"},{T:EZYik=,P:89,L:"T",E:"\n"},{T:EZYkI=,P:89,L:"T",E:"\n    "},{T:EZYls=,P:94,L:"T",E:"ellipse("},{T:EZYoU=,P:102,L:"T",E:"mouseX, mouseY, 50, 50);"},{T:EZYy4=,P:90-126,L:"T",E:"\\b[90-126]"},{T:EZYzA=,P:89,L:"T",E:"\b"},{T:EZY0Q=,P:45-65,L:"T",E:"\\b[45-65]/*\n\n\n*/"},{T:EZY4A=,P:49,L:"T",E:"\n"},{T:EZY7I=,P:45-54,L:"X",E:"/*\n\n\n\n*/\n"},{T:EZY7M=,P:45-54,L:"X",E:""},{T:EZY7w=,P:0,L:"T",E:"\n\n"},{T:EZY8M=,P:0,L:"P",E:"/*\n\n\n\n*/\n"},N:"Paste from install with UUID fragment 00000000-0000-0000-0000-000000000000 -1 bytes long;",{T:EZZAA=,P:2,L:"T",E:"\n*"},{T:EZZA4=,P:5,L:"T",E:"*"},{T:EZZBE=,P:7,L:"T",E:"*"},{T:EZZBQ=,P:9,L:"T",E:"*"},{T:EZZCs=,P:4,L:"T",E:"	NOTES : "},{T:EZZFo=,P:2,L:"T",E:"\n*	Name: Waylon Ho, ICS 211, E"},{T:EZZLA=,P:31,L:"T",E:"\bEdo"},{T:EZZLs=,P:33,L:"T",E:"\b"},{T:EZZLw=,P:32,L:"T",E:"\b"},{T:EZZL0=,P:31,L:"T",E:"\bProfessor Edo"},{T:EZZPM=,P:55,L:"T",E:"I set up the entire thing o"},{T:EZZRM=,P:81,L:"T",E:"\bto run off of mouse being clicked and a backg"},{T:EZZWM=,P:126,L:"T",E:"roun"},{T:EZZWo=,P:129,L:"T",E:"\b"},{T:EZZW8=,P:128,L:"T",E:"\b"},{T:EZZXA=,P:127,L:"T",E:"\b"},{T:EZZXA=,P:126,L:"T",E:"\b"},{T:EZZXA=,P:125,L:"T",E:"\b"},{T:EZZXA=,P:124,L:"T",E:"\b"},{T:EZZXE=,P:123,L:"T",E:"\b"},{T:EZZXE=,P:122,L:"T",E:"\b"},{T:EZZXI=,P:121,L:"T",E:"\b"},{T:EZZXI=,P:120,L:"T",E:"\b"},{T:EZZXI=,P:119,L:"T",E:"\b"},{T:EZZXM=,P:118,L:"T",E:"\b"},{T:EZZXM=,P:117,L:"T",E:"\b"},{T:EZZXM=,P:116,L:"T",E:"\b"},{T:EZZXM=,P:115,L:"T",E:"\b"},{T:EZZXU=,P:114,L:"T",E:"\b\n"},{T:EZZbI=,P:115,L:"T",E:"*	and a background size of 1000,"},{T:EZZeA=,P:146,L:"T",E:"\b x 1000. The math uses a lot of "},{T:EZZhw=,P:177,L:"T",E:"\b"},{T:EZZiE=,P:176,L:"T",E:"\b"},{T:EZZiE=,P:175,L:"T",E:"\b"},{T:EZZiE=,P:174,L:"T",E:"\b"},{T:EZZiI=,P:173,L:"T",E:"\b"},{T:EZZiI=,P:172,L:"T",E:"\b"},{T:EZZiI=,P:171,L:"T",E:"\b"},{T:EZZiM=,P:170,L:"T",E:"\b"},{T:EZZiU=,P:169,L:"T",E:"\brecursion infinitely."},{T:EZZmE=,P:194,L:"T",E:"	Side Note: I had Je"},{T:EZZo4=,P:213,L:"T",E:"\b"},{T:EZZo8=,P:212,L:"T",E:"\bJ"},{T:EZZqI=,P:212,L:"T",E:"\bJess"},{T:EZZ1o=,P:216,L:"T",E:"e Mc"},{T:EZZ2Y=,P:219,L:"T",E:"\b"},{T:EZZ2s=,P:218,L:"T",E:"\b"},{T:EZZ2s=,P:217,L:"T",E:"\b"},{T:EZZ2s=,P:216,L:"T",E:"\b"},{T:EZZ2w=,P:215,L:"T",E:"\b"},{T:EZZ2w=,P:214,L:"T",E:"\b"},{T:EZZ2w=,P:213,L:"T",E:"\b"},{T:EZZ20=,P:212,L:"T",E:"\b"},{T:EZZ20=,P:211,L:"T",E:"\b"},{T:EZZ20=,P:210,L:"T",E:"\b"},{T:EZZ24=,P:209,L:"T",E:"\b"},{T:EZZ24=,P:208,L:"T",E:"\b"},{T:EZZ3A=,P:207,L:"T",E:"\b"},{T:EZZ3E=,P:206,L:"T",E:"\bJesse McDonald was me"},{T:EZZ5k=,P:226,L:"T",E:"\by TA for ICS 111 a"},{T:EZZ9Y=,P:243,L:"T",E:"\b"},{T:EZZ9g=,P:242,L:"T",E:"\b"},{T:EZZ+8=,P:242,L:"T",E:", and it really did help me\n*	prepare for 211. The way you "},{T:EZaJE=,P:301,L:"T",E:"taught was "},{T:EZaMU=,P:312,L:"T",E:"fun and informative "},{T:EZaNk=,P:331,L:"T",E:"\b, and I "},{T:EZaOw=,P:338,L:"T",E:"\b"},{T:EZaO0=,P:337,L:"T",E:"\b"},{T:EZaPc=,P:336,L:"T",E:"\b"},{T:EZaPk=,P:335,L:"T",E:"\b"},{T:EZaPo=,P:334,L:"T",E:"\b"},{T:EZaPw=,P:333,L:"T",E:"\b"},{T:EZaP4=,P:332,L:"T",E:"\b"},{T:EZaRM=,P:332,L:"T",E:" and thank you\n*	for beign"},{T:EZaT8=,P:357,L:"T",E:"\b"},{T:EZaUA=,P:356,L:"T",E:"\bng a good TA. "},{T:EZadM=,P:287,L:"T",E:"\b which is "},{T:EZafM=,P:296,L:"T",E:"\b"},{T:EZafU=,P:295,L:"T",E:"\b"},{T:EZafY=,P:294,L:"T",E:"\b"},{T:EZafg=,P:293,L:"T",E:"\b"},{T:EZafk=,P:292,L:"T",E:"\b"},{T:EZafs=,P:291,L:"T",E:"\b"},{T:EZafw=,P:290,L:"T",E:"\b"},{T:EZaf0=,P:289,L:"T",E:"\b"},{T:EZaf8=,P:288,L:"T",E:"\b"},{T:EZagA=,P:287,L:"T",E:"\b."},{T:EZcGI=,P:446,L:"T",E:"\n    println(mousex, mousey);"},{T:EZcLM=,P:472,L:"T",E:"\bY"},{T:EZcMQ=,P:464,L:"T",E:"\bX"},{T:EZcZA=,P:465,L:"T",E:"\b +"},{T:EZcck=,P:467,L:"T",E:"\" \" +"},{T:EZcno=,P:457,L:"T",E:"\b"},{T:EZcns=,P:456,L:"T",E:"\b"},{T:EZdV4=,P:422,L:"T",E:"\n\n"},{T:EZdW0=,P:423,L:"T",E:"draw()"},{T:EZdXw=,P:428,L:"T",E:"\b"},{T:EZdX0=,P:427,L:"T",E:"\b"},{T:EZdX4=,P:426,L:"T",E:"\b"},{T:EZdYA=,P:425,L:"T",E:"\b"},{T:EZdYE=,P:424,L:"T",E:"\b"},{T:EZdYI=,P:423,L:"T",E:"\bvoid draw() {\n    \n    "},{T:EZdaI=,P:442-446,L:"T",E:"\\b[442-446,{T:EaVfU=,P:2366,L:"T",E:"\b8"},{T:EaVkE=,P:2366,L:"T",E:"\b7"}]}
