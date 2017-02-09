<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="recipeView.aspx.cs" Inherits="LabAssignment1.recipeView" %>

<asp:Content runat="server" ID="cntnt" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container">
        <h3>By clicking on "Show" button, you wil be able to find a full list of your recipes.<br />Enjoy all delicious recipes</h3>

        <asp:Repeater ID="EmployeeRepeater" runat="server">
               <HeaderTemplate>
                   <table class="spacing-table">
                       <tr>
                           <th style="margin-right:100px;">Recipe Name</th>
                           <th style="margin-right:1000px;">Submitted By</th>
                           <th style="margin-right:10px;">Cook time</th>
                           <th style="margin-right:10px;">Cousine</th>
                           <th style="margin-right:10px;">Private Recipe</th>
                           <th style="margin-right:10px;">Description</th>
                           
                        </tr>             
               </HeaderTemplate>
               <ItemTemplate>
                   <tr>
                       <td style="margin-right:10px;"><%# Eval("RecipeName") %></td>
                       <td><%# Eval("SubmittedBy") %></td>
                       <td><%#Eval("CookingTime") %></td>
                       <td><%#Eval("Cousine") %></td>
                       <td><%#Eval("Private") %></td>
                       <td><%#Eval("Description") %></td>
                      
                   </tr>
               </ItemTemplate> 
            <FooterTemplate>
                </table>   
            </FooterTemplate>
        </asp:Repeater>
        <asp:Button ID="testBtn" runat="server" OnClick="testBtn_Click"  Text="Show Recipes"/>
         </div>
</asp:Content>

