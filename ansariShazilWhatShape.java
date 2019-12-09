import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Graphics;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Random;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;

/**
 * Squares or Circles Application: In this program, I have created a simple user interface in which the user
 * can choose either the circle or the square button. When the user clicks on one of the buttons, the corresponding
 * shape is drawn twice. To make the program more fun and lively, the shapes change colors every time their
 * corresponding button is pressed. The last component of the UI is the center JPanel which tells the user what shape they
 * have created based on which button they clicked. There is also a very simple menu which allows the user
 * to exit the program. The type of shape that is created is also displayed to the console window. 
 * 
 * @author Shazil Ansari 
 *
 */

// Main class 
public class ansariShazilWhatShape {
	// Main method
	public static void main(String[] args) {
		// Creates a frame to display all UI components in the main method
		ShapeFrame shapes = new ShapeFrame();
		// sets the visibility of the frame to true, allowing it to be seen 
		shapes.setVisible(true);		
	}
}

/**
 * This class sets up the main user interface. It consists of JButtons and JPanels
 * which are stored in boarder and grid layouts inside of a container.
 *
 */
class ShapeFrame extends JFrame implements ActionListener{
	// String value
	private String pressed;
	// Button for circle
	private JButton circleButton;
	// Button for square
	private JButton squareButton;
	// JPanel for circle 
	private ShapePanel circle;
	// JPanel for square
	private ShapePanel square;
	// JPanel for the statement between the shapes
	private StatementPanel text;
	
	// Constructor 
	public ShapeFrame() {
		// Container to hold everything
		Container container = getContentPane();
		// Border layout to structure User Interface 
		container.setLayout(new BorderLayout());

		// x, y, width, and height values
		setBounds(100, 100, 500, 200);
		// Title for Application 
		setTitle("Simple Shapes User Interface");
		
		// JPanel to hold buttons 
		JPanel buttonsPanel = new JPanel();
		// First button
		circleButton = new JButton("CIRCLE");
		// Sets action to itself
		circleButton.addActionListener(this);
		// Add button to the panel
		buttonsPanel.add(circleButton);
		// Second button
		squareButton = new JButton("SQUARE");
		// set action to itself
		squareButton.addActionListener(this);
		// Add button to the panel
		buttonsPanel.add(squareButton);
		// Add panel to the container 
		container.add(buttonsPanel, BorderLayout.SOUTH);
		
		// Another panel to hold the physical shapes when drawn
		JPanel whatShape = new JPanel();
		// Layout of the panel set to a grid layout
		whatShape.setLayout(new GridLayout(1,3));
		// panel for circle
		circle = new ShapePanel();
		// add panel to parent panel
		whatShape.add(circle);
		// panel for text statement
		text = new StatementPanel();
		// add panel to parent panel
		whatShape.add(text);
		// panel for square 
		square = new ShapePanel();
		// add panel to parent panel
		whatShape.add(square);
		// add parent panel to container
		container.add(whatShape, BorderLayout.CENTER);
		// method call to set up the menu 
		setupMenu();
	}
	
	// Create a menu 
    public void setupMenu() {
    	// Create a menu bar
    	JMenuBar mbar = new JMenuBar();
    	// Create a heading on bar called file 
    	JMenu menuFile = new JMenu("File");
    	// Sub heading item called exit
    	JMenuItem itemExit = new JMenuItem("Exit");
    	// action listener for item
    	itemExit.addActionListener(new ActionListener() {
    		// when clicked, exit the application 
    		public void actionPerformed(ActionEvent e) {
    			System.exit(0);
    		}
    	});
    	
    	// add item to the menu
    	menuFile.add(itemExit);
    	// add menu to menu bar
    	mbar.add(menuFile);
    	// set the menu bar for this frame 
    	setJMenuBar(mbar); 	
    }

	@Override
	// method to handle the action events 
	public void actionPerformed(ActionEvent e) {
		// use string to get the command which is done
		pressed = e.getActionCommand();
		// If the user presses the circle button
		if(pressed.equals("CIRCLE")) {
			// set the shape to a circle
			circle.setWhichShape(1);
			// set the shape to a circle
			square.setWhichShape(1);
			// randomize the colors every time the button is pressed
			circle.coolColors();
			// randomize the colors every time the button is pressed 
			square.coolColors();
			// message displayed on the console
	         System.out.println("Circles are displayed!");
	         // Statement displayed in the JPanel 
	         text.setStatement("You Created Circles!");
	         // repaint the frame 
			repaint();
			
			// If the user presses the square button
		}else if (pressed.equals("SQUARE")) {
			// set the shape to a square
			circle.setWhichShape(0);
			// set the shape to a square
			square.setWhichShape(0);
			// randomize the colors every time button is pressed
			circle.coolColors();
			// randomize the colors every time button is pressed
			square.coolColors();
			// display message to console
			System.out.println("Squares are displayed!");
			// set statement to in JPanel
	         text.setStatement("You Created Squares!");
	         // repaint the frame 
			repaint();			
		}		
	}	
}

/**
 * This class creates a statement panel to hold the statement which is show 
 * between the shapes that are created
 *
 */
class StatementPanel extends JPanel {
	// string value to hold statements
	 private String statement;
	 // set the statement to the string value
	 // using setter method
	 public void setStatement(String string) {
		 statement = string;
	 }
	 // getter method
	 public String getStatement() {
		 return statement;
	 }
	 // constructor with a default statement 
	 public StatementPanel() {
		 statement = ("Press one of the Button!");
	 }
	 // paintComponent to draw the statement 
	 public void paintComponent(Graphics g) {
		 super.paintComponent(g); // borders and background
		 g.drawString(statement, 10, 50);
	 }
	 
}

/**
 * This class sets the type of shape that is created and 
 * randomizes the colors of the shapes using a method 
 *
 */
class ShapePanel extends JPanel {
	// variable to hold type of shape
	private int whichShape;
	// variable to hold color
	private Color color;
	// randomizer to randomize colors
	private Random rand = new Random();
	// getter
	public int getWhichShape() {
		return whichShape;
	}
	// setter
	public void setWhichShape(int whichShape) {
		this.whichShape = whichShape;
	}
	// getter
	public Color getColor() {
		return color;
	}
	// setter
	public void setColor(Color color) {
		this.color = color;
	}
	// method to randomize colors
	public void coolColors(){
		// value to hold different colors
		int coolColorsCreator;
		// randomize five different colors 
		coolColorsCreator = rand.nextInt(5);
		
		// the colors cyan, pink, yellow, orange, and magenta displayed randomly
		if(coolColorsCreator == 0) {
			color = Color.CYAN;
			
		}else if (coolColorsCreator == 1) {
			color = Color.PINK;
		}else if (coolColorsCreator == 2) {
			color = Color.YELLOW;
		}else if (coolColorsCreator == 3) {
			color = Color.ORANGE;
		}else {
			color = Color.MAGENTA;
		}
		
	}
	
	@Override
	// paintComponent to draw the different shapes and 
	// randomize colors
	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		// how the colors are randomized when 
		// button is pressed 
		g.setColor(color);
		// if a square is needed
		if(whichShape == 0) {
			// draw a square 
			g.fillRect(40,5,100,100);
			// if a circle is needed
		} else if(whichShape == 1) {
			// draw a circle 
			g.fillOval(40, 5, 100, 100);
		}
	}
}





