Bacteria[] army;
 void setup()   
 {  
    size(500,500); 
    int myRandom = 10;
 	army = new Bacteria[myRandom]; 
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
    }
 }  
 class Bacteria    
 {  
    int myX,myY,myColor;
    Bacteria()
    {
    	myX = myY = 250;
    	myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    }
    void walk ()
    {
        myX = myX + (int)(Math.random()*7)-3;
        myY = myY + (int)(Math.random()*7)-3;
    }
    void show ()
    {
    	fill(myColor);
    	ellipse(myX,myY,15,25);
    }
 }    