<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="detalis.aspx.cs" Inherits="detalis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 263px;
        }
    .style3
    {
        width: 111px;
    }
        .style4
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--Slider-->
	<div class="banner">
			
	</div>
		
	<!-- //Modal1 -->
	<!--//Slider-->

	<!--about-->
<div class="w3-agile-services">
	<div class="container">
	    <h3 class="title-txt"><span>P</span>roduct <span>D</span>etails</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <div class="col-sm-3 services-right-grid">
                    <asp:Image ID="Image1" runat="server" Height="324px" Width="252px" />
                </div>
                <div class="col-sm-9 single-para">
                    <h2 class="prod-name"><asp:Label ID="Label4" runat="server"></asp:Label></h2>
                    <p class="prod-cat"><b>Catgeory : </b><asp:Label ID="Label2" runat="server"></asp:Label></p>
                    <p class="prod-cat"><b>Subcategory : </b><asp:Label ID="Label3" runat="server"></asp:Label></p>
                     <p class="prod-cat"><b>Brand : </b><asp:Label ID="Label1" runat="server"></asp:Label></p>
                    <h5>Rs. <asp:Label ID="Label5" runat="server"></asp:Label>&nbsp; Rs.<asp:Label ID="Label10" runat="server" Font-Strikeout="True"></asp:Label>
&nbsp;<asp:Label ID="Label11" runat="server"></asp:Label>
                    </h5>
                    <p class="prod-cat"><asp:Label ID="Label9" runat="server"></asp:Label></p>
                    <div class="prod-qty">
                       
                        <ul>
                             <asp:Panel ID="Panel1" runat="server">
                            <li>
                                Quantity
                            </li>
                            <li>
                                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                            </li>
                            </asp:Panel>
                        </ul>
                            
                        <div class="clearfix"></div>
                           
                    </div>
                    <p class="prod-cat"><asp:Label ID="Label8" runat="server"></asp:Label></p>
                    <div class="submit1">
                         <asp:Button ID="Button4" runat="server" Text="Add to cart" onclick="Button4_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

   <%-- <asp:Label ID="Label8" runat="server"></asp:Label>--%>
           
</asp:Content>

