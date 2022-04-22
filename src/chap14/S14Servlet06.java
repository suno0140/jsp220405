package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javaBeans.Employees;

/**
 * Servlet implementation class S14Servlet06
 */
@WebServlet("/S14Servlet06")
public class S14Servlet06 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet06() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT FirstName, LastName, BirthDate FROM Employees WHERE EmployeeID=1";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		try (
				// 1.연결얻기
				Connection con = ds.getConnection();
				// 2.statement 생성
				Statement stmt = con.createStatement();
				// 3.쿼리 실행
				ResultSet rs = stmt.executeQuery(sql);) {
			// 4.결과 정제
			if (rs.next()) {
				Employees employee = new Employees();
				
				String firstName = rs.getString("FirstName");
				String lastName = rs.getString("LastName");
				String birthDate = rs.getString("BirthDate");
				
				employee.setFirstName(firstName);
				employee.setLastName(lastName);
				employee.setBirthDate(birthDate);
				
				request.setAttribute("employee", employee);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 5.자원 닫기 (try-with-resource 문법으로 해결)
		String path = "/WEB-INF/view/chap14/ex04.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
