<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rent book by member.aspx.cs" Inherits="rent_book_by_member" %>

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
     
        <img alt="" class="style2" src="Images/rentbookbymemberlogo.jpg" /><br />
        <br />
        <asp:SiteMapPath ID="SiteMapPath1" Runat="server" Font-Names="Verdana" 
            Font-Size="0.8em" PathSeparator=" : ">
            <CurrentNodeStyle ForeColor="#333333" />
            <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
            <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
            <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
        </asp:SiteMapPath>
        <br />
        <br />
<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx" CssClass="sdfs">Logout</asp:HyperLink>


    </div>
       <div class="db">
    
    
        insert memberid<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox1">
        </asp:RequiredFieldValidator>
        <br />
        insert password<asp:TextBox ID="TextBox2" TextMode="password" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox2">
        </asp:RequiredFieldValidator>
        <br />
           select booktitle<asp:DropDownList ID="DropDownList1" runat="server" 
               DataSourceID="Book" DataTextField="BOOKTITLE" DataValueField="BOOKTITLE">
           </asp:DropDownList>
           <asp:RequiredFieldValidator id="RequiredFieldValidator22"
            runat="server" ErrorMessage="Please make a selection"
            ControlToValidate="DropDownList1"
            InitialValue="Select a Bookname">
            </asp:RequiredFieldValidator>
    
           <br />
           <br />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/rent.jpg" 
            onclick="ImageButton1_Click" />
    
           <br />
           <br />
           <asp:Button ID="Button1" runat="server" PostBackUrl="~/renthistory.aspx" 
               Text="Rent History" />
    
           <br />
    
        <br />
           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
    
           <asp:SqlDataSource ID="Book" runat="server" 
               ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
               DeleteCommand="DELETE FROM &quot;BOOK&quot; WHERE &quot;ISBN&quot; = :ISBN" 
               InsertCommand="INSERT INTO &quot;BOOK&quot; (&quot;ISBN&quot;, &quot;BOOKTITLE&quot;, &quot;LIBRARYID&quot;, &quot;NUMBEROFCOPYS&quot;, &quot;CHARGEPERDAY&quot;, &quot;BOOKCATEGORYID&quot;, &quot;PUBLISHER&quot;) VALUES (:ISBN, :BOOKTITLE, :LIBRARYID, :NUMBEROFCOPYS, :CHARGEPERDAY, :BOOKCATEGORYID, :PUBLISHER)" 
               ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
               SelectCommand="SELECT &quot;ISBN&quot;, &quot;BOOKTITLE&quot;, &quot;LIBRARYID&quot;, &quot;NUMBEROFCOPYS&quot;, &quot;CHARGEPERDAY&quot;, &quot;BOOKCATEGORYID&quot;, &quot;PUBLISHER&quot; FROM &quot;BOOK&quot;" 
               UpdateCommand="UPDATE &quot;BOOK&quot; SET &quot;BOOKTITLE&quot; = :BOOKTITLE, &quot;LIBRARYID&quot; = :LIBRARYID, &quot;NUMBEROFCOPYS&quot; = :NUMBEROFCOPYS, &quot;CHARGEPERDAY&quot; = :CHARGEPERDAY, &quot;BOOKCATEGORYID&quot; = :BOOKCATEGORYID, &quot;PUBLISHER&quot; = :PUBLISHER WHERE &quot;ISBN&quot; = :ISBN">
               <DeleteParameters>
                   <asp:Parameter Name="ISBN" Type="String" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="ISBN" Type="String" />
                   <asp:Parameter Name="BOOKTITLE" Type="String" />
                   <asp:Parameter Name="LIBRARYID" Type="String" />
                   <asp:Parameter Name="NUMBEROFCOPYS" Type="Decimal" />
                   <asp:Parameter Name="CHARGEPERDAY" Type="Decimal" />
                   <asp:Parameter Name="BOOKCATEGORYID" Type="String" />
                   <asp:Parameter Name="PUBLISHER" Type="String" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="BOOKTITLE" Type="String" />
                   <asp:Parameter Name="LIBRARYID" Type="String" />
                   <asp:Parameter Name="NUMBEROFCOPYS" Type="Decimal" />
                   <asp:Parameter Name="CHARGEPERDAY" Type="Decimal" />
                   <asp:Parameter Name="BOOKCATEGORYID" Type="String" />
                   <asp:Parameter Name="PUBLISHER" Type="String" />
                   <asp:Parameter Name="ISBN" Type="String" />
               </UpdateParameters>
           </asp:SqlDataSource>
    
        <br />
    
        <br />
        <asp:SqlDataSource ID="createnewmember" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
           
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
           SelectCommand="RMEMBER"
        SelectCommandType="StoredProcedure"
        OnSelected="SqlDataSource1_Selected"
            >
            <SelectParameters>
        <asp:ControlParameter Name="MEMID" ControlID="TextBox1" PropertyName="Text" Type="String" />
        <asp:ControlParameter Name="MPASS" ControlID="TextBox2" PropertyName="Text" Type="String" />
        <asp:ControlParameter Name="BTITLE" ControlID="DropDownList1" 
                    PropertyName="SelectedValue" Type="String" />
        <asp:Parameter Name="G" Direction="Output" DefaultValue="1" Type="Int32" />
        <asp:Parameter Name="H" Direction="Output" DefaultValue="1adsfaf" Type="String" />
        <asp:Parameter Name="K" Direction="Output" DefaultValue="1" Type="Int32" />

        </SelectParameters>
            
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
