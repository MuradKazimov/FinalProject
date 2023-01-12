<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="drugs.aspx.cs" Inherits="FInalTest.Shop_grid" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <form id="form1" runat="server">
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Humberger Begin -->
        <div class="humberger__menu__overlay"></div>
        <div class="humberger__menu__wrapper">
            <div class="humberger__menu__logo">
                <a href="#">
                    <img src="img/logo1.png" alt=""></a>
            </div>

            <nav class="humberger__menu__nav mobile-menu">
                <ul>
                    <li class="active"><a href="./home.aspx">Home</a></li>
                    <li><a href="./drugs.html">Shop</a></li>

                    <li><a href="./information.html">Contact</a></li>
                </ul>
            </nav>
            <div id="mobile-menu-wrap"></div>
            <div class="header__top__right__social">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <a href="#"><i class="fa fa-pinterest-p"></i></a>
            </div>
            <div class="humberger__menu__contact">
                <ul>
                    <li><i class="fa fa-envelope"></i>hello@colorlib.com</li>
                    <li>Free Shipping for all Order of $99</li>
                </ul>
            </div>
        </div>
        <!-- Humberger End -->

        <!-- Header Section Begin -->
        <header class="header">

            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="header__logo">
                            <a href="./home.aspx">
                                <img src="img/logo1.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <nav class="header__menu">
                            <ul>
                                <li><a href="./home.aspx">Əsas</a></li>
                                <li class="active"><a href="./drugs.aspx">Dərmanlar</a></li>
                                <li><a href="./information.aspx">Əlaqə</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3">
                    </div>
                </div>
                <div class="humberger__open">
                    <i class="fa fa-bars"></i>
                </div>
            </div>
        </header>
        <!-- Header Section End -->


        <!-- Breadcrumb Section Begin -->
        <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.png">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>Dərman Axtarışı</h2>
                            <div class="breadcrumb__option">
                                <a href="./home.aspx">Əsas</a>
                                <span>Dərmanlar</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Product Section Begin -->
        <section class="product spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-5">
                        <div class="sidebar">
                            <div class="sidebar__item">
                                <h4>Department</h4>
                                <asp:DataList runat="server" ID="DataListCategories">
                                    <ItemTemplate>

                                        <ul>
                                            <li><a href="/drugs.aspx?id=<%#Eval("CategoryID")%>">
                                                <asp:Label ID="CategoryLabel" runat="server" Text='<%#Eval("CategoryName")%>'></asp:Label></a></li>

                                        </ul>
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                            <div class="sidebar__item">
                                <h4>Qiymət</h4>
                                <div class="price-range-wrap">
                                    <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                        data-min="0" data-max="150">
                                        <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                        <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                        <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                    </div>
                                    <div class="range-slider">
                                        <div class="price-input">
                                            <input type="text" runat="server" id="minamount">
                                            <input type="text" runat="server" id="maxamount">
                                        </div>
                                    </div>
                                    <div class="sidebar__item__size">
                                        <asp:Button ID="ButtonPriceApply" OnClick="ButtonPriceApply_Click" runat="server" Text="Icra et" class="site-btn" Width="127px" Height="35px" />
                                    </div>
                                </div>
                            </div>
                      

                        </div>
                    </div>
                    <div class="col-lg-9 col-md-7">
                        <div class="product__discount">
                            <div class="section-title product__discount__title">
                                <h2>Son Əlavələr</h2>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <asp:DataList ID="DataListLastDrugs" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">
                                            <ItemTemplate>
                                                <a href="/drugdetails.aspx?id=<%#Eval("DrugID")%>">
                                                    <asp:Image runat="server" CssClass="product__item__pic" Style="max-width: 270px; max-height: 270px; margin-right: 14px" ID="Image1" ImageUrl='<%#Eval("Image") %>' href='/drugdetails.aspx?id=<%#Eval(DrugID)%>' /></a>

                                                <div class="product__item__text">
                                                    <h6>
                                                        <asp:Label ID="LabelDrugName" runat="server" Text='<%#Eval("DrugName")%>'></asp:Label></h6>
                                                    <h5>
                                                        <asp:Label ID="LabelPrice" runat="server" Text='<%#Eval("Price") %>'></asp:Label></h5>
                                                </div>
                                            </ItemTemplate>
                                        </asp:DataList>
                                    </div>
                                </div>
                            </div>




                        </div>
                    </div>

                </div>
                <div class="filter__item">
                    <div class="row">
                        <div class="col-lg-4 col-md-5">
                            <div class="filter__sort">
                                <span>Sırala</span>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="SortSelectedIndexChanged" Width="74px">
                                    <asp:ListItem Text="Normal" Value="1" />
                                    <asp:ListItem Text="Əvvəlcə Ucuz" Value="2" />
                                    <asp:ListItem Text="Əvvəlcə Bahalı" Value="3" />
                                    <asp:ListItem Text="Ən Yeni" Value="4" />
                                </asp:DropDownList>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            
                            <asp:DataList ID="DataListDrugs" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
                                <ItemTemplate>
                                    <a href="/drugdetails.aspx?id=<%#Eval("DrugID")%>">
                                        <asp:Image runat="server" CssClass="product__item__pic" Style="max-width: 270px; max-height: 270px; margin-right: 14px" ID="Image1" ImageUrl='<%#Eval("Image") %>' /></a>

                                    <div class="product__item__text">
                                        <h6>
                                            <asp:Label ID="LabelDrugNameMain" runat="server" Text='<%#Eval("DrugName")%>'></asp:Label></h6>
                                        <h5>
                                            <asp:Label ID="LabelPriceMain" runat="server" Text='<%#Eval("Price") %>'></asp:Label></h5>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>         
            </div>
         
   
        </section>
        <!-- Product Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__about__logo">
                                <a href="./home.aspx">
                                    <img src="img/logo1.png" alt=""></a>
                            </div>
                            <ul>
                                <li>Ünvan: Bakı şəh, 183 Nizami St</li>
                                <li>Nömrə: +994 55 555 55 55</li>
                                <li>Email: info@aptekim.az</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                        <div class="footer__widget">
                            <h6>Əlavələr</h6>
                            <ul>
                                <li><a href="information.aspx">Haqqımızda</a></li>
                                <li><a href="information.aspx">Əlaqə</a></li>


                            </ul>
                            <ul>
                                <li><a href="information.aspx">Ünvanımız</a></li>
                                <li><a href="drugs.aspx">Dərmanlarımız</a></li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="footer__widget">
                            <h6>Sosial Media</h6>

                            <div class="footer__widget__social">
                              <a href="https://www.facebook.com/aptekim" target="_blank"><i class="fa fa-facebook"></i></a>
                                <a href="https://www.instagram.com/aptekim" target="_blank"><i class="fa fa-instagram"></i></a>
                                <a href="https://www.twitter.com/aptekim" target="_blank"><i class="fa fa-twitter"></i></a>
                                <a href="https://www.pinterest.com/aptekim" target="_blank"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer__copyright">
                            <div class="footer__copyright__text">
                                <p>
                                    
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                                    All rights reserved | Murad
 
                               
                                </p>
                            </div>
                           
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>

    </form>

</body>

</html>
