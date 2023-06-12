<%@ Page Language="C#" AutoEventWireup="true" CodeFile="memberlogin.aspx.cs" Inherits="memberlogin" %>

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
     
        <img alt="" class="style2" src="Images/memberloginlogo.jpg" /><br />
        <br />
        <br />
       
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx" CssClass="sdfs">Logout</asp:HyperLink>
        <div class="db">
        insert your id<asp:TextBox ID="TextBox1" runat="server" 
           ></asp:TextBox>
        <br />
        insert your password<asp:TextBox ID="TextBox2" TextMode="password" runat="server"></asp:TextBox>
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/login.jpg" 
            onclick="ImageButton1_Click" />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/create new member.aspx">createnewmember</asp:HyperLink>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
             SelectCommand="MEMBERLOGIN"
            SelectCommandType="StoredProcedure"
            OnSelected="SqlDataSource1_Selected"
            >
            <SelectParameters>
            <asp:ControlParameter Name="IID" ControlID="TextBox1" PropertyName="Text" Type="String" />
            <asp:ControlParameter Name="PPASS" ControlID="TextBox2" PropertyName="Text" Type="String" />
            <asp:Parameter Name="RR" DefaultValue="0" Direction="Output" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
    
    </div>
    </form>
</body>
</html>
