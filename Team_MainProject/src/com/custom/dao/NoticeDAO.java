package com.custom.dao;

import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
public class NoticeDAO {
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
    public static List<NoticeDTO> notice_boardListData(Map map)
    {
    	SqlSession session=ssf.openSession();
    	List<NoticeDTO> list=
    			session.selectList("notice_boardListData",map);
    	session.close();// ��ȯ
    	return list;
    }
    public static int notice_boardTotalPage()
    {
    	SqlSession session=ssf.openSession();
    	int count=session.selectOne("notice_boardRowCount");
    	int total=(int)(Math.ceil(count/10.0));
    	session.close();
    	return total;
    }
}
