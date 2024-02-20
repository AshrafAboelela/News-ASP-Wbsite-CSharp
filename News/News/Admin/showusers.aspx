<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.Master" AutoEventWireup="true" 
    CodeBehind="showusers.aspx.cs" Inherits="News.Admin.showusers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="userid" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:TemplateField HeaderText="الإســــــــم">
            <ItemTemplate>
                <asp:Label ID="lbl_user" runat="server" Font-Size="Large" ForeColor="#00CC00" Text='<%# Eval("username") %>' 
                    Width="150px"></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="الإيميل">
            <ItemTemplate>
                <asp:Label ID="lbl_mail" runat="server" Font-Size="Large" ForeColor="#0066FF" Text='<%# Eval("email") %>' 
                    Width="200px"></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="الصلاحية">
            <ItemTemplate>
                <asp:Label ID="lbl_role" runat="server" Font-Size="Large" ForeColor="#CC6600" Text='<%# Eval("rolename") %>' 
                    Width="70px"></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewsConnectionString %>" 
        SelectCommand="select users.*,roles.rolename from roles,users where users.roleid=roles.roleid"></asp:SqlDataSource>
</form>
</asp:Content>
