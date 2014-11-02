<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Clase2609.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 211px;
        }
        .auto-style2
        {
            width: 479px;
        }
    </style>
</head>
<body style="width: 831px">
    <form id="form1" runat="server">
    <div>
    
        <table border="1" style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">Datos del Cliente</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Nombre:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtnombre" runat="server" BackColor="#66FF33" 
                        ForeColor="#FF3399"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtnombre" ErrorMessage="No debe estar vacío">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Edad:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtedad" runat="server" BackColor="Red" BorderColor="#CC0066" 
                        OnTextChanged="txtedad_TextChanged"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtedad" ErrorMessage="El rango debe ser entre 20 y 60" 
                        MaximumValue="60" MinimumValue="18">*</asp:RangeValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Correo</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtcorreo" runat="server" BackColor="#3399FF"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtcorreo" 
                        ErrorMessage="Debe serguir las reglas de un correo" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Retipee Correo</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtrepiteeCorreo" runat="server" BackColor="#990099"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtpasword1" runat="server" BackColor="#996633"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtpasword1" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Re Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtpasword2" runat="server" BackColor="#99FF66" 
                        BorderColor="#0033CC"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtpasword1" ControlToValidate="txtpasword2" 
                        ErrorMessage="CompareValidator">*</asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                </td>
                <td class="auto-style2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
