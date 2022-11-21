package com.spring.ex.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.UserDAO;

@Service
public class UserUpdateEmailCommand {

	@Autowired
	private UserDAO dao;

	public int execute(Model model) {
		System.out.println("========== Update Email Command ==========");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String u_id = request.getParameter("u_id");
		String u_email = request.getParameter("u_email");

		int result = dao.updateEmail(u_id, u_email);
		if (1 == result) {
			System.out.println("========== Email Update Success ==========");

			return 1;
		} else {
			System.out.println("========== Email Update Failed ==========");

			return 0;
		}
	}
}
