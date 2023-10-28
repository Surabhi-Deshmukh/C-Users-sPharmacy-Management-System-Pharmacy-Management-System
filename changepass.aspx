<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="changepass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Slider-->
	<div class="banner">
			
	</div>
<!--//Slider-->
	<!-- contact -->
<section class="contact">
	<div class="container">
		<h3 class="title-txt"><span>C</span>hange <span>P</span>assword</h3>
		<div class="contact-grids">
			<div class="col-md-6 contact-form">
				
				<asp:TextBox ID="TextBox1" runat="server" TextMode="Password" required placeholder="Current Password"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" required placeholder="New Password"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" required placeholder="Confirm New Password"></asp:TextBox>
				<div class="submit1">
					<asp:Button ID="Button1" runat="server" Text="Change Password" OnClick="Button1_Click" />
				</div>
                <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
			</div>
            <div class="col-sm-6">
                <img src="images/change_password_preview.png" width="100%" />
            </div>
        </div>
    </div>
</section>
</asp:Content>

