package model.dao;

public class Hotel {
	public String id;
	public String name;
	public String address;
	public String phone;
	public double priceMin;
	public double priceMax;
	public boolean buffet;
	public boolean wash;
	public boolean pool;
	public boolean cafe;
	public boolean spa;
	public boolean gym;
	public boolean tennis;
	public boolean golf;
	public boolean souvenir;
	public boolean entertainment;
	public boolean bookticket;
	public boolean booktour;
	public boolean park;
	public boolean vehicle;
	public Hotel(String id, String name, String address, String phone, double priceMin, double priceMax, boolean buffet,
			boolean wash, boolean pool, boolean cafe, boolean spa, boolean gym, boolean tennis, boolean golf,
			boolean souvenir, boolean entertainment, boolean bookticket, boolean booktour, boolean park,
			boolean vehicle) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.priceMin = priceMin;
		this.priceMax = priceMax;
		this.buffet = buffet;
		this.wash = wash;
		this.pool = pool;
		this.cafe = cafe;
		this.spa = spa;
		this.gym = gym;
		this.tennis = tennis;
		this.golf = golf;
		this.souvenir = souvenir;
		this.entertainment = entertainment;
		this.bookticket = bookticket;
		this.booktour = booktour;
		this.park = park;
		this.vehicle = vehicle;
	}

}
