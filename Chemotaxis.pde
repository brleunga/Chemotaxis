Bacteria[] army;
boolean MouseIsPressed = false;
 void setup()   
 {  
    size(500,500); 
 	army = new Bacteria[1000]; 
 	for (int i = 0; i < army.length; i++)
 	{
 		army[i] = new Bacteria();
 	} 
 }   
 void draw()   
 {   
 	background(0);
 	for (int i = 0; i < army.length; i++)
    {
    	army[i].walk();
    	army[i].show();
    	army[i].alteredWalk();
    }
    get(mouseX,mouseY);
 }  
class Bacteria    
 {  
    int myColor,randomX,randomY;
    Bacteria()
    {
    	randomX = randomY = 250;
    	myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    	/*
    	randomX = (int)(Math.random()*500);
    	randomY = (int)(Math.random()*500);
    	*/
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
    }
 }    