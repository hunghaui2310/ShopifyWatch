package com.shopify.config;

import com.shopify.model.Role;
import com.shopify.model.User;
import com.shopify.repo.CategoryRepository;
import com.shopify.repo.UserRepository;
import com.shopify.service.security.UserPrincipal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
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
            UserPrincipal userPrincipal = buildUserPrincipal(username);
            if (userPrincipal != null) {
                UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userPrincipal, null, userPrincipal.getAuthorities());
                SecurityContextHolder.getContext().setAuthentication(authentication);
            }
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

    private UserPrincipal buildUserPrincipal(String username) {
        if (Objects.isNull(username) || username.length() == 0) {
            return null;
        }
        User user = userRepository.findByUsername(username);
        Set<Role> roles = user.getRoles();
        Set<String> roleNames = roles.stream().map(Role::getName).collect(Collectors.toSet());
        Collection<GrantedAuthority> authorities = roleNames.stream().map(SimpleGrantedAuthority::new).collect(Collectors.toList());
        return new UserPrincipal(user.getId(), username, user.getPassword(), authorities);
    }
}
