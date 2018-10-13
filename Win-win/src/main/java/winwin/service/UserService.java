package winwin.service;

import org.springframework.stereotype.Service;

import winwin.dto.User;

@Service
public interface UserService {
	

	public boolean login(User user);

	public User info(User user);

	public void join(User user);
}
