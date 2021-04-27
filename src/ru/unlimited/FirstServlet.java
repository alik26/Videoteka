package ru.unlimited;

import java.io.IOException;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ru.unlimited.Films;
import ru.unlimited.sqlConnection;;;

@WebServlet("/temp-serv")
public class FirstServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
 
	@Override

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
	          
		 this.getServletContext().getRequestDispatcher("/WEB INF/service.jsp").forward(request, response);
}

}