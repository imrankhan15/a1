using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.Odbc;


public partial class submitchargeofabook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        IDbCommand cmd = e.Command;
        int a = 0;
        int f = 0;
        foreach (DbParameter param in cmd.Parameters)
        {
            a++;
            if (a == 3 && param.Value.ToString() == "5")
            {
                
                Response.Write(@"<script language='javascript'>alert('Your total rent charge is paid!!you are ready for the next rent now!!')</script>");
                f = 0;
               

            }
            if (a == 3 && param.Value.ToString() == "0")
            {
                
                f = 1;
              

            }
            if (a == 4 && f==1 )
            {
                
                Label1.Text = "Your total due is now" + param.Value.ToString();
                
               


            }
           
          


        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlDataSource1.Select(DataSourceSelectArguments.Empty);
    }
}