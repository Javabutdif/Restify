<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Restify.LoginForm" %>


<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <main>
        <div class="text-white rounded-4" style="text-align:center; padding-bottom:10%; background-color:#BCA9E9; margin-left:35%; margin-right:35%;">
            <br />
            <img src="images/restifynobg.png" class="col-3 bg-white" style="border-radius: 25% 25% 25% 25%; "/>
            <br />
            <br>
            <h1>Login</h1>
            <br />
                
            
            <input class="rounded-3 w-75 h-75 border-0 shadow justify-content-center" placeholder="Email" type="text" id="userName" />
             <br />
             <br />
            
            <input class="rounded-3 w-75  h-75 border-0 shadow justify-content-center " placeholder="Password" type="password" id="pass" />
       
            <br />
            <br />
            <br />
            
            <button type="submit" class="btn bg-white shadow justify-content-center" style="color:#56327E">Login</button>
            <br />
            <br />
            <p>No account? Click <a style="color:#56327E" href="Register.aspx">Here</a></p>

        </div>
    </main>
</asp:Content>
