package quiz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DBPKG.DBConnect;

public class MemberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public MemberDAO() {
		try {
			con = DBConnect.getConnection();
			System.out.println("연결성공");
			} catch (Exception e) { e.printStackTrace(); }
		
	}
	
	public ArrayList<MemberDTO>  newst() {
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		String sql = "select * from student";
		try {
			ps = con.prepareStatement(sql);
			rs= ps.executeQuery();
			
			while(rs.next()) {
				
				  MemberDTO dto = new MemberDTO(); 
				  
				  dto.setId(rs.getString("id"));
				  dto.setName(rs.getString("name")); 
				  dto.setKor(rs.getString("kor"));
				  dto.setEng(rs.getString("eng")); 
				  dto.setMath(rs.getString("math"));
				  
				 list.add(dto);
				 
				
				
				System.out.println("id: "+rs.getString("id"));
				System.out.println("name: "+rs.getString("name"));
				System.out.println("kor: "+rs.getString("kor"));
				System.out.println("eng: "+rs.getString("eng"));
				System.out.println("math: "+rs.getString("math"));
				
				/*
				 * System.out.println("name: "+rs.getString("name"));
				 * System.out.println("kor: "+rs.getString("kor"));
				 * System.out.println("eng: "+rs.getString("eng"));
				 * System.out.println("math: "+rs.getString("math"));
				 * System.out.println("=========================");
				 */
				
				
				}
			} catch (Exception e) { e.printStackTrace(); }
		
		return list;
	}
		
	
		public MemberDTO getUser(String id) {
			System.out.println("id : "+id);
			String sql = "select * from student where id=?";
			MemberDTO dto = new MemberDTO();
			
			
			try {
				ps=con.prepareStatement(sql);
				ps.setString(1,id);
				
				rs=ps.executeQuery();
				
				if(rs.next()) {
					dto.setId(rs.getString("id"));
					dto.setName(rs.getString("name"));
					dto.setKor(rs.getString("kor"));
					dto.setEng(rs.getString("eng"));
					dto.setMath(rs.getString("math"));
				}
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
			return dto;
		}
	
	
	
}
