<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    session.setAttribute("attempt",session.getAttribute("attempt"));
    int count=0;
    if(session.getAttribute("attempt")==null){
        count=0;
    }
    else{
        count=(Integer)session.getAttribute("attempt");
    }

    Integer randomNumber=new Integer(new java.util.Random().nextInt(100));
    Integer userNumber=Integer.parseInt(request.getParameter("user-guess"));
    session.setAttribute("attempt",0);
    session.setAttribute("userNumber",userNumber);
    session.setAttribute("randomNumber",randomNumber);

    if(randomNumber == userNumber){
        session.setAttribute("attempt",count);
    %>
        <jsp:forward page="win.jsp" />
    <%
        count=0;
    }
    else{
        count=count+1;
        session.setAttribute("attempt",count);

    %>
        <jsp:forward page="loose.jsp" />
    <%
    }
        session.setAttribute("attempt",count);

    out.println(session.getAttribute("attempt"));
%>
