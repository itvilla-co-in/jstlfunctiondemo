<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Demo of Length Function</h1>
<% 
String[] arr = {"one","two","three","four"};
%>
<c:set var="temp" value="<%= arr %>"></c:set>

Lenth of arry is : ${fn:length(temp) }
</br>


<h1>Demo of trim </h1>

${fn:trim("    Study   Easy  with    itvilla   .") }
<br/>
</br>



<h1>Demo of escapexml function  This Function will ignore html code </h1>
${fn:escapeXml("<h1> Hello World </h1>") }

<br/>

<h1> Demo of contains function  </h1>
<br/>
<c:set var="opass" value="itvilla"/>
<c:set var="npass" value="itvilla2018" />
<c:if test="${fn:contains(newPassword, oldPassword)}">
 <c:out value="new password should be new and should not contain old text "/>
</c:if>

<br/>

<h1> Demo of contains ignore case function  </h1>
<br/>
<c:set var="opass" value="ITVILLA"/>
<c:set var="npass" value="itvilla2018" />
<c:if test="${fn:containsIgnoreCase(newPassword, oldPassword)}">
 <c:out value="new password should be new and should not contain old text "/>
</c:if>




</br>

<h1> Demo to concat array with a string  </h1>

<%
String namesarray[]={"Naren", "Amit", "dhaval"};
session.setAttribute("mynames", namesarray);
%>
${fn:join(mynames, " & ")}

</br>


<h1> Demo to split a string with function  </h1>
</br>
<c:set var="mystring" value="this,is,a,comma,delimited,string,lets,check,output"/>
<c:set var="splitstring" value="${fn:split(mystring,',')}"/>
<c:forEach var="temp" begin="0" end="8">
 splitstring[${temp}]: ${splitstring[temp]}<br>
</c:forEach>




</br>


<h1> Demo to indexof()  </h1>
</br>
${fn:indexOf("do you see my string here itvilla", "itvilla")}
<br>
${fn:indexOf("do you see itvilla my string here itvilla", "itvilla")}



</br>


<h1> Demo of startswith  </h1>
</br>
<c:set var="mystring" value="this is a tutorial for JSTL and Java Training"/>
${fn:startsWith(mystring, 'Example')}
<br>${fn:startsWith(mystring, 'this')}
<br>${fn:startsWith(mystring, 'is')}

<br>
<h1> Demo of substring  </h1>
<c:set var="mysubstring1" value="This is an example of mysubstring1 to check"/>
<br>
${fn:substring(mysubstring1, 5, 10)}
<br>



<br>
<h1> Demo of substringafter  </h1>
<c:set var="username" value="Naren dhaval amit"/>
</br>
${fn:substringAfter(username, "en")}




<br>
<h1> Demo of substringbefore  </h1>
<c:set var="somestring" value="Naren dhaval amit"/>
${fn:substringBefore(somestring, "dha")}





<br>
<h1> Demo of toupper()  </h1>
<c:set var="mynewname" value="startingtochange"/>
  
  ${fn:toUpperCase(mynewname)}




<br>
<h1> Demo of tolower()  </h1>
<c:set var="mynewname1" value="STARtingTOchange"/>

${fn:toLowerCase(mynewname1)}



<br>
<h1> Demo of replace()  </h1>
<c:set var="mynewname3" value="Go Go Cloud Go Go"/>

${fn:replace(mynewname3, "Go", "NoGo")} 





</body>
</html>