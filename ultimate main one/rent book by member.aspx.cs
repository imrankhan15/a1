using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.Odbc;

public partial class rent_book_by_member : System.Web.UI.Page
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
            if (a == 4 && param.Value.ToString() == "5")
            {
               
                
                f = 1;
               

            }
            if (a == 4 && param.Value.ToString() == "0")
            {
                
                
                Response.Write(@"<script language='javascript'>alert('Sorry no rent available')</script>");
                

            }
            if (a == 5 && f==1)
            {
                 String s= "Your rent is done . Your rent id is"+ param.Value.ToString();
                 Label1.Text = s;
               


            }
            if (a == 6 && param.Value.ToString() == "5")
            {
                
               

                Response.Write(@"<script language='javascript'>alert('Sorry this book is not available')</script>");


            }
            

           
          }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        createnewmember.Select(DataSourceSelectArguments.Empty);

    }
    
}