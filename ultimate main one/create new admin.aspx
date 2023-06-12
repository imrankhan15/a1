<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create new admin.aspx.cs" Inherits="create_new_admin" %>

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
     
        <img alt="" class="style2" src="Images/creatnewadminlogo.jpg" /><br />
  
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" CssClass="sdfs">Logout</asp:HyperLink>
    
        <br />
        <div class="db">
    
        Your must fill in all the boxes
        <br />
    
        <br />
    
        insert your id<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox1">
        </asp:RequiredFieldValidator>
        <br />
        insert your password<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox2">
        </asp:RequiredFieldValidator>
     

        <br />
        confirm password<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox10">
        </asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1"
        Runat="server" ErrorMessage="Passwords do not match!"
        ControlToValidate="TextBox10" 
        ControlToCompare="TextBox2"></asp:CompareValidator>
        <br />
        insert your firstname<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox3">
        </asp:RequiredFieldValidator>
        <br />
        insert your lastname<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox4">
        </asp:RequiredFieldValidator>
        &nbsp;<br />
        insert your dateofbirth<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator44"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox5">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
        Runat="server" ControlToValidate="TextBox5"
        ErrorMessage="You must enter in 12/nov/2012 form"
        ValidationExpression="^\d{1,2}\/\w{3}\/\d{4}$">
        </asp:RegularExpressionValidator>
       
       <br />
        insert your address<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox6">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
        Runat="server" ControlToValidate="TextBox6"
        ErrorMessage="you must enter in  1,Banani,Dhaka-1000 form"
        ValidationExpression="^\d{1,3}\,(\w)*\,(\w)*\-\d{4}$">
        </asp:RegularExpressionValidator>

        
        
        <br />
        insert your nationality<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox7">
        </asp:RequiredFieldValidator>
        <br />
        insert your occupation<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox8">
        </asp:RequiredFieldValidator>
        <br />
        insert your hobby<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9"
        Runat="server" ErrorMessage="Required!" ControlToValidate="TextBox9">
        </asp:RequiredFieldValidator>
       
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Images/submit.jpg" onclick="ImageButton1_Click" Width="42px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>"
              
            InsertCommand="INSERT INTO &quot;CREATENEWADMIN&quot; ( &quot;ID&quot;, &quot;PASSWORD&quot;, &quot;FIRSTNAME&quot;, &quot;LASTNAME&quot;, &quot;DATEOFBIRTH&quot;, &quot;ADDRESS&quot;, &quot;NATIONALITY&quot;, &quot;OCCUPATION&quot;, &quot;HOBBY&quot;) VALUES (:iid, :ppass, :fname, :lname, TO_DATE(:dob), :address, :nation, :occup, :hobby)"
            >
           <InsertParameters>
            <asp:ControlParameter Name="iid" ControlID="TextBox1" PropertyName="Text" Type="String" />
            <asp:ControlParameter Name="ppass" ControlID="TextBox2" PropertyName="Text" Type="String" />
            <asp:ControlParameter Name="fname" ControlID="TextBox3" PropertyName="Text" Type="String" />
            <asp:ControlParameter Name="lname" ControlID="TextBox4" PropertyName="Text" Type="String" />
            <asp:ControlParameter Name="dob" ControlID="TextBox5" PropertyName="Text" Type="String" />
            <asp:ControlParameter Name="address" ControlID="TextBox6" PropertyName="Text" Type="String" />
            <asp:ControlParameter Name="nation" ControlID="TextBox7" PropertyName="Text" Type="String" />
            <asp:ControlParameter Name="occup" ControlID="TextBox8" PropertyName="Text" Type="String" />
            <asp:ControlParameter Name="hobby" ControlID="TextBox9" PropertyName="Text" Type="String" />
           </InsertParameters>
        </asp:SqlDataSource>
    </div>
    </div>
    </form>
</body>
</html>
