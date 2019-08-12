using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTTH
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_DangNhap_Click1(object sender, EventArgs e)
        {
            divInfo.InnerHtml += "Your Email: " + txtEmail.Value;
        }


        
    }
}