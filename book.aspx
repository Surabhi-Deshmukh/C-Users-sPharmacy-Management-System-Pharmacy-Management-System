<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 555px;
        }
        .style4
        {
            width: 300%;
        }
        .style6
        {
            width: 691px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--Slider-->
	<div class="banner">
			
	</div>
	<!--//Slider-->

	<!--about-->
<div class="w3-agile-services">
	<div class="container">
	    <h3 class="title-txt"><span>C</span>ategories</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:ListView ID="ListView1" runat="server" DataKeyField="productID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                <ItemTemplate>
                <div class="col-sm-3 services-right-grid">
					<div class="se-top">
						<div class="services-icon-info">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" 
                            ImageUrl='<%# Eval("image", "images/{0}") %>' 
                            PostBackUrl='<%# Eval("catid", "subcat.aspx?id={0}") %>' Width="185px" />
							<h5><asp:LinkButton ID="LinkButton1" runat="server" 
                            PostBackUrl='<%# Eval("catid", "subcat.aspx?id={0}") %>' 
                            Text='<%# Eval("catname") %>'></asp:LinkButton></h5>

						</div>
					</div>
				</div>
                 </ItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
			   
			    <div class="clearfix"> </div>
            </div>
		</div>
    </div>
</div>
   
</asp:Content>

