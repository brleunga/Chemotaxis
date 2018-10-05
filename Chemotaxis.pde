Bacteria[] army;
Star[] field;
boolean MouseIsPressed = false;
 void setup()   
 {  
    size(500,500); 
 	army = new Bacteria[1000]; 
 	for (int i = 0; i < army.length; i++)
 	{
 		army[i] = new Bacteria();
 	} 
 	field = new Star[150];
 	for (int j = 0; j < field.length; j++)
 	{
 		field[j] = new Star();
 	}
 }   
 void draw()   
 {   
 	background(0);
    for (int j = 0; j < field.length; j++)
    {
    	field[j].show();
    }
    for (int i = 0; i < army.length; i++)
    {
    	army[i].walk();
    	army[i].show();
    	army[i].alteredWalk();
    	army[i].star();
    }
    get(mouseX,mouseY);
 }  
class Bacteria    
 {  
    int myColor,randomX,randomY,myColor2;
    Bacteria()
    {
    	randomX = randomY = 250;
    	myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    	myColor2 = color(214,212,96);
    }
    void walk ()
    {
        randomX = randomX + (int)(Math.random()*7)-3;
        //(-3,-2,-1,0,1,2,3)
        randomY = randomY + (int)(Math.random()*7)-3;
    }
    void show ()
    {
    	noStroke();
    	fill(myColor,125);
    	quad(randomX,randomY,randomX+7,randomY+7,randomX,randomY+14,randomX-7,randomY+7);
    }
    void alteredWalk()
    {
    	if (mouseX > randomX)
    	{
    		randomX = randomX + (int)(Math.random()*6)-1;
    		//(-2,-1,0,1,2,3)
    	}
    	if (mouseX < randomX)
    	{
    		randomX = randomX + (int)(Math.random()*6)-4;
    		//(-4,-3,-2,-1,0,1)
    	}   
    	if (mouseY > randomY) 
    	{
            randomY = randomY + (int)(Math.random()*6)-1;
    	}
    	if (mouseY < randomY)
    	{
    		randomY = randomY + (int)(Math.random()*6)-4;
    	}
    	if (mouseX == randomX && mouseY == randomY)
    	{
    		randomX = randomX + 0;
    		randomY = randomY + 0;
    	}
    }
    void star ()
    {
    	beginShape();
    	    fill(myColor2,125);
    		vertex(mouseX,mouseY-15);
    		vertex(mouseX+4,mouseY);
    		vertex(mouseX+15,mouseY);
    		vertex(mouseX+2,mouseY+5);
    		vertex(mouseX+7,mouseY+15);
    		vertex(mouseX,mouseY+9);
    		vertex(mouseX-7,mouseY+15);
    		vertex(mouseX-2,mouseY+5);
    		vertex(mouseX-15,mouseY);
    		vertex(mouseX-4,mouseY);
    		vertex(mouseX,mouseY-15);
        endShape(CLOSE);
    }
 }

 class Star
 {
 	int myX,myY;
 	Star ()
 	{
 		myX = (int)(Math.random()*500);
 		myY = (int)(Math.random()*500);
 	}
 	void show ()
 	{
 		fill(246, 249, 242);
 		ellipse(myX,myY,5,5);
 	}
 }    