<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html>

    <head>
        <meta charset=?utf-8?>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
        <meta name="description" content="Free tutorials and tools on the ArcologyDesigns site! Convert from any
                to any base, work with databases, UI design, Java, assembly and more. Visit today!">

        <title><tiles:getAsString name="title" /></title>

        <link rel="author" href="https://plus.google.com/+ArcologydesignsStudio"/>
        <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/semantic-ui/dist/semantic.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">




        <style id="antiClickjack">body{display:none !important;}</style>
        <script type="text/javascript">
            var adblockInterference = true;
            if (self === top) {
                var antiClickjack = document.getElementById("antiClickjack");
                antiClickjack.parentNode.removeChild(antiClickjack);
            } else {
                top.location = self.location;
            }
        </script>

    </head>

    <body>
        <%--<header id="header">--%>
            <%--<tiles:insertAttribute name="header" />--%>
        <%--</header>--%>

        <%--<section id="sidemenu">--%>
            <%--<tiles:insertAttribute name="menu" />--%>
        <%--</section>--%>
        <jsp:include page="/pages/0_core/sidebar_menu.jsp" flush="true" />
        <jsp:include page="/pages/0_core/horizontal_menu.jsp" flush="true" />

        <div class="main ui container" style="margin-left: 280px !important; width: auto; padding-right: 40px;">
            <div class="ui tab segment active" data-tab="release_notes" style="margin-top: 14px;">

                <section id="site-content">
                    <tiles:insertAttribute name="body" />
                </section>
            </div>
        </div>

        <footer id="footer">
            <tiles:insertAttribute name="footer" />
        </footer>
    </body>

    <script>
        if( window.adblockInterference === undefined ){
            // adblocker detected, show fallback
            alert("For all site functionality to work, please consider " +
                "WHITELISTING this domain or DISABLING AdBlock. \n");
        }
    </script>

    <jsp:include page="/pages/modals/initial_settings.jsp" flush="true" />

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-2.1.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.address.js"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <script src="https://apis.google.com/js/api.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/semantic-ui/dist/semantic.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</html>