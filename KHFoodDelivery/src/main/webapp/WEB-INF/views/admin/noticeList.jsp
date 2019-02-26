<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
    #topTable {
        background-color: rgba(253, 190, 138, 0.945);
        color: white;
    }
</style>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <h3 id="h3board">공지사항</h3>
                <h5 id="h5_board">
                    <a href="">메인화면></a> <a href="#">공지사항</a>
                </h5>
                <hr>


            </div>

          

          <form action="${pageContext.request.contextPath}/notice/noticeList.do" method="post">
            <h3 style="float:left">글 수</h3> &nbsp;&nbsp; <h3 style="color:red; float: left;">2</h3>
            <table class="table table-hover board">

                <thead id="noticeThead">
                    <tr id="topTable">
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>날짜</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>공지</td>
                        <td><a href="#">첫공지사항!</a></td>
                        <td>관리자</td>
                        <td>19.02.23</td>
                        <td>12345</td>
                    </tr>

                    <tr>
                        <td>공지</td>
                        <td>첫공지사항!</td>
                        <td>관리자</td>
                        <td>19.02.23</td>
                        <td>12345</td>
                    </tr>


                </tbody>
            </table>
            <br>
            </form>
            <div>
                <a href="#" class="btn btn-default pull-right">글쓰기</a>

                  
            </div>
            <div class="text-center">
                <button type="button" class="btn btn-default" name="board_prev">
                    <span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span>
                </button>
              
                    <button type="button" class="btn btn-default" aria-label="Left Align" name="board_next">
                        <span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>
                    </button>
                
            </div>

        </div>

    </div>

</body>
</html>