<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cnge.WebUI.Manager.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><%=config().Cms%></title>
<link href="/Resource/skin/default/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/Resource/scripts/jquery/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/Resource/scripts/jquery/jquery.nicescroll.js"></script>
<script type="text/javascript" src="/Resource/scripts/lhgdialog/lhgdialog.js?skin=idialog"></script>
<script type="text/javascript" src="/Resource/js/layout.js"></script>
<script type="text/javascript">
    $(function () {
        //检测IE
        if ('undefined' == typeof (document.body.style.maxHeight)) {
            window.location.href = '/Error/ie6update.html';
        }
    });
</script>
</head>

<body class="loginbody">
<form id="form1" runat="server">
<div class="login-screen">
	<div class="login-icon">LOGO</div>
    <div class="login-form">
        <h1>管理登录</h1>
        <div class="control-group">
            <asp:TextBox ID="txtUserName" runat="server" CssClass="login-field" placeholder="用户名" title="用户名"></asp:TextBox>
            <label class="login-field-icon user" for="txtUserName"></label>
        </div>
        <div class="control-group">
            <asp:TextBox ID="txtPassword" runat="server" CssClass="login-field" TextMode="Password" placeholder="密码" title="密码"></asp:TextBox>
            <label class="login-field-icon pwd" for="txtPassword"></label>
        </div>
        <div class="control-group">
            <asp:TextBox ID="txtCode" runat="server" CssClass="login-field-code"  placeholder="验证码" title="验证码"></asp:TextBox>
            <label class="login-field-icon-short code" for="txtCode"></label>
            <span class="imgCode" style=" overflow:hidden"  title="图片看不清？点击重新得到验证码">
            <script type="text/javascript" language="JavaScript">
                var numkey = Math.random();
                numkey = Math.round(numkey * 1);
                var vh = 30;
                document.write("<img src=\"/Tools/UI/verify_code.ashx?vh=" + vh + "&vt=1&k=" + numkey + "\" id=\"imgCode\"  align='absmiddle' width=\"80px\" height=\"30px\" onClick=\"this.src+=Math.random()\" alt=\"图片看不清？点击重新得到验证码\" title=\"图片看不清？点击重新得到验证码\" />");
             </script>
            </span>
        </div>
        <div>
        <asp:Button ID="btnSubmit" runat="server" Text="登 录" CssClass="btn-login" onclick="btnSubmit_Click" />
        </div>
        <span class="login-tips"><i></i><b id="msgtip" runat="server">请输入用户名和密码</b></span>
    </div>
    <i class="arrow">箭头</i>
</div>
</form>
</body>
</html>