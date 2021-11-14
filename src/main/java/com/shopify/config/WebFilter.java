package com.shopify.config;

import com.shopify.model.Role;
import com.shopify.model.User;
import com.shopify.repo.CategoryRepository;
import com.shopify.repo.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

@Component
public class WebFilter implements Filter {

    private final String[] EXCLUDE_URL = new String[]{"resources"};

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private UserRepository userRepository;

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        if (Arrays.stream(EXCLUDE_URL).noneMatch(item -> request.getRequestURL().toString().contains(item))) {
            String username = getUserLogin(request);
            request.setAttribute("username", username);
            request.setAttribute("categories", categoryRepository.findAll());
        }
        filterChain.doFilter(request, servletResponse);
    }

    private String getUserLogin(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            if (request.getUserPrincipal() != null) {
                return request.getUserPrincipal().getName();
            }
        }
        return "";
    }
}
