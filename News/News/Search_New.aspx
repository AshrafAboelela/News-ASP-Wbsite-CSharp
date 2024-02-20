<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search_New.aspx.cs" Inherits="News.Search_New" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search New</title>
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
.login-popup-sec {
font-family: 'calibri', sans-serif;
margin: 30px auto; 
padding: 0; 
width: 420px;
 min-height:330px; 
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
.login-popup-sec tr td .login-btn {
font-family: 'Montserrat', sans-serif;
font-size: 16px; 
color: #fff; 
cursor: pointer;
border: 0px; 
margin-left: 35px;
width: 150px; 
background: #0054a6; 
height: 50px;
border-radius: 55px;
}
.login-popup-sec tr td .inpt {
height: 25px; 
font-family: 'Montserrat', sans-serif; 
font-size: 14px; 
color: #222; 
border: solid 1px #9c9c9c; 
width: 300px;
float:inherit;
box-sizing: border-box;
-webkit-box-shadow: 0 5px 5px 0 rgba(0,0,0,0.13); 
box-shadow: 0 5px 5px 0 rgba(0,0,0,0.13); 
margin-bottom: 25px;
}
.grid_new{
    margin-top:50px;
    margin-left:130px;
}
</style>
</head>
<body><form id="form1" runat="server">
<div id="contents">
		<div>
			<div class="body" id="contact">
				<div id="sidebar">
<div class="body">
<div class="login-popup-sec" >
  <div class="login-content">
            
<h2>البحث فى الاخبار</h2>
					<table>
                        <tr><td><asp:Label ID="Label3" runat="server" Text="إكتب عنوان الأخبار" Font-Size="15px" 
                            ForeColor="Red"/></td>
                        	<td><asp:TextBox ID="txt_categoryname" class="inpt" runat="server"></asp:TextBox>
                      <asp:Label ID="lbl_categoryname" runat="server" Text="مطلوب" Font-Size="15px" ForeColor="Red" 
                          Visible="False"/></td>
                         <td style="height: 25px;"></td>                                                
                    <td><asp:Button ID="btn_newtitle_search" class="login-btn" runat="server" Text="بحث بإستخدام عنوان الخبر" 
                        OnClick="btn_newtitle_search_Click" /></td>
					</tr>
					</table>
					</div>
				</div>
					</div>
				</div>
				<div id="main">
<div class="login-popup-sec" >
  <div class="login-content">
<h2>عرض الاخبار باستخدام الفئة</h2>
					<table>
                         <tr><td><asp:Label ID="Label2" runat="server" Text="اختر فئة الأخبار" Font-Size="15px" 
                             ForeColor="Red"/></td>
					<td><asp:DropDownList ID="dp_new_cat" class="inpt" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="categoryname" DataValueField="categoryid"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newscon %>" 
                            SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
                      <asp:Label ID="Label1" runat="server" Text="مطلوب" Font-Size="15px" ForeColor="Red" Visible="False"/></td>
                         <td style="height: 25px;"></td>                                                
                    <td><asp:Button ID="btn_newcat_search" class="login-btn" runat="server" Text="عرض جميع اخبار الفئة" 
                        OnClick="btn_newcat_search_Click" /></td>
					</tr>
					</table>   
					</div>
				</div>
				</div>
			</div>
		</div>
	</div> 
    <div class="grid_new">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
      </form>
</body>
</html>
