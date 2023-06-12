<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadFile.aspx.cs" Inherits="UploadFile" %>

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
            width: 800px;
            height: 200px;
        }
        .style2
        {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <img alt="" class="style1" src="Images/logoall.jpg" /><br />
   
     
        <span class="style2">UploadBook&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
     
        <br />
        <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx" CssClass="sdfs">Logout</asp:HyperLink>
        <asp:SiteMapPath ID="SiteMapPath1" Runat="server" Font-Names="Verdana" 
            Font-Size="0.8em" PathSeparator=" : ">
            <CurrentNodeStyle ForeColor="#333333" />
            <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
            <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
            <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
        </asp:SiteMapPath>
   
	
	
    </div>
    <div>
        <br />
            To upload file to web
        <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
            <asp:ImageButton ID="ImageButton3" runat="server" 
                ImageUrl="~/Images/upload.jpg" onclick="ImageButton3_Click" />
            <br />
          <asp:Label ID="Label4" runat="server"></asp:Label>
            <br />
       
        
            <br />
    </div>
    </form>
</body>
</html>
