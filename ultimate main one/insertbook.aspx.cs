using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.Odbc;
using System.IO;

public partial class insertbook : System.Web.UI.Page
{
 
   

    
    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        IDbCommand cmd = e.Command;
        int a = 0;
        foreach (DbParameter param in cmd.Parameters)
        {
            a++;
           
           
            if (a == 8 && param.Value.ToString() == "5")
            {
                Response.Write(@"<script language='javascript'>alert('This isbn or booktitle already exists')</script>");
                
            }

           
           
            if (a == 8 && param.Value.ToString() == "0")
            {

                
                Response.Write(@"<script language='javascript'>alert('Book Insertion is successful')</script>");
                
            
                
            }

        }
    }

    

    



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Book.Select(DataSourceSelectArguments.Empty);
    }

  


    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/insertwriter.aspx");

    }

   
}