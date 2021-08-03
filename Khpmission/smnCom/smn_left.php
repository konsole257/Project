<div id="left">
    <ul>
        <li><a href="/"><img src="/images/common/menu01.gif" alt="홈"></a></li>
        <li <?php if ($dirName === '/aboutus') { ?>class="active"<?php } ?>>
            <a href="/aboutus/about_01.php">
                <img src="/images/common/menu02<?php if (strpos($dirName, "aboutus") !== false) { ?>_on<?php } ?>.gif" alt="선교회소개 메뉴">
            </a>

            <ul>
                <li>
                    <a href="/aboutus/about_01.php">
                        <img src="/images/common/menu02_01<?php if (strpos($fileName, "about_01") !== false) { ?>_on<?php } ?>.gif" alt="선교방침">
                    </a>
                </li>
                <li>
                    <a href="/aboutus/about_02.php">
                        <img src="/images/common/menu02_02<?php if (strpos($fileName, "about_02") !== false) { ?>_on<?php } ?>.gif" alt="선교회연혁">
                    </a>
                </li>
                <li>
                    <a href="/aboutus/about_03.php">
                        <img src="/images/common/menu02_03<?php if (strpos($fileName, "about_03") !== false) { ?>_on<?php } ?>.gif" alt="규약">
                    </a>
                </li>
                <li <?php if (strpos($fileName, "about_04") !== false) { ?>class="active"<?php } ?>>
                    <a href="/aboutus/about_04_01.php">
                        <img src="/images/common/menu02_04<?php if (strpos($fileName, "about_04") !== false) { ?>_on<?php } ?>.gif" alt="성민복음사">
                    </a>

                    <ul>
                        <li>
                            <a href="/aboutus/about_04_01.php">
                                <img src="/images/common/menu02_04_01<?php if (strpos($fileName, "about_04_01") !== false) { ?>_on<?php } ?>.gif" alt="등록증">
                            </a>
                        </li>
                        <li>
                            <a href="/aboutus/about_04_02.php">
                                <img src="/images/common/menu02_04_02<?php if (strpos($fileName, "about_04_02") !== false) { ?>_on<?php } ?>.gif" alt="출간된 책">
                            </a>
                        </li>
                        <li>
                            <a href="/aboutus/about_04_03.php">
                                <img src="/images/common/menu02_04_03<?php if (strpos($fileName, "about_04_03") !== false) { ?>_on<?php } ?>.gif" alt="출판예정">
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- <li><a href="/aboutus/about_05.php"><img src="/images/common/menu02_05.gif" alt="성민중앙교회"></a></li> -->
                <li>
                    <a href="/aboutus/about_06.php">
                        <img src="/images/common/menu02_06<?php if (strpos($fileName, "about_06") !== false) { ?>_on<?php } ?>.gif" alt="회장 정요한 목사">
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="/vod/list_2019.php">
                <img src="/images/common/menu03<?php if (strpos($fileName, "list_2019") !== false) { ?>_on<?php } ?>.gif" alt="인생의 목적 메뉴">
            </a>
        </li>
        <li <?php if (strpos($dirName, "movie") !== false) { ?>class="active"<?php } ?>>
            <a href="/movie/movie_02.php">
                <img src="/images/common/menu09<?php if (strpos($dirName, "movie") !== false) { ?>_on<?php } ?>.gif" alt="십자가의 길 메뉴">
            </a>

            <ul>
                <li>
                    <a href="/movie/movie_04_2019.php">
                        <img src="/images/common/menu09_01<?php if (strpos($fileName, "movie_04_2019") !== false) { ?>_on<?php } ?>.gif" alt="Audio&amp;Book">
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="/ebook/book_2019.php">
                <img src="/images/common/menu04<?php if (strpos($dirName, "ebook") !== false) { ?>_on<?php } ?>.gif" alt="성서영해집 메뉴">
            </a>
        </li>
        <li>
            <a href="/bbs/archive.php">
                <img src="/images/common/menu08<?php if (strpos($fileName, "archive") !== false) { ?>_on<?php } ?>.gif" alt="자료실 메뉴">
            </a>
        </li>
        <li>
            <a href="/bbs/board.php">
                <img src="/images/common/menu06<?php if (strpos($fileName, "board") !== false) { ?>_on<?php } ?>.gif" alt="게시판 메뉴">
            </a>
        </li>
    </ul>
</div>
