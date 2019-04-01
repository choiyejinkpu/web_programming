package kpu.free.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kpu.free.domain.freeVO;



public class freeDAO {
	
	private static freeDAO instance;
	
	public static freeDAO getInstance() {
		if(instance==null)
			instance =new freeDAO();
		return instance;
	}


	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost:3306/jspdb?useSSL=false&serverTimezone=UTC";
	
	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "jspbook","passwd");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
public ArrayList<freeVO> getmemList() {
		connect();
		
		ArrayList<freeVO> memlist = new ArrayList<freeVO>();
		String sql = "select * from member";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				freeVO ab= new freeVO();
				ab.setUsername(rs.getString("username"));
				ab.setId(rs.getString("id"));
				ab.setSex(rs.getString("sex"));
				
				memlist.add(ab);
				}
			rs.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return memlist;
	
}
	
	
public boolean insertMember(freeVO freeVO) {
	    	connect();
	        String sql = "insert into member values(?,?,?,?,?,?,?)";
	       
	        try {
	        	
	        	pstmt=conn.prepareStatement(sql);
	        	
	        	pstmt.setString(1, freeVO.getUsername());
	        	pstmt.setString(2, freeVO.getTel());
	        	pstmt.setString(3, freeVO.getEmail());
	        	pstmt.setString(4, freeVO.getSex());
	        	pstmt.setString(5, freeVO.getHome());
	        	pstmt.setString(6, freeVO.getId());
	        	pstmt.setString(7, freeVO.getPasswd());

	        	
	             
	        	pstmt.executeUpdate();
	        } 
	        catch(SQLException e) {
				e.printStackTrace();
				return false;}
	        finally {
	            disconnect();
	        }
			return true;
	    }


public freeVO selectMemberById(String id) throws SQLException {
	freeVO member = null;
	connect();
    String sql = "select * from member where id = ? ";
    try {
        
    	pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, id);
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
        	
        	member=new freeVO();
        	member.setId(rs.getString("id"));
        	member.setPasswd(rs.getString("passwd"));
        	member.setEmail(rs.getString("email"));
        	member.setTel(rs.getString("tel"));
        	member.setSex(rs.getString("sex"));
        	member.setUsername(rs.getString("username"));
        	member.setHome(rs.getString("home"));
        	
        	
        }
    }catch(SQLException e) {
    	e.printStackTrace();
    }finally {
    	disconnect();
    }    
    return member;
}



public void deleteMemberById(String id) throws SQLException{
	
	connect();
    String sql = "delete from member where id = ?";
     
    try{
    	
    	pstmt=conn.prepareStatement(sql);
    	
         
        pstmt.setString(1, id);
         
        pstmt.executeUpdate();
         
    } finally{
    	disconnect();
    }
     
         
}






}