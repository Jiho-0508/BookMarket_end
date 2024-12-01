<%@ page contentType="text/html; charset=utf-8"%>
<header class="pb-3 mb-4 border-bottom">
  <div class="container ">  
    <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">   
      <a href="./welcome.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
       <svg  width="40" height="32" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
  			<path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5Z"/>
  			<path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6Z"/>
				</svg> 
        <span class="fs-4">Home</span>
      </a>
      </ul> 
          <%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
      <ul class="nav nav-pills">
		  <li class="nav-item"><a href="./books.jsp" class="nav-link" >상품 목록</a></li>
          <li class ="nav-item"><a href = "./addBook.jsp" class = "nav-link"  >상품 등록</a></li>
          <li class ="nav-item"><a href = "./editBook.jsp?edit=update" class = "nav-link"  >상품 수정</a></li>
          <li class ="nav-item"><a href = "./editBook.jsp?edit=delete" class = "nav-link"  >상품 삭제</a></li>

			<%
			if (userID == null) {
			%>

			<li class ="nav-item"><li><a href="login.jsp" class="nav-link">로그인</a></li>
			<li class ="nav-item"><li><a href="join.jsp" class="nav-link">회원가입</a></li>
		
		<%
		} else {
		%>
		
			<li class ="nav-item"><li><a href="logout_action.jsp" class="nav-link">로그아웃</a></li>
		</ul>
		<%
		}
		%>
    </div>
	<div>
		
</div>
</header>
