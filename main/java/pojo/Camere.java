package pojo;


import java.util.HashSet;
import java.util.Set;

public class Camere  implements java.io.Serializable {

	private Long idcamere;
	private Integer numar;
	private Float pret;
	private Integer nrPers;
	private Integer confort;
	private Set rezervare = new HashSet(0);

	public Camere() {
	}

	public Camere(Integer Numar, Float Pret, Integer NrPers, Integer Confort, Set Rezervare) {
		this.numar = Numar;
		this.pret = Pret;
		this.nrPers = NrPers;
		this.confort = Confort;
		this.rezervare = Rezervare;
	}

	public Long getIdcamere() {
		return this.idcamere;
	}

	public void setIdcamere(Long idcamere) {
		this.idcamere = idcamere;
	}
	public Integer getNumar() {
		return this.numar;
	}
	public void setNumar(Integer Numar) {
		this.numar = Numar;
	}
	

	public Float getPret() {
		return this.pret;
	}	
	public void setPret(Float Pret) {
		this.pret = Pret;
	}
	
	
	
	public Integer getNrPers() {
		return this.nrPers;
	}
	public void setNrPers(Integer NrPers) {
		this.nrPers = NrPers;
	}
	
	public Integer getConfort() {
		return this.confort;
	}

	public void setConfort(Integer Confort) {
		this.confort = Confort;
	}
	
	public Set getRezervare() {
		return this.rezervare;
	}

	public void setRezervare(Set Rezervare) {
		this.rezervare = Rezervare;
	}
}




