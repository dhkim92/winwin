package winwin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import winwin.dao.ApplyMenuDao;
import winwin.dto.Member;

@Service
public class ApplyMenuServiceImpl implements ApplyMenuService{
	
	@Autowired ApplyMenuDao applyMenuDao;

	@Override
	public List getJobopenBasic() {
		
		return applyMenuDao.getJobopenBasic();
	}

	@Override
	public List getJobopenBasic2() {
		
		return applyMenuDao.getJobopenBasic2();
	}

	@Override
	public List getNoticeBoard() {
		return applyMenuDao.getNoticeBoard();
	}

	@Override
	public List getQnaBoard() {
		return applyMenuDao.getQnaBoard();
	}

	@Override
	public boolean pwCheck(Member member) {
		if( applyMenuDao.pwCheck(member) == 1) return true;
		else 	return false; 
	}

}
