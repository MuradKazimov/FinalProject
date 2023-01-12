<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FInalTest.testindex" %>

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
                                <li class="active"><a href="./home.aspx">Əsas</a></li>
                                <li><a href="./drugs.aspx">Dərmanlar</a></li>
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

        <!-- Hero Section Begin -->
        <section class="hero">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="hero__categories">
                            <div class="hero__categories__all">
                                <i class="fa fa-bars"></i>

                                <span>Kategoriyalar</span>

                            </div>
                            <asp:DataList runat="server" ID="DataListCategories">
                                <ItemTemplate>

                                    <ul style="padding-bottom: 0px; padding-top: 0px; border-top-width: 0px; border-bottom-width: 0px; width: 261px;">
                                        <li><a href="/drugs.aspx?id=<%#Eval("CategoryID")%>">
                                            <asp:Label ID="LabelCategory" Style="padding-bottom: 0px; padding-top: 0px; width: 220px" runat="server" Text='<%#Eval("CategoryName")%>'></asp:Label></a></li>


                                    </ul>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="hero__search">
                            <div class="hero__search__form">
                                <asp:TextBox ID="SearchBox" runat="server" placeholder="Dərman axtar..." Style="width: 470px; height: 48px"></asp:TextBox>
                              

                                <asp:Button ID="SearchingButton" runat="server" Text="Axtarış" class="site-btn" Style="width: 120px; height: 48px" OnClick="SearchingButton_Click" />
                            </div>
                            <div class="hero__search__phone">
                                <div class="hero__search__phone__icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="hero__search__phone__text">
                                    <h5>+994 55 555 55 55</h5>
                                    <span>24/7 Dəstək</span>
                                </div>
                            </div>

                        </div>
                        <div class="hero__item set-bg" data-setbg="img/hero/banner1.jpg">
                            <div class="hero__text">
                                <span>Online Aptek</span>
                                <h2>Hər növ
                                    <br />
                                    Dərmanlar</h2>
                                <p>Hər növ dərman və müalicə vasitələri</p>
                                <a href="drugs.aspx" class="primary-btn">Dərman Tap</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero Section End -->

        <!-- Categories Section Begin -->
        <section class="categories">
            <div class="container">
                <div class="row">
                    <div class="categories__slider owl-carousel">
                        <div class="col-lg-3">
                            <div class="categories__item set-bg" data-setbg="img/categories/cat-1.png">
                                <h5><a href="/drugs.aspx?id=1">Ağrıkəsici</a></h5>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="categories__item set-bg" data-setbg="img/categories/cat-2.png">
                                <h5><a href="/drugs.aspx?id=2">Antibiotiklər</a></h5>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="categories__item set-bg" data-setbg="img/categories/cat-3.png">
                                <h5><a href="/drugs.aspx?id=3">Ürək-Damar xəstəlikləri</a></h5>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="categories__item set-bg" data-setbg="img/categories/cat-4.png">
                                <h5><a href="/drugs.aspx?id=4">Uşaq xəstəlikləri</a></h5>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="categories__item set-bg" data-setbg="img/categories/cat-5.png">
                                <h5><a href="/drugs.aspx?id=5">Sinir sistemi</a></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Categories Section End -->

        <!-- Featured Section Begin -->
        <section class="featured spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h2>Dərmanlar</h2>
                        </div>                      
                    </div>
                </div>

                <div class="row featured__filter">
                     <h1><asp:Label ID="LabelNothingFound" style="margin-left: 40px" runat="server" Text=""></asp:Label></h1>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                       
                        <div class="featured__item">
                            
                            <asp:DataList runat="server" ID="DataListDrugs" RepeatColumns="4">
                                <ItemTemplate>
                                   
                                    <a href="/drugdetails.aspx?id=<%#Eval("DrugID")%>">
                                        <asp:Image ID="Image2" runat="server" CssClass="featured__item__pic set-bg" Style="max-width: 270px; max-height: 270px; margin-right: 14px" ImageUrl='<%#Eval("Image") %>' /></a>


                                    <div class="featured__item__text">
                                        <h6>
                                            <asp:Label ID="LabelDrugName" runat="server" Text='<%#Eval("DrugName")%>'></asp:Label>
                                        </h6>
                                        <h5>
                                            <asp:Label ID="LabelPrice" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                        </h5>
                                    </div>

                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>



                </div>
            </div>
        </section>

        <!-- Featured Section End -->

   



        <div>
            <ul>
                <li></li>
                <li></li>
                <li></li>
            </ul>

        </div>

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
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                                    All rights reserved | Murad</a>
 
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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
