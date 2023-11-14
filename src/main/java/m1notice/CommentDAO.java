package m1notice;

import java.util.List;
import java.util.Vector;

import common.JDBConnect;
import jakarta.servlet.ServletContext;

public class CommentDAO extends JDBConnect {
	
	public CommentDAO() {
		super();
	}
	
	public List<CommentDTO> selectList(String tname, int bidx) {
		List<CommentDTO> clist = new Vector<CommentDTO>(); //벡터는 리스트의 일종. ArrayList와 유사
		String sql = "SELECT * FROM comment WHERE bidx="+bidx+" AND tname"+tname;
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			//2개 이상의 레코드가 반환될수있으므로 while문 사용 > setter이용하여 각컬럼값을 멤버변수에 저장	
			while(rs.next()) {
				CommentDTO cdto = new CommentDTO();
				cdto.setCidx(rs.getInt(1));
				cdto.setBidx(rs.getInt(2));
				cdto.setName(rs.getString(3));
				cdto.setPostdate(rs.getDate(4));
				cdto.setContent(rs.getString(5));
				cdto.setLikecnt(rs.getInt(6));
				cdto.setOfile(rs.getString(7));
				cdto.setSfile(rs.getString(8));
				cdto.setTname(rs.getString(9));
				
				clist.add(cdto); //리스트에 dto추가
			}
		}catch(Exception e) {
			System.out.println("답글 조회 중 예외발생"); 
			e.printStackTrace();
		}
		return clist;
	}
	
	public int plusLikecnt(int cidx) {
		int result = 0;
		String sql = "UPDATE comment SET likecnt=likecnt+1 WHERE cidx=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, cidx);
			result = psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("좋아요 수 증가 중 예외발생");
			e.printStackTrace();
		}
		return result;
	}
	
	//답글 입력위한 메소드. 폼값이 저장된 dto객체를 인수로 받는다.
	public int insert(CommentDTO cdto) {
		int result=0;
		try {
			String sql = "INSERT INTO comment (bidx, name, content, ofile, sfile, tname) VALUES (?, ?, ?, ?, ?, ?)";
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, cdto.getBidx());
			psmt.setString(2, cdto.getName());
			psmt.setString(3, cdto.getContent());
			psmt.setString(4, cdto.getOfile());
			psmt.setString(5, cdto.getSfile());
			psmt.setString(6, cdto.getTname());
			result = psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("답글 입력 중 예외발생 : "+result+", "+cdto.getBidx()+", "+cdto.getName()+", "+cdto.getTname());
			e.printStackTrace();
		} 
		return result;
	}
	
	//답글 수정하기 > 특정일련번호에 해당하는 게시물 수정
	public int edit(CommentDTO cdto) {
		int result=0;
		try {
			String sql = "UPDATE comment SET content=?, ofile=? sfile=? WHERE cidx=?";
			psmt = con.prepareStatement(sql);
			psmt.setString(1, cdto.getContent());
			psmt.setString(2, cdto.getOfile());
			psmt.setString(3, cdto.getSfile());
			psmt.setInt(4, cdto.getCidx());
			result = psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("답글 수정 중 예외발생");
			e.printStackTrace();
		}
		return result;
	}
	
	public int deletePost(CommentDTO cdto) {
		int result=0;
		try {
			String sql = "DELETE FROM comment WHERE cidx=?";
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, cdto.getCidx());
			result = psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("답글 삭제 중 예외발생");
			e.printStackTrace();
		}
		return result;
	}
}
