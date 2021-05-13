package com.workspace.admin.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/")
public class AdminLoginController {
	
	@RequestMapping(value = "/admin/main", method = RequestMethod.GET)
	public String main() {
		return "main";
	}

}
