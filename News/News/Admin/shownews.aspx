<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.Master" AutoEventWireup="true" 
    CodeBehind="shownews.aspx.cs" Inherits="News.Admin.shownews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <form id="form1" runat="server">
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="newsid" 
               OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" 
              OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
              <Columns>
                  <asp:TemplateField HeaderText="id" Visible="False">
                      <ItemTemplate>
                          <asp:Label ID="lbl_newid" runat="server" Text='<%# Eval("newsid") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="عنوان الخبر">
                      <EditItemTemplate>
                          <asp:TextBox ID="txt_editnewtitle" runat="server" Text='<%# Bind("newstitle") %>' Width="100px">
                          </asp:TextBox></EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="lbl_newtitle" runat="server" Text='<%# Eval("newstitle") %>' Width="100px">
                          </asp:Label></ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="ملخص الخبر">
                      <EditItemTemplate>
                          <asp:TextBox ID="txt_editnewsummary" runat="server" Text='<%# Bind("summary") %>' Width="150px">
                          </asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="lbl_newsummary" runat="server" Text='<%# Eval("summary") %>' Width="150px">
                          </asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="تفاصيل الخبر">
                      <EditItemTemplate>
                          <asp:TextBox ID="txt_editnewdetails" runat="server" Text='<%# Bind("details") %>' Width="250px">
                          </asp:TextBox></EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="lbl_newdetails" runat="server" Text='<%# Eval("details") %>' Width="250px"></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="التاريخ">
                      <ItemTemplate>
                          <asp:Label ID="lbl_new_date" runat="server" Text='<%# Eval("dateadd") %>' Width="150px"></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="صورة الخبر">
                      <ItemTemplate>
                          <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~/newsimgs/" + Eval("imagepath") %>' 
                              Width="100px" /></ItemTemplate>
                  </asp:TemplateField>
                  <asp:ButtonField CommandName="Cancel" Text="الغاء" >
                  <ItemStyle Font-Size="Medium" ForeColor="#0066FF" Width="70px" />
                  </asp:ButtonField>
                  <asp:ButtonField CommandName="Delete" Text="حذف" >
                  <ItemStyle Font-Size="Medium" ForeColor="#0066FF" Width="70px" />
                  </asp:ButtonField>
                  <asp:ButtonField CommandName="Edit" Text="تعديل" >
                  <ItemStyle Font-Size="Medium" ForeColor="#0066FF" Width="70px" />
                  </asp:ButtonField>
                  <asp:ButtonField CommandName="Update" Text="حفظ التعديل" >
                  <ItemStyle Font-Size="Medium" ForeColor="#0066FF" Width="70px" />
                  </asp:ButtonField>
              </Columns>
          </asp:GridView>
          </form>
</asp:Content>
