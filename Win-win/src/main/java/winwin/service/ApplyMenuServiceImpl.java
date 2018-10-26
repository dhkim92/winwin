package winwin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import winwin.dao.ApplyMenuDao;

@Service
public class ApplyMenuServiceImpl implements ApplyMenuService{
	
	@Autowired ApplyMenuDao applyMenuDao;

	@Override
	public List getJobopenBasic() {
		
		
		return applyMenuDao.getJobopenBasic();
	}

}
