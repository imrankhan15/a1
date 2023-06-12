using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.Odbc;

public partial class create_new_member : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlDataSource1.Insert();
        Response.Write(@"<script language='javascript'>alert('Member creation successful!!')</script>");

    }
}