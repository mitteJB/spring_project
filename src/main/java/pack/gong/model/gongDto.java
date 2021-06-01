package pack.gong.model;

import java.util.Calendar;

import lombok.Data;

@Data
public class gongDto {
	private int num,readcnt;
	private String title,con,bdate,writer;

	/*
	 * private String userName;
	 */	
	public void setBdate(String bdate) {
		Calendar calendar = Calendar.getInstance();
		int year = calendar.get(calendar.YEAR);
		int month = calendar.get(calendar.MONTH) + 1;
		int day = calendar.get(calendar.DATE);
		this.bdate = year + "-" + month + "-" + day;
	}
	
}
