import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// controller 
@WebServlet("/list")
public class ToDoListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ServletContext application = request.getServletContext();
		ArrayList<String> list = (ArrayList<String>) application.getAttribute("list");

		String value = "";
		String value_ = request.getParameter("value");
		if (list == null) {
			list = new ArrayList<String>();
		} else {
			if (value_ != null && !value_.equals("")) {
				value = value_;
				list.add(value);
			}
		}

		application.setAttribute("list", list);
		response.sendRedirect("/ToDoList_JSP/ToDoList.jsp");
	}
}
