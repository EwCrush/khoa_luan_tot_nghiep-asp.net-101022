﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="e_lab.Admin" %>

<%@ Register Src="~/cms/admin/adminLoadControl.ascx" TagPrefix="uc1" TagName="adminLoadControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HUFI E-lab</title>
    <link href="cms/admin/css/cssAdmin.css" rel="stylesheet" />
    <link href = "https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap&subset=vietnamese" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="cms/admin/js/jquery.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="header">
            <div class ="grid">
                <div class="header-logo">
                    <a href="/Admin.aspx" class="header-home">
                        <img class="logo-hufi" src="cms/admin/img/logo-hufi-2.png"/>
                    </a>
                </div>
                <div class="header-account">
                    <span class="header-logo-text">Trung tâm thí nghiệm thực hành</span>
                    <span class="borderhead">|</span>
                    <span class="header-logo-text">Xin chào <%=getname() %>!</span>
                </div>
             </div>
          </div>
        <div class="main">
            <div class="grid">
                <div class="col-2">
                    <div class="sidebar">
                            <ul class="sidebar-list">
                                <li class="sidebar-item <%=isNhanVien() %> <%=DanhDau("PhongLab")%> <%=DanhDau("TimKiemPhongLab")%> <%=DanhDau("ThemPL") %> <%=DanhDau("SuaPL") %>">
                                    <a href="/Admin.aspx?modul=PhongLab&trang=1" class="sidebar-item-link">
                                        <i class="fa-sharp fa-solid fa-building"></i>
                                        Quản lý phòng lab
                                    </a>
                                </li>
                                <li class="sidebar-item <%=isNhanVien() %> <%=DanhDau("ThemNV") %> <%=DanhDau("SuaNV") %> <%=DanhDau("NhanVien") %> <%=DanhDau("TimKiemNhanVien") %>">
                                    <a href="/Admin.aspx?modul=NhanVien&trang=1" class="sidebar-item-link">
                                        <i class="fa-solid fa-user-group"></i>
                                        Quản lý nhân viên
                                    </a>
                                </li>
                                <li class="sidebar-item <%=isNhanVien() %> <%=DanhDau("TimKiemTaiKhoan") %> <%=DanhDau("ThemTaiKhoan") %> <%=DanhDau("SuaTaiKhoan") %> <%=DanhDau("TaiKhoan") %>">
                                    <a href="/Admin.aspx?modul=TaiKhoan&trang=1" class="sidebar-item-link">
                                        <i class="fa-solid fa-user-lock"></i>
                                        Quản lý tài khoản
                                    </a>
                                </li>
                                <li class="sidebar-item sidebar-item-wall <%=isNhanVien() %> <%=DanhDau("SuaNSX")%> <%=DanhDau("ThemNSX")%> <%=DanhDau("TimKiemNhaSanXuat") %> <%=DanhDau("NhaSanXuat") %>">
                                    <a href="/Admin.aspx?modul=NhaSanXuat&trang=1" class="sidebar-item-link">
                                        <i class="fa-solid fa-industry"></i>
                                        Quản lý nhà sản xuất
                                    </a>
                                </li>
                                <li class="sidebar-item <%=isNhanVien() %> <%=DanhDau("SuaNCC")%> <%=DanhDau("ThemNCC")%> <%=DanhDau("TimKiemNhaCungCap") %> <%=DanhDau("NhaCungCap") %>">
                                    <a href="/Admin.aspx?modul=NhaCungCap&trang=1" class="sidebar-item-link">
                                        <i class="fa-solid fa-truck-field"></i>
                                        Quản lý nhà cung cấp
                                    </a>
                                </li>
                                <li class="sidebar-item sidebar-item-wall <%=DanhDau("ThanhLy")%> <%=DanhDau("HoaChatHetHan")%> <%=DanhDau("HoaChat")%> <%=DanhDau("ThongTinThemHoaChat")%> <%=DanhDau("ThongTinThemHoaChatHetHan")%> <%=DanhDau("ThemHoaChat")%> <%=DanhDau("SuaHoaChat")%> <%=DanhDau("TimKiemHoaChat")%>">
                                    <a href="/Admin.aspx?modul=HoaChat&trang=1" class="sidebar-item-link">
                                        <i class="fa-solid fa-flask"></i>
                                        Quản lý hóa chất
                                    </a>
                                </li>
                                <li class="sidebar-item <%=DanhDau("ThemThietBiBaoTri")%> <%=DanhDau("LichSuSuDung")%> <%=DanhDau("ThemThongSo")%> <%=DanhDau("SuaThongSo")%> <%=DanhDau("ThongSo")%> <%=DanhDau("ThongSoBTBD")%> <%=DanhDau("BaoTriBaoDuong")%> <%=DanhDau("ThongTinThemThietBiBTBD")%> <%=DanhDau("ThongTinThemThietBi")%> <%=DanhDau("ThietBi")%> <%=DanhDau("ThemThietBi")%> <%=DanhDau("SuaThietBi")%> <%=DanhDau("TimKiemThietBi")%>">
                                    <a href="/Admin.aspx?modul=ThietBi&trang=1" class="sidebar-item-link">
                                        <i class="fa-solid fa-microscope"></i>
                                        Quản lý thiết bị
                                    </a>
                                </li>
                                <li class="sidebar-item <%=DanhDau("DungCu")%> <%=DanhDau("ThemDungCu")%> <%=DanhDau("ThongTinThemDungCu")%> <%=DanhDau("SuaDungCu")%> <%=DanhDau("TimKiemDungCu")%>">
                                    <a href="/Admin.aspx?modul=DungCu&trang=1" class="sidebar-item-link">
                                        <i class="fa-solid fa-vial"></i>
                                        Quản lý dụng cụ
                                    </a>
                                </li>
                                <li class="sidebar-item sidebar-item-wall <%=DanhDau("SuaPhieuNhap") %> <%=DanhDau("PhieuNhapDangChoXacNhan") %> <%=DanhDau("CTPNThietBi") %> <%=DanhDau("CTPNDungCu") %> <%=DanhDau("CTPNHoaChat") %> <%=DanhDau("ChiTietPhieuNhapThietBi") %> <%=DanhDau("ChiTietPhieuNhapDungCu") %> <%=DanhDau("SuaChiTietPhieuNhapDungCu") %> <%=DanhDau("ThemChiTietPhieuNhapDungCu") %> <%=DanhDau("SuaChiTietPhieuNhapThietBi") %> <%=DanhDau("ThemChiTietPhieuNhapThietBi") %> <%=DanhDau("SuaChiTietPhieuNhapHoaChat") %> <%=DanhDau("ThemChiTietPhieuNhapHoaChat") %> <%=DanhDau("ChiTietPhieuNhapHoaChat") %> <%=DanhDau("LapPhieuNhap") %> <%=DanhDau("PhieuNhap") %>">
                                    <a href="/Admin.aspx?modul=PhieuNhap&trang=1" class="sidebar-item-link">
                                        <i class="fa-solid fa-file-invoice-dollar"></i>
                                        Quản lý phiếu nhập
                                    </a>
                                </li>
                                <li class="sidebar-item <%=DanhDau("PhieuXuatDangChoDuyet") %> <%=DanhDau("ChiTietPhieuXuatThietBi") %> <%=DanhDau("ChiTietPhieuXuatHoaChat") %> <%=DanhDau("ChiTietPhieuXuatDungCu") %> <%=DanhDau("PhieuXuat") %>">
                                    <a href="/Admin.aspx?modul=PhieuXuat&trang=1" class="sidebar-item-link">
                                        <i class="fa-sharp fa-solid fa-file-lines"></i>
                                        Quản lý phiếu xuất
                                    </a>
                                </li>
                                <li class="sidebar-item sidebar-item-wall <%=isNhanVien() %> <%=DanhDau("LichSuHoatDong") %>">
                                    <a href="/Admin.aspx?modul=LichSuHoatDong&trang=1" class="sidebar-item-link">
                                        <i class="fa-solid fa-clock"></i>
                                        Lịch sử hoạt động
                                    </a>
                                </li>
                                <li class="sidebar-item sidebar-item-wall <%=DanhDau("DoiMatKhau") %>">
                                    <a href="/Admin.aspx?modul=DoiMatKhau&" class="sidebar-item-link">
                                        <i class="fa-solid fa-key"></i>
                                        Đổi mật khẩu
                                    </a>
                                </li>
                                <li class="sidebar-item">
                                    <a href="/Login.aspx" class="sidebar-item-link">
                                        <i class="fa-solid fa-arrow-right-from-bracket"></i>
                                        Đăng xuất
                                    </a>
                                </li>
                            </ul>
                        </div>
                </div>
                <div class="col-10">
                    <uc1:adminLoadControl runat="server" id="adminLoadControl" />
                </div>
            </div>
        </div>

        <footer class ="footer"></footer>
    </div>
    </form>
</body>
</html>
