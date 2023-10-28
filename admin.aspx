<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--Slider-->
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="slider-img1">
							<div class="container">
								<div class="slider_banner_info_w3ls">
								
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="slider-img2">
							<div class="container">
								<div class="slider_banner_info_w3ls">
									
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="slider-img3">
							<div class="container">
								<div class="slider_banner_info_w3ls">
									
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="clearfix"> </div>
		<!-- //Modal1 -->
        <div class="w3-agile-services">
	        <div class="container">
	            <h3 class="title-txt"><span>W</span>elcome to <span>A</span>dminPanel</h3>
                <div class="agileits-services">
			        <div class="services-right-grids">
                        <table class="table" cellpadding="8">
                            <tr>
                                <td>
                                    <a href="addcategory.aspx">Add Category</a>
                                </td>
                                <td>
                                    <a href="subcategory.aspx">Add Subcategory</a>
                                </td>
                                <td>
                                    <a href="addmedicine.aspx">Add Product</a>
                                </td>
                            </tr>
                            <tr>
                               <td>
                                    <a href="udcat.aspx">Update Category</a>
                               </td>
                               <td>
                                    <a href="udsubcat.aspx">Update Subcategory</a>
                               </td>
                               <td>
                                    <a href="udmedicine.aspx">Update Product</a>
                               </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
