package FoodiePackage;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
@WebServlet("/reg")
public class RegisterServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String name = req.getParameter("name");
		String phone = req.getParameter("num");
		String mail = req.getParameter("mail");
		String pass = req.getParameter("pass");
		DataInjector.RegData(name, phone, mail, pass);
		res.sendRedirect("./login.jsp");
		
	}
}
