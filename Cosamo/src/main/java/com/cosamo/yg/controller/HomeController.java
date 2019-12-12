package com.cosamo.yg.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cosamo.yg.lostark.LostarkCal;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		return "index";
	}

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {

		return "main";
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		
		return "test";
	}

	@RequestMapping(value = "/lostcal", method = RequestMethod.GET)
	public String lostcal(HttpServletRequest request, HttpServletResponse response) {
		LostarkCal lc = new LostarkCal();
		HashMap<String, Integer> result = lc.loader();

		Set<Entry<String, Integer>> set = result.entrySet();
		Iterator<Entry<String, Integer>> itr = set.iterator();

		String[] names = { "name1", "name2", "name3", "name4", "name5", "name6" };
		String[] prices = { "price1", "price2", "price3", "price4", "price5", "price6" };

		int i = 0;

		while (itr.hasNext()) {
			Map.Entry<String, Integer> e = (Map.Entry<String, Integer>) itr.next();

			request.setAttribute(names[i], e.getKey());
			request.setAttribute(prices[i], e.getValue());
			i++;
		}

		return "lostcal";
	}

	@RequestMapping(value = "/lostarkcal", method = RequestMethod.GET)
	public String lostarkcal(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("RequestMethod.GET");

		response.setCharacterEncoding("UTF-8");

		Double a = Double.parseDouble(request.getParameter("a"));
		a = a/95;
		
		LostarkCal lc = new LostarkCal();
		HashMap<String, Integer> result = lc.loader();

		Set<Entry<String, Integer>> set = result.entrySet();
		Iterator<Entry<String, Integer>> itr = set.iterator();

		String[] names = { "name1", "name2", "name3", "name4", "name5", "name6" };
		String[] prices = { "price1", "price2", "price3", "price4", "price5", "price6" };
		String[] golds = { "gold1", "gold2", "gold3", "gold4", "gold5", "gold6" };

		int i = 0;

		while (itr.hasNext()) {
			Map.Entry<String, Integer> e = (Map.Entry<String, Integer>) itr.next();

			request.setAttribute(names[i], e.getKey());
			request.setAttribute(prices[i], e.getValue());
			request.setAttribute(golds[i], Math.round(e.getValue()*a));
			i++;
		}

		return "lostcal";
	}

}