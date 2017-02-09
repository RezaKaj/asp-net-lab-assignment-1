<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="AdminAccessPage.aspx.cs" Inherits="LabAssignment1.AdminAccessPage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content runat="server" ID="cntnt" ContentPlaceHolderID="ContentPlaceHolder1">
   
   
     <div class="container">
        
        <div class="container" style="float: left">

              <asp:Label runat="server" Font-Bold="true">Add new Category</asp:Label><br />
            <br />
            <asp:Label runat="server">Category name</asp:Label>
            <asp:TextBox runat="server" ID="txtCategory" placeholder="Category name"></asp:TextBox><br />
            <asp:Button runat="server" ID="btnSubmitCategory" Text="Submit" CssClass="btn-primary" />
        </div>
    </div>

    <hr />
    <div class="container" >
        <asp:Label runat="server" Font-Bold="true">Add new Cousine</asp:Label><br />
        <br />

        <asp:Label runat="server">Cousine name</asp:Label>
        <asp:TextBox runat="server" ID="txtCousine" placeholder="Cousine name"></asp:TextBox><br />
        <asp:Button runat="server" ID="btnSubmitCousine" Text="Submit" CssClass="btn-primary" />
    </div>

 

</asp:Content>
