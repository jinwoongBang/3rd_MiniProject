package kr.co.jobstory.mypage.user.service;

import java.util.List;

import kr.co.jobstory.repository.domain.InterBoard;
import kr.co.jobstory.repository.domain.Page;

public interface CommunityInterviewService {
	List<InterBoard> list(Page page);
	int listCount();
	InterBoard detail(int no);
	void insertBoard(InterBoard board);
	int deleteBoard(int no);
	void viewCnt(int no);
	void updateBoard(InterBoard board);
}
