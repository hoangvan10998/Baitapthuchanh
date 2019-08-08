using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTTH3
{
    public partial class UploadTapTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Upload_Click(object sender, EventArgs e)
        {
            if (Page.IsValid && File1.HasFile)
            {
                string fileName = "images/" + File1.FileName;
                string filePath = MapPath(fileName);
                File1.SaveAs(filePath);
                Image1.ImageUrl = fileName;
            }
        }

        
    }
}