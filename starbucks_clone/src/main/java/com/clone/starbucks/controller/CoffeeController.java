package com.clone.starbucks.controller;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

@Controller
public class CoffeeController {

	// coffee
	@RequestMapping(value = "coffee/americano")
	public String americano() {
		return "coffee/americano";
	}

	@RequestMapping(value = "coffee/cappuccino")
	public String cappuccino() {
		return "coffee/cappuccino";
	}

	@RequestMapping(value = "coffee/caramel_macchato")
	public String caramel_macchato() {
		return "coffee/caramel_macchato";
	}

	@RequestMapping(value = "coffee/doppio")
	public String doppio() {
		return "coffee/doppio";
	}

	@RequestMapping(value = "coffee/espresso_macchiato")
	public String espresso_macchiato() {
		return "coffee/espresso_macchiato";
	}

	@RequestMapping(value = "coffee/espresso")
	public String espresso() {
		return "coffee/espresso";
	}

	@RequestMapping(value = "coffee/latte")
	public String latte() {
		return "coffee/latte";
	}

	@RequestMapping(value = "coffee/mocha")
	public String mocha() {
		return "coffee/mocha";
	}

	@RequestMapping(value = "coffee/product_list")
	public String coffee_product_list() {
		return "coffee/product_list";
	}

	@RequestMapping(value = "coffee/productFinder")
	public String productFinder() {
		return "coffee/productFinder";
	}

	@RequestMapping(value = "coffee/productFinderView")
	public String productFinderView(String COFFEE_TASTE1, String COFFEE_FEEL, String COFFEE_INTEN, Model model) {
		model.addAttribute("COFFEE_TASTE1", COFFEE_TASTE1);
		model.addAttribute("COFFEE_FEEL", COFFEE_FEEL);
		model.addAttribute("COFFEE_INTEN", COFFEE_INTEN);
		return "coffee/productFinderView";
	}

	
	// ajax
	@ResponseBody // 나와 어울리는 커피 찾기 - 지혜
	@PostMapping(value = "coffee/getCoffeeChoice", produces = "application/json; charset=UTF-8")
	public String getCoffeeFinder(HttpServletRequest request) throws FileNotFoundException, IOException {
		// 0606 다정
		String coffee_cd = request.getParameter("COFFEE_TASTE1") + "-" + request.getParameter("COFFEE_FEEL") + "-"
				+ request.getParameter("COFFEE_INTEN");
		String mappingPath = "upload/json/coffee/getCoffeeChoice.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		JsonObject result = new JsonObject();
		JsonElement coffee = obj.get(coffee_cd);
		result.add("my", coffee);
		return result.toString();
	}

	@ResponseBody // 원두정보-지혜
	@PostMapping(value = "coffee/getCoffeeList", produces = "application/json; charset=UTF-8")
	public String getCoffeeList(HttpServletRequest request) throws FileNotFoundException, IOException {
		String PACKAGE = request.getParameter("PACKAGE");
		String ROAST_KIND = request.getParameter("ROAST_KIND");
		String mappingPath = "";
		if (ROAST_KIND.equals("40"))
			return "";
		mappingPath = "upload/json/coffee/" + ROAST_KIND + ".json";

		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}

	@ResponseBody // 리저브원두정보-지혜
	@PostMapping(value = "coffee/getReserveList", produces = "application/json; charset=UTF-8")
	public String getReserveList(HttpServletRequest request) throws FileNotFoundException, IOException {
		String mappingPath = "";
		mappingPath = "upload/json/coffee/reserveList.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}

	@ResponseBody // 플래이버비아정보-지혜
	@PostMapping(value = "coffee/getFlavorList", produces = "application/json; charset=UTF-8")
	public String getFlavorList(HttpServletRequest request) throws FileNotFoundException, IOException {
		String mappingPath = "";
		mappingPath = "upload/json/coffee/flavorList.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}
}
