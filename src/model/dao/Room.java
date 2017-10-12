package model.dao;

public class Room {
	public Hotel hotel;
	public String id_phong;
	public String idks;
	public int loaiphong;
	public boolean viewdep;
	public double gia;
	public Room(Hotel hotel, String id_phong, String idks, int loaiphong, boolean viewdep, double gia) {
		super();
		this.hotel = hotel;
		this.id_phong = id_phong;
		this.idks = idks;
		this.loaiphong = loaiphong;
		this.viewdep = viewdep;
		this.gia = gia;
	}
	
}
