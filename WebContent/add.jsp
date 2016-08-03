<%@page import="kr.ac.sungkyul.guestbook.dao.GuestBookDao"%>
<%@page import="kr.ac.sungkyul.guestbook.vo.GuestBookVo"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String content = request.getParameter("content");

	GuestBookVo vo = new GuestBookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContent(content);
	
	GuestBookDao dao = new GuestBookDao();
	boolean result = dao.insert(vo);
	
	response.sendRedirect("/guestbook");
%>
