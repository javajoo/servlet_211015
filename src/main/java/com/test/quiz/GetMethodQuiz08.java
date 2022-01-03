package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz08")
public class GetMethodQuiz08 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		List<String> list = new ArrayList<>(Arrays.asList(
				"강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		
		String search = request.getParameter("search");
		
		out.print("<html><head></head></body>");
//		for (int i = 0; i < list.size(); i++) {
//			if (list.get(i).contains(search)) {
//				out.print(list.get(i) + "<br>");
//			}
//		}
		
		// 진하게 만들기 과제!! 
		
		
		Iterator<String> iter = list.iterator();
			while (iter.hasNext()) {
				String line = iter.next();
				
//				// 검색 
//				if (line.contains(search)) {
//					out.print(line + "<br>");
//				}
				
				 풀이1)
//				int index = line.indexOf(search);
//				if (index > -1) { // -1은 내용이 없다.
//					StringBuffer sb = new StringBuffer();
//					sb.append(search);
//					sb.insert(index, "<b>"); // |맛집  : | 이 부분에 <b> 태그 추가
//					sb.insert(index + search.length() + 3, "</b>"); // <b>맛집| : | 이 부분에 </b> 태그 추가
//					
//					out.print(sb +"<br>");
//				}
				
//				// 풀이2)
//				if (line.contains(search)) {
//					String[] words = line.split(search);
//					out.print(words[0] + "<b>" + search + "</b>" + words[1] + "<br>");
//				}
				
				// 풀이3)
				if (line.contains(search)) {
					line = line.replace(search, "<b>" + search + "</b>"); // 꼭 저장을 해주거나 바로 출력을 해야 한다!!!
					out.print(line + "<br>");
				}
				
				


				
			}
		
		
		out.print("</body></html>");
	
	}
}
