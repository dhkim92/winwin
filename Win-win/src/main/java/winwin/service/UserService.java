package winwin.service;

import org.springframework.stereotype.Service;

import winwin.dto.Member;

@Service
public interface UserService {
	

	public boolean login(Member member);

	public Member info(Member member);

	public void join(Member member);

	public boolean idcheck(Member member);

	public boolean emailSearchCnt(Member member);

	public Member emailSearch(Member member);
}
