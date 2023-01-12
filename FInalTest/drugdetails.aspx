<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="drugdetails.aspx.cs" Inherits="FInalTest.shop_details" %>

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
                    <li><a href="./drugs.aspx">Shop</a></li>

                    <li><a href="./information.aspx">Contact</a></li>
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

   

        <!-- Breadcrumb Section Begin -->
        <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.png">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>Dərman Haqqında</h2>
                            <div class="breadcrumb__option">
                                <a href="./home.aspx">Əsas</a>
                                <a href="./drugs.aspx">Digər Dərmanlar</a>
                                <span>Ətraflı</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Product Details Section Begin -->
        <section class="product-details spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="product__details__pic">
                            <div class="product__details__pic__item">
                                <asp:Image ID="ProductImage" class="product__details__pic__item--large" runat="server" />

                            </div>
                         
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="product__details__text">
                            <h3>
                                <asp:Label ID="LabelName" runat="server" Text="Label"></asp:Label></h3>
                        
                            <div class="product__details__price">
                                <asp:Label ID="LabelPrice" runat="server" Text="Label"></asp:Label>
                            </div>
                            <p>
                                <asp:Label ID="LabelManufacturer" runat="server" Text="Label"></asp:Label>
                            </p>



                            <ul>
                                <li><b>Kategoriya</b> <span>
                                    <asp:Label ID="LabelCategory" runat="server" Text="Label"></asp:Label></span></li>
                                <li><b>Ölkə</b> <span>
                                    <asp:Label ID="LabelCountry" runat="server" Text="Label"></asp:Label></span></li>
                                <li><b>Ölçü Vahidi</b> <span>
                                    <asp:Label ID="LabelUnit" runat="server" Text="Label"></asp:Label></span></li>


                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="product__details__tab">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                        aria-selected="true">Haqqında</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                        aria-selected="false">Diqqət</a>
                                </li>

                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                    <div class="product__details__tab__desc">
                                        <h6>Dərman Haqqında</h6>
                                        <p>
                                            <asp:Label ID="LabelDescription" runat="server" Text="Label"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tabs-2" role="tabpanel">
                                    <div class="product__details__tab__desc">
                                        <h6>Bu Dərmandan İstifadə etdiyiniz zaman üzərindəki istfadə qayası təlimatlarını diqqətlə oxuyaraq əməl edin.</h6>
                                        <p>
                                            Uşaqlardan uzaq saxlayın!
                                        </p>
                                       
                                    </div>
                                </div>
                             
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Product Details Section End -->

        <!-- Related Product Section Begin -->
        <section class="related-product">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title related__product__title">
                            <h2>Uyğun Dərmanlar</h2>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <asp:DataList runat="server" RepeatDirection="Horizontal" ID="DataListRelated">
                        <ItemTemplate>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="product__item">
                                    <a href="/drugdetails.aspx?id=<%#Eval("DrugID")%>">
                                        <asp:Image ID="Image2" runat="server"  CssClass="featured__item__pic set-bg" Style="max-width: 270px; max-height: 270px; margin-right: 14px" ImageUrl='<%#Eval("Image") %>' /></a>
                                </div>
                                <div class="product__item__text">
                                    <h6>
                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("DrugName")%>'></asp:Label></h6>
                                    <h5>
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label></h5>
                                </div>
                            </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </section>
        <!-- Related Product Section End -->

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
