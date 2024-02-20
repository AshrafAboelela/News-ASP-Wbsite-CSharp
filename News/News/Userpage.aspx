<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userpage.aspx.cs" Inherits="News.Userpage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Userpage</title>
    <style type="text/css">
#contents {
	background-repeat: repeat-y;
	width: 970px;
	margin: 0 auto;
}
#main {
	width: 448px;
}
#sidebar {
	float: right;
	background-position: 0 0;
	width: 432px;
	margin-left: 20px;
	padding: 2px 0 0;
}
#contents #about, #contents #contact {
	width: 900px;
	padding: 20px 30px 0;
}
#contact form input {
	color: #626161;
	font-size: 13px;
	height: 27px;
	line-height: 27px;
	width: 440px;
	border: 3px solid #af8112;
	margin: 0 0 12px;
}
#contact form input.btn1 {
	color: #966a01;
	cursor: pointer;
	font-family: "Oswald";
	height: 34px;
	line-height: 34px;
	width: 109px;
	border: 0;
	padding: 0 0 2px;
	text-transform: uppercase;
}
#contact textarea {
	color: #626161;
	font-size: 14px;
	height: 158px;
	line-height: 24px;
	width: 440px;
	border: 3px solid #af8112;
	margin: 0 0 12px;
	overflow: auto;
	resize: none;
}
.login-popup-sec {
font-family: 'calibri', sans-serif;
margin: 30px auto; 
padding: 0; 
width: 420px;
 min-height:500px; 
box-sizing: border-box; 
position: relative; 
}
.login-popup-sec .login-content {
border-radius: 52px;
background: #fff;
width: 100%;
float: left;
overflow: hidden;
box-sizing: border-box;
padding-bottom: 20px;
-webkit-box-shadow: 0px 5px 20px 0px rgba(103, 103, 103, 0.43);
-moz-box-shadow: 0px 5px 20px 0px rgba(103, 103, 103, 0.43);
box-shadow: 0px 5px 20px 0px rgba(103, 103, 103, 0.43);
}
.login-popup-sec h2 {
font-family: 'calibri', sans-serif; 
font-size: 40px; 
margin: 0px; 
padding: 20px 0; 
letter-spacing: 1px;
width: 100%; 
background: #ff8000;
text-align: center;
text-transform: uppercase;
color: #333333;
float: left;
width: 100%;
-webkit-box-shadow: 0 13px 24px 0 rgba(0,0,0,0.19);
box-shadow: 0 13px 24px 0 rgba(0,0,0,0.19);
}
.login-popup-sec tr { 
padding: 37px 50px 0 50px;
margin: 0px; 
float: left; 
width: 100%; 
list-style: none; 
box-sizing: border-box; 
}
.login-popup-sec tr td {
margin: 0; 
padding: 0px;
float: left; 
width: 100%; 
box-sizing: border-box;
text-align: center;
}
.login-popup-sec tr td a{
	font-size: 35px;
	color: #333333;
	font-family: 'calibri', sans-serif; 
letter-spacing: 1px;
}
.login-popup-sec tr  td img{
width: 150px; 
height: 150px;
}
</style>
</head>
<body>
    <!-- start of Content Area 1-->	
	<div id="contents">
		<div>
			<div class="body" id="contact">
				<div id="sidebar">
<div class="body">
<div class="login-popup-sec" >
  <div class="login-content">
<h2>فئات الأخبار</h2>
					<table>
					<tr>
					<td><img src="../Images/categories.png" alt="Img"></td>
					<td><a href="../Admin/showcategory.aspx">عرض فئات الأخبار</a></td>
                        <td><img src="../Images/categories.png" alt="Img"></td>
					<td><a href="../Search_New.aspx">البجث عن خبر</a></td>
					</tr>
					</table>
					</div>
				</div>
					</div>
				</div>
				<div id="main">
<div class="login-popup-sec" >
  <div class="login-content">
<h2>الأخبار</h2>
					<table>
					<tr>
					<td><img src="../Images/news.png" alt="Img"></td>
					<td><a href="../News_Gallery.aspx">عرض الأخبار</a></td>
                        <td><img src="../Images/categories.png" alt="Img"></td>
					<td><a href="../All_News.aspx">عرض جميع الأخبار</a></td>
					</tr>
					</table>
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>
<!-- End of Content Area 1-->
	<!-- start of Content Area 2-->
	<div id="contents">
		<div>
			<div class="body" id="contact">
				<div id="sidebar">
					<div class="body">
<div class="login-popup-sec" >
  <div class="login-content">
<h2>التعليقات</h2>
					<table>
					<tr>
					<td><img src="../Images/comments.png" alt="Img"></td>
					<td><a href="../Admin/showcomments.aspx">عرض التعليقات</a></td>
                        <td><img src="../Images/comments.png" alt="Img"></td>
					<td><a href="../Add_Comment.aspx">إضافة تعليق</a></td>
					</tr>
					</table>
					</div>
				</div>
					</div>
				</div>
				<div id="main">
<div class="login-popup-sec" >
  <div class="login-content">
						<h2>المستخدمين</h2>
					<table>
					<tr>
					<td><img src="../Images/users.png" alt="Img"></td>
					<td><a href="../Admin/showusers.aspx">عرض المستخدمين</a></td>
					</tr>
					</table>
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>
<!-- End of Content Area 2-->
</body>
</html>
