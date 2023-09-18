package Booking.Connection;

public class MovieDetail {

	private int Mid;
	private String title;
	private String genere;
	private String director;
	private int duration;
	private int screen;
	private int slot;
	private int booked;
	public int getMid() {
		return Mid;
	}
	public void setMid(int mid) {
		Mid = mid;
	}
	public MovieDetail(int mid, String title, String genere, String director, int duration, int screen, int slot,
			int booked) {
		super();
		Mid = mid;
		this.title = title;
		this.genere = genere;
		this.director = director;
		this.duration = duration;
		this.screen = screen;
		this.slot = slot;
		this.booked = booked;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGenere() {
		return genere;
	}
	public void setGenere(String genere) {
		this.genere = genere;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public int getScreen() {
		return screen;
	}
	public void setScreen(int screen) {
		this.screen = screen;
	}
	public int getSlot() {
		return slot;
	}
	public void setSlot(int slot) {
		this.slot = slot;
	}
	public int getBooked() {
		return booked;
	}
	public void setBooked(int booked) {
		this.booked = booked;
	}
	
	
}
