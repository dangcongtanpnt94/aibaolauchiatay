package model.dao;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.jndi.cosnaming.IiopUrl.Address;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
		if (price_str != null && !price_str.isEmpty()) {
			price = Double.parseDouble(price_str);
		}

		String loaiphong_str = request.getParameter("loaiphong");
		int loaiphong = -1;
		if (loaiphong_str != null) {
			loaiphong = Integer.parseInt(loaiphong_str);
		}
		String error = "";
		if (price < 50) {
			error += "De nghi chon gia phu hop, tren 50.000VND";
		}
		if (!error.equals("")) {
			request.setAttribute("error", error);
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		} else {
			try {
				DAO dao = new DAO();
				String sql = "SELECT id, name, address, phone, priceMin, priceMax, buffet, wash, "
						+ "pool, cafe, spa, gym, tennis, golf, souvenir, entertainment, bookticket, "
						+ "booktour, park, vehicle from HOTEL where id like '%' ";

				if (price > 0) {
					sql += String.format(" and %f > priceMin and %f < priceMax", price, price);
				}
				
				if (buffet)
					sql += " and buffet=1";
				if (wash)
					sql += " and wash=1";
				if (pool)
					sql += " and pool=1";
				if (cafe)
					sql += " and cafe=1";
				if (spa)
					sql += " and spa=1";
				if (gym)
					sql += " and gym=1";
				if (tennis)
					sql += " and tennis=1";
				if (souvenir)
					sql += " and souvenir=1";
				if (entertainment)
					sql += " and entertainment=1";
				if (bookticket)
					sql += " and bookticket=1";
				if (golf)
					sql += " and golf=1";
				if (booktour)
					sql += " and booktour=1";
				if (park)
					sql += " and park=1";
				if (vehicle)
					sql += " and vehicle=1";
				System.out.println(sql);
				ResultSet rs = dao.doSelectSql(sql);
				ArrayList<Hotel> hotels = new ArrayList<>();
				ArrayList<Room> rooms = new ArrayList<>();
				while (rs.next()) {
					String id = rs.getString(1);
					String name = rs.getString(2);
					String address = rs.getString(3);
					String phone = rs.getString(4);
					double priceMin = rs.getDouble(5);
					double priceMax = rs.getDouble(6);
					boolean buffeta = rs.getBoolean(7);
					boolean washa = rs.getBoolean(8);
					boolean poola = rs.getBoolean(9);
					boolean cafea = rs.getBoolean(10);
					boolean spaa = rs.getBoolean(11);
					boolean gyma = rs.getBoolean(12);
					boolean tennisa = rs.getBoolean(13);
					boolean golfa = rs.getBoolean(14);
					boolean souvenira = rs.getBoolean(15);
					boolean entertainmenta = rs.getBoolean(16);
					boolean bookticketa = rs.getBoolean(17);
					boolean booktoura = rs.getBoolean(18);
					boolean parka = rs.getBoolean(19);
					boolean vehiclea = rs.getBoolean(20);
					Hotel hotel = new Hotel(id, name, address, phone, priceMin, priceMax, buffeta, washa, poola, cafea,
							spaa, gyma, tennisa, golfa, souvenira, entertainmenta, bookticketa, booktoura, parka,
							vehiclea);
					hotels.add(hotel);
				}
				for (Hotel tmp : hotels){
					String sql2 = String.format("Select id_phong, idks, loaiphong, viewdep, gia from Phong_KS where "
							+ "idks = '%s' and gia <= %f and loaiphong = %d", tmp.id, price, loaiphong);
					ResultSet rs2 = dao.doSelectSql(sql2);
					while (rs2.next()){
						String id_phong = rs2.getString(1);
						String idks = rs2.getString(2);
						int loaiphongb = rs2.getInt(3);
						boolean viewdep = rs2.getBoolean(4);
						double gia = rs2.getDouble(5);
						Room room = new Room(tmp, id_phong, idks, loaiphongb, viewdep, gia);
						rooms.add(room);
					}
				}
				
				if (rooms == null || rooms.size() == 0){
					error = "Khong tim thay phong nao thoa man yeu cau cua ban";
					request.setAttribute("error", error);
					RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
					rd.forward(request, response);
				} else {
					request.setAttribute("rooms", rooms);
					RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
					rd.forward(request, response);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
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
