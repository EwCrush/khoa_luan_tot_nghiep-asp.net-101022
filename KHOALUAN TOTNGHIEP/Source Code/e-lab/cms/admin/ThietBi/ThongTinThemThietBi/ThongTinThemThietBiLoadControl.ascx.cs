﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_lab.cms.admin.ThietBi.ThongTinThemThietBi
{
    public partial class ThongTinThemThietBiLoadControl : System.Web.UI.UserControl
    {
        string matb = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["matb"] != null)
                matb = Request.QueryString["matb"];
            if (!IsPostBack)
            {
                laythongtinthietbi();
            }
        }

        protected string getmatb() {
            return matb;
        }

        private void laythongtinthietbi()
        {
            DataTable dt = new DataTable();
            dt = e_lab.ThietBi.moreinfo_tb(matb);

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltr_ds_tb.Text += @"
                <tr class='table_row'>
            <td class='tb_mi25 table_info'>" + dt.Rows[i]["TenNSX"] + @"</td>
            <td class='tb_mi25 table_info'>" + dt.Rows[i]["TenNCC"] + @"</td>
            <td class='tb_mi15 table_info'>" + dt.Rows[i]["NgayBaoDuong"] + @"</td>
            <td class='tb_mi25 table_info'>" + dt.Rows[i]["TrangThai"] + @"</td>
            <td class='tb_mi10 table_info'>
                <a href='/Admin.aspx?modul=ThongSo&matb=" + dt.Rows[i]["MaTB"] + @"&trang=1' class='tb_thaotac_link'>
                 <i class='tb_thaotac_link_icon fa-solid fa-eye' title='Thông số thiết bị'></i>
                </a>
            </td>
        </tr>
";
            }
        }
    }
}