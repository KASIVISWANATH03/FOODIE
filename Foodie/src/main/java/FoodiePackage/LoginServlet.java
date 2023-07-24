package FoodiePackage;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;

@WebServlet("/log")
public class LoginServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		System.out.println("hello");
		String mail = req.getParameter("mail");
		String pass2 = req.getParameter("pass");
		String pass1 = DataFetcher.dataverify(mail);
		System.out.println(pass1);
		if (pass2.equals(pass1) && (mail.equals("admin@gmail.com")))
		{
			res.sendRedirect("./admin.jsp");
		}
		else if(pass2.equals(pass1))
		{
			res.sendRedirect("./hom.jsp");
		}
		else
		{
			res.sendRedirect("./login.jsp");
		}
		
	}

}
