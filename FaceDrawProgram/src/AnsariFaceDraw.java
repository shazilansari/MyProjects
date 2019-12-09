/**
 * FaceDraw: This program draws three different variations of faces utlizing different colors.
 * The smile types, colors, and sizes of the faces are all random.
 * 
 * @author: Shazil Ansari - 02/24/19
 * 
 */
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Graphics;
import javax.swing.JFrame;
import javax.swing.JPanel;
import java.util.ArrayList;
import java.util.Random;
 
// This is the face model class
class Face {
	// These are the data members within the face class
	// Data members to hold both angles for the creation of the arch
	private int smileTypeLeft;
	private int smileTypeRight;
	// Data member to hold color type
	private Color color;
	// Data members to hold size of different parts of face
	private int width;
	private int height;
	// Data members to control location of different parts of face
    private int x;
    private int y;
    
    // get and set functions for all data members
    public int getX() {
        return x;
    }
    public void setX(int x) {
        this.x = x;
    }
    public int getY() {
        return y;
    }
    public void setY(int y) {
        this.y = y;
    }
    
    public int getWidth() {
    	return width;
    }
    
    public void setWidth(int w) {
    	if (width < 0) {
    		width = 0;
    	}else {
    		width = w;
    	}
    }
    
    public int getHeight() {
    	return height;
    }
    
    public void setHeight(int h) {
    	if (height < 0) {
    		height = 0;
    	}else {
    		height = h;
    	}
    }
    
    public int getSmileTypeLeft() {
		return smileTypeLeft;
	}
	public void setSmileTypeLeft(int smileTypeLeft) {
		this.smileTypeLeft = smileTypeLeft;
		
	}
	
	public int getSmileTypeRight() {
		return smileTypeRight;
	}
	public void setSmileTypeRight(int smileTypeRight) {
		this.smileTypeRight = smileTypeRight;
		
	}
	
	public Color getColor() {
		return color;
	}
	
	public void setColor(Color color) {
		this.color = color;
	}
 
	// constructor
    public Face(int x, int y, int r) {
        setX(x);
        setY(y);
    }
    
    // constructor
    public Face(int x, int y, int w, int h, int stl, int str, Color c) {
    	setX(x);
    	setY(y);
    	setWidth(w);
    	setHeight(h);
    	setSmileTypeLeft(stl);
    	setSmileTypeRight(str);
    	setColor(c);
    	
    	
    	
    }
    // toString function
    public String toString() {
        return String.format("x=%d, y=%d, w=%d, h=%d, stl=%d, str=%d, color=",x,y,width,height,smileTypeLeft,smileTypeRight, color);
    }
}



/**
The FaceFactory class builds Face objects.
The only function we'll put here for now is createRandomShapes.
To create random Shapes, ShapeFactory will need a random number generator.
To create random numbers, use the java.util.Random class.
*/
class FaceFactory {
    private Random rnd;  // this will generate random numbers to help control building the Faces
    public FaceFactory() {
        rnd = new Random();   // at this point, ShapeFactory has a random number generator
    }
    /**
    This function returns an ArrayList<Face> faces - specifically, howMany of them.
    They will be randomly generated.
    */
    public ArrayList<Face> generateRandomShapes(int howMany) {
        ArrayList<Face> result = new ArrayList<Face>();
        int x,y,w,h,stl = 0, str = 0;
        Color c = null;
        int type;  // either 0 for Smile, or 1 for Frown, or 2 for in-between face
        for (int i = 0; i < howMany; i++) {   // the user wanted howMany shapes, so let's build them
            x = 0 + rnd.nextInt(130);   // x will lie between 0 and 130
            y = 0 + rnd.nextInt(130);   // y will lie between 0 and 130
            w = 100 + rnd.nextInt(110);   // w will lie between 100 and 110
            h = 120 + rnd.nextInt(130);  // h will lie between 120 and 130
            type = rnd.nextInt(3);   // either 0,1, oe 2 will be generated
            
            // set Arch size for smile, frown, or meh face and color of faces based on random generation
            if (type == 0) {
            	stl = 0;
            	str = 180; 
            	c = Color.RED;
            } else if (type == 1){
            	stl = 0;
            	str = -180;
            	c = Color.BLUE;
            	}
            else {
            	stl = 25;
            	str = 140;
            	c= Color.GREEN;
            }
            result.add(new Face(x,y,w,h,stl,str,c));   // add a brand new circle to the result list
            
        }
        return result;
    }
}



class FacePanel extends JPanel{
	// passed list from FaceFrame in order to draw
	private ArrayList<Face> faces;
	public FacePanel(ArrayList<Face> faces) {
		this.faces = faces;
	}
	public void paintComponent(Graphics g) {
		super.paintComponents(g); // background and any other things inside this panel get drawn
		for (int i = 0; i < faces.size(); i++) {
				// Drawing face objects where they are suppose to be and how they are suppose to look
				g.setColor(faces.get(i).getColor());
				g.drawOval(faces.get(i).getX(), faces.get(i).getY(), faces.get(i).getWidth(), faces.get(i).getHeight());
				g.drawOval(faces.get(i).getX() + faces.get(i).getWidth() * 4/16, faces.get(i).getY() + faces.get(i).getHeight() * 3/16, faces.get(i).getWidth() / 5, faces.get(i).getHeight() / 5);
				g.drawOval(faces.get(i).getX() + faces.get(i).getWidth() * 9/16, faces.get(i).getY() + faces.get(i).getHeight() * 3/16, faces.get(i).getWidth() / 5, faces.get(i).getHeight() / 5);
				g.drawArc(faces.get(i).getX() + faces.get(i).getWidth() * 4/16 , faces.get(i).getY() + faces.get(i).getHeight() * 9/16, faces.get(i).getWidth() / 2, faces.get(i).getHeight() / 4, faces.get(i).getSmileTypeLeft(), faces.get(i).getSmileTypeRight());
			}
		}
	}


class FaceFrame extends JFrame {
	public void setupUI(ArrayList<Face> faces) {
		// Formatting the UI window
		setTitle("Displays random faces");
		// Operating to close UI window
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		// Layout of UI window
		setBounds(200, 800, 500, 500);
		// Container for lightweight objects
		Container c = getContentPane();
		// Creation of border layout
		c.setLayout(new BorderLayout());
		// JPanel descendant objkect of type FacePanel that is used to hold FaceObjects
		FacePanel cpan = new FacePanel(faces);
		// adding FacePanel object to border layout
		c.add(cpan,BorderLayout.CENTER);
	}
	// FaceObject passed to the list 
	public FaceFrame(ArrayList<Face> faces) {
		setupUI(faces);
	}
	
}
public class AnsariFaceDraw {
	// Main function
	public static void main(String[] args) {
		//Create and randomly populate a list of face objects using face factory
		FaceFactory sf = new FaceFactory();
		// List in which objects are randomly populated
		ArrayList<Face> faces = sf.generateRandomShapes(4);
		// Creation of faceFrame object 
		FaceFrame ff = new FaceFrame(faces);
		// Visible when program is run
		ff.setVisible(true);

	}

}
