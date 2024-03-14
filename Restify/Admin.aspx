<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Restify.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
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
            
    
         <br />
         <div class="text-center">
             <h1>Registered Landlords</h1>
        <asp:GridView  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="landlord_id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="149px" Width="1039px">
             <AlternatingRowStyle BackColor="#F7F7F7" />
             <Columns>
                 <asp:BoundField DataField="landlord_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="landlord_id" />
                 <asp:BoundField DataField="landlord_firstName" HeaderText="First Name" SortExpression="landlord_firstName" />
                 <asp:BoundField DataField="landlord_lastName" HeaderText="Last Name" SortExpression="landlord_lastName" />
                 <asp:BoundField DataField="landlord_email" HeaderText="Email" SortExpression="landlord_email" />
                 <asp:BoundField DataField="landlord_contact" HeaderText="Contact" SortExpression="landlord_contact" />
                 <asp:BoundField DataField="landlord_password" HeaderText="Password" SortExpression="landlord_password" />
             </Columns>
             <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
             <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
             <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
             <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
             <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
             <SortedAscendingCellStyle BackColor="#F4F4FD" />
             <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
             <SortedDescendingCellStyle BackColor="#D8D8F0" />
             <SortedDescendingHeaderStyle BackColor="#3E3277" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RESTIFYConnectionString2 %>" ProviderName="<%$ ConnectionStrings:RESTIFYConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Landlord]"></asp:SqlDataSource>
             <asp:Panel ID="Panel1" runat="server">
                 <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
             </asp:Panel>
         <br />
         </div>
     </form>
    
   
     
   
        </body>
</html>

