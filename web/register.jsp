
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" href="styles/general.css">
    <link rel="stylesheet" href="styles/cell.css">
    <link rel="stylesheet" href="styles/form.css">
    <script type="text/javascript" src="js/ref.js"></script>
    <style type="text/css" >

        .logo-container {
            margin-top: 50px ;
        }
        .logo-container img {
            width: 100px ;
        }

        .message-container {
            height: 80px ;
        }

        .link-container {
            height: 40px ;
            line-height: 40px ;
        }

        .link-container a {
            text-decoration: none ;
        }

    </style>

</head>
<body>
<div>验证123</div>
<div class="container form-container">
    <form action="<%=request.getContextPath()%>/reg/regist.do" method="post">
        <div class="form"> <!-- 注册表单开始 -->
            <div class="form-row">
              <span class="cell-1">
                <i class="fa fa-user"></i>
              </span>
                <span class="cell-11" style="text-align: left;">
                <input type="text" name="username" placeholder="请输入用户名">
              </span>
            </div>

            <div class="form-row">
              <span class="cell-1">
                <i class="fa fa-key"></i>
              </span>
                <span class="cell-11" style="text-align: left;">
                <input type="password" name="password" placeholder="请输入密码">
              </span>
            </div>

            <div class="form-row">
           <span class="cell-1">
             <i class="fa fa-keyboard-o"></i>
           </span>
                <span class="cell-11" style="text-align: left;">
             <input type="password" name="confirm" placeholder="请确认密码">
           </span>
            </div>

            <div class="form-row">
              <span class="cell-7">
                <input type="text" name="verifyCode" placeholder="请输入验证码">
              </span>
                <span class="cell-5" style="text-align: center;">
                <img src="<%=request.getContextPath()%>/verify/regist.do" onclick="myRefersh(this)">
              </span>
            </div>

            <div class="form-row" style="border: none;">
             <span class="cell-6" style="text-align: left">
                <input type="reset" value="重置">
             </span>
                <span class="cell-6"  style="text-align:right;">
                <input type="submit" value="注册">
             </span>
            </div>

        </div> <!-- 注册表单结束 -->
    </form>
</div>

</body>
</html>