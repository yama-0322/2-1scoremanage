package bean;

public class Class implements java.io.Serializable{
	private String School_CD;
	private String Class_Num;

	public String getSchool_CD(){
		return School_CD;
	}
	public String getClass_Num(){
		return Class_Num;
	}
	public void setSchool_CD(String School_CD){
		this.School_CD=School_CD;
	}
	public void setClass_Num(String Class_Num){
		this.Class_Num=Class_Num;
	}

}
