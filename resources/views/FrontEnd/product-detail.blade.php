
@extends('FrontEnd.include.header2')
@section('content')
        <!-- Start page content -->
        <section id="page-content" class="page-wrapper">
            <!-- Start Shop Full Grid View -->
            <div class="product-details-area section-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-5">
                            <div class="single-product-image">
                                <div id="product-img-content">
                                    <div id="my-tab-content" class="tab-content mb-30">
                                        <div class="tab-pane b-img active" id="view1">
                                            <a class="venobox" href="#" data-gall="gallery" title=""><img src="{{asset('images/backend_images/products/large/'.$getProducts->image)}}" alt=""></a>
                                        </div>
                                        <div class="tab-pane b-img" id="view2">
                                            <a class="venobox" href="{{asset('images/frontend_images/product/product-details/2.jpg')}}" data-gall="gallery" title=""><img src="{{asset('images/frontend_images/product/product-details/2.jpg')}}" alt=""></a>
                                        </div>
                                        <div class="tab-pane b-img" id="view3">
                                            <a class="venobox" href="{{asset('images/frontend_images/product/product-details/3.jpg')}}" data-gall="gallery" title=""><img src="{{asset('images/frontend_images/product/product-details/3.jpg')}}" alt=""></a>
                                        </div>
                                        <div class="tab-pane b-img" id="view4">
                                            <a class="venobox" href="{{asset('images/frontend_images/product/product-details/4.jpg')}}" data-gall="gallery" title=""><img src="{{asset('images/frontend_images/product/product-details/4.jpg')}}" alt=""></a>
                                        </div>
                                    </div>
                                    <div id="viewproduct" class="nav nav-tabs product-view bxslider" data-tabs="tabs">
                                        <div class="pro-view b-img active"><a href="#view1" data-toggle="tab"><img src="{{asset('images/backend_images/products/small/'.$getProducts->image)}}" style="width:104px; height:128px;"alt=""></a></div>
                                        <div class="pro-view b-img"><a href="#view2" data-toggle="tab"><img src="{{asset('images/frontend_images/product/product-details/s-2.jpg')}}" alt=""></a></div>
                                        <div class="pro-view b-img"><a href="#view3" data-toggle="tab"><img src="{{asset('images/frontend_images/product/product-details/s-3.jpg')}}" alt=""></a></div>
                                        <div class="pro-view b-img"><a href="#view4" data-toggle="tab"><img src="{{asset('images/frontend_images/product/product-details/s-4.jpg')}}" alt=""></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div class="product-details-content">
                                <div class="product-content text-uppercase">
                                    <a title="Slim Shirt With Stretch" href="product-details.html">{{$getProducts->name}}</a>
                                    <div class="rating-icon pb-30 mt-10">
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star-half"></i>
                                        <i class="zmdi zmdi-star-half"></i>
                                    </div>
                                    <div class="product-price pb-30">
                                        <span class="new-price">$ {{$getProducts->Price}}</span>
                                        <span class="old-price">£ 200.00</span>
                                    </div>
                                </div>
                                <div class="product-view pb-30">
                                    <h4 class="product-details-tilte text-uppercase">overview</h4>
                                    <p>{{$getProducts->description}}</p>
                                </div>
                                <div class="product-size text-uppercase pb-40">
                                    <h4 class="product-details-tilte text-uppercase pb-10">size</h4>
                                    <ul>
                                        <li><a href="#">s</a></li>
                                        <li><a href="#">m</a></li>
                                        <li><a href="#">l</a></li>
                                        <li><a href="#">xl</a></li>
                                        <li><a href="#">xxl</a></li>
                                    </ul>
                                </div>
                                <div class="product-attributes clearfix">
                                    <div class="product-color text-uppercase pb-40">
                                        <h4 class="product-details-tilte text-uppercase pb-10">color</h4>
                                        <ul>
                                            <li class="color-1"><a href="#"></a></li>
                                            <li class="color-2"><a href="#"></a></li>
                                            <li class="color-3"><a href="#"></a></li>
                                            <li class="color-4"><a href="#"></a></li>
                                        </ul>
                                    </div> 
                                    <div id="quantity-wanted" class="pull-left">
                                        <h4 class="product-details-tilte text-uppercase pb-10">quantity</h4>
                                        <input type="number" class="cart-plus-minus-box" value="1">    
                                    </div>                                  
                                </div>
                                <div class="socialsharing-product">
                                    <h4 class="product-details-tilte text-uppercase pb-10">share this on</h4>
                                    <button type="button"><i class="zmdi zmdi-facebook"></i></button>
                                    <button type="button"><i class="zmdi zmdi-instagram"></i></button>
                                    <button type="button"><i class="zmdi zmdi-rss"></i></button>
                                    <button type="button"><i class="zmdi zmdi-twitter"></i></button>
                                    <button type="button"><i class="zmdi zmdi-pinterest"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="product-details-content pt-90">
                                <div class="p-details-tab">
                                    <ul class="nav nav-tabs text-uppercase mb-20" role="tablist">
                                        <li role="presentation" class="active"><a href="#description" aria-controls="description" role="tab" data-toggle="tab">Description</a></li>
                                        <li role="presentation"><a href="#reviews" aria-controls="reviews" role="tab" data-toggle="tab">Reviews</a></li>
                                        <li role="presentation"><a href="#tag" aria-controls="tag" role="tab" data-toggle="tab">Product Tags</a></li>
                                    </ul>                             
                                </div>
                                <div class="clearfix"></div>
                                <div class="tab-content review">
                                    <div role="tabpanel" class="tab-pane active" id="description">
                                        <p>{{$getProducts->description}}</p>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="reviews">
                                        <table class="table-data-sheet">
                                            <tbody>
                                                <tr class="odd">
                                                    <td>Compositions</td>
                                                    <td>Cotton</td>
                                                </tr>
                                                <tr class="even">
                                                    <td>Styles</td>
                                                    <td>Casual</td>
                                                </tr>
                                                <tr class="odd">
                                                    <td>Properties</td>
                                                    <td>Short Sleeve</td>
                                                </tr>
                                            </tbody>
                                       </table>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="tag">
                                        <div id="product-comments-block-tab">
                                            <a href="#" class="comment-btn"><span>Be the first to write your review!</span></a>
                                        </div>
                                    </div>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Of Shop Full Grid View -->
            <!-- Start Related Product Area -->
            <div class="related-product pb-90">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="related-product-title text-uppercase mb-40">
                                <h4>related Products</h4>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-sm-4">
                            <div class="single-product">
                                <div class="product-img-content mb-20">
                                    <div class="product-img">
                                        <a href="product-details.html">
                                            <img alt="" src="{{asset('images/frontend_images/product/1.jpg')}}">
                                        </a>
                                    </div>
                                    <div class="product-action text-center">
                                        <a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
                                            <i class="zmdi zmdi-eye"></i>
                                        </a>
                                        <a title="Add to cart" href="#">
                                            <i class="zmdi zmdi-shopping-cart"></i>
                                        </a>
                                        <a title="Add to Wishlist" href="#">
                                            <i class="zmdi zmdi-favorite"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center text-uppercase">
                                    <a title="Slim Shirt With Stretch" href="product-details.html">Slim Shirt With Stretch</a>
                                    <div class="rating-icon">
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star-half"></i>
                                        <i class="zmdi zmdi-star-half"></i>
                                    </div>
                                    <div class="product-price">
                                        <span class="new-price">£ 185.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <div class="single-product">
                                <div class="product-img-content mb-20">
                                    <div class="product-img">
                                        <a href="product-details.html">
                                            <img alt="" src="{{asset('images/frontend_images/product/2.jpg')}}">
                                        </a>
                                    </div>
                                    <div class="product-action text-center">
                                        <a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
                                            <i class="zmdi zmdi-eye"></i>
                                        </a>
                                        <a title="Add to cart" href="#">
                                            <i class="zmdi zmdi-shopping-cart"></i>
                                        </a>
                                        <a title="Add to Wishlist" href="#">
                                            <i class="zmdi zmdi-favorite"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center text-uppercase">
                                    <a title="Slim Shirt With Stretch" href="product-details.html">Slim Shirt With Stretch</a>
                                    <div class="rating-icon">
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star-half"></i>
                                        <i class="zmdi zmdi-star-half"></i>
                                    </div>
                                    <div class="product-price">
                                        <span class="new-price">£ 185.00</span>
                                        <span class="old-price">£ 200.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <div class="single-product">
                                <div class="product-img-content mb-20">
                                    <div class="product-img">
                                        <a href="product-details.html">
                                            <img alt="" src="{{asset('images/frontend_images/product/3.jpg')}}">
                                        </a>
                                    </div>
                                    <div class="product-action text-center">
                                        <a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
                                            <i class="zmdi zmdi-eye"></i>
                                        </a>
                                        <a title="Add to cart" href="#">
                                            <i class="zmdi zmdi-shopping-cart"></i>
                                        </a>
                                        <a title="Add to Wishlist" href="#">
                                            <i class="zmdi zmdi-favorite"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center text-uppercase">
                                    <a title="Slim Shirt With Stretch" href="product-details.html">Slim Shirt With Stretch</a>
                                    <div class="rating-icon">
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star-half"></i>
                                        <i class="zmdi zmdi-star-half"></i>
                                    </div>
                                    <div class="product-price">
                                        <span class="new-price">£ 185.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 hidden-sm">
                            <div class="single-product">
                                <div class="product-img-content mb-20">
                                    <div class="product-img">
                                        <a href="product-details.html">
                                            <img alt="" src="{{asset('images/frontend_images/product/4.jpg')}}">
                                        </a>
                                    </div>
                                    <div class="product-action text-center">
                                        <a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
                                            <i class="zmdi zmdi-eye"></i>
                                        </a>
                                        <a title="Add to cart" href="#">
                                            <i class="zmdi zmdi-shopping-cart"></i>
                                        </a>
                                        <a title="Add to Wishlist" href="#">
                                            <i class="zmdi zmdi-favorite"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center text-uppercase">
                                    <a title="Slim Shirt With Stretch" href="product-details.html">Slim Shirt With Stretch</a>
                                    <div class="rating-icon">
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star"></i>
                                        <i class="zmdi zmdi-star-half"></i>
                                        <i class="zmdi zmdi-star-half"></i>
                                    </div>
                                    <div class="product-price">
                                        <span class="new-price">£ 185.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Of Related Product Area -->

@endsection