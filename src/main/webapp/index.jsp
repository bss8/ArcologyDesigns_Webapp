<%--   User: Boris |  Date: 12/13/2015 @ 2:35 PM --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>ADS ¯\_(ツ)_/¯</title>

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/semantic-ui/dist/semantic.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-2.1.4.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/semantic-ui/dist/semantic.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ads-custom.js"></script>

        <style id="antiClickjack">body{display:none !important;}</style>
        <script type="text/javascript">
            if (self === top) {
                var antiClickjack = document.getElementById("antiClickjack");
                antiClickjack.parentNode.removeChild(antiClickjack);
            } else {
                top.location = self.location;
            }
        </script>

    </head>
    <body>

        <jsp:include page="pages/sidebar_menu.jsp" flush="true" />
        <jsp:include page="pages/horizontal_menu.jsp" flush="true" />

        <div class="main ui container" style="margin-left: 280px !important; width: 80%;">

            <div class="ui active tab segment" data-tab="release_notes">release_notes <p style="float:right">RIGHT</p>

            </div>

            <div class="ui tab segment" data-tab="planned_features">planned_features

            </div>

            <div class="ui tab segment" data-tab="request_features">request_features

            </div>

            <div class="ui tab segment" data-tab="collective_resources">collective_resources

            </div>

            <div class="ui tab segment" data-tab="our_products">our_products

            </div>

            <div class="ui tab segment" data-tab="contact_us">contact_us

            </div>

            <div class="ui tab segment" data-tab="about_the_author">about_the_author
                <jsp:include page="pages/about_the_author.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="articles">articles

            </div>

            <div class="ui tab segment" data-tab="sample_files">sample_files

            </div>

            <div class="ui tab segment" data-tab="how_to_videos">how_to_videos

            </div>

            <div class="ui tab segment" data-tab="how_to_soundcloud">how_to_soundcloud

            </div>

            <div class="ui tab segment" data-tab="spring_rest">spring_rest

            </div>

            <div class="ui tab segment" data-tab="databases">databases

            </div>

            <div class="ui tab segment" data-tab="ui_ux">ui_ux

            </div>

            <div class="ui tab segment" data-tab="practical_rest">practical_rest
                <jsp:include page="pages/rest_table_example.jsp" flush="true" />
            </div>


            <div class="ui tab segment" data-tab="practical_js">practical_js

            </div>

            <div class="ui tab segment" data-tab="converting_bases">converting_bases

            </div>

            <div class="ui tab segment" data-tab="ieee_754">ieee_754

            </div>

            <div class="ui tab segment" data-tab="encoding_resources">encoding_resources

            </div>

            <div class="ui tab segment" data-tab="binary">binary

            </div>

            <div class="ui tab segment" data-tab="bitwise">bitwise

            </div>

            <div class="ui tab segment" data-tab="basic_converter">basic_converter

            </div>

            <div class="ui tab segment" data-tab="mips_resources">mips_resources

            </div>

            <div class="ui tab segment" data-tab="example_programs">example_programs

            </div>

            <div class="ui tab segment" data-tab="neglected_diseases">neglected_diseases

            </div>

            <div class="ui tab segment" data-tab="senescence">senescence

            </div>

            <div class="ui tab segment" data-tab="how_to_contribute">how_to_contribute

            </div>

            <div class="ui tab segment" data-tab="our_vision">our_vision

            </div>

            <div class="ui tab segment" data-tab="scientific_photos">scientific_photos

            </div>

            <div class="ui tab segment" data-tab="natural_photos">natural_photos

            </div>

            <div class="ui tab segment" data-tab="about_photos">about_photos

            </div>

            <div class="ui tab segment" data-tab="development_tutorials">development_tutorials

            </div>

            <div class="ui tab segment" data-tab="it_tutorials">it_tutorials

            </div>

            <div class="ui tab segment" data-tab="music_ambient">music_ambient

            </div>

            <div class="ui tab segment" data-tab="gaming">gaming

            </div>

            <div class="ui tab segment" data-tab="other_vids">other_vids

            </div>

            <div class="ui tab segment" data-tab="policy_analysis">policy_analysis

            </div>

            <div class="ui tab segment" data-tab="short_stories">short_stories

            </div>

            <div class="ui tab segment" data-tab="it_development">it_development

            </div>
        <jsp:include page="pages/footer.jsp" flush="true" />
    </body>
</html>


