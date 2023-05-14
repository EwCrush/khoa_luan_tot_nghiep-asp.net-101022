﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_lab.cms.user.DungCu
{
    public partial class DungCuLoadControl : System.Web.UI.UserControl
    {
        string trang = "";
        int trangcuoi = 0;
        int trangtruoc = 0;
        int trangtiep = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["trang"] != null)
                trang = Request.QueryString["trang"];
            if (!IsPostBack)
            {
                layDSTB();
            }
        }

        protected string getmadv()
        {
            DataTable dt = new DataTable();
            dt = e_lab.DonVi.get_tendv(Session["MaDonVi"].ToString());
            return dt.Rows[0]["TenDV"].ToString();
        }

        protected string get_iptk()
        {
            return iptk.Text.Trim();
        }

        protected int getlast()
        {
            int tonghang = 0;
            DataTable dt = new DataTable();
            dt = e_lab.VatTuKhoa.ds_dungcukhoa(Session["MaDonVi"].ToString());
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                tonghang++;
            }
            if (tonghang % 5 != 0)
            {
                return trangcuoi = tonghang / 5 + 1;
            }
            else
                return trangcuoi = tonghang / 5;
        }


        protected int getpre()
        {
            int sotrang;
            int.TryParse(trang, out sotrang);
            if (sotrang == 1)
                return trangtruoc = getlast();
            else
                return trangtruoc = sotrang - 1;
        }

        protected int getnext()
        {
            int sotrang;
            int.TryParse(trang, out sotrang);
            if (sotrang == getlast())
                return trangtiep = 1;
            else
                return trangtiep = sotrang + 1;
        }



        protected string getcurrent()
        {
            //int sotrang = int.Parse(trang);
            return trang;
        }

        protected int getoffset()
        {
            string tranghientai = "";
            int offset = 0;
            if (Request.QueryString["trang"] != null)
                tranghientai = Request.QueryString["trang"];
            int.TryParse(tranghientai, out offset);

            return (offset - 1) * 5;
        }

        private void layDSTB()
        {
            DataTable dt = new DataTable();
            dt = e_lab.VatTuKhoa.ds_dungcukhoa_pagination(Session["MaDonVi"].ToString(), getoffset());
            //grid_phonglab.DataSource = dt;
            //grid_phonglab.DataBind();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltr_ds_dc.Text += @"
                <tr id='Line" + dt.Rows[i]["MaDC"] + @"' class='table_row'>
            <td class='tb_mi15 table_info'>" + dt.Rows[i]["MaDC"] + @"</td>
            <td class='tb_mi30 table_info'>" + dt.Rows[i]["TenDC"] + @"</td>
            <td class='tb_mi15 table_info'>" + dt.Rows[i]["NgayNhap"] + @"</td>
            <td class='tb_mi15 table_info'>" + dt.Rows[i]["SoLuongTon"] + @"</td>
            <td class='tb_mi15 table_info'>" + dt.Rows[i]["DVT"] + @"</td>
            <td class='tb_mi10 table_info'>
                <a href='/User.aspx?modul=SuaDungCu&madc=" + dt.Rows[i]["MaDC"] + @"' class='tb_thaotac_link'>
                 <i class='tb_mi10 fa-sharp fa-solid fa-pen' title='Sửa'></i>
                </a>
            </td>
        </tr>
";
            }
        }
    }
}