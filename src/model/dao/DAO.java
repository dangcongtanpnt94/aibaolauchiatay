package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DAO {
	private Connection conn=null;
	public DAO() throws ClassNotFoundException, SQLException, IllegalAccessException, InstantiationException{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		this.conn= DriverManager.getConnection("jdbc:mysql://localhost/AI_BLCT?" +
                "user=root&password=123");
		
		System.out.println("Connect OK");
	}
	
	public void doUpdate(String sql) throws SQLException{
		Statement stmt=this.conn.createStatement();
		
		stmt.executeUpdate(sql);
	}
	
	public ResultSet doSelectSql(String sql) throws SQLException{
		Statement stmt=this.conn.createStatement();
		
		ResultSet rs=stmt.executeQuery(sql);
		return rs;
	}
	
	public void close(){
		try {
			this.conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		try{
		DAO dao = new DAO();
		ResultSet rs = dao.doSelectSql("SELECT id from HOTEL");
		while (rs.next()){
			System.out.println(rs.getString(1));
		}
		} catch (Exception e){
			e.printStackTrace();
		}
	}
	
}
