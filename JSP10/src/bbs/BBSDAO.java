package bbs;

import java.sql.*;
import java.util.ArrayList;

public class BBSDAO {
	DBConnectionMgr pool;
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	BBSDTO bbsDTO2;
	
	public BBSDAO() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public ArrayList list() throws Exception {
		con = pool.getConnection();
		String sql = "select * from A_Member";
		ps  = con.prepareStatement(sql);
		rs  = ps.executeQuery();
		ArrayList list = new ArrayList();
		
		while(rs.next()) {
			bbsDTO2 = new BBSDTO();
			bbsDTO2.setMNo(rs.getString(1));
			bbsDTO2.setMCode(rs.getString(2));
			bbsDTO2.setMId(rs.getString(3));
			bbsDTO2.setMPw(rs.getString(4));
			bbsDTO2.setMEmail(rs.getString(5));
			bbsDTO2.setMAdmin(rs.getString(6));
			bbsDTO2.setMDate(rs.getString(7));
			
			list.add(bbsDTO2);
		}
		pool.freeConnection(con, ps, rs);
		return list;
	}
	
	
	
	public void update(BBSDTO bbsDTO) throws Exception {
		con = pool.getConnection();
		String sql = "update A_Member set MCode =?, MId =?, MPw =?, MEmail =?, MAdmin =?  where MNo  = ? ";
		ps  = con.prepareStatement(sql);
		ps.setString(1, bbsDTO.getMNo());
		ps.setString(2, bbsDTO.getMCode());
		ps.setString(3, bbsDTO.getMId());
		ps.setString(4, bbsDTO.getMPw());
		ps.setString(5, bbsDTO.getMEmail());
		ps.setString(6, bbsDTO.getMAdmin());
		
		ps.executeUpdate();
		pool.freeConnection(con, ps);
	}
	
	
	public  BBSDTO select(BBSDTO bbsDTO) throws Exception {
		con = pool.getConnection();
		String sql = "select * from A_Member where MNo = ?";
		ps  = con.prepareStatement(sql);
		ps.setString(1, bbsDTO.getMNo());
		rs  = ps.executeQuery();
		while(rs.next()) {
			bbsDTO2 = new BBSDTO();
			bbsDTO2.setMNo(rs.getString(1));
			bbsDTO2.setMCode(rs.getString(2));
			bbsDTO2.setMId(rs.getString(3));
			bbsDTO2.setMPw(rs.getString(4));
			bbsDTO2.setMEmail(rs.getString(5));
			bbsDTO2.setMAdmin(rs.getString(6));
		}
		pool.freeConnection(con, ps, rs);
		return bbsDTO2;
	}
	
	public  BBSDTO selectID(String id) throws Exception {
		con = pool.getConnection();
		String sql = "select * from A_Member where MNo = ?";
		ps  = con.prepareStatement(sql);
		ps.setString(1, id);
		rs  = ps.executeQuery();
		while(rs.next()) {
			bbsDTO2 = new BBSDTO();
			bbsDTO2.setMNo(rs.getString(1));
			bbsDTO2.setMCode(rs.getString(2));
			bbsDTO2.setMId(rs.getString(3));
			bbsDTO2.setMPw(rs.getString(4));
			bbsDTO2.setMEmail(rs.getString(5));
			bbsDTO2.setMAdmin(rs.getString(6));
			bbsDTO2.setMDate(rs.getString(7));
		}
		pool.freeConnection(con, ps, rs);
		return bbsDTO2;
	}
	
	public void delete(BBSDTO bbsDTO) throws Exception {
		con = pool.getConnection();
		String sql = "delete from A_Member where MNo = ?";
		ps  = con.prepareStatement(sql);
		ps.setString(1, bbsDTO.getMNo());
		ps.executeUpdate();
		pool.freeConnection(con, ps);
	}

	public void insert(BBSDTO bbsDTO) throws Exception {
		con = pool.getConnection();
		String sql = "insert into A_Member values (?,?,?,?,?,?)";
		ps.setString(1, bbsDTO.getMNo());
		ps.setString(2, bbsDTO.getMCode());
		ps.setString(3, bbsDTO.getMId());
		ps.setString(4, bbsDTO.getMPw());
		ps.setString(5, bbsDTO.getMEmail());
		ps.setString(6, bbsDTO.getMAdmin());
		ps.executeUpdate();
		pool.freeConnection(con, ps);
	}

}
