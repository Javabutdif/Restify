<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="Restify.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="392px">
            <asp:Label ID="Label1" runat="server" Text="Add Apartment"></asp:Label>
            <br />
            <br />
            Apartment Name<br />
            <asp:TextBox ID="nameText" runat="server" Width="209px"></asp:TextBox>
            <br />
            <br />
            Apartment Details<br />
            <asp:TextBox ID="detailsText" runat="server" Height="63px" Width="209px"></asp:TextBox>
            <br />
            <br />
            Apartment Location<br />
            <asp:TextBox ID="locationText" runat="server" Width="209px"></asp:TextBox>
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Button ID="submitButton" runat="server" OnClick="submitButton_Click" Text="Submit" />
        </asp:Panel>
    </form>
</body>
</html>
