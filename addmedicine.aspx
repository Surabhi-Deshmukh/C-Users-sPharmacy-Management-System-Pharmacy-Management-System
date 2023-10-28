<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addmedicine.aspx.cs" Inherits="addmedicine" %>

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
		<h3 class="title-txt"><span>A</span>dd <span>M</span>edicine/Product</h3>
		<div class="contact-grids">
			<div class="col-md-6 contact-form">
                <label>Category</label>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="catname" DataValueField="catid">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [catname], [catid] FROM [category]">
                    </asp:SqlDataSource>
                  

                    <label>Subcategory</label>
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="subname" DataValueField="subid">
                    </asp:DropDownList>


                  <label>Brand</label>
                    <asp:DropDownList ID="DropDownList3" runat="server" 
                        DataSourceID="SqlDataSource5" DataTextField="BrandName" DataValueField="Id">
                    </asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [addbrand]"></asp:SqlDataSource>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [subid], [subname] FROM [subcategory] WHERE ([catid] = @catid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="catid" 
                                PropertyName="SelectedValue" Type="Decimal" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Medicine/Product Name" required></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Price" required></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Discount(in percentage e.g. 10, do not add % sign)" required></asp:TextBox>

                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" placeholder="Description/Composition"></asp:TextBox>
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Stock" required></asp:TextBox>
               
                <label>Picture</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                <div class="submit1">
                    <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click1" />
                </div>

                <label><asp:Label ID="Label1" runat="server"></asp:Label></label>
            </div>
        </div>
    </div>
</section>
	<!--about-->
    
</asp:Content>

