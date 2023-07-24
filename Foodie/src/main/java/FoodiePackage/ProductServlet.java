package FoodiePackage;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/prod")
public class ProductServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res)
	{
		String Pid = req.getParameter("pid");
		String Pname = req.getParameter("pname");
		String Pdesc = req.getParameter("pdesc");
		String Pprice = req.getParameter("pprice");
		String Pimg = req.getParameter("pimg");
		DataInjector.addProduct(Pid,Pname,Pdesc,Pprice,Pimg);
	}
	
}
