package model.dao;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TuVanController
 */
@WebServlet("/TuVanController")
public class TuVanController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TuVanController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		boolean buffet = request.getParameter("buffet") != null;
		boolean wash = request.getParameter("wash") != null;
		boolean pool = request.getParameter("pool") != null;
		boolean cafe = request.getParameter("cafe") != null;
		boolean spa = request.getParameter("spa") != null;
		boolean gym = request.getParameter("gym") != null;
		boolean tennis = request.getParameter("tennis") != null;
		boolean golf = request.getParameter("golf") != null;
		boolean souvenir = request.getParameter("souvenir") != null;
		boolean entertainment = request.getParameter("entertainment") != null;
		boolean bookticket = request.getParameter("bookticket") != null;
		boolean booktour = request.getParameter("booktour") != null;
		boolean park = request.getParameter("park") != null;
		boolean vehicle = request.getParameter("vehicle") != null;
		String price_str = request.getParameter("price");
		double price = -1;
		if (price_str !=null){
		  price = Double.parseDouble(price_str);
		} 
		
		String loaiphong_str = request.getParameter("loaiphong");
		int loaiphong = -1;
		if (loaiphong_str !=null){
		 loaiphong = Integer.parseInt(loaiphong_str);
		}
		
		try {
		DAO dao = new DAO();
		String sql = "SELECT id from HOTEL where id like '%' ";
		if (price > 0){
			sql += String.format(" and %f > priceMin and %f < priceMax", price, price);
		}
		if (loaiphong > 0){
			sql += String.format(" and loaiphong = %d", loaiphong);
		}
		if (buffet) sql += " and buffet=1";
		if (wash) sql += " and wash=1";
		if (pool) sql += " and pool=1";
		if (cafe) sql += " and cafe=1";
		if (spa) sql += " and spa=1";
		if (gym) sql += " and gym=1";
		if (tennis) sql += " and tennis=1";
		if (souvenir) sql += " and souvenir=1";
		if (entertainment) sql += " and entertainment=1";
		if (bookticket) sql += " and bookticket=1";
		if (golf) sql += " and golf=1";
		if (booktour) sql += " and booktour=1";
		if (park) sql += " and park=1";
		if (vehicle) sql += " and vehicle=1";
		System.out.println(sql);
		ResultSet rs = dao.doSelectSql(sql);
		while (rs.next()){
			System.out.println(rs.getString(1));
		}
		} catch (Exception e){
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
