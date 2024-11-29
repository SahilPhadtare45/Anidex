<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="WebApplication.Project" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Aclonica&display=swap" rel="stylesheet">
</head>
<body>
   <form id="form1" runat="server">

     <div id="header">
        <div class="container">
            <nav>
                <asp:Image ID="Image29" runat="server" ImageUrl="~/images/Anidex.png" />
                <ul id="navbar">
                    <li><a href="#home">HOME</a></li>
                    <li><a href="#ath_container">ALL TIME HITS</a></li>
                    <li><a href="#recommendations">RECOMMENDATIONS</a></li>
                    <li>
                        <asp:Button ID="Button1" runat="server" BackColor="#273c61" BorderStyle="None" ForeColor="Gold" Height="25px" Font-Italic="true" Font-Size="20px" OnClick="Button1_Click1" Text="LOGIN" Width="81px" />
                    </li>
                </ul>
            </nav>
        </div>
    </div>  

   <div id="home">
       <div class="slides">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/sl.jpg" />
             <asp:Image ID="Image2" runat="server" ImageUrl="~/images/coe.jpg" />
             <asp:Image ID="Image3" runat="server" ImageUrl="~/images/shield.jpg"/>
             <asp:Image ID="Image4" runat="server" ImageUrl="~/images/tokyo.jpg" />
             <asp:Image ID="Image5" runat="server" ImageUrl="~/images/vinland.jpg" />
             <a class="prev" onclick="moveSlide(-1)">&#10094;</a>
             <a class="next" onclick="moveSlide(1)">&#10095;</a>
        </div>
   </div>

    <div id="ath_container">
        <h1>ALL TIME HITS</h1>
        <div class="ath">
             <asp:Image ID="Image22" runat="server" ImageUrl="~/images/dbz.jpg" />
             <asp:Image ID="Image23" runat="server" ImageUrl="~/images/naruto.jpg" />
             <asp:Image ID="Image24" runat="server" ImageUrl="~/images/onepiece.jpg"/>
             <asp:Image ID="Image25" runat="server" ImageUrl="~/images/bleach.jpg" />
             <asp:Image ID="Image26" runat="server" ImageUrl="~/images/death.jpg" />
             <asp:Image ID="Image27" runat="server" ImageUrl="~/images/hunter.jpg" />
             <asp:Image ID="Image28" runat="server" ImageUrl="~/images/punch.jpg" />
        </div>
    </div>

    <div id="recommendations">
        <h1>RECOMMENDATIONS</h1>
        <p class="options">
            <asp:TextBox ID="TextBox2" class="buttons" runat="server" OnTextChanged="TextBox2_TextChanged" placeholder="Search" Height="35px" Width="120px" AutoPostBack="true"></asp:TextBox>
            <asp:Button ID="Button2" class="buttons" runat="server" BorderStyle="None" Font-Italic="true" Text="Search" OnClick="Button2_Click" Width="90px" Height="33px" />
            <asp:DropDownList ID="DropDownList1" class="buttons" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="35px" Width="120px" AutoPostBack="true" >
                <asp:ListItem Value="Action">Action</asp:ListItem>
                <asp:ListItem Value="Romance">Romance</asp:ListItem>
                <asp:ListItem Value="Comedy">Comedy</asp:ListItem>
                <asp:ListItem Value="Drama">Drama</asp:ListItem>
                <asp:ListItem Value="Slice of Life">Slice of Life</asp:ListItem>
                <asp:ListItem Value="Sci-Fi">Sci-Fi</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" class="buttons" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Height="35px" Width="120px" AutoPostBack="true">
                <asp:ListItem>TV Show</asp:ListItem>
                <asp:ListItem>Movie</asp:ListItem>
                <asp:ListItem>OVA</asp:ListItem>
                <asp:ListItem>ONA</asp:ListItem>
            </asp:DropDownList>
        </p>

       
         <div id="searchResults" runat="server"></div>

        <asp:Panel ID="PanelAction" runat="server" Visible="true">
        <p>ACTION</p>
        <div class="gallery">
            <div class="content">
                <asp:Image ID="Image6" runat="server" ImageUrl="~/images/AOT.jpg"/>br>
                <h3>Attack on Titan</h3><br>
                <h4>Shingeki no Kyojin</h4><br>
                <a href="https://myanimelist.net/anime/16498/Shingeki_no_Kyojin?q=shingeki&cat=anime">Details</a>
            </div>
            <div class="content">
               <asp:Image ID="Image7" runat="server" ImageUrl="~/images/DemonSlayer.jpg" /><br>
                <h3>Demon Slayer</h3><br>
                <h4>Kimetsu no Yaiba</h4><br>
                <a href="https://myanimelist.net/anime/38000/Kimetsu_no_Yaiba?q=kimetsu&cat=anime">Details</a>
            </div>
            <div class="content">
                <asp:Image ID="Image8" runat="server" ImageUrl="~/images/7DS.jpg" /><br>
                <h3>Seven Deadly Sins</h3><br>
                <h4>Nanatsu no Taizai</h4><br>
                <a href="https://myanimelist.net/anime/23755/Nanatsu_no_Taizai?q=Nanatsu&cat=anime">Details</a>
            </div>
            <div class="content">
                <asp:Image ID="Image9" runat="server" ImageUrl="~/images/Dororo.jpg" /><br>
                <h3>Dororo</h3><br>
                <h4>Dororo</h4><br>
                <a href="https://myanimelist.net/anime/37520/Dororo">Details</a>
            </div>
        </div>
        </asp:Panel>

        <asp:Panel ID="PanelRomance" runat="server" Visible="true">
         <p>ROMANCE</p>
          <div class="gallery">
              <div class="content">
                 <asp:Image ID="Image10" runat="server" ImageUrl="~/images/Charlotte.jpg"/><br>
                  <h3>Charlotte<h3><br>
                  <h4>Charlotte</h4><br>
                  <a href="https://myanimelist.net/anime/28999/Charlotte">Details</a>
              </div>
              <div class="content">
                  <asp:Image ID="Image11" runat="server" ImageUrl="~/images/Darling.jpg"/><br>
                  <h3>Darling in the FranXX</h3><br>
                  <h4>Darling in the FranXX</h4><br>
                  <a href="https://myanimelist.net/anime/35849/Darling_in_the_FranXX">Details</a>
              </div>
              <div class="content">
                  <asp:Image ID="Image12" runat="server" ImageUrl="~/images/Kaguya.jpg"/><br>
                  <h3>Kaguya-sama wa Kokurasetai</h3><br>
                  <h4>Kaguya-sama: Love is War</h4><br>
                  <a href="https://myanimelist.net/anime/37999/Kaguya-sama_wa_Kokurasetai__Tensai-tachi_no_Renai_Zunousen?q=KAGUYA%20SAMA&cat=anime">Details</a>
              </div>
              <div class="content">
                  <asp:Image ID="Image13" runat="server" ImageUrl="~/images/Tonikaku.jpg"/><br>
                  <h3>Tonikaku Kawaii</h3><br>
                  <h4>TONIKAWA</h4><br>
                  <a href="https://myanimelist.net/anime/41389/Tonikaku_Kawaii">Details</a>
              </div>
          </div>
        </asp:Panel>


        <asp:Panel ID="PanelComedy" runat="server" Visible="true">
          <p>COMEDY</p>
          <div class="gallery">
              <div class="content">
                 <asp:Image ID="Image14" runat="server" ImageUrl="~/images/Stone.jpg"/><br>
                  <h3>Dr. Stone</h3><br>
                  <h4>Dr. Stone</h4><br>
                  <a href="https://myanimelist.net/anime/38691/Dr_Stone">Details</a>
              </div>
              <div class="content">
                  <asp:Image ID="Image15" runat="server" ImageUrl="~/images/Konosuba.jpg"/><br>
                  <h3>Kono Subarashii</h3><br>
                  <h4>KonoSuba</h4><br>
                  <a href="https://myanimelist.net/anime/30831/Kono_Subarashii_Sekai_ni_Shukufuku_wo?q=Kono%20Subarashii%20Sekai%20ni%20Shukufuku%20wo!&cat=anime">Details</a>
              </div>
              <div class="content">
                  <asp:Image ID="Image16" runat="server" ImageUrl="~/images/Mob.jpg"/><br>
                  <h3>Mob Psycho 100</h3><br>
                  <h4>Mob Psycho 100</h4><br>
                  <a href="https://myanimelist.net/anime/32182/Mob_Psycho_100?q=mob%20psycho&cat=animes">Details</a>
              </div>
              <div class="content">
                  <asp:Image ID="Image17" runat="server" ImageUrl="~/images/Spy.jpg"/><br>
                  <h3>Spy x Family</h3><br>
                  <h4>Spy x Family</h4><br>
                  <a href="https://myanimelist.net/anime/50265/Spy_x_Family">Details</a>
              </div>
          </div>
          </asp:Panel>


        <asp:Panel ID="PanelDrama" runat="server" Visible="true">
         <p>DRAMA</p>
         <div class="gallery">
             <div class="content">
                 <asp:Image ID="Image18" runat="server" ImageUrl="~/images/Gate.jpg"/><br>
                 <h3>Steins;Gate</h3><br>
                 <h4>Steins;Gate</h4><br>
                 <a href="https://myanimelist.net/anime/9253/Steins_Gate">Details</a>
             </div>
             <div class="content">
                 <asp:Image ID="Image19" runat="server" ImageUrl="~/images/Ghoul.jpg"/><br>
                 <h3>Tokyo Ghoul</h3><br>
                 <h4>Tokyo Ghoul</h4><br>
                 <a href="https://myanimelist.net/anime/22319/Tokyo_Ghoul?q=tokyo&cat=anime">Details</a>
             </div>
             <div class="content">
                 <asp:Image ID="Image20" runat="server" ImageUrl="~/images/Chainsaw.jpg"/><br>
                 <h3>Chainsaw Man</h3><br>
                 <h4>Chainsaw Man</h4><br>
                 <a href="https://myanimelist.net/anime/44511/Chainsaw_Man?q=chainsaw&cat=anime">Details</a>
             </div>
             <div class="content">
                 <asp:Image ID="Image21" runat="server" ImageUrl="~/images/Elite.jpg"/><br>
                 <h3>Classroom of the Elite</h3><br>
                 <h4>Classroom of the Elite</h4><br>
                 <a href="https://myanimelist.net/anime/35507/Youkoso_Jitsuryoku_Shijou_Shugi_no_Kyoushitsu_e?q=classroom&cat=anime">Details</a>
             </div>
          </div>
          </asp:Panel>


        <asp:Panel ID="PanelSliceOfLife" runat="server" Visible="false">
        <p>SLICE OF LIFE</p>
        <div class="gallery">
            <div class="content">
                <asp:Image ID="Image30" runat="server" ImageUrl="~/images/Babysitter.jpg"/>br>
                <h3>Gakuen Babysitters</h3><br>
                <h4>School Babysitters</h4><br>
                <a href="https://myanimelist.net/anime/35222/Gakuen_Babysitters">Details</a>
            </div>
            <div class="content">
               <asp:Image ID="Image31" runat="server" ImageUrl="~/images/Komi.jpg" /><br>
                <h3>Komi-san wa, Comyushou desu.</h3><br>
                <h4>Komi Can't Communicate</h4><br>
                <a href="https://myanimelist.net/manga/99007/Komi-san_wa_Comyushou_desu?q=komi%20san&cat=manga">Details</a>
            </div>
            <div class="content">
                <asp:Image ID="Image32" runat="server" ImageUrl="~/images/Maid.jpg" /><br>
                <h3>Kobayashi-san Chi no Maid Dragon</h3><br>
                <h4>Miss Kobayashi's Dragon Maid</h4><br>
                <a href="https://myanimelist.net/anime/33206/Kobayashi-san_Chi_no_Maid_Dragon?q=kobayashi&cat=anime">Details</a>
            </div>
            <div class="content">
                <asp:Image ID="Image33" runat="server" ImageUrl="~/images/Nagatoro.jpg" /><br>
                <h3>Ijiranaide, Nagatoro-san</h3><br>
                <h4>Don't Toy with Me, Miss Nagatoro</h4><br>
                <a href="https://myanimelist.net/anime/42361/Ijiranaide_Nagatoro-san?q=IJIRANAIDE%2C%20NAGATORO-SAN&cat=anime">Details</a>
            </div>
        </div>
        </asp:Panel>


        <asp:Panel ID="PanelSciFi" runat="server" Visible="false">
        <p>Sci-Fi</p>
        <div class="gallery">
            <div class="content">
                <asp:Image ID="Image34" runat="server" ImageUrl="~/images/Neverland.jpg"/>br>
                <h3>Yakusoku no Neverland</h3><br>
                <h4>The Promised Neverland</h4><br>
                <a href="https://myanimelist.net/anime/37779/Yakusoku_no_Neverland">Details</a>
            </div>
            <div class="content">
               <asp:Image ID="Image35" runat="server" ImageUrl="~/images/Code.jpg" /><br>
                <h3>Code Geass: Hangyaku no Lelouch</h3><br>
                <h4>Code Geass: Lelouch of the Rebellion</h4><br>
                <a href="https://myanimelist.net/anime/1575/Code_Geass__Hangyaku_no_Lelouch?q=code%20geass&cat=anime">Details</a>
            </div>
            <div class="content">
                <asp:Image ID="Image36" runat="server" ImageUrl="~/images/Abyss.jpg" /><br>
                <h3>Made in Abyss</h3><br>
                <h4>Made in Abyss</h4><br>
                <a href="https://myanimelist.net/anime/34599/Made_in_Abyss">Details</a>
            </div>
            <div class="content">
                <asp:Image ID="Image37" runat="server" ImageUrl="~/images/FireForce.jpg" /><br>
                <h3>Enen no Shouboutai</h3><br>
                <h4>Fire Force</h4><br>
                <a href="https://myanimelist.net/anime/38671/Enen_no_Shouboutai">Details</a>
            </div>
        </div>
        </asp:Panel>

    </div>

  </form>
<script src="script.js"></script>
</body>
</html>