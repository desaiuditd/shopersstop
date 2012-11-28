package com.shoppersstop.filters;

import java.io.IOException;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class ClientFilter
 */
@WebFilter(dispatcherTypes = { DispatcherType.REQUEST, DispatcherType.FORWARD,
	DispatcherType.INCLUDE }, description = "Client Authentication Filter", urlPatterns = { "/client/*" })
public class ClientFilter implements Filter {

    /**
     * Default constructor. 
     */
    public ClientFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

	    HttpSession session = ((HttpServletRequest)request).getSession();
	    try {
		Boolean clientAuth = (Boolean) session.getAttribute("clientAuth");
		if (clientAuth == false || clientAuth == null) {
		    throw new NullPointerException();
		}
	    } catch (NullPointerException e) {
		((HttpServletResponse)response).sendRedirect("/cadet/Login");
		return;
	    }

	    chain.doFilter((HttpServletRequest)request, (HttpServletResponse)response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
