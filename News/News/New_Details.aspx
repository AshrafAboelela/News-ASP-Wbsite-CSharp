<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New_Details.aspx.cs" Inherits="News.New_Details" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New_Details</title>
    <style type="text/css">
         #contents {
            background-position: -961px top;
            background-repeat: repeat-y;
            width: 970px;
            margin: 0 auto;
        }
        #sidebar {
            float: right;
            background-position: 0 0;
            width: 432px;
            margin-left: 20px;
            padding: 2px 0 0;
        }
            #sidebar img {
                height: 400px;
                width: 350px;
                margin-left: 50px;
            }
        #contact .inpt {
            color: #49A2F5;
            font-size: 13px;
            height: 27px;
            line-height: 27px;
            width: 440px;
            border: 3px solid #af8112;
            margin: 0 0 12px;
        }

        #contact .btn {
            color: #01A90D;
            cursor: pointer;
            font-family: "Oswald";
            height: 34px;
            line-height: 34px;
            width: 109px;
            border: 0;
            padding: 0 0 2px;
            font-size: 20px;
            background-color: #DCF5F9;
            border-radius: 30%;
        }
        #p {
            font-family: Tahoma;
            color: #1FFF3F;
            font-size: 20px;
            margin-left: 260px;
            font-weight: bold;
        }
        #contact h1 {
            font-family: Tahoma;
            color: #0094ff;
            font-size: 40px;
            margin-left: 260px;
        }

        #lnk {
            font-family: 'Times New Roman';
            color: #4EF35A;
            font-size: 25px;
            margin-left: 200px;
             margin-bottom: 100px;
        }

        #ls52 {
            font-size: 25px;
            font-weight: bold;
            width: 180px;
            height: 50px;
            text-align: center;
            border: 30px inset rgba(28,110,164,0.69);
            border-radius: 0px 40px 0px 40px;
        }

        .ls13 {
            margin-bottom: 100px;
            font-size: 30px;
            font-weight: bold;
            width: 400px;
            height: 100px;
            text-align: center;
            color: #FFFFFF;
            background: #FFFFFF;
            text-shadow: 2px 2px 0 #4074b5, 2px -2px 0 #4074b5, -2px 2px 0 #4074b5,
                 -2px -2px 0 #4074b5, 2px 0px 0 #4074b5, 0px 2px 0 #4074b5,
                 -2px 0px 0 #4074b5, 0px -2px 0 #4074b5;
        }

        .ls6 {
            font-size: 25px;
            font-weight: bold;
            width: 180px;
            height: 100px;
            text-align: center;
            color: #9CD8F1;
            text-shadow: -1px -1px 1px rgba(255,255,255,.1), 1px 1px 1px rgba(0,0,0,.5);
        }

        .ls7 {
            font-size: 20px;
            font-weight: bold;
            width: 280px;
            height: 100px;
            text-align: center;
            color: #333333;
            background: #FFFFFF;
            text-shadow: 2px 2px 0px #FFFFFF, 5px 4px 0px rgba(0,0,0,0.15);
            margin-bottom: 100px;
        }

        table.ble {
            margin-left: 150px;
            width: 448px;
        }

        .ls10 {
            font-size: 25px;
            font-weight: bold;
            width: 180px;
            height: 70px;
            text-align: center;
            color: #000000;
            background: #FFFFFF;
            text-shadow: 2px 2px 0 #bcbcbc, 4px 4px 0 #9c9c9c;
            margin-bottom: 100px;
        }
        #cl{
            width: 100px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="contents">
        <div>
            <div id="contact">
                <div id="sidebar">
                        <div>
                            <asp:Image ID="Image1" runat="server" />
                        </div>
                </div>
                <div id="main">
                         <table class="ble">
                            <tr>
                                <td id="ls52"><asp:Label ID="Label1" class="ls52" runat="server"></asp:Label></td>
                            </tr>
                             <tr id="cl"></tr>
                            <tr>
                                <td><asp:Label ID="Label2" class="ls13" runat="server"></asp:Label></td>
                                <td id="p">عنوان الخبر</td>
                            </tr>
                                                          <tr id="cl"></tr>
                            <tr>
                                <td><asp:Label ID="Label3" class="ls10" runat="server"></asp:Label></td>
                                <td id="p">ملخص الخبر</td>
                            </tr>
                                                          <tr id="cl"></tr>
                             <tr>
                                 <td><asp:Label ID="Label4" class="ls7" runat="server"></asp:Label></td>
                                 <td id="p">تفاصيل الخبر</td>
                             </tr>
                             <tr id="cl"></tr>
                            <tr>
                            <td id="lnk"><a href="All_News.aspx">عودة الى صفحة الفئات</a></td>
							</tr>
                        </table>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
