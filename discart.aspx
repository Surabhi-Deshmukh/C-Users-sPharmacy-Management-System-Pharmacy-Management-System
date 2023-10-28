<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="discart.aspx.cs" Inherits="discart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      
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
	    <h3 class="title-txt"><span>Y</span>our <span>C</span>art</h3>
        <div class="agileits-services">
			<div class="services-right-grids">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%" CssClass="table cart-table" DataKeyNames="Srno">
                    <Columns>
                        <asp:ImageField DataImageUrlField="image" DataImageUrlFormatString="images/{0}" 
                            HeaderText="Image">
                            <ControlStyle Height="75px" Width="75px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" 
                            SortExpression="quantity" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="totalcost" HeaderText="totalcost" 
                            SortExpression="totalcost" />
                        <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    </Columns>
                    <HeaderStyle CssClass="table-header" />

                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [addcart] WHERE ([sessionid] = @sessionid)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [addcart] WHERE [Srno] = @original_Srno" InsertCommand="INSERT INTO [addcart] ([Image], [name], [quantity], [price], [totalcost], [sessionid]) VALUES (@Image, @name, @quantity, @price, @totalcost, @sessionid)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [addcart] SET [Image] = @Image, [name] = @name, [quantity] = @quantity, [price] = @price, [totalcost] = @totalcost, [sessionid] = @sessionid WHERE [Srno] = @original_Srno AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([quantity] = @original_quantity) OR ([quantity] IS NULL AND @original_quantity IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([totalcost] = @original_totalcost) OR ([totalcost] IS NULL AND @original_totalcost IS NULL)) AND (([sessionid] = @original_sessionid) OR ([sessionid] IS NULL AND @original_sessionid IS NULL))" OnDeleted="SqlDataSource1_Deleted">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Srno" Type="Decimal" />
                        <asp:Parameter Name="original_Image" Type="String" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_quantity" Type="Decimal" />
                        <asp:Parameter Name="original_price" Type="Decimal" />
                        <asp:Parameter Name="original_totalcost" Type="Decimal" />
                        <asp:Parameter Name="original_sessionid" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="quantity" Type="Decimal" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="totalcost" Type="Decimal" />
                        <asp:Parameter Name="sessionid" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="sessionid" SessionField="sid" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="quantity" Type="Decimal" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="totalcost" Type="Decimal" />
                        <asp:Parameter Name="sessionid" Type="String" />
                        <asp:Parameter Name="original_Srno" Type="Decimal" />
                        <asp:Parameter Name="original_Image" Type="String" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_quantity" Type="Decimal" />
                        <asp:Parameter Name="original_price" Type="Decimal" />
                        <asp:Parameter Name="original_totalcost" Type="Decimal" />
                        <asp:Parameter Name="original_sessionid" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <div class="col-sm-12 total-row">
                    <b>Total Bill : <asp:Label ID="Label2" runat="server"></asp:Label>
                </div>
                <div class="submit1">
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    Text="continue shopping" Width="219px" />
                     <asp:Button ID="Button5" runat="server" Height="36px" onclick="Button5_Click" 
                    Text="Checkout" Width="144px" />
                </div>
            </div>
        </div>
    </div>
</div>
  
</b>
  
</asp:Content>

