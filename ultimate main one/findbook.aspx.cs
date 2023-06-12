using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.Odbc;

public partial class findbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    
   
        if (DropDownList1.SelectedValue == "search by authorname") {
            Response.Redirect("searchbyauthorname.aspx");
    
        }
        else if (DropDownList1.SelectedValue == "search by bookcategory") {
            Response.Redirect("searchbycategoryname.aspx");
        }
        else if (DropDownList1.SelectedValue == "search by publishername")
        {
            Response.Redirect("searchbypublishername.aspx");
        }
        else if (DropDownList1.SelectedValue == "search by booktitle")
        {
            Response.Redirect("Search By Booktitle.aspx");
        }
        else if (DropDownList1.SelectedValue == "search by assumption")
        {
            Response.Redirect("Search By assumption.aspx");
        }
   
    }
   
}