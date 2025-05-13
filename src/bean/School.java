package bean;

public class School implements java.io.Serializable{
	private char CD;
	private char SCLNAME;

	public char getCD(){
		return CD;
	}
	public char getSCLNAME(){
		return SCLNAME;
	}
	public void setCD(char CD){
		this.CD=CD;
	}
	public void setSCLNAME(char SCLNAME){
		this.SCLNAME=SCLNAME;
	}

}
