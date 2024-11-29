<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" href="styles.css" type="text/css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Aclonica&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">

        <asp:Label ID="Label1" class="login" runat="server" Text="Login" Height="50px" Width="108px"></asp:Label>
        <label class="switch">
            <input type="checkbox" id="checkbox">
            <span class="slider"></span>
        </label>
        <asp:Label ID="Label2" class="sign" runat="server" Text="Sign up" Height="50px" Width="147px"></asp:Label>
 
        <div class="screen">
            <div class="card" id="card">

                <div class="thefront">
                    <br><br><br><br>
                    <asp:Label ID="Label3" class="mainlogin" runat="server" Text="Login"></asp:Label>
                    <br><br><br><br>
                    <asp:TextBox ID="TextBox1" class="textbox" runat="server" placeholder="Username" autocomplete="off" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox><br>
                    <br>
                    <div class="validator-center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username is required." Display="Dynamic" CssClass="validator" ValidationGroup="FrontValidation"></asp:RequiredFieldValidator>
                    </div>
                    <br>
                    <asp:TextBox ID="TextBox2" class="textbox" placeholder="Password" TextMode="Password" runat="server" autocomplete="off" OnTextChanged="TextBox2_TextChanged" ></asp:TextBox><br>
                    <br>
                    <div class="validator-center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password is required." Display="Dynamic" CssClass="validator" ValidationGroup="FrontValidation"></asp:RequiredFieldValidator>
                    </div>
                    <br><br><br><br>
                    <asp:Button ID="Button1" class="logbtn" runat="server" Text="Login" ForeColor="#FFF7CC" OnClick="Button1_Click" ValidationGroup="FrontValidation"/>
                    <br><br><br><br>
                    <asp:Label ID="Label4" class="FP" runat="server" Text="Forgot Password?"></asp:Label><br><br>
                    <asp:Label ID="Label6" class="L6" runat="server" Height="50px"></asp:Label>
                </div>

                <div class="theback">
                    <br><br>
                    <asp:Label ID="Label5" class="mainsign" runat="server" Text="SignUp"></asp:Label>
                    <br>
                    <asp:TextBox ID="TextBox3" class="textbox2" placeholder="Username" runat="server" autocomplete="off" OnTextChanged="TextBox3_TextChanged"></asp:TextBox><br>
                    <div class="validator-center">
                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="TextBox3" ErrorMessage="Username is required." Display="Dynamic" CssClass="validator" ValidationGroup="BackValidation"></asp:RequiredFieldValidator>
                    </div>
                    <br>
                    <asp:TextBox ID="TextBox4" class="textbox2" placeholder="Email" runat="server" autocomplete="off" OnTextChanged="TextBox4_TextChanged"></asp:TextBox><br>
                    <div class="validator-center">
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email is required." Display="Dynamic" CssClass="validator" ValidationGroup="BackValidation"></asp:RequiredFieldValidator><br>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email is Invalid" CssClass="validator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                    <br>
                    <asp:TextBox ID="TextBox5" class="textbox2" placeholder=" Password" autocomplete="off" TextMode="Password" runat="server"></asp:TextBox><br>
                    <div class="validator-center">
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="TextBox5" ErrorMessage="Password is required." Display="Dynamic" CssClass="validator" ValidationGroup="BackValidation"></asp:RequiredFieldValidator><br>
                        <asp:RegularExpressionValidator ID="regexPassword" runat="server" ControlToValidate="TextBox5" CssClass="validator" ErrorMessage="Password must be at least 8 characters long and contain at least one letter and one number." ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ValidationGroup="BackValidation"></asp:RegularExpressionValidator><br />
                    </div>
                    <br>
                    <asp:TextBox ID="TextBox6" class="textbox2" placeholder="Confirm Password" TextMode="Password" autocomplete="off" runat="server" OnTextChanged="TextBox6_TextChanged"></asp:TextBox><br>
                    <div class="validator-center">
                        <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="TextBox6" autocomplete="off" ErrorMessage="Confirm password is required." Display="Dynamic" CssClass="validator" ValidationGroup="BackValidation"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToValidate="TextBox6" ControlToCompare="TextBox5" ErrorMessage="Passwords do not match." Display="Dynamic" CssClass="validator" ValidationGroup="BackValidation"></asp:CompareValidator>
                    </div>
                    <br />
                    <asp:Button ID="Button2" class="regbtn" runat="server" Text="Register" ForeColor="#FFF7CC" OnClick="Button2_Click" ValidationGroup="BackValidation"/>
                    <br>
                     <div class="validator-center">
                        <asp:Label ID="Label7" runat="server" CssClass="validator" Text=""></asp:Label>
                     </div>
                </div>

            </div>
        </div>
        
    </form>
  <script src='JavaScript.js'></script>
</body>
</html>
