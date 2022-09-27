<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
h1{
background-color: pink;
width: 100%;
height: 500px

}
</style>

<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>
<ul>
	<li onclick="kakaoLogin();">
      <a href="javascript:void(0)">
         <img alt="" src="img/kakao_login_medium_narrow.png">
      </a>
	</li>
	<li onclick="kakaoLogout() ">
      <a href="javascript:void(0)">
          <span>카카오 로그아웃</span>
      </a>
	</li>
</ul>



<script type="text/javascript">
Kakao.init('71076bc0611826d1a0be3f93cf243ec4');

console.log(Kakao.isInitialized()); // sdk초기화여부판단


function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
        	  alert('카카오 로그인 완료');
        	 location.href="main.yd";
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
	
function kakaoOut(){
	Kakao.Auth.logout()
	  .then(function(response) {
	    console.log(Kakao.Auth.getAccessToken()); // null
	  })
	  .catch(function(error) {
	    console.log('Not logged in.');
	  });
	
	
}	
	
	
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }

}






</script>
</body>
</html>