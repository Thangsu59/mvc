package com.mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LottoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<String> lotto = new ArrayList<>();

	public LottoServlet() {
		// 중복되지 않은 난수 1~45 6개를 만들어서 lotto저장
		Random r = new Random();
		while(lotto.size()<6) {
			String rNum=r.nextInt(45)+1+"";
			if(!lotto.contains(rNum)) {
				lotto.add(rNum);
			}
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		int idx = uri.lastIndexOf("/");
		uri = uri.substring(idx + 1);
		String path = "/WEB-INF/views/";
		if ("lotto".equals(uri)) {
			path += "lotto/lotto.jsp";

		} else if ("comp".equals(uri)) {
			String[] nums = request.getParameterValues("num");
			// lotto와 nums안의 것들을 비교하여 몇개 맞췄는지 result.jsp 보내기
			
			int correctCnt=0;
			for(String num:nums) {
				if(lotto.contains(num)) {
					correctCnt++;
				}
			}
			request.setAttribute("correctCnt", correctCnt);
			path += "lotto/result.jsp";

		}
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
