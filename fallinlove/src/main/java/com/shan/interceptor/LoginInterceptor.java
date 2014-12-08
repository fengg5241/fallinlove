package com.shan.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Controller
public class LoginInterceptor extends HandlerInterceptorAdapter{

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		StringBuffer requestURL = request.getRequestURL();
		if (requestURL.indexOf("/resources/") != -1 || requestURL.indexOf(".js") != -1 
				|| requestURL.indexOf(".png") != -1|| requestURL.indexOf(".jpg") != -1) {
			return true;
		}
		if (request.getRequestURL().indexOf("login") != -1 || request.getRequestURL().indexOf("register") != -1) {
			return true;
		}else {
//			Object userId = request.getSession().getAttribute("userId");
//			if (userId == null) {
//				response.sendRedirect(request.getContextPath() + "/login");
//				return false;
//			}else {
//				return true;
//			}
			return true;
		}
	}

}
