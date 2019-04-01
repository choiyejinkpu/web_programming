package kpu.free.service;

import java.sql.SQLException;

import kpu.free.domain.freeVO;
import kpu.free.persistence.freeDAO;

public class freeMemberManageService {
	
	private static freeMemberManageService instance;
	
	private freeDAO freeDAO;
	
	public freeMemberManageService(){
		freeDAO = freeDAO.getInstance();
	}
	

public static freeMemberManageService getInstance() 
{
	        if (instance == null) {
	            instance = new freeMemberManageService();
	        }
	        return instance;
	        }

public void removeMemberById(String id) throws SQLException{
    freeDAO.deleteMemberById(id);
}

public void selectMemberById(String id) throws SQLException{
    freeDAO.selectMemberById(id);
}
public freeVO getMemberById(String id) throws SQLException{
    return freeDAO.selectMemberById(id);
}











}

