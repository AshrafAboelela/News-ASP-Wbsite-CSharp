<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News_Home.aspx.cs" Inherits="News.News_Home" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
           .header_0 {
            clear: both;
            height: 35px;
            padding: 15px 0 0 20px;
            font-size: 30px;
            text-align: center;
            color: #0043fe;
        }
        .header_01 {
            font-size: 15px;
            color: #0dbd24;
        }
        .header_02 {
            font-size: 35px;
            font-weight: bold;
            width: 50px;
            height: 50px;
            text-align: center;
            color: #FFFFFF;
            text-shadow: #FFF 0px 0px 5px, #FFF 0px 0px 10px, #FFF 0px 0px 15px,
                 #FF2D95 0px 0px 20px, #FF2D95 0px 0px 30px, #FF2D95 0px 0px 40px,
                 #FF2D95 0px 0px 50px, #FF2D95 0px 0px 75px;
        }
        .header_03 {
            font-size: 35px;
            font-weight: bold;
            width: 50px;
            height: 50px;
            text-align: center;
            color: #e0dfdc;
            letter-spacing: .1em;
            text-shadow: 0 -1px 0 #fff, 0 1px 0 #2e2e2e, 0 2px 0 #2c2c2c, 0 3px 0 #2a2a2a,
                 0 4px 0 #282828, 0 5px 0 #262626, 0 6px 0 #242424, 0 7px 0 #222,
                 0 8px 0 #202020, 0 9px 0 #1e1e1e, 0 10px 0 #1c1c1c, 0 11px 0 #1a1a1a,
                 0 12px 0 #181818, 0 13px 0 #161616, 0 14px 0 #141414, 0 15px 0 #121212,
                 0 22px 30px rgba(0,0,0,0.9);
        }
        .header_04 {
            font-size: 35px;
            font-weight: bold;
            width: 50px;
            height: 50px;
            text-align: center;
            color: #444444;
            text-shadow: 1px 0px 1px #CCCCCC, 0px 1px 1px #EEEEEE, 2px 1px 1px #CCCCCC,
                 1px 2px 1px #EEEEEE, 3px 2px 1px #CCCCCC, 2px 3px 1px #EEEEEE,
                 4px 3px 1px #CCCCCC, 3px 4px 1px #EEEEEE, 5px 4px 1px #CCCCCC,
                 4px 5px 1px #EEEEEE, 6px 5px 1px #CCCCCC, 5px 6px 1px #EEEEEE,
                 7px 6px 1px #CCCCCC;
        }

        #content_wrapper {
            clear: both;
            width: 980px;
            background: #ffffff;
            margin-left: 40px;
            margin-top: 35px;
        }
        #column_w300 {
            float: right;
            width: 298px;
            background: #efefef;
            border: 1px solid #e5e5e5;
			<!-- height: 100px; -->
        }
        .column_w300_section_01 {
            clear: both;
            padding: 20px 19px;
        }
        .news_image_wrapper {
            float: left;
            width: 70px;
            height: 70px;
            padding: 4px;
            margin: 3px 0 0 0;
            border: 1px solid #dad8d8;
            background: #ffffff;
        }
        .news_image_wrapper img{
            width: 70px;
            height: 70px;
        }
        .news_content {
            float: right;
            width: 170px;
        }
        .news_content .news_date {
                font-size: 15px;
                color: #ff0000;
            }
            .news_content p {
                line-height: 15px;
                font-size: 13px;
                color: #0094ff;
            }
        /* =============================== */
        .tbl_content {
            float: left;
            margin-left: 10px;
            width: 300px;
            background: #f5f5f5;
            height: 115px;
            border-radius: 40px 40px 40px 40px;
        }
        .tbl_td1 {
            font-size: 18px;
            color: #FFFFFF;
            height: 10px;
            background: #33CC66;
            border-radius: 10%;
            font-weight: bold;
            text-align: center;
            border: 5px double #1F1212;
        }
        .tbl_td2 {
            background: #f5f5f5;
        }
        .tbl_td2 img{          
            height: 90px;
            width: 150px;
        }

        .tbl_td3 {
            font-size: 15px;
            color: #fb0909;
        }
        .tbl_td4 {
            font-size: 12px;
            color: #fb0909;
        }
        .tbl_td5 {
            font-size: 15px;
            color: #0000CC;
            text-align: center;
        }
        .ls46 {
            font-size: 25px;
            font-weight: bold;
            width: 180px;
            height: 50px;
            text-align: center;
            border-bottom: 11px inset rgba(28,110,164,0.96);
            border-radius: 40px 40px 40px 40px;
        }
        .ls44 {
            font-size: 25px;
            font-weight: bold;
            width: 180px;
            height: 50px;
            text-align: center;
            border-top: 11px outset rgba(28,110,164,0.96);
            border-radius: 40px 40px 40px 40px;
        }
        h2 {
            font-size: 35px;
            color: #0000CC;
            margin-left: 400px;
            font-weight: bold;
        }
    </style>
</head>
<body>
  <h2>الصفحة الرئيسية  للأخبار</h2>
    <div id="content_wrapper">
        <div id="t_content">
            <div id="column_w300">
                <div class="header_0"><asp:HyperLink ID="HyperLink2" runat="server"
                     NavigateUrl="../Admin/UserLogin.aspx"
                            Text="دخول مستخدم"></asp:HyperLink></div>
               <div class="header_0"> <asp:HyperLink ID="HyperLink3" runat="server"
                     NavigateUrl="../Admin/AdminLogin.aspx"
                            Text="دخول مدير"></asp:HyperLink></div>
                <div class="header_0">الإعلانات 1</div>
                <marquee direction="down">
                     <asp:ListView ID="ListView4" runat="server">
                <ItemTemplate>
                    <div class="column_w300_section_01 even_color">
                        <div class="news_image_wrapper">
                            <asp:Image ID="Image1" runat="server"
ImageUrl='<%# "~/newsimgs/" + Eval("imagepath") %>' />
                        </div>
                        <div class="news_content">
                            <div class="news_date"> <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl='<%# "~/New_Details.aspx?newsid=" + Eval("newsid") %>' 
                            Text='<%# Eval("newstitle") %> '></asp:HyperLink></div>
                            <div class="header_01"><%# Eval("summary") %></div>
                            <p><%# Eval("dateadd") %></p>
                        </div>
                        <div class="cleaner"></div>
                    </div>        

                </ItemTemplate>
            </asp:ListView>
                    </marquee>
                <!-- =========================================== -->
                <div class="header_0">الإعلانات 2</div>
                <marquee direction="up">
                     <asp:ListView ID="ListView3" runat="server">
                <ItemTemplate>
        <div class="column_w300_section_01 even_color">
            <div class="news_image_wrapper">
                 <asp:Image ID="Image1" runat="server"
ImageUrl='<%# "~/newsimgs/" + Eval("imagepath") %>' />
            </div>
              <div class="news_content">
                            <div class="news_date"><%# Eval("newstitle") %>
                            </div>
                            <div class="header_01"><%# Eval("summary") %></div>
                            <p><%# Eval("dateadd") %></p>
                        </div>
            <div class="cleaner"></div>
        </div>
                </ItemTemplate>
            </asp:ListView>
                </marquee>
                <!-- =========================================== -->
                <div class="header_0">الإعلانات</div>
                <marquee>
 <asp:ListView ID="ListView2" runat="server">
                <ItemTemplate>
        <div class="column_w300_section_01 even_color">
            <div class="news_image_wrapper">
<asp:Image ID="Image1" runat="server"
ImageUrl='<%# "~/newsimgs/" + Eval("imagepath") %>' />
            </div>
            <div class="news_content">
                <div class="news_date">
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl='<%# "~/New_Details.aspx?newsid=" + Eval("newsid") %>' 
                            Text='<%# Eval("newstitle") %> '></asp:HyperLink>
                </div>
                <div class="header_01"><%# Eval("summary") %></div>
                <p><%# Eval("details") %></p>
            </div>
            <div class="cleaner"></div>
        </div>
                </ItemTemplate>
            </asp:ListView>
                </marquee>
            </div>
        </div>
    </div>
    <!-- =========================================== -->
     <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
    <table class="tbl_content">
        <tr>
            <td class="ls44"><%# Eval("newstitle") %></td>
        </tr>
        <tr>
            <td class="tbl_td2">
                <center>
                    <asp:Image ID="Image1" runat="server" Height="100px" 
                        ImageUrl='<%# "~/newsimgs/" + Eval("imagepath") %>' 
                                    Width="100px" />
				</center>
            </td>
        </tr>
        <tr><td class="tbl_td3"><%# Eval("summary") %></td></tr>
        <tr><td class="tbl_td3"><%# Eval("details") %></td></tr>
        <tr><td class="tbl_td4"><%# Eval("dateadd") %></td></tr>
        <tr><td class="tbl_td5">لمعرفة تفاصيل الخبر إضغط</td></tr>
        <tr>
            <td><p align=center><b><asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl='<%# "~/New_Details.aspx?newsid=" + Eval("newsid") %>' 
                            Text='<%# Eval("newstitle") %> '></asp:HyperLink></b></p></td>     
             <tr>
            <td class="ls46"></td>
        </tr>
    </table>
                </ItemTemplate>
            </asp:ListView>
<!-- 	****************************** -->
</body>
</html>
