<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowmemberInfo.aspx.cs" Inherits="ShowmemberInfo" %>

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
    <p>
        <img alt="" class="style1" src="Images/logoall.jpg" /></p>
    <p>
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
     
        <img alt="" class="style2" src="Images/showmemberinfologo.jpg" /></p>
    <p>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/admintasks.aspx">AdminHome</asp:HyperLink>
    </p>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx" CssClass="sdfs">Logout</asp:HyperLink>

       <div class="db">
        
    <p>
        showdetails of members whosehistoryisnotclear<asp:DropDownList ID="DropDownList1" 
            runat="server" AutoPostBack="True" DataSourceID="Member1" 
            DataTextField="FIRSTNAME" DataValueField="NAME">
        </asp:DropDownList>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="NAME,PASS" DataSourceID="Member2">
            <Columns>
                <asp:BoundField DataField="NAME" HeaderText="NAME" ReadOnly="True" 
                    SortExpression="NAME" />
                <asp:BoundField DataField="PASS" HeaderText="PASS" ReadOnly="True" 
                    SortExpression="PASS" />
                
                <asp:BoundField DataField="MEMBERDUE" HeaderText="MEMBERDUE" 
                    SortExpression="MEMBERDUE" />
                <asp:BoundField DataField="FIRSTNAME" HeaderText="FIRSTNAME" 
                    SortExpression="FIRSTNAME" />
                <asp:BoundField DataField="LASTNAME" HeaderText="LASTNAME" 
                    SortExpression="LASTNAME" />
                

                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" 
                    SortExpression="ADDRESS" />
                
                <asp:BoundField DataField="OCCUPATION" HeaderText="OCCUPATION" 
                    SortExpression="OCCUPATION" />
               
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="Member1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
          
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT &quot;NAME&quot;, &quot;PASS&quot;, &quot;HISTORY&quot;, &quot;MEMBERDUE&quot;, &quot;FIRSTNAME&quot;, &quot;LASTNAME&quot;, &quot;DATEOFBIRTH&quot;, &quot;ADDRESS&quot;, &quot;NATIONALITY&quot;, &quot;OCCUPATION&quot;, &quot;HOBBY&quot; FROM &quot;CREATENEWMEMBER&quot; where &quot;HISTORY&quot;='notclear'" 
           >
           
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Member2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT &quot;NAME&quot;, &quot;PASS&quot;, &quot;HISTORY&quot;, &quot;MEMBERDUE&quot;, &quot;FIRSTNAME&quot;, &quot;LASTNAME&quot;, &quot;DATEOFBIRTH&quot;, &quot;ADDRESS&quot;, &quot;NATIONALITY&quot;, &quot;OCCUPATION&quot;, &quot;HOBBY&quot; FROM &quot;CREATENEWMEMBER&quot; where &quot;NAME&quot;=:CC" 
            >
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="CC" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
          
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;current library status</p>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display.">
        <Columns>
            
            <asp:BoundField DataField="MEMBERNO" HeaderText="MEMBERNO" 
                SortExpression="MEMBERNO" />
            <asp:BoundField DataField="RENTNO" HeaderText="RENTNO" 
                SortExpression="RENTNO" />
            <asp:BoundField DataField="GROUPNO" HeaderText="GROUPNO" 
                SortExpression="GROUPNO" />
            <asp:BoundField DataField="LIBRARYBALANCE" HeaderText="LIBRARYBALANCE(taka)" 
                SortExpression="LIBRARYBALANCE" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        SelectCommand="SELECT &quot;ID&quot;, &quot;ADDRESS&quot;, &quot;MEMBERNO&quot;, &quot;RENTNO&quot;, &quot;GROUPNO&quot;, &quot;LIBRARYBALANCE&quot; FROM &quot;LIBRARY&quot;" 
       >
       
    </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
