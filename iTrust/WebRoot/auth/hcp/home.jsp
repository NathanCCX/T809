<%@page errorPage="/auth/exceptionHandler.jsp" %>

<%@page import="edu.ncsu.csc.itrust.model.old.dao.mysql.PatientDAO"%>
<%@page import="edu.ncsu.csc.itrust.model.old.beans.PatientBean"%>


<%@page import="java.util.List"%>

<%@include file="/global.jsp" %>

<%
pageTitle = "iTrust - HCP Home";
%>

<%@include file="/header.jsp" %>

<%

loggingAction.logEvent(TransactionType.HOME_VIEW, loggedInMID.longValue(), 0, "");

%>
<%@include file="/auth/hcp/notificationArea.jsp" %>


<div class="col-sm-12">
	<a href="/auth/hcp/addBulletinPost.jsp">Add New Post</a>
	<div class="panel panel-primary panel-notification">
	<div class="panel-heading">
		<h3 class="panel-title">Bulletin Board</h3>
	</div>
	<div class="panel-body">
	<span>
		2018-11-05
		<a href="/auth/hcp/viewBulletinPost.jsp">Title</a>
	</span>
</div>
</div>

	<div class="panel panel-primary panel-notification">
	<div class="panel-heading"><h3 class="panel-title">Comprehensive Report History</h3></div>
	<div class="panel-body">
</div>
</div>

	<div class="panel panel-primary panel-notification">
	<div class="panel-heading"><h3 class="panel-title">Lab Procedures Completed in the Last Month</h3></div>
	<div class="panel-body">
</div>
</div>

</div>

<%@include file="/footer.jsp" %>
