<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="ru"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Путешествовать, Начни свой путь, Скидка 10-30% Off, почему выбрали нас">
    <meta name="description" content="">
    <title>Главная</title>
    <link rel="stylesheet" href="resources/css/nicepage.css" media="screen">
    <link rel="stylesheet" href="resources/css/main2.css" media="screen">
    <meta name="generator" content="Nicepage 6.15.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster:400">
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
    <script type="application/ld+json">{
        "@context": "http://schema.org",
        "@type": "Organization",
        "name": "",
        "sameAs": []
    }</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Главная">
    <meta property="og:type" content="website">
    <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
<body data-home-page="Главная.html" data-home-page-title="Главная" data-path-to-root="./" data-include-products="false" class="u-body u-overlap u-xl-mode" data-lang="ru"><header class="u-clearfix u-header" id="sec-320d"><div class="u-align-left u-clearfix u-sheet u-valign-bottom u-sheet-1">
    <div class="text-style-main">
        <c:out value="${MainInfo}" escapeXml="true"/>
    </div>
    <a href="${pageContext.request.contextPath}/logout" class="u-align-right u-border-2 u-border-black u-border-hover-custom-color-11 u-btn u-btn-round u-button-style u-none u-radius u-text-hover-white u-btn-1">Logout </a>
    <a href="#" class="u-align-left u-border-2 u-border-hover-white u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-custom-color-2 u-none u-radius u-text-body-color u-text-hover-white u-btn-2">RU </a>
    <a href="#" class="u-align-left u-border-2 u-border-hover-white u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-custom-color-2 u-none u-radius u-text-body-color u-text-hover-white u-btn-3">ENG </a>
</div></header>
<section class="u-clearfix u-image u-section-1" src="" id="sec-59a1">
    <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-text u-text-body-alt-color u-title u-text-1">Путешествовать</h1>
        <p class="u-large-text u-text u-text-body-alt-color u-text-variant u-text-2">Вот мои любимые цитаты из путешествий и приключений в сочетании с изображениями из моих путешествий по миру.</p>
    </div>
</section>
<section class="u-clearfix u-white u-section-2" id="sec-595d">
    <div class="u-clearfix u-sheet u-sheet-1">
        <div class="custom-expanded data-layout-selected u-clearfix u-gutter-0 u-layout-wrap u-layout-wrap-1">
            <div class="u-layout" style="">
                <div class="u-layout-row" style="">
                    <div class="u-align-left u-container-style u-image u-layout-cell u-left-cell u-shading u-size-20 u-size-xs-60 u-image-1" src="" data-image-width="853" data-image-height="1280">
                        <div class="u-container-layout u-container-layout-1" src="">
                            <h2 class="u-align-left u-text u-text-1">У меня есть остров </h2>
                            <a href="${pageContext.request.contextPath}/add_island_page" class="u-align-left u-border-3 u-border-hover-palette-3-base u-border-white u-btn u-btn-round u-button-style u-radius u-btn-1">Продать </a>
                        </div>
                    </div>
                    <div class="u-container-style u-image u-layout-cell u-size-20 u-image-2" data-image-width="1280" data-image-height="848">
                        <div class="u-container-layout u-container-layout-2">
                            <h2 class="u-align-left u-text u-text-body-alt-color u-text-2">Галерея островов</h2>
                            <a href="./#sec-ad85" class="u-align-left u-border-3 u-border-hover-custom-color-9 u-border-white u-btn u-btn-round u-button-style u-radius u-btn-2">Галерея </a>
                        </div>
                    </div>
                    <div class="u-align-left u-container-style u-image u-layout-cell u-right-cell u-size-20 u-size-xs-60 u-image-3" data-image-width="1280" data-image-height="641">
                        <div class="u-container-layout u-container-layout-3">
                            <h2 class="u-align-left u-text u-text-body-alt-color u-text-3">Купить остров </h2>
                            <a href="./#sec-d9bb" class="u-align-left u-border-3 u-border-hover-custom-color-10 u-border-white u-btn u-btn-round u-button-style u-radius u-btn-3">Купить </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="u-clearfix u-section-3" id="sec-ad85">
    <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-align-center u-text u-text-1" data-animation-name="customAnimationIn" data-animation-duration="1500"> Popular destinations in Africa</h2>
        <div class="u-expanded-width u-list u-list-1">
            <div class="u-repeater u-repeater-1">
                <div class="u-container-style u-image u-image-round u-list-item u-radius-25 u-repeater-item u-shading u-image-1" data-image-width="934" data-image-height="921" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500">
                    <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-1">
                        <div class="u-border-3 u-border-white u-line u-line-horizontal u-opacity u-opacity-45 u-line-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500"></div>
                        <h3 class="u-text u-text-default u-text-2" data-animation-name="customAnimationIn" data-animation-duration="1750" data-animation-delay="500"> South Africa</h3>
                        <p class="u-text u-text-default u-text-3"> Ut enim ad minim veniam</p>
                    </div>
                </div>
                <div class="u-container-style u-image u-image-round u-list-item u-radius-25 u-repeater-item u-shading u-image-2" data-image-width="1380" data-image-height="920" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500">
                    <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-2">
                        <div class="u-border-3 u-border-white u-line u-line-horizontal u-opacity u-opacity-45 u-line-2" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500"></div>
                        <h3 class="u-text u-text-default u-text-4" data-animation-name="customAnimationIn" data-animation-duration="1750" data-animation-delay="500"> Tanzania</h3>
                        <p class="u-text u-text-default u-text-5"> Ut enim ad minim veniam</p>
                    </div>
                </div>
                <div class="u-container-style u-image u-image-round u-list-item u-radius-25 u-repeater-item u-shading u-image-3" data-image-width="1380" data-image-height="920" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500">
                    <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-3">
                        <div class="u-border-3 u-border-white u-line u-line-horizontal u-opacity u-opacity-45 u-line-3" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500"></div>
                        <h3 class="u-text u-text-default u-text-6" data-animation-name="customAnimationIn" data-animation-duration="1750" data-animation-delay="500"> Botswana</h3>
                        <p class="u-text u-text-default u-text-7"> Ut enim ad minim veniam</p>
                    </div>
                </div>
                <div class="u-container-style u-image u-image-round u-list-item u-radius-25 u-repeater-item u-shading u-image-4" data-image-width="1380" data-image-height="920" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750">
                    <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-4">
                        <div class="u-border-3 u-border-white u-line u-line-horizontal u-opacity u-opacity-45 u-line-4" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500"></div>
                        <h3 class="u-text u-text-default u-text-8" data-animation-name="customAnimationIn" data-animation-duration="1750" data-animation-delay="500"> Namibia</h3>
                        <p class="u-text u-text-default u-text-9"> Ut enim ad minim veniam</p>
                    </div>
                </div>
                <div class="u-container-style u-image u-image-round u-list-item u-radius-25 u-repeater-item u-shading u-image-5" data-image-width="1380" data-image-height="920" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750">
                    <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-5">
                        <div class="u-border-3 u-border-white u-line u-line-horizontal u-opacity u-opacity-45 u-line-5" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500"></div>
                        <h3 class="u-text u-text-default u-text-10" data-animation-name="customAnimationIn" data-animation-duration="1750" data-animation-delay="500"> Kenya </h3>
                        <p class="u-text u-text-default u-text-11"> Ut enim ad minim veniam</p>
                    </div>
                </div>
                <div class="u-container-style u-image u-image-round u-list-item u-radius-25 u-repeater-item u-shading u-image-6" data-image-width="1380" data-image-height="920" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750">
                    <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-6">
                        <div class="u-border-3 u-border-white u-line u-line-horizontal u-opacity u-opacity-45 u-line-6" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500"></div>
                        <h3 class="u-text u-text-default u-text-12" data-animation-name="customAnimationIn" data-animation-duration="1750" data-animation-delay="500"> Zambia</h3>
                        <p class="u-text u-text-default u-text-13"> Ut enim ad minim veniam</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="u-clearfix u-section-4" id="sec-d9bb">
    <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-text u-text-default u-text-1">Тут можно сделать выборку</h1>
    </div>
</section>
<section class="u-clearfix u-grey-5 u-section-5" id="sec-74b3">
    <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
            <div class="u-layout">
                <div class="u-layout-row">
                    <div class="u-align-left u-container-style u-layout-cell u-left-cell u-size-30 u-layout-cell-1">
                        <div class="u-container-layout u-valign-middle u-container-layout-1">
                            <h2 class="u-text u-text-1">Эмпайр Стейт Билдинг</h2>
                            <p class="u-text u-text-2">350 5th Ave, Нью-Йорк, Нью-Йорк 1</p>
                            <p class="u-text u-text-3">1 212-736-3100</p>
                            <p class="u-text u-text-4">
                                <a href="mailto:contacts@esbnyc.com">contacts@esbnyc.com</a>
                            </p>
                        </div>
                    </div>
                    <div class="u-container-style u-layout-cell u-right-cell u-size-30 u-layout-cell-2">
                        <div class="u-container-layout u-container-layout-2">
                            <div class="u-expanded u-grey-10 u-map">
                                <div class="embed-responsive">
                                    <iframe class="embed-responsive-item" src="https://maps.google.com/maps?output=embed&amp;q=Manhattan&amp;t=m" data-map="JTdCJTIycG9zaXRpb25UeXBlJTIyJTNBJTIybWFwLXBvaW50JTIyJTJDJTIyYWRkcmVzcyUyMiUzQSUyMk1hbmhhdHRhbiUyMiUyQyUyMnpvb20lMjIlM0FudWxsJTJDJTIydHlwZUlkJTIyJTNBJTIycm9hZCUyMiUyQyUyMmxhbmclMjIlM0FudWxsJTJDJTIyYXBpS2V5JTIyJTNBbnVsbCUyQyUyMm1hcmtlcnMlMjIlM0ElNUIlNUQlN0Q="></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<footer class="u-clearfix u-footer u-palette-1-dark-3" id="sec-9702"><div class="u-clearfix u-sheet u-sheet-1">
    <h3 class="u-align-center-xl u-align-left-xs u-headline u-text u-text-body-alt-color u-text-1">
        <a href="/">Travel.co</a>
    </h3>
    <div class="u-align-left u-social-icons u-spacing-10 u-social-icons-1">
        <a class="u-social-url" target="_blank" href=""><span class="u-icon u-icon-circle u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112.2 112.2" style="undefined"><use xlink:href="#svg-5d8e"></use></svg><svg x="0px" y="0px" viewBox="0 0 112.2 112.2" enable-background="new 0 0 112.2 112.2" xml:space="preserve" id="svg-5d8e" class="u-svg-content"><path d="M75.5,28.8H65.4c-1.5,0-4,0.9-4,4.3v9.4h13.9l-1.5,15.8H61.4v45.1H42.8V58.3h-8.8V42.4h8.8V32.2 c0-7.4,3.4-18.8,18.8-18.8h13.8v15.4H75.5z"></path></svg></span>
        </a>
        <a class="u-social-url" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-twitter u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112.2 112.2" style="undefined"><use xlink:href="#svg-4b48"></use></svg><svg x="0px" y="0px" viewBox="0 0 112.2 112.2" enable-background="new 0 0 112.2 112.2" xml:space="preserve" id="svg-4b48" class="u-svg-content"><path d="M92.2,38.2c0,0.8,0,1.6,0,2.3c0,24.3-18.6,52.4-52.6,52.4c-10.6,0.1-20.2-2.9-28.5-8.2 c1.4,0.2,2.9,0.2,4.4,0.2c8.7,0,16.7-2.9,23-7.9c-8.1-0.2-14.9-5.5-17.3-12.8c1.1,0.2,2.4,0.2,3.4,0.2c1.6,0,3.3-0.2,4.8-0.7 c-8.4-1.6-14.9-9.2-14.9-18c0-0.2,0-0.2,0-0.2c2.5,1.4,5.4,2.2,8.4,2.3c-5-3.3-8.3-8.9-8.3-15.4c0-3.4,1-6.5,2.5-9.2 c9.1,11.1,22.7,18.5,38,19.2c-0.2-1.4-0.4-2.8-0.4-4.3c0.1-10,8.3-18.2,18.5-18.2c5.4,0,10.1,2.2,13.5,5.7c4.3-0.8,8.1-2.3,11.7-4.5 c-1.4,4.3-4.3,7.9-8.1,10.1c3.7-0.4,7.3-1.4,10.6-2.9C98.9,32.3,95.7,35.5,92.2,38.2z"></path></svg></span>
        </a>
        <a class="u-social-url" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-instagram u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112.2 112.2" style="undefined"><use xlink:href="#svg-a0c7"></use></svg><svg x="0px" y="0px" viewBox="0 0 112.2 112.2" enable-background="new 0 0 112.2 112.2" xml:space="preserve" id="svg-a0c7" class="u-svg-content"><path d="M55.9,32.9c-12.8,0-23.2,10.4-23.2,23.2s10.4,23.2,23.2,23.2s23.2-10.4,23.2-23.2S68.7,32.9,55.9,32.9z M55.9,69.4c-7.4,0-13.3-6-13.3-13.3c-0.1-7.4,6-13.3,13.3-13.3s13.3,6,13.3,13.3C69.3,63.5,63.3,69.4,55.9,69.4z"></path><path d="M79.7,26.8c-3,0-5.4,2.5-5.4,5.4s2.5,5.4,5.4,5.4c3,0,5.4-2.5,5.4-5.4S82.7,26.8,79.7,26.8z"></path><path d="M78.2,11H33.5C21,11,10.8,21.3,10.8,33.7v44.7c0,12.6,10.2,22.8,22.7,22.8h44.7c12.6,0,22.7-10.2,22.7-22.7 V33.7C100.8,21.1,90.6,11,78.2,11z M91,78.4c0,7.1-5.8,12.8-12.8,12.8H33.5c-7.1,0-12.8-5.8-12.8-12.8V33.7 c0-7.1,5.8-12.8,12.8-12.8h44.7c7.1,0,12.8,5.8,12.8,12.8V78.4z"></path></svg></span>
        </a>
        <a class="u-social-url" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-linkedin u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112.2 112.2" style="undefined"><use xlink:href="#svg-bfa4"></use></svg><svg x="0px" y="0px" viewBox="0 0 112.2 112.2" enable-background="new 0 0 112.2 112.2" xml:space="preserve" id="svg-bfa4" class="u-svg-content"><path d="M33.8,96.8H14.5v-58h19.3V96.8z M24.1,30.9L24.1,30.9c-6.6,0-10.8-4.5-10.8-10.1c0-5.8,4.3-10.1,10.9-10.1 S34.9,15,35.1,20.8C35.1,26.4,30.8,30.9,24.1,30.9z M103.3,96.8H84.1v-31c0-7.8-2.7-13.1-9.8-13.1c-5.3,0-8.5,3.6-9.9,7.1 c-0.6,1.3-0.6,3-0.6,4.8V97H44.5c0,0,0.3-52.6,0-58h19.3v8.2c2.6-3.9,7.2-9.6,17.4-9.6c12.7,0,22.2,8.4,22.2,26.1V96.8z"></path></svg></span>
        </a>
    </div>
    <p class="u-align-center u-text u-text-2">Travel makes one modest. You see what a tiny place you occupy in the world.</p>
</div></footer>
<section class="u-backlink u-clearfix u-grey-80">
    <p class="u-text">
        <span>This site was created with the </span>
        <a class="u-link" href="https://nicepage.com/" target="_blank" rel="nofollow">
            <span>Nicepage</span>
        </a>
    </p>
</section>

</body></html>
