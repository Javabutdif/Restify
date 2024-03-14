<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Restify.Dashboard" %>


<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %>- RestiFy</title>

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

 </style>

</head>

<body>
      
    
        <form id="form1" runat="server">
      
    
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
                        <li class="nav-item "><a class="nav-link text-white" runat="server" href="~/">Profile</a></li>
                        
                        <li class="nav-item "><a class="nav-link text-white" runat="server" href="~/Contact">Apartment</a></li>
                      
                        <li class="nav-item " style="margin-left:55%; border-radius: 20% 20% 20% 20%"  ><input class="nav-link text-black"   type="text" name="search" placeholder="Search"  /></li>
                        <li class="nav-item " style="margin-left:15%"><a class="nav-link text-white"  runat="server" href="LoginForm.aspx">Logout</a></li>
                       
                    </ul>
                </div>
            </div>
        </nav>
        
     
            <asp:Label ID="output" runat="server" Height="50px" OnLoad="Page_Load" Text="Label" Width="288px"></asp:Label>
        
     
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add Apartment" Width="141px" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
        
     
            <hr />
            <footer>
                <p>&copy; <%: DateTime.Now.Year %>- My ASP.NET Application</p>
            </footer>
 
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/Scripts/bootstrap.js") %>
    </asp:PlaceHolder>
            <p>
                &nbsp;</p>
        </form>
</body>
</html>

