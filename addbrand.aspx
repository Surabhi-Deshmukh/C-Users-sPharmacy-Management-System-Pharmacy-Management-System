<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addbrand.aspx.cs" Inherits="addbrand" %>

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
		<h3 class="title-txt"><span>A</span>dd <span>B</span>rand</h3>
		<div class="contact-grids">
			<div class="col-md-6 contact-form">

                <asp:TextBox ID="TextBox1" runat="server" placeholder="Brand Name" required=""></asp:TextBox>

                <div class="submit1">
                    <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" />
                </div>
                <label><asp:Label ID="Label1" runat="server"></asp:Label></label>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
</section>
</asp:Content>

