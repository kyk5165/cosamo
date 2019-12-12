package com.cosamo.yg.lostark;

import java.io.IOException;
import java.util.HashMap;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class LostarkShopLoader {

	public LostarkShopLoader() {
		// TODO Auto-generated constructor stub
	}
	
	public HashMap<String, Integer> loadMariShop() {
		
		HashMap<String, Integer> result = new HashMap<>();
		
		try {
			String connUrl = "https://lostark.game.onstove.com/Shop/Mari";
			
			Document doc = Jsoup.connect(connUrl).get();
			
			Elements names = doc.select(".item-name");
			Elements amounts = doc.select(".amount");
			
			
			for (int i = 0; i < names.size(); i++) {
				result.put(names.get(i).text(), Integer.parseInt(amounts.get(i).text()));
			}
			
			System.out.println("Mari complete");
			
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("Mari falid");
		}
		
		return result;
	}

}
