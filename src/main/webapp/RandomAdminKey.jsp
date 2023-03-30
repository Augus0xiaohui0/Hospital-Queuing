<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.passay.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
@charset "UTF-8";
body {
  font-family: "Open Sans", sans-serif;
  height: 100vh;
  background-size: cover;
  overflow: hidden;
   background-color:#D15926;
  background-image:
  	radial-gradient(closest-side, rgba(255, 0, 0, 1), rgba(255, 0, 0, 0)),
    radial-gradient(closest-side, rgba(255, 77, 0, 1), rgba(255, 77, 0, 0)),
    radial-gradient(closest-side, rgba(255, 134, 0, 1), rgba(255, 134, 0, 0)),
    radial-gradient(closest-side, rgba(255, 163, 0, 1), rgba(255, 163, 0, 0)),
    radial-gradient(closest-side, rgba(255, 254, 0, 1), rgba(255, 254, 0, 0));
  background-size: 
    130vmax 130vmax,
    80vmax 80vmax,
    90vmax 90vmax,
    110vmax 110vmax,
    90vmax 90vmax;
  background-position:
    -80vmax -80vmax,
    60vmax -30vmax,
    10vmax 10vmax,
    -30vmax -10vmax,
    50vmax 50vmax;
  background-repeat: no-repeat;
  animation: 7s movement linear infinite;
}

body::after {
  content: '';
  display: block;
  position: fixed;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(10px);
}

@keyframes movement {
  0%, 100% {
    background-size: 
      130vmax 130vmax,
      80vmax 80vmax,
      90vmax 90vmax,
      110vmax 110vmax,
      90vmax 90vmax;
    background-position:
      -80vmax -80vmax,
      60vmax -30vmax,
      10vmax 10vmax,
      -30vmax -10vmax,
      50vmax 50vmax;
  }
  25% {
    background-size: 
      100vmax 100vmax,
      90vmax 90vmax,
      100vmax 100vmax,
      90vmax 90vmax,
      60vmax 60vmax;
    background-position:
      -60vmax -90vmax,
      50vmax -40vmax,
      0vmax -20vmax,
      -40vmax -20vmax,
      40vmax 60vmax;
  }
  50% {
    background-size: 
      80vmax 80vmax,
      110vmax 110vmax,
      80vmax 80vmax,
      60vmax 60vmax,
      80vmax 80vmax;
    background-position:
      -50vmax -70vmax,
      40vmax -30vmax,
      10vmax 0vmax,
      20vmax 10vmax,
      30vmax 70vmax;
  }
  75% {
    background-size: 
      90vmax 90vmax,
      90vmax 90vmax,
      100vmax 100vmax,
      90vmax 90vmax,
      70vmax 70vmax;
    background-position:
      -50vmax -40vmax,
      50vmax -30vmax,
      20vmax 0vmax,
      -10vmax 10vmax,
      40vmax 60vmax;
  }
}

@keyframes spinner {
  0% {
    transform: rotateZ(0deg);
  }
  100% {
    transform: rotateZ(359deg);
  }
}
* {
  box-sizing: border-box;
}

.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column;
  justify-content: center;
  width: 100%;
  min-height: 100%;
  padding: 20px;
  /* background: linear-gradient(-90deg, #29bdd9 0%, #276ace 100%); */
}

.login {
  border-radius: 2px 2px 5px 5px;
  padding: 10px 20px 20px 20px;
  width: 90%;
  max-width: 320px;
  background: #ffffff;
  position: relative;
  padding-bottom: 80px;
  box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.3);
  z-index:10;
}
.login.loading button {
  max-height: 100%;
  padding-top: 50px;
}
.login.loading button .spinner {
  opacity: 1;
  top: 40%;
}
.login.ok button {
  background-color: #8bc34a;
}
.login.ok button .spinner {
  border-radius: 0;
  border-top-color: transparent;
  border-right-color: transparent;
  height: 20px;
  animation: none;
  transform: rotateZ(-45deg);
}
.login .title {
  color: #444;
  font-size: 1.2em;
  font-weight: bold;
  margin: 10px 0 30px 0;
  border-bottom: 1px solid #eee;
  padding-bottom: 20px;
}
.login button {
  width: 100%;
  height: 100%;
  padding: 10px 10px;
  background: #D15926;
  color: #fff;
  display: block;
  border: none;
  margin-top: 20px;
  position: absolute;
  left: 0;
  bottom: 0;
  max-height: 60px;
  border: 0px solid rgba(0, 0, 0, 0.1);
  border-radius: 0 0 2px 2px;
  transform: rotateZ(0deg);
  transition: all 0.1s ease-out;
  border-bottom-width: 7px;
  cursor:pointer;
}
.login button .spinner {
  display: block;
  width: 40px;
  height: 40px;
  position: absolute;
  border: 4px solid #ffffff;
  border-top-color: rgba(255, 255, 255, 0.3);
  border-radius: 100%;
  left: 50%;
  top: 0;
  opacity: 0;
  margin-left: -20px;
  margin-top: -20px;
  animation: spinner 0.6s infinite linear;
  transition: top 0.3s 0.3s ease, opacity 0.3s 0.3s ease, border-radius 0.3s ease;
  box-shadow: 0px 1px 0px rgba(0, 0, 0, 0.2);
}
.login:not(.loading) button:hover {
  box-shadow: 0px 1px 3px #D15926;
}
.login:not(.loading) button:focus {
  border-bottom-width: 4px;
}

footer {
  display: block;
  padding-top: 50px;
  text-align: center;
  color: #ddd;
  font-weight: normal;
  text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.2);
  font-size: 0.8em;
  z-index:10;
}
footer a, footer a:link {
  color: #fff;
  text-decoration: none;
}
</style>
<meta name="apple-mobile-web-app-title" content="CodePen">
<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />
<link rel="mask-icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" />
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<title>管理员密钥</title>
</head>
<body>
<%
/** 
 * @author Stallion-X
 */
String password = null;
    if (application.getAttribute("adminkey")==null||application.getAttribute("adminkey").equals("")) {
    	PasswordGenerator gen = new PasswordGenerator();
        CharacterData lowerCaseChars = EnglishCharacterData.LowerCase;
        CharacterRule lowerCaseRule = new CharacterRule(lowerCaseChars);
        lowerCaseRule.setNumberOfCharacters(3);
     
        CharacterData upperCaseChars = EnglishCharacterData.UpperCase;
        CharacterRule upperCaseRule = new CharacterRule(upperCaseChars);
        upperCaseRule.setNumberOfCharacters(3);
     
        CharacterData digitChars = EnglishCharacterData.Digit;
        CharacterRule digitRule = new CharacterRule(digitChars);
        digitRule.setNumberOfCharacters(3);
     
        CharacterData specialChars = new CharacterData() {
            public String getErrorCode() {
                return null;
            }
     
            public String getCharacters() {
                return "!@#$%^&*()_+";
            }
        };
        CharacterRule splCharRule = new CharacterRule(specialChars);
        splCharRule.setNumberOfCharacters(3);
     
        password = gen.generatePassword(12, splCharRule, lowerCaseRule, upperCaseRule, digitRule);
        application.setAttribute("adminkey",password);
    }
    else {
    	password = (String)application.getAttribute("adminkey");
    }
%>
 <div class="wrapper">
  <div class="login">
    <p class="title">Random Key</p>
    <span id="key">************</span>
    <input type="text" id="adminkey" value="<%=password %>" style="opacity: 0;position: absolute;"/>
    <button id="btn">
      <i class="spinner"></i>
      <span class="state" onclick="copyPwd()">Copy&To Login</span>
    </button>
  </div>
  <footer id="foot">大作业小组-医院排队叫号系统-202012</footer>
</div>
</body>
<script type="text/javascript">
window.onload=function() {
	var key = document.getElementById("key");
	key.onmouseover = (function() {
		key.innerHTML="<%=password %>";
	});
	key.onmouseout = (function() {
		key.innerHTML="************";
	});
}
function copyPwd(){
    var oInput = document.getElementById("adminkey");  //input 的ID
    oInput.select(); //选择对象 
    document.execCommand("Copy"); //执行浏览器复制命令
    location.href="index.html";
}
</script>
</html>