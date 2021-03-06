        <!-- Start footer area -->
        <footer id="footer" class="footer-area footer-area-3 pt-40">
            <div class="footer-main pt-70">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 footer-col">
                            <div class="footer-logo mb-20">
                                <a href="#" title="Freak">
                                    <img src="{{url('images/frontend_images/logo/logo-2.png')}}" alt="">
                                </a>
                            </div>
                            <div class="widget widget-about-us">
                                @foreach ($getLocation as $location)
                                <p class="address">{{$location->location}}</p>
                                <p class="phone">Phone: {{$location->contactNumber}}</p>
                                <p class="email">
                                    Email:
                                    <a href="#">{{$location->email}}</a>
                                </p>                                    
                                @endforeach
                            </div>
                            <div class="widget widget-social">
                                <h6 class="widget-title text-uppercase text-white">Follow us</h6>
                                <div class="social-icon-2 socile-icon-tooltip">
                                    <ul> 
                                      @foreach ($getMedia as $links)
                                           <li><a href="{{url('/'.$links->link)}}" data-tooltip="{{$links->name}}" class="{{$links->name}}"><i class="zmdi zmdi-{{$links->icon}}"></i></a></li>
                                      @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 footer-col">
                            <div class="widget widget-menu">
                                <h6 class="widget-title">Information</h6>
                                <div class="menu-information-container">
                                    <ul class="nav-menu">
                                        @foreach ($getFooterLink as $links)
                                        <li><a href="{{url('/'.$links->url)}}">{{$links->page_title}}</a></li>                                            
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 footer-col">
                            <div class="widget widget-latest-tweet">
                                <h6 class="widget-title">Latest tweet</h6>
                                <div class="latest-tweets">
                                    <ul>
                                        @foreach ($getBlogs as $blogs)
                                            <li>
                                                <p class="tweet-text">{{$blogs->title}}
                                                    <a href="{{url('/blog-detail/'.$blogs->url)}}" target="_blank">www.freak.com/blog/{{$blogs->url}}</a> 
                                                <p class="tweet-details hidden-md">
                                                    <a href="#" target="_blank">
                                                        <time datetime="2016-06-24 23:58:32+0000"> {{$blogs->created_at->format('d M Y')}}</time>
                                                    </a>
                                                </p>
                                            </li>                                            
                                        @endforeach

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 footer-col">
                            <div class="widget widget_instagram_feed">
                                <h6 class="widget-title">Photo Stream</h6>
                                <div class="inst-photo-container">
                                    <ul class="inst-photo">
                                        @foreach ($getPhotoStream as $media) 
                                            <li>
                                                <a href="{{url('/'.$media->link_to)}}"><img alt="" src="{{asset('images/backend_images/footer/'.$media->image)}}"></a>
                                            </li>
                                        @endforeach
                                    </ul>
                                    {{-- <div class="ins-follow-btn">
                                        <a href="#" target="_blank">
                                        <i class="zmdi zmdi-instagram"></i>Follow on Instagram</a>
                                    </div> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom black-bg ptb-15">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="copyright copyright-2">
                                <p>Copyright &copy; 2016 <a href="{{url('/')}}">Freak</a> . All Right Reserved.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- End footer area -->
        <!--style-customizer start -->
        {{-- <div class="style-customizer closed">
            <div class="buy-button">
                <a href="index.html" class="customizer-logo"><img src="{{url('images/frontend_images/logo/logo.png')}}" alt="Theme Logo"></a>
                <a class="opener" href="#"><i class="zmdi zmdi-settings"></i></a>
            </div>
            <div class="clearfix content-chooser">
                <h3>Layout Options</h3>
                <p>Which layout option you want to use?</p>
                <ul class="layoutstyle clearfix">
                    <li class="wide-layout selected" data-style="wide" title="wide"> Wide </li>
                    <li class="boxed-layout" data-style="boxed" title="boxed"> Boxed </li>
                </ul>
                <h3>Color Schemes</h3>
                <p>Which theme color you want to use? Select from here.</p>
                <ul class="styleChange clearfix">
                    <li class="skin-default selected" title="skin-default" data-style="skin-default" ></li>
                    <li class="skin-green" title="green" data-style="skin-green"></li>
                    <li class="skin-purple" title="purple" data-style="skin-purple"></li>
                    <li class="skin-blue" title="blue" data-style="skin-blue"></li>
                    <li class="skin-cyan" title="cyan" data-style="skin-cyan"></li>
                    <li class="skin-amber" title="amber" data-style="skin-amber"></li>
                    <li class="skin-blue-grey" title="blue-grey" data-style="skin-blue-grey"></li>
                    <li class="skin-teal" title="teal" data-style="skin-teal"></li>
                </ul>
                <h3>Background Patterns</h3>
                <p>Which background pattern you want to use?</p>
                    <ul class="patternChange clearfix">
                    <li class="pattern-1" data-style="pattern-1" title="pattern-1"></li>
                    <li class="pattern-2" data-style="pattern-2" title="pattern-2"></li>
                    <li class="pattern-3" data-style="pattern-3" title="pattern-3"></li>
                    <li class="pattern-4" data-style="pattern-4" title="pattern-4"></li>
                    <li class="pattern-5" data-style="pattern-5" title="pattern-5"></li>
                    <li class="pattern-6" data-style="pattern-6" title="pattern-6"></li>
                    <li class="pattern-7" data-style="pattern-7" title="pattern-7"></li>
                    <li class="pattern-8" data-style="pattern-8" title="pattern-8"></li>
                </ul>
                <h3>Background Images</h3>
                <p>Which background image you want to use?</p>
                <ul class="patternChange main-bg-change clearfix">
                    <li class="main-bg-1" data-style="main-bg-1" title="Background 1"> <img src="{{url('images/frontend_images/customizer/bodybg/01.jpg')}}" alt=""></li>
                    <li class="main-bg-2" data-style="main-bg-2" title="Background 2"> <img src="{{url('images/frontend_images/customizer/bodybg/02.jpg')}}" alt=""></li>
                    <li class="main-bg-3" data-style="main-bg-3" title="Background 3"> <img src="{{url('images/frontend_images/customizer/bodybg/03.jpg')}}" alt=""></li>
                    <li class="main-bg-4" data-style="main-bg-4" title="Background 4"> <img src="{{url('images/frontend_images/customizer/bodybg/04.jpg')}}" alt=""></li>
                    <li class="main-bg-5" data-style="main-bg-5" title="Background 5"> <img src="{{url('images/frontend_images/customizer/bodybg/05.jpg')}}" alt=""></li>
                    <li class="main-bg-6" data-style="main-bg-6" title="Background 6"> <img src="{{url('images/frontend_images/customizer/bodybg/06.jpg')}}" alt=""></li>
                    <li class="main-bg-7" data-style="main-bg-7" title="Background 7"> <img src="{{url('images/frontend_images/customizer/bodybg/07.jpg')}}" alt=""></li>
                    <li class="main-bg-8" data-style="main-bg-8" title="Background 8"> <img src="{{url('images/frontend_images/customizer/bodybg/08.jpg')}}" alt=""></li>
                </ul>
                <ul class="resetAll">
                    <li><a class="button button-border button-reset" href="#">Reset All</a></li>
                </ul>
            </div>
        </div> --}}
        <!--style-customizer end --> 
    </div>
    <!-- Body main wrapper end -->


    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="{{asset('js/frontend_js/vendor/jquery-3.1.1.min.js')}}"></script>
    <!-- Bootstrap framework js -->
    <script src="{{asset('js/frontend_js/bootstrap.min.js')}}"></script>
    <!-- All js plugins included in this file. -->
    <script src="{{asset('js/frontend_js/plugins.js')}}"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="{{asset('js/frontend_js/main.js')}}"></script>

</body>

</html>