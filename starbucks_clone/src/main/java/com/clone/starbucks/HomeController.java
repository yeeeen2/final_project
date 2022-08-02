package com.clone.starbucks;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clone.starbucks.DTO.UserInfoDTO;
import com.google.gson.JsonObject;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {
	@Autowired HttpSession session;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "index";
	}

	@RequestMapping(value = "index")
	public String index() {
		return "index";
	}

	// ajax
	@ResponseBody // 로그인 확인-지혜
	@PostMapping(value = "**/interface/checkLogin", produces = "application/json; charset=UTF-8")
	public String checkLogin() {
		JsonObject obj = new JsonObject();
		UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
		if (user != null) obj.addProperty("result_code", "SUCCESS");
		else obj.addProperty("result_code", "FAIL");
		return obj.toString();
	}

	@ResponseBody // 리워드요약 - 예은
	@PostMapping(value = "**/interface/getMsrRewardSummary", produces = "application/json; charset=UTF-8")
	public String getMsrRewardSummary() {
		JsonObject obj = new JsonObject();
		obj.addProperty("result_code", "SUCCESS");
		obj.addProperty("data", "");
//      {
//          "result_code": "FAIL",
//          "error_msg": "",
//          "alert_msg": "",
//          "location_href": "",
//          "location_replace": "",
//          "custom_script": "",
//          "total_cnt": 0,
//          "data": null,
//          "result_api_code": ""
//      }

		return obj.toString();
	}
   
	//단 - 에러페이지
	@RequestMapping("error_page")
	   public String error_page() {
	      return "error_page";
	   }
	
}
