<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.Master" AutoEventWireup="true" 
    CodeBehind="AdminLogin.aspx.cs" Inherits="News.Admin.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.login-popup-sec {
font-family: 'calibri', sans-serif;
margin: 30px auto;
margin-left:250px;
padding: 0; 
width: 450px;
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
font-size: 33px; 
margin: 0px; 
padding: 20px 0; 
letter-spacing: 1px;
width: 100%; 
background: #3399ff;
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
.login-popup-sec tr td input {
height: 50px; 
font-family: 'Montserrat', sans-serif; 
font-size: 14px; 
color: #222; 
border: solid 1px #9c9c9c; 
margin: 0px; 
padding: 15px; 
width: 100%; 
float: left; 
box-sizing: border-box; 
-webkit-box-shadow: 0 5px 5px 0 rgba(0,0,0,0.13); 
box-shadow: 0 5px 5px 0 rgba(0,0,0,0.13); 
margin-bottom: 25px;
}
.login-popup-sec tr td .login-btn {
font-family: 'Montserrat', sans-serif;
font-size: 16px; 
color: #fff; 
cursor: pointer;
border: 0px; 
margin: 0px; 
width: 100%; 
background: #0054a6; 
height: 50px;
border-radius: 50%;
}
.login-popup-sec .login-content div img{
	background: #99ccff;
	border: 5px solid #004d99;
    float: none;
    padding: 10px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="login-popup-sec" >
  <div class="login-content">
<form id="form1" runat="server">
    <h2>دخـــول مدير</h2>
	<div>
	<img src="../Images/admin_login.jpg" width="420px" height="400px" alt="Image" />
	</div>
<table>
					<tr>
					<td><asp:Label ID="Label1" runat="server" Text="إسم المدير" Font-Size="25px" ForeColor="#0066FF"></asp:Label></td>                     				
					<td><asp:TextBox ID="txt_adminname" class="inpt" runat="server"></asp:TextBox></td> 
                        <td><asp:Label ID="lbl_adminname" runat="server" Text="مطلوب" Font-Size="15px" ForeColor="Red" Visible="False"/>
					</td>
                        <td><asp:Label ID="Label2" runat="server" Text="كلمة المرور" Font-Size="25px" ForeColor="#0066FF"></asp:Label></td>                     				
					<td><asp:TextBox ID="txt_adminpass" class="inpt" runat="server"></asp:TextBox></td> 
                    <td><asp:Label ID="lbl_adminpass" runat="server" Text="مطلوب" Font-Size="15px" ForeColor="Red" Visible="False"/></td>
                         <td><asp:Label ID="lbl_valid" runat="server" Font-Size="15px" ForeColor="Red" Visible="False"/></td>
                         <td style="height: 25px;"></td>                                                
                    <td><asp:Button ID="btn_admin_login" class="login-btn" runat="server" Text="دخول" OnClick="btn_admin_login_Click" /></td>
					</tr>
					</table>
      </form>
  </div>
</div>
</asp:Content>
