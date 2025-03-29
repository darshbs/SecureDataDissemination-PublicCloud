<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<%@ page import ="java.util.Calendar"%>
<%@ page import ="java.util.Timer"%>
<%@ page import ="java.util.TimerTask"%>

<%

		try
{
			Timer timer = new Timer();
 
			TimerTask tt = new TimerTask()
			{
				public void run()
				{
					Calendar cal = Calendar.getInstance(); //this is the method you should use, not the Date(), because it is desperated.
	 
					int hour = cal.get(Calendar.HOUR_OF_DAY);//get the hour number of the day, from 0 to 23
	 
					if(hour==11)
					{
						System.out.println("doing the scheduled task");
					}
				}
			};
			timer.schedule(tt, 100, 1000*2);//	delay the task 1 second, and then run task every five seconds
			 
}
catch(Exception e)
{}
%>