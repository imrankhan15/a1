<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search By Booktitle.aspx.cs" Inherits="Search_By_Booktitle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
body, table 
{
    font-family:Arial,Helvetica,Sans-Serif;
    font-size:.9em;
}
        .style1
        {
            width: 800px;
            height: 200px;
        }
        .sdfs
{
	float: right;
}

a 
{
    text-decoration:none;
}

ul.dropdown
{
	position: relative;
	z-index: 597;
	float: right;
	top: 0px;
	left: -200px;
	width: 78px;
}

ul.dropdown,
ul.dropdown li,
ul.dropdown ul {
 list-style: none;
 margin: 0;
 padding: 0;
}

ul.dropdown li {
 padding: 0;
}


ul.dropdown li {
 float: right;
 line-height: 1.3em;
 vertical-align: middle;
 zoom: 1;
}

ul.dropdown li a {
 display: block;
 padding: 7px 10px;
}


        .style2
        {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <br />
    <div>
    
        <img alt="" class="style1" src="Images/logoall.jpg" /><br />
        <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image 
            ID="Image5" runat="server" ImageUrl="~/Images/mypanel.jpg" Height="150px" 
                Width="100px" ViewStateMode="Enabled" />
<asp:Image ID="Image1" runat="server" ImageUrl="~/Images/fig8.jpg" Height="150px" 
                Width="100px" />
        <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl="~/Images/fig11.jpg" 
                Width="100px"  />
        <asp:Image ID="Image3" runat="server" Height="150px" ImageUrl="~/Images/fig10.jpg" 

                Width="100px"  />
        <asp:Image ID="Image4" runat="server" Height="150px" ImageUrl="~/Images/fig12.jpg" 
                Width="100px" />
                 <br />
     
        <span class="style2">Search By Booktitle</span><br />
        <br />
        <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx" CssClass="sdfs">Homepage</asp:HyperLink>
       <ul id="nav" class="dropdown dropdown-horizontal">
       <li><a href="searchbyauthorname.aspx">Searchbyauthor</a></li>
	   <li><a href="searchbypublishername.aspx">Searchbypublisername</a></li>
	   <li><a href="searchbycategoryname.aspx">Searchbybookcategory</a></li>
       <li><a href="Search By assumption.aspx">Searchbybookassumption</a></li>
       
       <li><a href="findbook.aspx">Back</a></li>

	
	  </ul>

    
    </div>
       <br />
    <br />
        search book by booktitle<asp:DropDownList 
            ID="DropDownList5" runat="server" 
            DataSourceID="Book3" DataTextField="BOOKTITLE" DataValueField="BOOKTITLE" 
            Width="108px" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Book3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
           
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT &quot;BOOKTITLE&quot;, &quot;ISBN&quot;, &quot;LIBRARYID&quot;, &quot;NUMBEROFCOPYS&quot;, &quot;CHARGEPERDAY&quot;, &quot;BOOKCATEGORYID&quot;, &quot;PUBLISHER&quot; FROM &quot;BOOK&quot; " 
           >
           
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Book4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
           
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
             SelectCommand="SELECT &quot;BOOKTITLE&quot;, &quot;ISBN&quot;, &quot;LIBRARYID&quot;, &quot;NUMBEROFCOPYS&quot;, &quot;CHARGEPERDAY&quot;, &quot;BOOKCATEGORYID&quot;, &quot;PUBLISHER&quot; FROM &quot;BOOK&quot; WHERE (&quot;BOOKTITLE&quot; = :BB)" 
         >
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList5" Name="BB" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
           
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView16" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ISBN" DataSourceID="Book4">
            <Columns>
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" 
                    SortExpression="ISBN" />
                <asp:BoundField DataField="BOOKTITLE" HeaderText="BOOKTITLE" 
                    SortExpression="BOOKTITLE" />
                 <asp:BoundField DataField="NUMBEROFCOPYS" HeaderText="NUMBEROFCOPYS" 
                    SortExpression="NUMBEROFCOPYS" />
                <asp:BoundField DataField="CHARGEPERDAY" HeaderText="CHARGEPERDAY" 
                    SortExpression="CHARGEPERDAY" />
                <asp:BoundField DataField="BOOKCATEGORYID" HeaderText="BOOKCATEGORYID" 
                    SortExpression="BOOKCATEGORYID" />
                <asp:BoundField DataField="PUBLISHER" HeaderText="PUBLISHER" 
                    SortExpression="PUBLISHER" />
            </Columns>
        </asp:GridView>
    <div>
    
    </div>
    </form>
</body>
</html>
