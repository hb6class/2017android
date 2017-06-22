package com.hb.day04;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/list.json")
public class JsonListController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("json service start");
		List<GuestVo> alist = GuestDao.getDao().selectAll();
		
//		{'root':[{sabun:xxx,name:xxx,....},{},{}]}
		JSONObject root=new JSONObject();
		JSONArray jArr=new JSONArray();
		
		for(GuestVo bean:alist){
			JSONObject items=new JSONObject();
			items.put("sabun", bean.getSabun());
			items.put("name", bean.getName());
			items.put("nalja", bean.getNalja());
			items.put("pay", bean.getPay());
			jArr.add(items);
		}
		root.put("root", jArr);
		System.out.println(root.toJSONString());
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json;charset=UTF-8");
		OutputStream os = response.getOutputStream();
		os.write(root.toJSONString().getBytes());
		os.flush();
		os.close();
	}

}













