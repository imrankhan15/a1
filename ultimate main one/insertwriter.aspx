<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insertwriter.aspx.cs" Inherits="insertwriter" %>

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
    <div>
    
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
     
        <img alt="" class="style2" src="Images/assaignwriterlogo.jpg" /><br />
        <br />
        <asp:SiteMapPath ID="SiteMapPath1" Runat="server" Font-Names="Verdana" 
            Font-Size="0.8em" PathSeparator=" : ">
            <CurrentNodeStyle ForeColor="#333333" />
            <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
            <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
            <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
        </asp:SiteMapPath>
        <br />
   <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx" CssClass="sdfs">Logout</asp:HyperLink> 

     <div class="db">
    
    
    
        insertbooktitle<asp:DropDownList 
             ID="DropDownList1" runat="server" DataSourceID="Book" DataTextField="BOOKTITLE" 
             DataValueField="BOOKTITLE">
         </asp:DropDownList>
         <asp:RequiredFieldValidator id="RequiredFieldValidator22"
            runat="server" ErrorMessage="Please make a selection"
            ControlToValidate="DropDownList1"
            InitialValue="Select a Bookname">
            </asp:RequiredFieldValidator>
        <br />
        insertwritername<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox2">
        </asp:RequiredFieldValidator>
        <br />
        insertwritercountry<asp:DropDownList 
             ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" 
             DataTextField="COUNTRYNAME" DataValueField="COUNTRYNAME">
         </asp:DropDownList>
         <asp:RequiredFieldValidator id="RequiredFieldValidator1"
            runat="server" ErrorMessage="Please make a selection"
            ControlToValidate="DropDownList1"
            InitialValue="Select a Country">
            </asp:RequiredFieldValidator>

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
             ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
             SelectCommand="SELECT &quot;COUNTRYNAME&quot; FROM &quot;COUNTRY&quot;">
         </asp:SqlDataSource>
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="33px" 
            ImageUrl="~/Images/assaign.jpg" onclick="ImageButton1_Click" Width="118px" />
    
        <br />
    
        <br />
    
         <asp:SqlDataSource ID="Book" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
             
             ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
             SelectCommand="SELECT &quot;ISBN&quot;, &quot;BOOKTITLE&quot;, &quot;LIBRARYID&quot;, &quot;NUMBEROFCOPYS&quot;, &quot;CHARGEPERDAY&quot;, &quot;BOOKCATEGORYID&quot;, &quot;PUBLISHER&quot; FROM &quot;BOOK&quot;" 
           >

         </asp:SqlDataSource>
    
        <br />
        <asp:SqlDataSource ID="WriteBook" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
             SelectCommand="WBOOK"
            SelectCommandType="StoredProcedure"
            OnSelected="SqlDataSource1_Selected"
            >
            <SelectParameters>
            <asp:ControlParameter Name="BTITLE" ControlID="DropDownList1" 
                    PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter Name="NAME" ControlID="TextBox2" PropertyName="Text" Type="String" />
            <asp:ControlParameter Name="COUNTRY" ControlID="DropDownList2" 
                    PropertyName="SelectedValue" Type="String" />
            <asp:Parameter Name="E" Direction="Output" DefaultValue="0" Type="Int32" />
            </SelectParameters>

            
        </asp:SqlDataSource>
    </div>
    </div>
    </form>
</body>
</html>
