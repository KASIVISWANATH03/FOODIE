package FoodiePackage;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
@WebServlet("/out")
public class LogoutServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException
	{
		res.sendRedirect("./login.jsp");
	}
}
