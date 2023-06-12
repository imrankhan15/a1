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

public partial class UploadFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (FileUpload1.HasFile)
        {


            FileUpload1.SaveAs("C:\\Users\\Imran\\Desktop\\ultimate main one\\upload\\" +
                 FileUpload1.FileName);
            Label4.Text = "File name: " +
                 FileUpload1.PostedFile.FileName + "<br>" +
                 FileUpload1.PostedFile.ContentLength + " kb<br>" +
                 "Content type: " +
                 FileUpload1.PostedFile.ContentType;


            string fileName = "C:\\Users\\Imran\\Desktop\\ultimate main one\\Default3.aspx";
            string fileName1 = "C:\\Users\\Imran\\Desktop\\ultimate main one\\Default4.aspx";


            string[] readText = File.ReadAllLines(fileName);
            string myFile = null;
            foreach (string s in readText)
            {
                myFile = myFile + s;
            }





            StreamReader srRead = new StreamReader(fileName);





            int z = 0;
            StreamWriter srWrite = new StreamWriter(fileName1);

            while (srRead.Peek() >= 0)
            {


                if (z == readText.Length - 4) break;
                srWrite.WriteLine(srRead.ReadLine());
                z++;



            }

            srRead.Close();
            srWrite.Close();
            File.Delete(fileName);

            string[] readText1 = File.ReadAllLines(fileName1);
            string myFile1 = null;
            foreach (string s in readText1)
            {
                myFile1 = myFile1 + s;
            }
            srRead = new StreamReader(fileName1);
            srWrite = new StreamWriter(fileName);
            while (srRead.Peek() >= 0)
            {

                srWrite.WriteLine(srRead.ReadLine());



            }
            String eed = "<br/>" + "<br/>" + "<a href= \" upload/" + FileUpload1.FileName + " \" >" + FileUpload1.FileName + " </a> " + "\n" + "</div>" + "\n" + "</form>" + "\n" + "</body>" + "\n" + "</html> ";
            srWrite.WriteLine(eed);


            srRead.Close();
            srWrite.Close();
            File.Delete(fileName1);







        }



    }
}