package pojo;



import java.util.HashSet;
import java.util.Set;

public class Hoteluri  implements java.io.Serializable {


	private Long idhoteluri;
	private String nume;
	private String adresa;
	private String tara;
	private Integer stele;
	private Float recenzii;
	private String nrPhone;
	private Set rezervare = new HashSet(0);

	public Hoteluri() {
	}

	public Hoteluri(String Nume, String Adresa, String Tara,Integer Stele, Float Recenzii, String NrPhone, Set rezervare) {
		this.nume = Nume;
		this.adresa = Adresa;
		this.tara = Tara;
		this.stele = Stele;
		this.recenzii = Recenzii;
		this.nrPhone = NrPhone;
		
		
		
		this.rezervare = rezervare;
	}

	public Long getIdhoteluri() {
		return this.idhoteluri;
	}
	public void setIdhoteluri(Long idhoteluri) {
		this.idhoteluri = idhoteluri;
	}
	
	public String getNume() {
		return this.nume;
	}

	public void setNume(String Nume) {
		this.nume = Nume;
	}
	public String getAdresa() {
		return this.adresa;
	}

	public void setAdresa(String Adresa) {
		this.adresa = Adresa;
	}
	public String getTara() {
		return this.tara;
	}
	public void setTara(String Tara) {
		this.tara = Tara;
	}
	
	public Integer getStele() {
		return this.stele;
	}
	public void setStele(Integer Stele) {
		this.stele = Stele;
	}
	
	public Float getRecenzii() {
		return this.recenzii;
	}
	public void setRecenzii(Float Recenzii) {
		this.recenzii = Recenzii;
	}
	
	public String getNrPhone() {
		return this.nrPhone;
	}
	public void setNrPhone(String NrPhone) {
		this.nrPhone = NrPhone;
	}
	
	
	
	
	
	
	public Set getRezervare() {
		return this.rezervare;
	}

	public void setRezervare(Set rezervare) {
		this.rezervare = rezervare;
	}
}




