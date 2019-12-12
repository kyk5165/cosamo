package com.cosamo.yg.lostark;

import java.util.HashMap;

public class LostarkCal {
	LostarkShopLoader lsl;

	public LostarkCal() {
		lsl = new LostarkShopLoader();
	}
	
	public HashMap<String, Integer> loader() {
		return lsl.loadMariShop();
	}

	public HashMap<String, Double> autoCal(double a) {

		HashMap<String, Integer> mariInfo = lsl.loadMariShop();
		HashMap<String, Double> result = new HashMap<>();

		result.put("result", Math.round((a / 95) * 100) / 100.0);

		return result;
	}

}
