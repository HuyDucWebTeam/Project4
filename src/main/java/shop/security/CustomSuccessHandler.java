package shop.security;

import java.io.IOException;
import java.util.Set;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class CustomSuccessHandler implements AuthenticationSuccessHandler {

	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		String targetUrl = determineTargetUrl(authentication);
        redirectStrategy.sendRedirect(request, response, targetUrl);
	}

	private String determineTargetUrl(Authentication authentication) {

		String url = "";

		Set<GrantedAuthority> grantedAuthorities = authentication.getAuthorities().stream().collect(Collectors.toSet());

		if (isAdmin(grantedAuthorities)) {
			url = "/admin";
		} else if (isUser(grantedAuthorities)) {
			url = "/user/viewItems";
		}

		return url;
	}

	private boolean isUser(Set<GrantedAuthority> grantedAuthorities) {

		Predicate<GrantedAuthority> compare = s -> s.getAuthority().equals("ROLE_USER");
		return grantedAuthorities.stream().anyMatch(compare::test);
	}

	private boolean isAdmin(Set<GrantedAuthority> grantedAuthorities) {
		Predicate<GrantedAuthority> compare = s -> s.getAuthority().equals("ROLE_ADMIN");
		return grantedAuthorities.stream().anyMatch(compare::test);
	}

}
