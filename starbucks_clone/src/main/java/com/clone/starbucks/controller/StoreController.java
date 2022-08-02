package com.clone.starbucks.controller;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

@Controller
public class StoreController {

	// store
	@RequestMapping(value = "store/store_community")
	public String store_community() {
		return "store/store_community";
	}

	@RequestMapping(value = "store/store_drive")
	public String store_drive() {
		return "store/store_drive";
	}

	@RequestMapping(value = "store/store_map")
	public String store_map() {
		return "store/store_map";
	}

	@RequestMapping(value = "store/store_reserve")
	public String store_reserve() {
		return "store/store_reserve";
	}

	
	// ajax
	@ResponseBody // step1. 시,도 리스트-예은
	@PostMapping(value = "upload/json/store/map/getSidoList", produces = "application/json; charset=UTF-8")
	public String getSidoList(HttpServletRequest request) throws FileNotFoundException, IOException {
		String mappingPath = "upload/json/store/map/getSidoList.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		return obj.toString();
	}

	@ResponseBody // step2. 구,군 리스트-예은
	@PostMapping(value = "upload/json/store/map/getGugunList", produces = "application/json; charset=UTF-8")
	public String getGugunList(HttpServletRequest request) throws FileNotFoundException, IOException {
		String sido_nm = request.getParameter("sido_nm");
		String mappingPath = "upload/json/store/map/getGugunList.json";
		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		JsonObject result = new JsonObject();
		JsonElement cd = obj.get(sido_nm);
		result.add("list", cd);

		return result.toString();
	}

	@ResponseBody // step3. 스토어 리스트-지혜
	@PostMapping(value = "upload/json/store/storelist/getStore", produces = "application/json; charset=UTF-8")
	public String getStore(HttpServletRequest request) throws FileNotFoundException, IOException {
		String searchType = request.getParameter("searchType");
		String sido_cd = request.getParameter("p_sido_cd");
		String gugun_cd = request.getParameter("p_gugun_cd");
		String T01 = request.getParameter("T01") == null ? "" : request.getParameter("T01");
		String T03 = request.getParameter("T03") == null ? "" : request.getParameter("T03");
		String T12 = request.getParameter("T12") == null ? "" : request.getParameter("T12");
		String mappingPath = "";
		// 초기값 : isError:true , in_distance:5(보이는거리) //iend:10(보여줄 갯수?)
		// 이동 후 값 : isError:false, in_distance:1 //iend:20
		// 테마 : T01-드라이브스루 , T03-리저브, T12-커뮤니티. 값은 1일경우 ok
		if (searchType.equals("A")) {
			// 검색x, 모두
			if (T01.equals("1"))
				mappingPath = "upload/json/store/storelist/getStore_DT.json";
			else if (T03.equals("1"))
				mappingPath = "upload/json/store/storelist/getStore_reserve.json";
			else if (T12.equals("1"))
				mappingPath = "upload/json/store/storelist/getStore_community.json";
			else
				return "";
		} else if (searchType.equals("C")) {
			// 검색x, 시.도
			mappingPath = "upload/json/store/storelist/getStore_" + sido_cd + ".json";
		} else {
			// B&D&E -> 즐겨찾기&매장검색. 이용안함.
			return "";
		}

		ClassPathResource resource = new ClassPathResource(mappingPath);
		FileReader reader = new FileReader(resource.getFile());
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		JsonObject result = new JsonObject();
		JsonElement list = obj.get("list");
		if (!searchType.equals("C")) {
			result.add("list", list);
			return result.toString();
		}
		JsonArray arrlist = list.getAsJsonArray();
		JsonArray arr = new JsonArray();
		for (int i = 0; i < arrlist.size(); i++) {
			JsonObject tmp = arrlist.get(i).getAsJsonObject();
			String gugun = tmp.get("gugun_code").toString().replace("\"", "");
			if (gugun.equals(gugun_cd))
				arr.add(tmp);
		}
		result.add("list", arr);
		return result.toString();

	}
}
