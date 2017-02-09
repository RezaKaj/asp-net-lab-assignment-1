<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="search.aspx.cs" Inherits="LabAssignment1.search" %>

<asp:Content runat="server" ID="cntnt" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container ">
        <h3>Search<br />
        </h3>
        <p>Please fill in the fields to filter your recipes</p>
        <div class="form-search" runat="server">
            <label>Recipe Name: </label>

            <asp:TextBox runat="server" CssClass="text-left form-group" ID="txt_recipeName" ></asp:TextBox><br /><br />
       <!--         <label>Submitted By:</label>   
        <asp:TextBox runat="server" CssClass="text-left form-group" ID="txt_submittedBy" ></asp:TextBox> 
            <br />
            <br />
            
            -->
        

            <asp:Button runat="server" ID="btn_search" OnClick="btn_search_Click" CssClass="btn-primary btn"  Text="Search"/>
        </div>
        <div>
            <asp:GridView runat="server" ID="grdView">
                
            </asp:GridView>
        </div>
    </div>
</asp:Content>

