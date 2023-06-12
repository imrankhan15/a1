using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.Odbc;


public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        IDbCommand cmd = e.Command;
        int a = 0;
        foreach (DbParameter param in cmd.Parameters)
        {
            a++;
            if (a == 3 && param.Value.ToString() == "5")
            {
                Response.Redirect("~/admintasks.aspx");

            }
        }
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlDataSource1.Select(DataSourceSelectArguments.Empty);
    }
}