<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WisdomMaster.Master" CodeBehind="Home.aspx.cs" Theme="Theme1" Inherits="Wisdom.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainHead" runat="server">
  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageBody" runat="server">
    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="3000">
                <img src="Images/school.jpg" height="750px" class="d-block w-100" alt="Wisdom School" />                
            </div>
            <div class="carousel-item" data-bs-interval="3000">
                <img src="Images/islam.jpg" height="750px" class="d-block w-100" alt="Islamic Knowledge" />
                <div class="carousel-caption d-none d-md-block">
                    <h3>Islamic Knowledge</h3>
                    <p>We provide Islamic knowledge to our Student.</p>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="3000">
                <img src="Images/Kite.jpg" height="750px" class="d-block w-100" alt="Kite Festival" />
                <div class="carousel-caption d-none d-md-block">
                    <h3>Kite Festival</h3>
                    <p>We enjoy every Kite festival in our school with our Student</p>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="3000">
                <img src="Images/mind.jpg" height="750px" class="d-block w-100" alt="Mind Building" />
                <div class="carousel-caption d-none d-md-block">
                    <h3>Mind Building</h3>
                    <p>We provide Mind Building Activites so that our Student mind gets sharp</p>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="3000">
                <img src="Images/rally.jpg" height="750px" class="d-block w-100" alt="Independence Rally" />
                <div class="carousel-caption d-none d-md-block">
                    <h3>Independence Rally</h3>
                    <p>Our school do Independence rally so that people knows the importance of independence</p>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="3000">
                <img src="Images/science.jpg" height="750px" class="d-block w-100" alt="Science Exhibition" />
                <div class="carousel-caption d-none d-md-block">
                    <h3>Science Exhibition</h3>
                    <p>Our school do science exhibition so that student can make their mind and show their creativity</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="visually-hidden">
                Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span><span class="visually-hidden">
                Next</span>
        </button>
    </div>
</asp:Content>
 
    
