package ru.unlimited;

public class Films {
 
	private String name;
	private String genre;
	private int cost;
	private byte[] img;
	
	public Films (String name,String genre,int cost,byte[] img ){
		this.img = img;
		this.name = name;
		this.cost = cost;
	}
	 
	public String getName() {
		return name;
	}
	public void setName(String name){
		this.name = name;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre){
		this.genre = genre;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost){
		this.cost = cost;
	}
	public byte[] getlink() {
		return img;
	}
	public void setlink(byte[] img){
		this.img = img;
	}
	
}
