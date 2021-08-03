<hr>

    <footer id="footer">
        <div class="inner">
            <div class="logo"><a href="{{dirRoot}}/">수당재단</a></div>

            <div class="menu">
                <a href="{{dirRoot}}/policy/privacy.asp"><strong>개인정보처리방침</strong></a>
                <a href="{{dirRoot}}/policy/service.asp">이용약관</a>
            </div>

            <address class="address">
                <span>서울특별시 종로구 종로33길 31 재단법인 수당재단</span>
                <small class="copyright">Copyright©2020 SUDANG FOUNDATION ALL RIGHT RESERVED</small>
            </address>

            <!-- <div class="familysite">
                <span class="select">
                    <select title="패밀리사이트">
                        <option>Family Site</option>
                        <option>Family Site</option>
                        <option>Family Site</option>
                    </select>
                </span>
            </div> -->
        </div>
    </footer>

    <script src="{{dirRoot}}/resources/js/lib/jquery-3.3.1.min.js"></script>
    <script src="{{dirRoot}}/resources/js/lib/jquery-ui.min.js"></script>
    <script src="{{dirRoot}}/resources/js/lib/countUp-1.8.5.min.js"></script>
    <script src="{{dirRoot}}/resources/js/lib/swiper.min.js"></script>
    <script src="{{dirRoot}}/resources/js/function.js"></script>
    <script src="{{dirRoot}}/resources/js/sudang.js"></script>

    <%If page = "main" Then %>
        <!-- 메인 : main.js -->
        <script src="{{dirRoot}}/resources/js/main.js"></script>
    <%else%>
        <!-- 메인제외 나머지 : sub.js -->
        <script src="{{dirRoot}}/resources/js/sub.js"></script>
    <%End If%>
