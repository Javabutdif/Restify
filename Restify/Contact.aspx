<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Restify.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3> You can reach us through
         
        </h3>
       
        <address>
           GenaBioTech Solutions - Talisay City, 6045<br />
            <abbr title="Phone">Contact us:</abbr>
            09999858823
        </address>

        <address>
            <strong>Customer Support:</strong>   <a href="mailto:restifyPH@gmail.com">restifyPH@gmail.com</a><br />
            <strong>Business Email:</strong> <a href="mailto:restifyPH@gmail.com">restifyPH@gmail.com</a>
        </address>
    </main>
</asp:Content>
