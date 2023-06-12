<%@ Page Language="C#" AutoEventWireup="true" CodeFile="submitbook.aspx.cs" Inherits="submitbook" %>

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
    <div style="height: 895px">
    
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
     
        <img alt="" class="style2" src="Images/Submitbooklogo.jpg" /><br />
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        insertrentid<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox1">
        </asp:RequiredFieldValidator>
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Images/submit.jpg" onclick="ImageButton1_Click" />
    
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
    
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SMEMBER"
            SelectCommandType="StoredProcedure"
            OnSelected="SqlDataSource1_Selected"
           >
            <SelectParameters>
               <asp:ControlParameter Name="RID" ControlID="TextBox1" PropertyName="Text" Type="String" />
               <asp:Parameter Name="AP" Direction="Output" DefaultValue="8" Type="Int32" />
               <asp:Parameter Name="APE" Direction="Output" DefaultValue="1" Type="Int32" />
             </SelectParameters>
            
        </asp:SqlDataSource>
        </div>
    
    </div>
    </form>
</body>
</html>
