<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News_Gallery.aspx.cs" Inherits="News.News_Gallery" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>News_Gallery</title>
    <style type="text/css">
h1 {
font-size: 35px;
	color: #0000CC;
	margin-top:40px;
     margin-left:350px;
}
img {
	 border-radius: 52px;
}
.frame {
	float: left;
	background-position: 0 0;
	height: 110px;
	width: 140px;
	 margin-left:20px;
	padding: 1px -20px 5px;
	text-align: center;
}
.details {
	 margin-left:180px;
}
.details h2 {
font-size: 25px;
	color: #000099;
	margin-top:-5px;
}
.details h4 {
font-size: 20px;
	color: #00CC00;
	margin-top:-5px;
}
.details h5 {
font-size: 12px;
	color: #0099FF;
	margin-top:-5px;
}
.details h3 {
font-size: 15px;
	color: #339999;
	margin-top:-20px;
}
.details p {
font-size: 15px;
	color: #3300FF;
	margin-top:-5px;
}
.cleaner { 
clear: both;
width: 100%;
height: 30px;
font-size: 0px;
}
.frame img{
width:150px;
height:150px;
}
ul {
	margin: 10px 20px 0 0;
	padding: 0px;
	list-style: none;
}
 body {
	margin: 0;
	padding: 0;
	line-height: 1em;
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 15px;
	color: #666;
	background: #ffffff;
} 
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>الأخبار</h1>
				<ul class="items">
              <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <li>
						<div class="frame">
                                <asp:Image ID="Image1" runat="server" Height="100px" 
                                    ImageUrl='<%# "~/newsimgs/" + Eval("imagepath") %>' Width="100px" />
                         </div>			
						<div class="details">
                            <h2><%# Eval("newstitle") %></h2>
						<p><%# Eval("summary") %></p>
							<h4>تفاصيل الخبر</h4>
							<h3><%# Eval("details") %></h3>
							<h5><%# Eval("dateadd") %></h5>
						</div>
					</li>
                    <div class="cleaner"></div>
                </ItemTemplate>
            </asp:ListView>
				</ul>
    </form>
</body>
</html>
