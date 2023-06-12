<%@ Page Language="C#" AutoEventWireup="true" CodeFile="renthistory.aspx.cs" Inherits="renthistory" %>

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
        a 
{
    text-decoration:none;
}
.sdfs
{
	float: right;
}

.db
{
	clip: rect(auto, auto, auto, auto);
}
body, table 
{
    font-family:Arial,Helvetica,Sans-Serif;
    font-size:.9em;
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
        <span class="style2">Rent History</span><br />
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
           TO FIND OUT HISTORY OF YOUR LAST RENTS 
           INSERT ONLY MEMBERID AND PASSWORD&nbsp; AND CLICK IT<asp:ImageButton 
               ID="ImageButton6" runat="server" 
               ImageUrl="~/Images/searchdetails.jpg" onclick="ImageButton6_Click" />
           <br />
           <asp:GridView ID="GridView19" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" 
               EmptyDataText="There are no data records to display.">
               <Columns>
                   <asp:BoundField DataField="ID" HeaderText="ID" 
                       SortExpression="ID" />
                   <asp:BoundField DataField="RENTCHARGEPERDAY" HeaderText="RENTCHARGEPERDAY" 
                       SortExpression="RENTCHARGEPERDAY" />
                   <asp:BoundField DataField="RENTDATE" HeaderText="RENTDATE" 
                       SortExpression="RENTDATE" />
                   <asp:BoundField DataField="BOOKSUBMITTED" HeaderText="BOOKSUBMITTED" 
                       SortExpression="BOOKSUBMITTED" />
                   <asp:BoundField DataField="HISTORY" HeaderText="HISTORY" 
                       SortExpression="HISTORY" />
                   <asp:BoundField DataField="MEMBERDUE" HeaderText="MEMBERDUE" 
                       SortExpression="MEMBERDUE" />
                    <asp:BoundField DataField="FIRSTNAME" HeaderText="FIRSTNAME" 
                       SortExpression="FIRSTNAME" />
                     <asp:BoundField DataField="LASTNAME" HeaderText="LASTNAME" 
                       SortExpression="LASTNAME" />
               </Columns>
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
               ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
               
               ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>"
               SelectCommand="SELECT RENTBYMEMBER.ID, RENTBYMEMBER.RENTCHARGEPERDAY, RENTBYMEMBER.RENTDATE, RENTBYMEMBER.BOOKSUBMITTED, CREATENEWMEMBER.HISTORY, CREATENEWMEMBER.MEMBERDUE, CREATENEWMEMBER.FIRSTNAME, CREATENEWMEMBER.LASTNAME FROM RENTBYMEMBER, CREATENEWMEMBER WHERE (UPPER(CREATENEWMEMBER.NAME) = UPPER(:aa)) AND (CREATENEWMEMBER.PASS = :bb) AND (UPPER(RENTBYMEMBER.MEMBERID) = UPPER(:aa)) AND (RENTBYMEMBER.MEMBERPASSWORD = :bb) AND (RENTBYMEMBER.RENTDATE IN (SELECT RENTDATE FROM RENTBYMEMBER RENTBYMEMBER_1 WHERE (UPPER(MEMBERID) = UPPER(:aa)) AND (UPPER(MEMBERPASSWORD) = UPPER(:bb))))"

              >
               <SelectParameters>
                   <asp:ControlParameter ControlID="TextBox1" Name="aa" PropertyName="Text" />
                   <asp:ControlParameter ControlID="TextBox2" Name="bb" PropertyName="Text" />
               </SelectParameters>
               
           </asp:SqlDataSource>
    
    </div>
    <div>
    
    </div>
    </form>
</body>
</html>
