package dao;

public class User {
  private String jspusername;
  private String jsppsw;
  private String jspyear;
  private String jspmonth;
  private String jspday;
  private String jspprovince;
  private String jspcity;
  private String jspemail;

public String getJsppsw() {
	return jsppsw;
}
public void setJsppsw(String jsppsw) {
	this.jsppsw = jsppsw;
}
public String getJspusername() {
	return jspusername;
}
public void setJspusername(String jspusername) {
	this.jspusername = jspusername;
}

public String getJspcity() {
	return jspcity;
}
public void setJspcity(String jspcity) {
	this.jspcity = jspcity;
}
public String getJspday() {
	return jspday;
}
public void setJspday(String jspday) {
	this.jspday = jspday;
}
public String getJspemail() {
	return jspemail;
}
public void setJspemail(String jspemail) {
	this.jspemail = jspemail;
}
public String getJspmonth() {
	return jspmonth;
}
public void setJspmonth(String jspmonth) {
	this.jspmonth = jspmonth;
}
public String getJspprovince() {
	return jspprovince;
}
public void setJspprovince(String jspprovince) {
	this.jspprovince = jspprovince;
}
public String getJspyear() {
	return jspyear;
}
public void setJspyear(String jspyear) {
	this.jspyear = jspyear;
}
public User(String jspusername,String jsppsw,String jspyear,String jspmonth,String jspday,String jspprovince,String jspcity,String jspemail)
{
this.jspusername=jspusername;
this.jsppsw=jsppsw;
this.jspyear=jspyear;
this.jspmonth=jspmonth;
this.jspday=jspday;
this.jspprovince=jspprovince;
this.jspcity=jspcity;
this.jspemail=jspemail;
}
}
