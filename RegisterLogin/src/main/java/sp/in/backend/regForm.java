package sp.in.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/regForm")
public class regForm extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			PrintWriter out = resp.getWriter();
			String myname = req.getParameter("name1");
			String myemail = req.getParameter("email1");
			String mypass = req.getParameter("pass1");
			String mygender = req.getParameter("gender1");
			String mycity = req.getParameter("city1");
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yt_demo","root","root");
				
				PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?,?)");
				ps.setString(1, myname);
				ps.setString(2, myemail);
				ps.setString(3, mypass);
				ps.setString(4, mygender);
				ps.setString(5, mycity);
				
				int count = ps.executeUpdate();
				if(count>0) {
					resp.setContentType("text/html");
					out.print("<h3 style='colour:green'>User registered Succcessfully <h3/>");
					RequestDispatcher rd = req.getRequestDispatcher("/Register.jsp");
					rd.include(req, resp);
				}
				else {
					resp.setContentType("text/html");
					out.print("<h3 style='colour:red'>User Not registered due to some error <h3/>");
					RequestDispatcher rd = req.getRequestDispatcher("/Register.jsp");
					rd.include(req, resp);
				}
			} catch (Exception e) {
				resp.setContentType("text/html");
				out.print("<h3 style='colour:red'> Error occured" + e.getMessage()+ "<h3/>");
				RequestDispatcher rd = req.getRequestDispatcher("/Register.jsp");
				rd.include(req, resp);
				e.printStackTrace();
			}
	}
}
