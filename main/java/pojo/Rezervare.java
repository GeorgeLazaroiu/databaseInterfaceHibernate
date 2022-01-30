package pojo;



import java.util.Date;

public class Rezervare  implements java.io.Serializable {

	private Long idrezervare;
	private Hoteluri hoteluri;
	private Camere camere;
	private String checkin;
	private String checkout;

	public Rezervare() {
	}

	public Rezervare(Hoteluri hoteluri, Camere camere, String Checkin, String Checkout) {
		this.hoteluri = hoteluri;
		this.camere = camere;
		this.checkin = Checkin;
		this.checkout = Checkout;
	}

	public Long getIdrezervare() {
		return this.idrezervare;
	}

	public void setIdrezervare(Long idrezervare) {
		this.idrezervare = idrezervare;
	}
	public Hoteluri getHoteluri() {
		return this.hoteluri;
	}

	public void setHoteluri(Hoteluri hoteluri) {
		this.hoteluri = hoteluri;
	}
	public Camere getCamere() {
		return this.camere;
	}

	public void setCamere(Camere camere) {
		this.camere = camere;
	}
	public String getCheckin() {
		return this.checkin;
	}

	public void setCheckin(String Checkin) {
		this.checkin = Checkin;
	}
	public String getCheckout() {
		return this.checkout;
	}

	public void setCheckout(String Checkout) {
		this.checkout = Checkout;
	}
}




