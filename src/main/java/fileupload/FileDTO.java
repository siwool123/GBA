package fileupload;

public class FileDTO {
	private int fidx;
	private int bidx;
	private String ofile; //원본파일명 (예 : 고길동_레포트_최종.doc)
	private String sfile; //저장파일명 (예 : 20230101_123059.doc)
	private String tname;
	public boolean isimage=false;
	
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getFidx() {
		return fidx;
	}
	public void setFidx(int fidx) {
		this.fidx = fidx;
	}
	public int getBidx() {
		return bidx;
	}
	public void setBidx(int bidx) {
		this.bidx = bidx;
	}
	public String getOfile() {
		return ofile;
	}
	public void setOfile(String ofile) {
		this.ofile = ofile;
	}
	public String getSfile() {
		return sfile;
	}
	public void setSfile(String sfile) {
		this.sfile = sfile;
	}
}
