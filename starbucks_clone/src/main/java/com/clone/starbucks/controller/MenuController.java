package com.clone.starbucks.controller;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.text.ParseException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.service.MenuServiceImpl;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

@Controller
public class MenuController {
	@Autowired MenuServiceImpl service;
	
	// menu
	@RequestMapping(value = "menu/drink_list")
	public String drink_list(String CATE_CD, Model model) {
		if(CATE_CD == null) model.addAttribute("CATE_CD", "");
		else model.addAttribute("CATE_CD", CATE_CD);
		return "menu/drink_list";
	}

	@RequestMapping(value = "menu/drink_view")
	public String drink_view(String product_cd, Model model) {
		model.addAttribute("product_cd", product_cd);
		return "menu/drink_view";
	}

	@RequestMapping(value = "menu/food_list")
	public String food_list() {
		return "menu/food_list";
	}

	@RequestMapping(value = "menu/food_view")
	public String food_view(String product_cd, Model model) {
		model.addAttribute("product_cd", product_cd);
		return "menu/food_view";
	}

	@RequestMapping(value = "menu/product_list")
	public String product_list() {
		return "menu/product_list";
	}

	@RequestMapping(value = "menu/product_view")
	public String product_view(String product_cd, Model model) {
		model.addAttribute("product_cd", product_cd);
		return "menu/product_view";
	}
	
	//sale
	@RequestMapping(value = "menu/orderList")//값 받아서 쿠키에 넣기
	public String orderList() {
		service.resetOrderList();
		return "menu/orderList";
	}

	@RequestMapping(value = "menu/myOrder")
	public String menu_myOrder() {
		
		return "menu/myOrder";
	}

	
	@RequestMapping(value="menu/couponUse")
	public String couponUse(E_couponDTO eCouponDTO, Model model) throws ParseException  {
		service.couponUse(eCouponDTO, model);
		return "menu/coupon_popup";
	}
	
	@RequestMapping(value="menu/cardChoice")
	public String cardChoice(CardDTO cardDTO, Model model) {
		service.cardChoice(cardDTO, model);
		return "menu/starbucksCard";
	}

	
	// ajax
	@ResponseBody // 메뉴list-지혜
	@PostMapping(value = "upload/json/menu/{path}", produces = "application/json; charset=UTF-8")
	public String ajaxJson(@PathVariable String path) throws FileNotFoundException, IOException {
		String mappingPath = "upload/json/menu/" + path + ".json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}

	@ResponseBody // 제품정보-지혜
	@PostMapping(value = "menu/productViewAjax", produces = "application/json; charset=UTF-8")
	public String productViewAjax(HttpServletRequest request) throws FileNotFoundException, IOException {
		String product_cd = request.getParameter("product_cd");
		String product_cate = request.getParameter("product_cate");
		String mappingPath = "";
		if (product_cate.equals("drink"))
			mappingPath = "upload/json/menu/detail/info_drink.json";
		else if (product_cate.equals("food"))
			mappingPath = "upload/json/menu/detail/info_food.json";
		else if (product_cate.equals("product"))
			mappingPath = "upload/json/menu/detail/info_product.json";

		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		JsonObject result = new JsonObject();
		JsonElement cd = obj.get(product_cd);
		result.add("view", cd);
		return result.toString();
	}

	@ResponseBody // 파일이미지-지혜
	@PostMapping(value = "menu/productFileAjax", produces = "application/json; charset=UTF-8")
	public String productFileAjax(HttpServletRequest request) throws FileNotFoundException, IOException {
		String product_cd = request.getParameter("product_cd");
		String product_cate = request.getParameter("product_cate");
		String mappingPath = "";
		if (product_cate.equals("drink"))
			mappingPath = "upload/json/menu/detail/file_drink.json";
		else if (product_cate.equals("food"))
			mappingPath = "upload/json/menu/detail/file_food.json";
		else if (product_cate.equals("product"))
			mappingPath = "upload/json/menu/detail/file_product.json";

		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		JsonObject result = new JsonObject();
		JsonElement cd = obj.get(product_cd);
		result.add("file", cd);
		if (product_cate.equals("product"))
			return result.toString();
		StringBuffer strbuffer = new StringBuffer(result.toString());
		strbuffer.insert(8, "[");
		strbuffer.insert(strbuffer.length() - 1, "]");
		return strbuffer.toString();
	}
	
	@ResponseBody // 나만의 음료 카테고리-지혜
	@PostMapping(value = "menu/getMsrXoCategoryList", produces = "application/json; charset=UTF-8")
	public String getMsrXoCategoryList(HttpServletRequest request) throws FileNotFoundException, IOException {
		String mappingPath = "upload/json/menu/custom/category.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}
	
	@ResponseBody // 나만의 음료 선택-지혜
	@PostMapping(value = "menu/getMsrXoSkuList", produces = "application/json; charset=UTF-8")
	public String getMsrXoSkuList(HttpServletRequest request) throws FileNotFoundException, IOException {
		String gbn = request.getParameter("gbn");
		String mappingPath = "";
		if(gbn.equals("A")) {
			mappingPath = "upload/json/menu/custom/all.json";
		}else {
			String categoryCode = request.getParameter("categoryCode");
			//
			mappingPath = "upload/json/menu/custom/" + categoryCode + ".json";
		}
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}
	
	@ResponseBody // 나만의 음료 커스텀 카테고리-지혜
	@PostMapping(value = "menu/getMsrXoCustomCategoryList", produces = "application/json; charset=UTF-8")
	public String getMsrXoCustomCategoryList(HttpServletRequest request) throws FileNotFoundException, IOException {
		String product_cd = request.getParameter("skuNo");
		String mappingPath = "upload/json/menu/custom/customCategoryList.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		JsonElement data = obj.get(product_cd);
		JsonObject result = new JsonObject();
		result.addProperty("result_code", "SUCCESS");
		result.add("data", data);
		return result.toString();
	}
	
	@ResponseBody // 나만의 음료 커스텀 가져오기-지혜
	@PostMapping(value = "menu/getMsrXoCustomSkuList", produces = "application/json; charset=UTF-8")
	public String getMsrXoCustomSkuList(HttpServletRequest request) throws FileNotFoundException, IOException {
//		categoryCode: 휩C0000012 , 드리즐C0000141, 컵옵션C0000169
		String categoryCode = request.getParameter("categoryCode");
		String mappingPath = "upload/json/menu/custom/detail/" + categoryCode + ".json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}
	
	@ResponseBody // 나만의 음료 등록하기-지혜
	@PostMapping(value = "menu/setMsrXoMyMenuRegister")
	public String setMsrXoMyMenuRegister(@RequestBody HashMap<String,String> data){
//		"delegateSku"     : delegateSku
//		,"nickname"        : repalceAnd(nickname)
//		,"p_name"		   : p_name
//		,"customFlag"      : customFlag
//		,"cupType"         : cupType
//		,"customList"      : customList
		if(data != null) {
			if(service.setMyMenu(data)) return "SUCCESS";
		}
		return "FAIL";
	}
	
	
	//sale관련
	@ResponseBody // 장바구니 리스트-지혜
	@PostMapping(value = "menu/setOrderAjax")
	public String setOrderAjax(@RequestBody HashMap<String,String> data){
		if(data != null) {
			if(service.setOrderList(data)) return "SUCCESS";
		}
		return "FAIL";
	}
	
	@ResponseBody // 결제하기 값 세팅-지혜
	@PostMapping(value = "menu/setOrderCountAjax")
	public String setOrderCountAjax(@RequestBody HashMap<String,String> data){
		if(data != null) {
			if(service.setOrderCount(data)) return "SUCCESS";
		}
		return "FAIL";
	}
	
	@RequestMapping(value = "menu/payment")
	@ResponseBody // 결제하기 - 지혜
	public int payment(@RequestBody HashMap<String,String> data) throws ParseException {
		System.out.println(data);
		String date = data.get("pay_date");
		date = date.substring(0, 19).replace("T", " ");
		data.put("pay_date", date);
		
		int res = service.payment(data);
		if(res == 1) {
			System.out.println("결제값 저장 완료");
		}
		//성공시 1반환
		return res;
	}

	@ResponseBody // 결제하기 값 세팅-지혜
	@PostMapping(value = "menu/resetOrderAjax")
	public String resetOrderAjax(){
		service.resetOrderList();
		return "SUCCESS";
	}
	
/*	
	//DB에 넣을 json파일생성
	@RequestMapping("menu/makeDrinkMenu")
	public String makeDrinkMenu() throws FileNotFoundException, IOException {
		//20new 25브루드 26에스프레소 27티 31프라푸치노 34기타제조음료 37블렌디드 39피지오 41콜드브루 
		//42추천 46콜드브루 56디카페인 65에스프레소 66에스프레소
		String fileName[] = { "25", "26", "27", "31", "34", "37", "39", "41", "46", "56", "65", "66"};
		JsonArray drinkfile = new JsonArray();//음료가 담길 json 배열
		for(String file : fileName) {
			String category = "";
			switch(file) {
			case "25": category = "브루드"; break;
			case "26": category = "에스프레소"; break;
			case "27": category = "티"; break;
			case "31": category = "프라푸치노"; break;
			case "34": category = "기타제조음료"; break;
			case "37": category = "블렌디드"; break;
			case "39": category = "피지오"; break;
			case "41": category = "콜드브루"; break;
			case "46": category = "콜드브루"; break;
			case "56": category = "디카페인"; break;
			case "65": category = "에스프레소"; break;
			case "66": category = "에스프레소"; break;
			}
			String mappingPath = "upload/json/menu/custom/makefile/" + file + ".json";
			ClassPathResource resource = new ClassPathResource(mappingPath);
			FileReader reader = new FileReader(resource.getFile());
			Gson gson = new Gson();
			JsonObject obj = gson.fromJson(reader, JsonObject.class);
			JsonArray list = obj.get("menuList").getAsJsonArray();
			System.out.println("@메뉴리스트 시작@");
			for(JsonElement tmp : list) {
				JsonObject aa = tmp.getAsJsonObject();
				JsonArray jarr = aa.get("hotSku").getAsJsonObject().get("hotSkuList").getAsJsonArray();
				if(jarr.isEmpty()) {
					jarr = aa.get("icedSku").getAsJsonObject().get("icedSkuList").getAsJsonArray();
				}
				String price = jarr.get(0).getAsJsonObject().get("price").getAsString();
				System.out.print("가격확인 : " + price);
				String name = aa.get("delegateSku").getAsJsonObject().get("skuName").getAsString();
				System.out.println(" 이름 : " + name);
				
				//json파일 만들기
				JsonObject drinkentry = new JsonObject();
				drinkentry.addProperty("p_category1", "음료");
				drinkentry.addProperty("p_category2", category);
				drinkentry.addProperty("p_name", name);
				drinkentry.addProperty("p_price", price);
				drinkfile.add(drinkentry);
			}
		}
		
		String filepathName = "C:\\Users\\gmg_2\\Desktop\\drink.json" ;
		try{
			// BufferedWriter 와 FileWriter를 조합하여 사용 (속도 향상)
			BufferedWriter fw = new BufferedWriter(new FileWriter(filepathName, true));
			// 파일안에 문자열 쓰기
			fw.write(drinkfile.toString());
			fw.flush();
			// 객체 닫기
			fw.close(); 
		}catch(Exception e){
			e.printStackTrace();
		}
		return "index";
	}
*/	
	
	//DB에 값 넣는 작업 **딱 한번만 실행** 지혜
	@RequestMapping("init/initDrink")
	public String initDrink() throws FileNotFoundException, IOException{
		service.insertMenu("drink");
		return "index";
	}
	
	@RequestMapping("init/initFood")
	public String initFood() throws FileNotFoundException, IOException{
		service.insertMenu("food");
		return "index";
	}
	
	@RequestMapping("init/initEtc")
	public String initEtc() throws FileNotFoundException, IOException{
		service.insertMenu("etc");
		return "index";
	}
	
}
