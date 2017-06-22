package com.hb.day04;

import java.util.ArrayList;
import java.util.List;

public class GuestDao {
	private static GuestDao dao;
	private List<GuestVo> list;
	
	private GuestDao() {
		list=new ArrayList<>();
		list.add(new GuestVo(1111,"test01","2017-06-19",1000));
		list.add(new GuestVo(2222,"test02","2017-06-20",2000));
		list.add(new GuestVo(3333,"test03","2017-06-21",3000));
	}
	
	public static GuestDao getDao() {
		if(dao==null)dao=new GuestDao();
		return dao;
	}

	public List<GuestVo> selectAll() {
		return list;
	}

	public void insertOne(GuestVo bean) {
		list.add(bean);
	}

}
