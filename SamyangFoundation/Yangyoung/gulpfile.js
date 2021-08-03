var gulp = require('gulp');

/**
 * --------------------------------
 * Root Settings
 * --------------------------------
 */
// Absolute
var mainRoot = '',
	subRoot = '',
	cssRoot = '';

// Relative
// var mainRoot = '.';
// 	subRoot = '..';
// 	cssRoot = '../..';

var src = 'public/src', // 작업 디렉토리
	dist = 'public/dist'; // 배포 디렉토리

	src = {
		html : {
				all : [
                        src + '/**/*.asp',
                        src + '/**/*.html'
                    ],
				main : [
                        src + '/*.asp',
                        src + '/url.html',
                        src + '/style_guide.html'
                    ],
				sub : [
    					src + '/*/*.asp',
    					'!'+src + '/*.asp',
                        '!'+src + '/include/**/*.asp',
                        '!'+src + '/components/**/*.asp',
                        '!'+src + '/popup/**/*.asp',
                        '!'+src + '/pages/**/*.asp'
    				]
			},

		css : {
				all : src+'/resources/css/**/*',
				lib : src+'/resources/css/lib/*',
				common : src+'/resources/css/common.scss',
				main : src+'/resources/css/main.scss',
				sub : src+'/resources/css/sub.scss'
			},

		fonts : {
				all : src+'/resources/fonts/**/*'
			},

		js : {
				all : src+'/resources/js/**/*'
			},

		img : {
				all : src+'/resources/images/**/*'
			},
        download : src+'/resources/download/**'
	};



/**
 * --------------------------------
 * Plugin
 * --------------------------------
 */
var webserver = require('gulp-webserver'),
	del = require('del'),
	concat = require('gulp-concat'),
	imagemin = require('gulp-imagemin'),
	watch = require('gulp-watch'),
	sass = require('gulp-sass'),
    sassGlob = require('gulp-sass-glob'),
	fileInclude = require('gulp-file-Include'),
	replace = require('gulp-replace'),
    access = require('gulp-accessibility'),
    beautify = require('gulp-beautify');

/**
 * --------------------------------
 * Server
 * --------------------------------
 */
gulp.task('webserver', function () {
	gulp
		.src(dist) // ROOT설정
		.pipe(webserver({
				host:'114.52.63.67', // HOST
				port:'1111', // PORT
				open: true, // 브라우져 자동 실행
				livereload:true // 자동새로고침 사용
			}));
});



/**
 * --------------------------------
 * Watch
 * --------------------------------
 */
gulp.task('watch', function () { // 파일 변경체크
	gulp.watch(src.html.all, ['htmlBuild']);
	gulp.watch(src.css.all, ['cssBuild']);
	gulp.watch(src.fonts.all, ['fontsBuild']);
	gulp.watch(src.js.all, ['jsBuild']);
	gulp.watch(src.img.all, ['imgBuild']);
    gulp.watch(src.download.all, ['downloadBuild']);
});



/**
 * --------------------------------
 * HTML Build
 * --------------------------------
 */
gulp.task('htmlBuild', ['htmlClean', 'htmlSub', 'htmlMain'], function() {
    // return gulp
    //     .src(src.html.main)
    //     .pipe(access({
    //         accessibilityLevel: 'WCAG2A',
    //         force: true,
    //         reportLevels: {
    //             notice: false,
    //             warning: false,
    //             error: true
    //         }
    //     }))
    //     .on('error', console.log)
    //     // .pipe(access.report({
    //     //     reportType: 'txt',
    //     //     // reportLocation: dist + '/'
    //     // }))
    //     // .pipe(rename({
    //     //   extname: '.txt'
    //     // }))
    //     // .pipe(gulp.dest(dist + '/'));
}).task('htmlMain', function () {
	return gulp
		.src(src.html.main) // HTML 경로
		.pipe(fileInclude({ // Include
				prefix: '{{',
                suffix: '}}',
                basepath: './public/src/',
                context: {
                    tt: '@file'
                }
			}))
		.pipe(replace('{{dirRoot}}', mainRoot)) // 경로 변경
        .pipe(beautify.html({ indent_size: 4 })) // beautify
		.pipe(gulp.dest(dist + '/')); // HTML 저장
}).task('htmlSub', function () {
	return gulp
		.src(src.html.sub) // HTML 경로
		.pipe(fileInclude({ // Include
                prefix: '{{',
                suffix: '}}',
                basepath: './public/src/'
			}))
		.pipe(replace('{{dirRoot}}', subRoot)) // 경로 변경
        .pipe(beautify.html({ indent_size: 4 })) // beautify
		.pipe(gulp.dest(dist + '/')); // HTML 저장
}).task('htmlClean', function () {
	return del.sync(  // HTML 삭제
		[
			dist + '/**/*',
			'!'+dist + '/resources/**'
		]
	);
});



/**
 * --------------------------------
 * CSS Build
 * --------------------------------
 */
gulp.task('cssBuild', ['cssClean', 'cssSub', 'cssLib', 'cssMain'], function () {
	return gulp
		.src(src.css.common) // CSS 경로
        .pipe(sassGlob())
        .pipe(sass({outputStyle: 'compact'}).on('error', sass.logError)) // SASS -> CSS 컴파일
		.pipe(replace('{{dirRoot}}', cssRoot))
        // .pipe(concat('common.css')) // css를 *.css로 Merge합니다.
		.pipe(gulp.dest(dist+'/resources/css/')); // CSS 저장
}).task('cssMain', function () {
	return gulp
		.src(src.css.main) // CSS 경로
        .pipe(sassGlob())
        .pipe(sass({outputStyle: 'compact'}).on('error', sass.logError)) // SASS -> CSS 컴파일
		.pipe(replace('{{dirRoot}}', cssRoot))
        // .pipe(concat('main.css')) // css를 *.css로 Merge합니다.
		.pipe(gulp.dest(dist+'/resources/css/')); // CSS 저장
}).task('cssSub', function () {
	return gulp
		.src(src.css.sub)
        .pipe(sassGlob())
        .pipe(sass({outputStyle: 'compact'}).on('error', sass.logError)) // SASS -> CSS 컴파일
		.pipe(replace('{{dirRoot}}', cssRoot))
		// .pipe(concat('sub.css')) // css를 *.css로 Merge합니다.
		.pipe(gulp.dest(dist+'/resources/css/'));
}).task('cssLib', function () {
	return gulp
		.src(src.css.lib)
		.pipe(gulp.dest(dist+'/resources/css/lib/'));
}).task('cssClean', function () {
	return del.sync(  // CSS 삭제
		[
			dist + '/resources/css/**/*'
		]
	);
});



/**
 * --------------------------------
 * Fonts Build
 * --------------------------------
 */
 gulp.task('fontsBuild', ['fontsClean'], function () {
 	return gulp
 		.src(src.fonts.all) // Fonts 경로
 		.pipe(gulp.dest(dist+'/resources/fonts/')); // Fonts 저장
 }).task('fontsClean', function () {
 	return del.sync(  // Fonts 삭제
 		[
 			dist + '/resources/fonts/**/*'
 		]
 	);
 });



/**
 * --------------------------------
 * JS Build
 * --------------------------------
 */
 gulp.task('jsBuild', ['jsClean'], function () {
 	return gulp
 		.src(src.js.all) // JS 경로
        .pipe(beautify.js({ indent_size: 4 })) // beautify
 		.pipe(gulp.dest(dist+'/resources/js/')); // JS 저장
 }).task('jsClean', function () {
 	return del.sync(  // JS 삭제
 		[
 			dist + '/resources/js/**/*'
 		]
 	);
 });



 /**
  * --------------------------------
  * Images Build
  * --------------------------------
  */
  gulp.task('imgBuild', ['imgClean'], function () {
  	return gulp
  		.src(src.img.all) // Images 경로
		// .pipe(imagemin([  // Images Optimize
		// 		imagemin.gifsicle({interlaced: true}),
		// 		imagemin.mozjpeg({progressive: true}),
		// 		imagemin.optipng({optimizationLevel: 5}),
		// 		imagemin.svgo({
		// 			plugins: [
		// 				{removeViewBox: true},
		// 				{cleanupIDs: false}
		// 			]
		// 		})
		// 	]))
  		.pipe(gulp.dest(dist+'/resources/images/')); // Images 저장
  }).task('imgClean', function () {
  	return del.sync(  // Images 삭제
  		[
  			dist + '/resources/images/**/*'
  		]
  	);
  });

  /**
   * --------------------------------
   * Download Build
   * --------------------------------
   */
   gulp.task('downloadBuild', ['downloadClean'], function () {
       return gulp
           .src(src.download) // Images 경로
       // .pipe(imagemin([  // Images Optimize
       // 		imagemin.gifsicle({interlaced: true}),
       // 		imagemin.mozjpeg({progressive: true}),
       // 		imagemin.optipng({optimizationLevel: 5}),
       // 		imagemin.svgo({
       // 			plugins: [
       // 				{removeViewBox: true},
       // 				{cleanupIDs: false}
       // 			]
       // 		})
       // 	]))
           .pipe(gulp.dest(dist+'/resources/download/')); // Images 저장
   }).task('downloadClean', function () {
       return del.sync(  // Images 삭제
           [
               dist + '/resources/download/**'
           ]
       );
   });


/**
 * --------------------------------
 * Gulp Build
 * --------------------------------
 */
gulp.task('default', ['webserver', 'htmlBuild', 'cssBuild', 'fontsBuild', 'jsBuild', 'imgBuild', 'downloadBuild', 'watch'], function(){
	console.log(
		'/**********************************************************\n\n'+
		'     Build 완료.                        \n\n'+
		'**********************************************************/'
	)
});
