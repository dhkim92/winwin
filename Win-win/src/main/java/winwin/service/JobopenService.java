package winwin.service;

import java.util.List;

import winwin.dto.JobopenBasic;
import winwin.dto.JobopenDetail;

public interface JobopenService {
	
	
	/**
	 * 기본정보 삽입하기
	 * @param jobopenBasic
	 */
	public void writeBasic(JobopenBasic jobopenBasic);
	
	/**
	 * 
	 * @param jobopenDetail
	 */
	public void writeDetail(JobopenDetail jobopenDetail);
	
	//---
	public List<JobopenDetail> selectDetail(JobopenDetail jobopenDetail);
	
	public void updateBasic(JobopenBasic jobopenBasic);
	//---
	
	
	/**
	 * 페이징처리해서 JobopenBasic 정보 리스트만들기
	 * 
	 * @param paging
	 * @return List
	 */
//	public List<JobopenBasic> selectBasic(Paging paging);
	
	/**
	 * 페이징처리 하기
	 * 
	 * @param curPage
	 * @param listCount
	 * @param pageCount
	 * @return Paging
	 */
//	public Paging getPaging(int curPage, int listCount, int pageCount);
	
	
	/**
	 * 기본정보 게시글 보기
	 * 
	 * @param jobopenBasic
	 * @return JobopenBasic
	 */
	public JobopenBasic viewBasic(JobopenBasic jobopenBasic);
	
	/**
	 * 세부정보 게시글 보기
	 * 
	 * @param jobopenDetail
	 * @return JobopenDetail
	 */
	public JobopenDetail viewDetail(JobopenDetail jobopenDetail);
	
	/**
	 * 게시글 삭제하기
	 * 
	 * @param jobopenBasic
	 */
	public void deleteJobOpen(JobopenBasic jobopenBasic); // 두 테이블 컬럼 삭제
	
	/**
	 * 게시글 수 반환
	 * @return int
	 */
	public int CountBasic();
	
}
