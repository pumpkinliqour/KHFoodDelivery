<%@ page language="java" contentType="text/html; charset=UTF-8"
import="java.util.*, java.sql.*" 
pageEncoding="UTF-8"%>
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>    
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
 <style>
      div#enroll-container{width:400px; margin:0 auto; text-align:center;}
      div#enroll-container input, div#enroll-container select {margin-bottom:10px;}
	
	
    /*중복아이디체크관련*/
    div#enroll-container{position:relative; padding:0px;}
    div#enroll-container span.guide {display:none;font-size: 12px;position:absolute; top:12px; right:10px;}
    div#enroll-container span.guide1 {display:none;font-size: 12px;position:absolute; top:105px; right:10px;}
     div#enroll-container span.guide2 {display:none;font-size: 12px;position:absolute; top:200px; right:10px;}
    div#enroll-container span.ok,span.ok1,span.ok2{color:blue;}
    div#enroll-container span.error,span.error2{color:red;}
	    
       
</style>      
      <div id="enroll-container">
        <form name="enroll" action="${path }/member/memberEnrollEnd.do" method="post" onsubmit="return validate();" >
            <span class="guide ok">사용 가능한 아이디입니다. </span>
            <span class="guide error">아이디가 존재합니다. </span>
            <input type="hidden" name="checkId" value="0"/>
       <input type="text" class="form-control" placeholder="아이디 (4글자이상)" name="memberId" id="memberId" required>
       
            <script>
            var id="";
            var memberId="";
            var nick="";
            $(function(){

            	//비밀번호 확인
            		$('#memberPw2').blur(function(){
            			memberPw = $("#memberPw").val();
            			var passwordRules =  /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/;
            			
            			console.log("패스워드룰"+passwordRules.test(memberPw));
             		   	if(passwordRules.test(memberPw) == false)
             		   	if($('#memberPw2').val()!=''){
             		   		{
             		   			alert(" 6~20 영문 대소문자 , 최소 1개의 숫자 혹은 특수 문자를 포함 하세요!");
             		   			$('#memberPw2').val('');
             		   			$('#memberPw2').focus();
             		   		
             		   		}
             		   	}
            			if($('#memberPw').val() != $('#memberPw2').val()){
            		    	if($('#memberPw2').val()!=''){
            			    alert("비밀번호가 일치하지 않습니다.");
            		    	    $('#memberPw2').val('');
            		          $('#memberPw2').focus();
            		       }
            		    	
            		    }
            		  
            		   else{
            			   $(".guide1.ok1").show();
            		   }
            		})  	   
            	});


	            function maxLengthCheck(object){
	                if (object.value.length > object.maxLength){
	                  object.value = object.value.slice(0, object.maxLength);
	                }    
	              }
	            
	            
            	$(function(){
            		$("#memberId").keyup(function(){
            			memberId=$("#memberId").val().trim();
            			if(memberId.length<4)
            			{
            				
            				$(".guide").hide();
            				return;
            			}
            			$.ajax({
            				url:"${path}/member/checkId.do",
            				data:{"memberId":memberId},
            				success:function(data){          
            					console.log(data.isId);
            					id=data.isId;
            					console.log(id);       					
            					if(data.isId==false){
            						$(".guide.ok").show();
            						$(".guide.error").hide();
            					
            					}else{
            						
            						$(".guide.error").show();
            						$(".guide.ok").hide();
            						
            					}
            					
            					
            				}
            			});
            		});
            	});
            	
            	$(function(){
            		$("#nickName").keyup(function(){
            			nickName=$("#nickName").val().trim();
         
            			$.ajax({
            				url:"${path}/member/checkNick.do",
            				data:{"nickName":nickName},
            				success:function(data){          
            					console.log(data.isNick);
            					nick=data.isNick;
            					console.log(nick);       					
            					if(data.isNick==false){
            						$(".guide2.ok2").show();
            						$(".guide2.error2").hide();
            					
            					}else{
            						
            						$(".guide2.error2").show();
            						$(".guide2.ok2").hide();
            						
            					}
            					
            					
            				}
            			});
            		});
            	});
            	function validate(){
            		
            		
            		
            		if(id==true)
            			{
            				alert("아이디를 확인해주세요");
            				return false;
            			}
            		if(memberId.length<4)
            			{
            				alert("아이디를 4글자 이상 입력해주세요");
            				return false;
            			}
            		if(nick==true)
            			{
            				alert("닉네임을 확인해주세요");
            				return false;
            			}
            		return true;
            		
            	}
            
            
            </script>
            <input type="password" class="form-control" placeholder="비밀번호" name="memberPw" id="memberPw" required>
            <input type="password" class="form-control" placeholder="비밀번호확인"name="memberPw2" id="memberPw2" required>
            	<span class="guide1 ok1">비밀번호가 일치합니다. </span>
        
            <input type="text" class="form-control" placeholder="이름" name="memberName" id="memberName" required>
             <input type="text" class="form-control" placeholder="닉네임" name="nickName" id="nickName" required>
             <span class="guide2 ok2">사용 가능한 닉네임입니다. </span>
            <span class="guide2 error2">닉네임이 존재합니다. </span>
            <input type="number" class="form-control" placeholder="생년월일(예:910729)" name="memberBirth" id="memberBirth" maxlength="6" oninput="maxLengthCheck(this)" required>
            <input type="email" class="form-control" placeholder="이메일" name="memberEmail" id="memberEmail" required>
            <input type="tel" class="form-control" placeholder="전화번호 (예:01012345678)" name="memberPhone" id="memberPhone" maxlength="11" required>
            <input type="text" class="form-control" placeholder="주소" name="memberAddress" id="memberAddress" required>
            <select class="form-control" name="gender" required>
               <option value="" disabled selected>성별</option>
               <option value="M">남</option>
               <option value="F">여</option>
            </select>
         	<input type=text" class="form-control" placeholder="경도(일단입력(int))" name="longitude" id="longitude" required>
            <input type="text" class="form-control" placeholder="위도(일단 입력(int))"name="latitude" id="latitude" required>
   
     		
            <br />
            
            <input type="submit" class="btn btn-outline-secondary" value="가입" >&nbsp;
            <input type="reset" class="btn btn-outline-secondary" value="취소">
         </form>
      </div>
      
  
 
     


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>