package com.test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

// 한글 깨짐 방지 필터 (주소 거르지 않고 모든 주소를 거르겠다.)
@WebFilter("/*")
public class CharacterEncodingFilter implements Filter{

	// 인터페이스를 구현해줘야 한다.
	// javax.servlet.Filter 임포트 해준다.
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		// 필터를 통과할 때 인코딩 설정
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		chain.doFilter(request, response);
		
		
		
		
		
		
		
	}
	
}
