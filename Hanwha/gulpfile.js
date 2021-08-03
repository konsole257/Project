var gulp = require('gulp');

/* ### 디렉토리 설정 */
// dev
var mainRoot = '',
	subRoot = '',
	cssRoot = '/resources';

// local
// var mainRoot = '.';
// 	subRoot = '..';
// 	cssRoot = '..';

var src = 'public/src/', // 작업 디렉토리
	dist = 'public/dist/'; // 배포 디렉토리

	src = {
		html : {
				all : [
					src + '/**/*.html'
				],
				main : src + '/*.html',
				sub : [
					src + '/**/*.html',
					'!'+src + '/*.html'
				]
			},

		css : {
				all : src+'/resources/css/**/*',
				lib : src+'/resources/css/lib/*',
				common : src+'/resources/css/common.css',
				main : src+'/resources/css/main.css',
				sub : [
						src+'/resources/css/*.css',
						src+'/resources/css/*.scss',
						'!'+src+'/resources/css/common.css',
						'!'+src+'/resources/css/main.css',
						'!'+src+'/resources/css/institute.css',
						'!'+src+'/resources/css/admin.css',
						'!'+src+'/resources/css/mobile.css'
					],
				institute : src+'/resources/css/institute.css',
				admin : src+'/resources/css/admin.css',
				mobile : src+'/resources/css/mobile.css'
			},

		fonts : {
				all : src+'/resources/fonts/**/*'
			},

		js : {
				all : src+'/resources/js/**/*'
			},

		img : {
				all : src+'/resources/images/*/*'
			}
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
	fileInclude = require('gulp-file-Include'),
	replace = require('gulp-replace');



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
				port:'8889', // PORT
				livereload:false // 자동새로고침 사용
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
});



/**
 * --------------------------------
 * HTML Build
 * --------------------------------
 */
gulp.task('htmlBuild', ['htmlClean', 'htmlSub', 'htmlMain'], function() {
	return del.sync(  // Include 폴더 삭제
		[
			dist + '/**/include/'
		]
	);
}).task('htmlMain', function () {
	return gulp
		.src(src.html.main) // HTML 경로
		.pipe(fileInclude({ // Include
				prefix: '@@',
			}))
		.pipe(replace('@@common', mainRoot)) // 경로 변경
		.pipe(replace('@@main', mainRoot)) // 경로 변경
		.pipe(gulp.dest(dist + '/')); // HTML 저장
}).task('htmlSub', function () {
	return gulp
		.src(src.html.sub) // HTML 경로
		.pipe(fileInclude({ // Include
				prefix: '@@',
			}))
		.pipe(replace('@@common', subRoot)) // 경로 변경
		.pipe(replace('@@sub', subRoot)) // 경로 변경
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
gulp.task('cssBuild', ['cssClean', 'cssSub', 'cssLib'], function () {
	return gulp
		.src([src.css.common, src.css.main, src.css.institute, src.css.admin, src.css.mobile]) // CSS 경로
		.pipe(replace('@@css', cssRoot))
		.pipe(gulp.dest(dist+'/resources/css/')); // CSS 저장
}).task('cssLib', function () {
	return gulp
		.src(src.css.lib)
		.pipe(gulp.dest(dist+'/resources/css/lib/'));
}).task('cssSub', function () {
	return gulp
		.src(src.css.sub)
		.pipe(replace('@@css', cssRoot))
		.pipe(concat('sub.css')) // sub페이지 css를 sub.css로 Merge합니다.
		.pipe(gulp.dest(dist+'/resources/css/'));
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
		// 		imagemin.jpegtran({progressive: true}),
		// 		imagemin.optipng({optimizationLevel: 5}),
		// 		imagemin.svgo({plugins: [{removeViewBox: true}]})
		// 	]))
  		.pipe(gulp.dest(dist+'/resources/images/')); // Images 저장
  }).task('imgClean', function () {
  	return del.sync(  // Images 삭제
  		[
  			dist + '/resources/images/*/*'
  		]
  	);
  });



/**
 * --------------------------------
 * Gulp Build
 * --------------------------------
 */
gulp.task('default', ['webserver', 'htmlBuild', 'cssBuild', 'fontsBuild', 'jsBuild', 'imgBuild', 'watch'], function(){
	console.log(
		'/**********************************************************\n\n'+
		'     BUILD 완료.                        \n\n'+
		'**********************************************************/'
	)
});
