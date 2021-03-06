<%@taglib uri="/WEB-INF/tags.tld" prefix="itrust"%>
<%@page errorPage="/auth/exceptionHandler.jsp"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="edu.ncsu.csc.itrust.action.ViewBulletinBoardAction"%>
<%@page import="edu.ncsu.csc.itrust.model.old.beans.PersonnelBean"%>
<%@page import="edu.ncsu.csc.itrust.model.old.beans.PatientBean"%>
<%@page import="edu.ncsu.csc.itrust.model.old.beans.BulletinBoardBean"%>
<%@page import="edu.ncsu.csc.itrust.model.old.dao.mysql.PatientDAO"%>
<%@page import="edu.ncsu.csc.itrust.model.old.dao.mysql.PersonnelDAO"%>
<%@page import="edu.ncsu.csc.itrust.model.old.dao.mysql.BulletinBoardDAO"%>


<%
/* Get selected personnel */
ViewBulletinBoardAction action = new ViewBulletinBoardAction(prodDAO,
		loggedInMID.longValue(), "1");

PersonnelDAO personnelDAO = new PersonnelDAO(prodDAO);
PersonnelBean personnel = personnelDAO.getPersonnel(loggedInMID);
%>

<% 
List<BulletinBoardBean> bbs = action.getAllBulletinBoards();
int i = 0;
for (BulletinBoardBean bb : bbs) {
	String datetime = bb.getCreatedOnString();
	String[] date = datetime.split(" ");
%>
	<tr>
		<td><%=StringEscapeUtils.escapeHtml("" + date[0])%></td>
		<a href="/iTrust/auth/hcp/viewBulletinPost.jsp?requestID=<%=StringEscapeUtils.escapeHtml("" + (bb.getID()))%>"><%=bb.getTitle()%></a>
		<br>
	</tr>
<%
	i++;
}

%>


<%@include file="/footer.jsp"%>