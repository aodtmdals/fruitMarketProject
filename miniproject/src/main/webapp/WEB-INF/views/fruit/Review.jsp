<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <html>
   <head>
     <meta charset="UTF-8">
     <title>리뷰</title>
     <link rel="stylesheet" type="text/css" href="<c:url value='/css/Product_Detail.css'/>">
   </head>
    <body>
      <c:forEach var="rew" items="${rew}">
			<table id='reviewtable1'>
				<tr>
					<td id='memId'>${rew.memId }</td>
					<td id='review'>${rew.review }</td>
				</tr>
			</table>
		</c:forEach>
    </body>
  </html>