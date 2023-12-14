<%@ page contentType="text/html;charset=UTF-8" language="java"
    pageEncoding="utf-8" %>
<%
    String popupMode = "on";

    Cookie[] cookies = request.getCookies();
    if (cookies !=null){
      for (Cookie c : cookies){
        String cookieName = c.getName();
        String cookieValue = c.getValue();
        if(cookieName.equals("PopupClose")){
          popupMode = cookieValue;
        }
      }
    }
%>
<html>
<head>
    <title>쿠키를 이용한 팝업관리 ver 1.0</title>
    <style>
        div#popup{
            position: absolute; top:100px; left: 50px; color:yellow;
            width: 270px; height: 100px; background-color:burlywood;
        }
        div#popup>div{
            position:  relative; background-color: #FFFFFF; top:0px;
            border: 1px solid burlywood; padding:10px; color: black;
        }
        .algtxtcenter{
            text-align : center;
        }
        .algcenter{
            margin: 0 auto;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js">
    </script>
    <script>
        $(function (){
            $('#closeBtn').click(function (){
                $('#popup').hide();
                let chkVal =$("input:checkbox[id=inactiveToday]:checked").val();
                if (chkVal==1){
                    $.ajax({
                        url : './PopupCookie.jsp',
                        type : 'get',
                        data : {inactiveToday : chkVal},
                        dataType :"text",
                        success : function (resData){
                            if (resData !='')location.reload();
                        }
                    });
                }
            });
        });
    </script>
</head>
<body>
    <h2>팝업 메인 페이지 ver 2.0</h2>
    <%
        for(int i=1 ; i<=10; i++){
          out.print("현재 팝업창은 "+popupMode + "상태입니다.<br/>");
        }
        if (popupMode.equals("on")){
    %>
        <div id="popup">
            <h2 class="algtxtcenter">공지사항 입니다.</h2>
            <div class="algcenter"> <form name="popFrm">
                <input type ="checkbox" id="inactiveToday" value="1"/>
                하루 동안 열지 않음
                <input type="button" value="닫기" id="closeBtn"/>
            </form>
            </div>
        </div>
    <%
        }
    %>
</body>
</html>
