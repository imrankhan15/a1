<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insertbook.aspx.cs" Inherits="insertbook" %>

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
            width: 700px;
            height: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="fontdd" 
 >
    <div>
    
        <img alt="" class="style1" src="Images/logoall.jpg" /><br />
   
     
        <img alt="" class="style2" src="Images/insertbooklogo.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
     
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
    
        1.you must fill in all the fields<br />
        2.isbn and book name must be unique .<br />
        <br />
    
        insertbookisbn<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox1">
        </asp:RequiredFieldValidator>
        <br />
        <br />
        insertbookname<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox2">
        </asp:RequiredFieldValidator>
        <br />
        <br />
        insertnumberofcopys<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox3">
        </asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" Runat="server"
        ErrorMessage="You must enter a number"
        ControlToValidate="TextBox3" Type="Integer"
        Operator="DataTypeCheck"></asp:CompareValidator>
        <br />
        
        insertchargeperday<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox4">
        </asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" Runat="server"
        ErrorMessage="You must enter a number"
        ControlToValidate="TextBox4" Type="Integer"
        Operator="DataTypeCheck"></asp:CompareValidator>
        <br />
        
            select bookcategory<asp:DropDownList 
                ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="BOOKCATEGORYNAME" 
                DataValueField="BOOKCATEGORYNAME">
            </asp:DropDownList>
            <asp:RequiredFieldValidator id="RequiredFieldValidator22"
            runat="server" ErrorMessage="Please make a selection"
            ControlToValidate="DropDownList1"
            InitialValue="Select a bookcategory">
            </asp:RequiredFieldValidator>
        <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                SelectCommand="SELECT &quot;BOOKCATEGORYNAME&quot; FROM &quot;BOOKCATEGORY&quot;">
            </asp:SqlDataSource>
        <br />
        insertpublisher<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox6">
        </asp:RequiredFieldValidator>
        <br />
        <br />
        insertpublisheraddress<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox7">
        </asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
        Runat="server" ControlToValidate="TextBox7"
        ErrorMessage="you must enter in  1,Banani,Dhaka-1000 form"
        ValidationExpression="^\d{1,3}\,(\w)*\,(\w)*\-\d{4}$">
        </asp:RegularExpressionValidator>
        <br />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Images/submit.jpg" onclick="ImageButton1_Click" />
    
        <br />
        <asp:SqlDataSource ID="Book" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="INSERTBOOK"
            SelectCommandType="StoredProcedure"
            OnSelected="SqlDataSource1_Selected"
            >
            <SelectParameters>
            <asp:ControlParameter Name="BISBN" ControlID="TextBox1" Type="String" PropertyName="Text" />
            <asp:ControlParameter Name="BTITLE" ControlID="TextBox2" Type="String" PropertyName="Text" />
            <asp:ControlParameter Name="NUMBEROFCOPYS" ControlID="TextBox3" Type="String" PropertyName="Text" />
            <asp:ControlParameter Name="CHARGEPERDAY" ControlID="TextBox4" Type="String" PropertyName="Text" />
            <asp:ControlParameter Name="BOOKCATEGORYID" ControlID="DropDownList1" Type="String" 
                    PropertyName="SelectedValue" />
            <asp:ControlParameter Name="PUB" ControlID="TextBox6" Type="String" PropertyName="Text" />
            <asp:ControlParameter Name="PUBLISHERADDRESS" ControlID="TextBox7" Type="String" PropertyName="Text" />
            <asp:Parameter Name="IERROR" Direction="Output" Type="Int32" DefaultValue="1" />

            </SelectParameters>
            
        </asp:SqlDataSource>

            <br />
            <br />
            To assaign a writer to this book
        <br />
        
        <asp:ImageButton ID="ImageButton2" runat="server" 
            ImageUrl="~/Images/assaignwriter.jpg" PostBackUrl="~/insertwriter.aspx" 
                onclick="ImageButton2_Click" />
            <br />
        
        <br />
        
    </div>
    

         <br />
        <br />
         &nbsp;<br />
       
        </form>
    <p>
        &nbsp;</p>
</body>
</html>
