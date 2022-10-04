<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#accordionSidebar{
position: sticky;
}

</style>
</head>
<body>

 <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="admin.yd">
                <div class="sidebar-brand-icon rotate-n-15">
                <div class="sidebar-brand-text mx-3">Muzhock<sup>2Zo</sup></div>
                </div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="main.yd">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>사이트로 돌아가기</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                	관리
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="adminMemberSelectList.yd" 
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>회원 관리</span>
                </a>

            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="adminProductSelectList.yd" 
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>상품 관리</span>
                </a>
                
            </li>

           
            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                통계
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>판매내역조회</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">매출/배송 관리</h6>
                        <a class="collapse-item" href="monthStatistics.yd">판매 내역</a>
                        <a class="collapse-item" href="delivery.yd">배송관리</a>
                     
                        <div class="collapse-divider"></div>

                        <h6 class="collapse-header"> 통계 그래프</h6>
                        <a class="collapse-item" href="adminChart.yd">매출 그래프(월)</a>
                        <a class="collapse-item" href="adminChart2.yd">매출 그래프(년)</a>

                        <h6 class="collapse-header"> 매출 통계</h6>
                        <a class="collapse-item" href="adminChart.yd">매출 그래프</a>
                        <a class="collapse-item" href="adminSelectToDay.yd">당일 매출조회</a>

                    </div>
                </div>
            </li>

            <!-- Nav Item - Charts -->
           

            <!-- Nav Item - Tables -->
            
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->
           

       </ul>
        <!-- End of Sidebar -->

</body>
</html>