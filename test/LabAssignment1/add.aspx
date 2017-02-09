<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="add.aspx.cs" Inherits="LabAssignment1.add" %>

<asp:Content runat="server" ID="cntnt" ContentPlaceHolderID="ContentPlaceHolder1">

    <div class="container">


        <table>
            <tr>
                <td>
                    <label id="lbl_recipeName">Recipe Name: </label>
                </td>
                <td>

                    <asp:TextBox runat="server"  ID="txt_recipeName"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rquTxtRecipeName"  runat="server" ErrorMessage="Please enter recipe name" ControlToValidate="txt_recipeName"   Display="None"> </asp:RequiredFieldValidator>


                </td>
                <td>
                    <label style="margin-left: 40px;" id="lbl_submittedBy">Submitted by: </label>
                </td>
                <td>

                    <asp:TextBox CssClass="textBoxCssClass"  ID="txt_submittedBy" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="val" runat="server" ErrorMessage="Please enter author's name"  ValidateRequestMode="Enabled"   ControlToValidate="txt_submittedBy" Display="None"></asp:RequiredFieldValidator>
                    
            </tr>

            <tr>
                <td>
                    <label id="lbl_cookingTime">Cooking Time: </label>

                </td>
                <td>

                    <asp:TextBox CssClass="textBoxCssClass" runat="server" placeholder="Only enter time in minutes" ID="txt_cookTime" ></asp:TextBox>
                    <asp:RangeValidator
                        ID="rangeValidator1"
                        ControlToValidate="txt_cookTime"
                        MinimumValue="0"
                        MaximumValue="120"
                        Type="Integer"
                        ErrorMessage="Invalid Input"
                        Display="None"
                        runat="server">
                    </asp:RangeValidator>
                </td>

                <td>
                    <label style="margin-left: 40px;" id="lbl_portions">Portions: </label>


                </td>
                <td>
                    <asp:TextBox CssClass="textBoxCssClass" runat="server" ID="txt_portion"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Category:</label>
                </td>
                <td>
                    <asp:DropDownList runat="server" ID="drpdwn_category" placeholder="Category">
                        <asp:ListItem>Breakfast</asp:ListItem>
                        <asp:ListItem>Lunch</asp:ListItem>
                        <asp:ListItem>Dinner</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="margin-left: 10px;">
                    <label style="margin-left: 40px;">Cousine</label>
                </td>
                <td>
                    <div class="dropdown">
                        <asp:DropDownList placeholder="Cousine" CssClass="dropdown" ID="drpdwnMenu" runat="server">
                            <asp:ListItem>African</asp:ListItem>
                            <asp:ListItem>Asian</asp:ListItem>
                            <asp:ListItem>European</asp:ListItem>
                            <asp:ListItem>Oceanian</asp:ListItem>
                            <asp:ListItem>Add a new cousine</asp:ListItem>
                        </asp:DropDownList>




                    </div>
                </td>
            </tr>

        </table>


        <asp:CheckBox runat="server" ID="chkbx" Text="Private" CssClass="checkbox" />
        <label>Recipe Description</label>

        <asp:TextBox runat="server" ID="txt_description" placeholder="Description" TextMode="MultiLine" Width="40%" Class="form-control"></asp:TextBox>

        <br />
        <label>Add a photos of your food</label>

        <asp:FileUpload ID="imageInputFile" runat="server" />
        <br />
        <br />
        <br />
        <asp:Button runat="server" ID="btn_Cancel" OnClick="BtnCancel_Click" Text="Cancel" CssClass="btn btn-danger" />
        <asp:Button runat="server" ID="btn_Submit" OnClick="BtnSubmit_Click" Text="Submit" CssClass="btn btn-primary" />
    </div>
    <div>
       <asp:ValidationSummary ID="ValidationSummary1"   runat="server" ForeColor="#FF3300" /> 
    </div>




</asp:Content>


