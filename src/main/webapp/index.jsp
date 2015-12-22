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

            <div class="ui active tab segment" data-tab="release_notes" style="margin-top: 14px;">release_notes <p style="float:right">RIGHT</p>
                <jsp:include page="pages/release_notes.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="planned_features">planned_features
                <jsp:include page="pages/planned_features.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="request_features">request_features
                <jsp:include page="pages/request_features.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="collective_resources">collective_resources
                <jsp:include page="pages/collective_resources.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="our_products">our_products
                <jsp:include page="pages/our_products.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="contact_us">contact_us
                <jsp:include page="pages/contact_us.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="about_the_author">about_the_author
                <jsp:include page="pages/about_the_author.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="articles">articles
                <jsp:include page="pages/articles.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="sample_files">sample_files
                <jsp:include page="pages/sample_files.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="how_to_videos">how_to_videos
                <jsp:include page="pages/how_to_videos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="how_to_soundcloud">how_to_soundcloud
                <jsp:include page="pages/how_to_soundcloud.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="spring_rest">spring_rest
                <jsp:include page="pages/spring_rest.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="databases">databases
                <jsp:include page="pages/databases.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="ui_ux">ui_ux
                <jsp:include page="pages/ui_ux.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="practical_rest">practical_rest
                <jsp:include page="pages/rest_table_example.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="practical_js">practical_js
                <jsp:include page="pages/practical_js.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="converting_bases">converting_bases
                <jsp:include page="pages/converting_bases.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="ieee_754">ieee_754
                <jsp:include page="pages/ieee_754.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="encoding_resources">encoding_resources
                <jsp:include page="pages/encoding_resources.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="binary">binary
                <jsp:include page="pages/binary.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="bitwise">bitwise
                <jsp:include page="pages/bitwise.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="basic_converter">basic_converter
                <jsp:include page="pages/basic_converter.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="mips_resources">mips_resources
                <jsp:include page="pages/mips_resources.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="example_programs">example_programs
                <jsp:include page="pages/example_programs.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="neglected_diseases">neglected_diseases
                <jsp:include page="pages/neglected_diseases.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="senescence">senescence
                <jsp:include page="pages/senescence.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="how_to_contribute">how_to_contribute
                <jsp:include page="pages/how_to_contribute.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="our_vision">our_vision
                <jsp:include page="pages/our_vision.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="scientific_photos">scientific_photos
                <jsp:include page="pages/scientific_photos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="natural_photos">natural_photos
                <jsp:include page="pages/natural_photos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="about_photos">about_photos
                <jsp:include page="pages/about_photos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="development_tutorials">development_tutorials
                <jsp:include page="pages/development_tutorials.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="it_tutorials">it_tutorials
                <jsp:include page="pages/it_tutorials.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="music_ambient">music_ambient
                <jsp:include page="pages/music_ambient.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="gaming">gaming
                <jsp:include page="pages/gaming.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="other_vids">other_vids
                <jsp:include page="pages/other_vids.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="policy_analysis">policy_analysis
                <jsp:include page="pages/policy_analysis.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="short_stories">short_stories
                <jsp:include page="pages/short_stories.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="it_development">it_development
                <jsp:include page="pages/it_development.jsp" flush="true" />
            </div>
        <jsp:include page="pages/footer.jsp" flush="true" />
    </body>
</html>


