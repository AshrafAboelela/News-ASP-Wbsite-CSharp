<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="All_News.aspx.cs" Inherits="News.All_News" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
.all_new {
font-family: 'calibri', sans-serif; 
font-size: 40px; 
margin-left: 450px; 
padding: 20px 0; 
letter-spacing: 1px;
width: 300px; 
background: #33FFCC;
text-align: center;
text-transform: uppercase;
color: #333333;
border: 30px ridge rgba(28,110,164,0.69);
border-radius: 39px 40px 40px 40px;
}
.grid_new{
    margin-top:150px;
    margin-left:130px;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="all_new">
       عرض جميع الأخبار
    </div>
    <div class="grid_new">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField HeaderText="عنوان الخبر">
                    <ItemTemplate>
                        <asp:HyperLink ID="l_newstitle" runat="server" 
                            NavigateUrl='<%# "~/New_Details.aspx?newsid=" + Eval("newsid") %>' Text='<%# Eval("newstitle") %>'>
                        </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ملخص الخبر">
                    <ItemTemplate>
                        <asp:Label ID="lbl_summary" runat="server" Font-Size="Medium" ForeColor="#0099FF" 
                            Text='<%# Eval("summary") %>' Width="150px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="تفاصيل الخبر">
                    <ItemTemplate>
                        <asp:Label ID="lbl_details" runat="server" Font-Size="Medium" ForeColor="#0099FF" 
                            Text='<%# Eval("details") %>' Width="250px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="صورة الخبر">
                    <ItemTemplate>
                        <asp:Image ID="image_new" runat="server" Height="100px" ImageUrl='<%# "~/newsimgs/" + Eval("imagepath") %>' 
                            Width="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="تاريخ الخبر">
                    <ItemTemplate>
                        <asp:Label ID="lbl_date" runat="server" Font-Size="Medium" ForeColor="#0099FF" 
                            Text='<%# Eval("dateadd") %>' Width="150px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:newscon %>" 
            SelectCommand="SELECT [newsid], [newstitle], [summary], [details], [imagepath], [dateadd] FROM [new]">
        </asp:SqlDataSource>
          </div>
    </form>
</body>
</html>
