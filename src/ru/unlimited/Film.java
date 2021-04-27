package ru.unlimited;

import java.util.ArrayList;
import java.util.List;

public class Film {

	private List<Films> data = new ArrayList<Films>();
	public Film(){
		data.add(new Films("image/about1.jpg",185,"image/about1.jpg"));
		data.add(new Films("image/about3.jpg",200,"image/about1.jpg"));
		data.add(new Films("image/about2.jpg",195,"image/about1.jpg"));
		data.add(new Films("image/about4.jpg",155,"image/about4.jpg"));
		data.add(new Films("image/about5.jpg",155,"image/about5.jpg"));
 
	}
	public List<Films> getData(){
		
		return data;
		
	}
	public void setData(List<Films> data){
		this.data = data;
	}
}
