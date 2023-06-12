<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admintasks.aspx.cs" Inherits="admintasks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" rel="stylesheet" type="text/css" />
    <link href="dropdown.css" media="screen" rel="stylesheet" type="text/css" />
<link href="default.advanced.css" media="screen" rel="stylesheet" type="text/css" />
    
    <style type="text/css">
        .style1
        {
            width: 700px;
            height: 50px;
        }
        .style2
        {
            width: 800px;
            height: 200px;
        }
    </style>
        <script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="slideshow.js"></script>
</head>
<body>
    <form id="form1" runat="server" class="fontdd">
    <div>
    
        <img class="style2" src="Images/logoall.jpg" /><br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
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
         
        
        <img class="style1" src="Images/admintaskslogo.jpg" /><br />
       
  
         


       
         
       
         
        <div class="dv"> 
            select what you want to do...<br />
           
    
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/create new clerk.aspx" 
                Text="Add clerk" />
           
    
        <br />
            <asp:ImageButton 
            ID="ImageButton3" runat="server" ImageUrl="~/Images/showlibrarystatus.jpg" 
            PostBackUrl="~/ShowmemberInfo.aspx" />
        </div>
    
    </div>
    </form>
</body>
</html>
