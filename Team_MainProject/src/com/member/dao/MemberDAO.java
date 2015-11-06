package com.member.dao;

import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.member.dao.*;



public class MemberDAO {
	
	private static SqlSessionFactory ssf;
    static
    {
    	try
    	{
    		Reader reader=Resources.getResourceAsReader("com/common/Config.xml");

    		ssf=new SqlSessionFactoryBuilder().build(reader);
    	}catch(Exception ex)
    	{
    		System.out.println(ex.getMessage());
    	}
    }
    
    public static int memberIdCount(String email)
    {
    	SqlSession session = ssf.openSession();
    	int count = session.selectOne("memberIdCount", email);
    	session.close();
    	return count;
    }
    
    public static MemberDTO memberGetInfo(String email)
    {
    	SqlSession session = ssf.openSession();
    	MemberDTO d = session.selectOne("memberGetInfo", email);
    	session.close();
    	return d;
    }
    
    public static void memberInsert(MemberDTO d)
    {
    	SqlSession session=ssf.openSession(true);
    	session.insert("memberInsert",d);
    	session.close();
    }

    public static void modifyupdate(MemberDTO d)
    {
    	SqlSession session = ssf.openSession(true);
    	session.update("modifyupdate", d);
    	session.close();
 
    }
    public static List<gtableDTO> gtableListData(){
 	   SqlSession session= ssf.openSession();
 	   List<gtableDTO> list = session.selectList("gtableListData");
 	   session.close();
 	   return list;
    }
    
    public static List<MeetingDTO> meetingTableListData(){
  	   SqlSession session= ssf.openSession();
  	   List<MeetingDTO> list = session.selectList("meetingTableListData");
  	   session.close();
  	   return list;
     }
    
    public static List<gtableDTO> searchMeeting(String word){
  	   SqlSession session= ssf.openSession();
  	   List<gtableDTO> list = session.selectList("searchMeeting", word);
  	   session.close();
  	   return list;
     }
    public static List<MeetingDTO> daybydayMeetingData(String m_partDate){
   	   SqlSession session= ssf.openSession();
   	   List<MeetingDTO> list = session.selectList("daybydayMeetingData", m_partDate);
   	   session.close();
   	   return list;
      }
     
}
