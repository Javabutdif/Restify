<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Restify._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <main>
        

        <!-- Your existing content below -->
        <div class=" d-flex ">
            <div class="position-sticky">
                <img src="images/restifynobg.png" style="height:380px"/>
                <br />
               <div class="position-sticky d-print-flex">
                 <div class="col-6 " style="background-color:#BCA9E9;padding-left:10%; padding-top:10%; padding-bottom:10%; margin-right:10%; border-radius: 20px 20px 20px 20px  ">
                    <p class="col-9 text-black" style= "font-size:20px; font-weight: bold; font-style: italic;
                         text-justify:inter-character">
                           A platform that allows you to easily browse rental properties with just a single click."</p>
                     <br>
                            <a href="LoginForm.aspx" class="btn text-white bg-black ">Browse</a>
                          </div>
               
                    <br>

                    <div class="col-6 " style="background-color:#BCA9E9;padding-left:10%; padding-top:10%; padding-bottom:10%; margin-right:10%; border-radius: 20px 20px 20px 20px  ">
                       <p class="col-9 text-black" style="font-size:20px; font-weight: bold; font-style: italic; 
                            text-justify:inter-character">
                              Want to advertise your rental assets?"</p>
                        <br>
                               <a href="LoginForm.aspx" class="btn text-white bg-black ">Get Started</a>
                             </div>
               </div>
            </div>
          <br>
      </div>
         <hr style="height:2px; border-width: 0; color:black; background-color:black"/>
           
        <div style="padding-top:3%; padding-bottom:10%" >
            <h1 style="color:#56327E; font-size:80px; text-align:center;">About</h1>
            <div class="d-flex">
            <div class="col-6 " style="background-color:#BCA9E9;padding-left:10%; padding-top:10%; padding-bottom:10%; margin-right:10%; border-radius: 20px 20px 20px 20px  ">
            <p class="col-9 text-black" style="font-size:20px; font-style: italic; 
                text-justify:inter-character">
                "Rent Me is a user-friendly platform designed to simplify the process of finding and renting apartments. Our website offers a seamless experience, allowing users to easily search for their ideal apartment and complete the rental process with just a few clicks. With a wide range of listings and comprehensive search features, Rent Me ensures that users can efficiently find the perfect place to rent, making the entire process convenient and hassle-free."</p>
            </div>
              
              </div>
        </div>
          <hr style="height:2px; border-width: 0; color:black; background-color:black"/>
           
        <div class="container text-center " style="padding-top:2%">
            <h1 class="text-center" style="padding-bottom:5%;">Meet the Team</h1>

            <div class="d-flex gap-1">
                <div class="container rounded-4" style="background-color:#BCA9E9">
                    <h2 class="text-white">Developers</h2>
                    <img src="images/jems.jpg" class="col-3 rounded-circle " style="padding-top:5%;"/>
                    <h2 class="text-white">Jems</h2>
                    <img src="images/jude.jpg" class="col-3 rounded-circle"/>
                    <h2 class="text-white">Jude</h2>
    
                </div>
                <div class="container rounded-4" style="background-color:#56327E">
                     <h2 class="text-white">UI UX</h2>
                    <img src="images/gene1.jpg" class="col-3 rounded-circle" style="height:25%; width:30%"/>            
                     <h2 class="text-white">Generoso</h2>
                    <img src="images/yannie.jpg" class="col-3 rounded-circle" />
                      <h2 class="text-white">Carsido</h2>
                    </div>


                      <div class="container rounded-4" style="background-color:#BCA9E9">
                    <h2 class="text-white">
                        Database Administrator
                    </h2>
                        
                        <img src="images/dione.jpg" class="col-3 rounded-circle"/>
                        <h2 class="text-white">Dione</h2>
             
            </div>

        </div>
        </div>
    </main>


</asp:Content>
