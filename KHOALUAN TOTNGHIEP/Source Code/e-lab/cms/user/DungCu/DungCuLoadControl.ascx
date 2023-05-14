﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DungCuLoadControl.ascx.cs" Inherits="e_lab.cms.user.DungCu.DungCuLoadControl" %>

<div class="to-do-heading">

    <div class="heading-text no-icon-link">Danh sách dụng cụ trong <%=getmadv() %></div>
    <div class="search">
            <div class="tk">
                <asp:TextBox ID="iptk" CssClass ="cssiptk" runat="server"></asp:TextBox>
                <a href="/User.aspx?modul=TimKiemDungCu&keyword=<%=get_iptk() %>&trang=1" class="ThemMoi">
                    <i class="tk-icon fa-solid fa-magnifying-glass" title="Tìm kiếm"></i>
                </a>
            </div> 
      </div>
</div>

<table class="table">
        <tr class="table_row">
            <th class="tb_mi15 table_heading">Mã dụng cụ</th>
            <th class="tb_mi30 table_heading">Tên dụng cụ</th>
            <th class="tb_mi15 table_heading">Ngày nhập</th>
            <th class="tb_mi15 table_heading">Số lượng tồn</th>
            <th class="tb_mi15 table_heading">DVT</th>
            <th class="tb_mi10 table_heading">Thao tác</th>
        </tr>
        <asp:Literal ID="ltr_ds_dc" runat="server"></asp:Literal>
    </table>
<div class="pagination-wrapper">
    <div class="pagination">
        <a href="/User.aspx?modul=DungCu&trang=<%=getpre() %>" class="ThemMoi">
            <i class="pagination-item fa-solid fa-chevron-left" title="Trang trước"></i>
        </a>
        <div class="pagination-item no-hover">Trang <%=getcurrent() %>/<%=getlast() %></div>
        <a href="/User.aspx?modul=DungCu&trang=<%=getnext() %>" class="ThemMoi">
            <i class="pagination-item fa-solid fa-chevron-right" title="Trang tiếp"></i>
        </a>
    </div>
</div>