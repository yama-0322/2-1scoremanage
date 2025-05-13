package bean;

public class Student implements java.io.Serializable{
	private String No;
	private String Name;
	private int Ent_Year;
	private String Class_Num;
	private boolean Is_Attend;
	private String School_Cd;

	public String getNo(){
		return No;
	}
	public String getName(){
		return Name;
	}
	public int getEnt_Year(){
		return Ent_Year;
	}
	public String getClass_Num(){
		return Class_Num;
	}
	public boolean getIs_Attend(){
		return Is_Attend;
	}
	public String getSchool_Cd(){
		return School_Cd;
	}
	public void setNo(String No){
		this.No=No;
	}
	public void setName(String Name){
		this.Name=Name;
	}
	public void setEnt_Year(int Ent_Year){
		this.Ent_Year=Ent_Year;
	}
	public void setClass_Num(String Class_Num){
		this.Class_Num=Class_Num;
	}
	public void setIs_Attend(boolean Is_Attend){
		this.Is_Attend=Is_Attend;
	}
	public void setSchool_Cd(String School_Cd){
		this.School_Cd=School_Cd;
	}
}
