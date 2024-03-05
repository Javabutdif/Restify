<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Restify.Register" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

  
         <main>
       
     <div class="text-white rounded-4 " style="text-align:center; padding-bottom:5%; background-color:#56327E; margin-left:35%; margin-right:35%;">
         <br />
         <a href="LoginForm.aspx" class="btn btn-danger" style="text-align:left; margin-right:80%;"  >Back</a>
         <br />

         <img src="images/restifynobg.png" class="col-3 bg-white" style="border-radius: 25% 25% 25% 25%; "/>
         <br />
         <h1>Register</h1>
         <br />

        <div class="container justify-content-evenly text-wrap">
       
    
            <asp:TextBox runat="server" ID="fname" class="rounded-3 w-75 border-0 shadow" placeholder="First Name"></asp:TextBox>
          <br />
          <br />
      
        <asp:TextBox runat="server" ID="lname" class="rounded-3 w-75 border-0 shadow" placeholder="Last Name"></asp:TextBox>
          <br />
          <br />
          
            <asp:TextBox runat="server" TextMode="Email" ID="em" class="rounded-3 w-75 border-0 shadow" placeholder="Email"></asp:TextBox>
            <br />
            <br />
          
           <asp:TextBox runat="server" ID="contact" class="rounded-3 w-75 border-0 shadow" placeholder="Contact Number"></asp:TextBox>
          <br />
            <br />

        <asp:TextBox runat="server" TextMode="Password" ID="pass" class="rounded-3 w-75 border-0 shadow" placeholder="Password"></asp:TextBox>
         <br />
         <br />
        
          <asp:TextBox runat="server" TextMode="Password" ID="conpass" class="rounded-3 w-75 border-0 shadow" placeholder="Confirm Password"></asp:TextBox>
        </div>
         <br />
      
         
      
         <br />
         <br />
         <asp:Button ID="Button1" Text="Sign Up" runat="server" OnClick="signUp" class="btn  btn-success" />
         <br />
         <br />
         

     </div>
 </main>


</asp:Content>
