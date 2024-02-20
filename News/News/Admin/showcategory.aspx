<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.Master" AutoEventWireup="true" 
    CodeBehind="showcategory.aspx.cs" Inherits="News.Admin.showcategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:GridView ID="grdcategory" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="grdcategory_RowCancelingEdit" 
        OnRowDeleting="grdcategory_RowDeleting" OnRowEditing="grdcategory_RowEditing" OnRowUpdating="grdcategory_RowUpdating" 
        BorderColor="#000099" Font-Size="Large" ForeColor="#0066FF" Height="150px" Width="400px">
        <Columns> 
            <asp:TemplateField HeaderText="id" Visible="False">
                <ItemTemplate>
                    <asp:Label ID="lbl_id" runat="server" Text='<%# Eval("categoryid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="اسم التصنيف">
                <EditItemTemplate>
                    <asp:TextBox ID="txt_editcategoryname" runat="server" Text='<%# Bind("categoryname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbl_itemcategoryname" runat="server" Text='<%# Eval("categoryname") %>' Width="100px"></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="50%" />
            </asp:TemplateField>
            <asp:ButtonField CommandName="Cancel" Text="الغاء" />
            <asp:ButtonField CommandName="Delete" Text="حذف" />
            <asp:ButtonField CommandName="Edit" Text="تعديل" />
            <asp:ButtonField CommandName="Update" Text=" تحديث" />
        </Columns>
        <EditRowStyle Font-Size="Medium" ForeColor="#0066FF" />
        </asp:GridView>
    </form>
</asp:Content>
