<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.Master" AutoEventWireup="true" 
    CodeBehind="showcomments.aspx.cs" Inherits="News.Admin.showcomments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <form id="form1" runat="server">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  DataKeyNames="commentid" DataSourceID="SqlDataSource1">
                  <Columns>
                      <asp:TemplateField HeaderText="التاريخ">
                          <ItemTemplate>
                              <asp:Label ID="lbl_date" runat="server" Text='<%# Eval("dateadd") %>' Font-Size="Medium" 
                                  ForeColor="#00CC00" Width="150px"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="اسم المستخدم">
                          <ItemTemplate>
                              <asp:Label ID="lbl_user" runat="server" Text='<%# Eval("username") %>' Font-Size="Medium" 
                                  ForeColor="#0066FF" Width="70px"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="التعليق">
                          <ItemTemplate>
                              <asp:Label ID="lbl_comment" runat="server" Text='<%# Eval("comment") %>' Font-Size="Medium" 
                                  ForeColor="#FF9900" Width="200px"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:TemplateField HeaderText="عنوان الخبر">
                          <ItemTemplate>
                              <asp:Label ID="lbl_new_title" runat="server" Text='<%# Eval("newstitle") %>' Font-Size="Medium" 
                                  ForeColor="#FF0066" Width="150px"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:NewsConnectionString %>" 
                  SelectCommand="select comments.*,new.newstitle from new,comments where new.newsid=comments.newsid">
              </asp:SqlDataSource>
      </form>
</asp:Content>
 