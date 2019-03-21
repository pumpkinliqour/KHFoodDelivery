<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include> 
<style>
div.menu1,div.menu2,div.menu3{ position: relative; display:inline-block; border :1px solid #BDBDBD;margin:7px;   text-align:center; overflow:hidden;width:100%;box-shadow: 0px 0px 10px 1px rgba(0, 0, 0, 0.5);}
div.menu4,div.menu5,div.menu6{ position: relative; display:inline-block;  border :1px solid #BDBDBD;margin:7px;  text-align:center; overflow:hidden;width:100%;box-shadow: 0px 0px 10px 1px rgba(0, 0, 0, 0.5); }
div.menu7,div.menu8,div.menu9{ position: relative; display:inline-block;  border :1px solid #BDBDBD; margin:7px; text-align:center; overflow:hidden;width:100%;box-shadow: 0px 0px 10px 1px rgba(0, 0, 0, 0.5); }
div.main a{text-decoration:none; color:black;}
img.i{max-width:100%; max-height: 100%; margin-bottom:-9.9305px;margin-left:14%;vertical-align: middle;}
div.main{text-align:center;}
.category-title{
	margin-top:10px;
	font-size: 18px;
}
</style>

<!-- 주소 입력후 가게보기 가능 -->
<script>

	$(document).ready(function(){
		
		$('.main').click(function(){
			if(${sessionScope.myAddr==null}){
				alert("주소를 입력해주세요.");
				return false;
			}
			return true;
			
			});
		});

</script>
<section>

<div class="container">

	 <div class="mainrow row">
	 
	<div class="main col-sm-12">
	
	<div class="menu1 col-xs-6 col-sm-4 col-md-3 col-lg-3 "><a href="${path}/customer/searchmenuView?category=돈까스&myAddr=${sessionScope.myAddr}">
	<div class="category-title"> <b>돈까스/일식</b></div> <img class="i" src="${path}/resources/images/customer/main/돈까스.png"></a></div>
	
	<div class="menu2 col-xs-6 col-sm-4 col-md-3 col-lg-3"><a href="${path}/customer/searchmenuView?category=프랜차이즈&myAddr=${sessionScope.myAddr}">
	<div class="category-title"><b>프랜차이즈</b></div><img class="i" src="${path}/resources/images/customer/main/핫도그.png"></a></div>
	
	<div class="menu3 col-xs-6 col-sm-4 col-md-3 col-lg-3"><a href="${path}/customer/searchmenuView?category=치킨&myAddr=${sessionScope.myAddr}">
	<div class="category-title"><b>치킨</b></div><img class="i" src="${path}/resources/images/customer/main/치킨.png"></a></div>
	

	
	<div class="menu4 col-xs-6 col-sm-4 col-md-3 col-lg-3"><a href="${path}/customer/searchmenuView?category=피자&myAddr=${sessionScope.myAddr}">
	<div class="category-title"><b>피자</b></div><img class="i" src="${path}/resources/images/customer/main/피자.png"></a></div>
	
	<div class="menu5 col-xs-6 col-sm-4 col-md-3 col-lg-3"><a href="${path}/customer/searchmenuView?category=중국집&myAddr=${sessionScope.myAddr}">
	<div class="category-title"><b>중국집</b></div><img class="i" src="${path}/resources/images/customer/main/자장면.png"></a></div>
	
	<div class="menu6 col-xs-6 col-sm-4 col-md-3 col-lg-3"><a href="${path}/customer/searchmenuView?category=한식&myAddr=${sessionScope.myAddr}">
	<div class="category-title"><b>한식</b></div><img class="i" src="${path}/resources/images/customer/main/한식.png"></a></div>
	
	

	<div class="menu7 col-xs-6 col-sm-4 col-md-3 col-lg-3"><a href="${path}/customer/searchmenuView?category=족발/보쌈&myAddr=${sessionScope.myAddr}">
	<div class="category-title"><b>족발/보쌈</b></div><img class="i" src="${path}/resources/images/customer/main/보쌈.png"></a></div>
	
	<div class="menu8 col-xs-6 col-sm-4 col-md-3 col-lg-3"><a href="${path}/customer/searchmenuView?category=분식&myAddr=${sessionScope.myAddr}">
	<div class="category-title"><b>분식</b></div><img class="i" src="${path}/resources/images/customer/main/분식.png"></a></div>
	
	<div class="menu9 col-xs-6 col-sm-4 col-md-3 col-lg-3"><a href="${path}/customer/searchmenuView?category=디저트&myAddr=${sessionScope.myAddr}">
	<div class="category-title"><b>디저트</b></div><img class="i" src="${path}/resources/images/customer/main/디저트.png"></a></div>
	
	

		</div>
	</div>


</div>
	<div class="container">
	<a href="${path }/customer/payEnd.do">결제 완ㄹ테스트   </a>
	<a href="${path }/customer/pay.do">결제 테스트   </a>
<%-- 	<a href="${path }/admin/noticeList.do">공지사항</a>
	<a href="${path }/admin/noticeForm.do">공지사항등록</a>
	<a href="${path }/admin/memberList.do">멤버리스트</a>
	<a href="${path }/admin/appStoreList.do">입점 신청 현황</a> --%>
	<a href="${path }/map/test.do">지도 테스트</a>
	</div>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>


