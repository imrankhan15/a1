<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchbypublishername.aspx.cs" Inherits="searchbypublishername" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 800px;
            height: 200px;
        }
        .style2
        {
            width: 700px;
            height: 150px;
        }
    </style>
    <link href="Style.css" rel="stylesheet" type="text/css" />
    <link href="dropdown.css" media="screen" rel="stylesheet" type="text/css" />
<link href="default.advanced.css" media="screen" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="slideshow.js"></script>
</head>
<body>
    <form id="form1" runat="server" class="fontdd">
    <img alt="" class="style1" src="Images/logoall.jpg" /><br />
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
    <img alt="" class="style2" src="Images/searchbypublisherlogo.jpg" /><br />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx" CssClass="sdfs">Homepage</asp:HyperLink>
    <ul id="nav" class="dropdown dropdown-horizontal">
    <li><a href="searchbyauthorname.aspx">Searchbyauthor</a></li>
	   
	   <li><a href="searchbycategoryname.aspx">Searchbybookcategory</a></li>
       <li><a href="Search By assumption.aspx">Searchbybookcategory</a></li>
       <li><a href="Search By Booktitle.aspx">Searchbybooktitle</a></li>
       <li><a href="findbook.aspx">Back</a></li>
	
	
	
</ul>

    
  
      <div class="db">
         
        searchbypublishername<asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" 
            DataSourceID="Publisher1" DataTextField="NAME" DataValueField="NAME">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="Book2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
           
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
             SelectCommand="SELECT &quot;BOOKTITLE&quot;,&quot;NUMBEROFCOPYS&quot;,&quot;CHARGEPERDAY&quot;,&quot;ISBN&quot; , &quot;LIBRARYID&quot; , &quot;BOOKCATEGORYID&quot;, &quot;PUBLISHER&quot; FROM &quot;BOOK&quot; WHERE &quot;PUBLISHER&quot;=:PUBL" 
           >
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList6" Name="PUBL" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
            
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Publisher1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
           
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
             SelectCommand="SELECT &quot;NAME&quot; FROM &quot;PUBLISHER&quot;" 
            >
            
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView21" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ISBN" DataSourceID="Book2">
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
    
    
    </div>
    </form>
</body>
</html>
