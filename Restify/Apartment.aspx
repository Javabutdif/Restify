<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Apartment.aspx.cs" Inherits="Restify.Apartment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <asp:PlaceHolder runat="server">
    <%: Scripts.Render("~/bundles/modernizr") %>
</asp:PlaceHolder>

<webopt:bundlereference runat="server" path="~/Content/css" />
<link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

 <style>
 /* HEADING */


     body 
     {
         padding-block: 33px; 
         padding-inline: 33px;   
     }

     .navbar 
     {
         background-color: #56327E; /* RestiFy Purple */
         border-radius: 20px; 
         box-shadow: 0 2px 4px rgba(0.1, 0.1, 0.1, 0.1); /* Add subtle shadow */
         margin-bottom: 20px; /* Add bottom margin */
         padding-top: 23px; /* Add subtop padding */
         padding-bottom: 23px; /* Add subbottom padding */
     }

     .navbar-brand {
         font-weight: bold;
         font-style: italic;
         margin-right: 20px; /* Add space on the right */
     }

     .nav-link {
         padding: 10px 15px;
         color: #BCA9E9;
         border-radius: 20px; /* Add curvy edges */
         transition: all 0.3s ease;
     }

     .nav-link:hover {
             background-color: #BCA9E9; /* RestiFy Purple on hover */
             box-shadow: 0 2px 4px rgba(0.3, 0.3, 0.3, 0.3); /* Add more pronounced shadow */
             transform: translateY(-3px); /* Add elevation */
     }

     .navbar-toggler {
         border: none;
         background-color: transparent;
         color: #BCA9E9;
     }

     .navbar-toggler:hover {
             color: #BCA9E9; /* Lighten color on hover */
     }

     #form1 {
         font-weight: 700;
     }

 </style>

</head>
<body>
        <form class="text-center" id="form1" runat="server">
    
    <nav class="navbar navbar-expand-sm navbar-toggleable-sm " style="background-color:#56327E" >
    <div class="container gap-2">
       
        <a class="navbar-brand text-white" runat="server" 
            href="~/">RestiFy </a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" title="Toggle navigation" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse d-sm-inline-flex justify-content-between">
            <ul class="navbar-nav flex-grow-1 ">
                <li class="nav-item "><a class="nav-link text-white" runat="server" href="Admin.aspx">Landlord</a></li>
                
                <li class="nav-item "><a class="nav-link text-white" runat="server" href="Apartment.aspx">Apartment</a></li>
              
            
                <li class="nav-item " style="margin-left:15%"><a class="nav-link text-white"  runat="server" href="LoginForm.aspx">Logout</a></li>
               
        
               
            </ul>
        </div>
    </div>
</nav>
            <asp:SqlDataSource ID="Restify" runat="server" ConnectionString="<%$ ConnectionStrings:RESTIFYConnectionString2 %>" SelectCommand="SELECT * FROM [Apartment]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="Restify" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="apartment_name" HeaderText="apartment_name" SortExpression="apartment_name" />
                    <asp:BoundField DataField="apartment_details" HeaderText="apartment_details" SortExpression="apartment_details" />
                    <asp:BoundField DataField="apartment_location" HeaderText="apartment_location" SortExpression="apartment_location" />
                    <asp:BoundField DataField="landlord_id" HeaderText="landlord_id" SortExpression="landlord_id" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            </form>

</body>
</html>
