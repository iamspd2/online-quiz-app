import java.io.IOException; 
import java.sql.Connection; 
import java.sql.*;
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 

// Import Database Connection Class file 
//import DatabaseConnection;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Login")

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		//System.out.println("The username is " +username); 
		//System.out.println("\nand the password is " +password);

		try { 
			  
            // Initialize the database 
            Connection con = DatabaseConnection.initializeDatabase(); 
            
            // Create a SQL query to insert data into demo table 
            // demo table consists of two columns, so two '?' is used 
            Statement st = con.createStatement();
            String q1 = "select * from users where username='"+username+"'"; 
            // For the first parameter, 
            // get the data using request object 
            // sets the data to st pointer 
  
            // Execute the insert command using executeUpdate() 
            // to make changes in database 
            ResultSet rs = st.executeQuery(q1); 
 
            if (rs.next()) 
            {
            	String dbPassword = rs.getString(3);
            	if(dbPassword.equals(password))
            			response.sendRedirect("quiz.jsp");
            	else
            		response.sendRedirect("home.jsp");
            } 
            else
            { 
            	response.sendRedirect("home.jsp"); 
            } 
            // Close all the connections 
            st.close(); 
            con.close(); 
  
            // Get a writer pointer  
            // to display the successful result 
            //PrintWriter out = response.getWriter(); 
            //out.println("<html><body><b>Successfully Inserted"+"</b></body></html>");
            //response.sendRedirect("home.jsp");
        } 
        catch (Exception e) { 
            e.printStackTrace(); 
        }
		
	}

}
