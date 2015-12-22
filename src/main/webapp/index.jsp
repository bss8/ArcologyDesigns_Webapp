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

            <div class="ui active tab segment" data-tab="release_notes" style="margin-top: 14px;">
                <h1 class="siteHeaderRed">Converting From Base-n To Base-n <span style="float:right">RIGHT</span></h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/release_notes.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="planned_features">
                <h1 class="siteHeaderRed">Features Planned for Future Releases</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/planned_features.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="request_features">
                <h1 class="siteHeaderRed">Request a New Site Feature</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/request_features.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="collective_resources">
                <h1 class="siteHeaderRed">Collective Resources</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/collective_resources.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="our_products">
                <h1 class="siteHeaderRed">Our Products</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/our_products.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="contact_us">
                <h1 class="siteHeaderRed">Contact Us (By 'Us' I mean me)</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/contact_us.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="about_the_author">
                <h1 class="siteHeaderRed">About the Author - Boris</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/about_the_author.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="articles">
                <h1 class="siteHeaderRed">Articles</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/articles.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="sample_files">
                <h1 class="siteHeaderRed">Sample Files</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/sample_files.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="how_to_videos">
                <h1 class="siteHeaderRed">How to save video tutorials for later viewing?</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/how_to_videos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="how_to_soundcloud">
                <h1 class="siteHeaderRed">How to download our tracks?</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/how_to_soundcloud.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="spring_rest">
                <h1 class="siteHeaderRed">RESTful Web Services w/ Spring</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/spring_rest.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="databases">
                <h1 class="siteHeaderRed">All About Databases & SQL</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/databases.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="ui_ux">ui_ux
                <jsp:include page="pages/ui_ux.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="practical_rest">
                <h1 class="siteHeaderRed">Getting Data via RESTful Call from MS SQL DB</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/rest_table_example.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="practical_js">
                <h1 class="siteHeaderRed">Pure JavaScript Example - Chess Game</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/practical_js.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="converting_bases">
                <h1 class="siteHeaderRed">Converting From Base-n To Base-n</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/converting_bases.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="ieee_754">
                <h1 class="siteHeaderRed">IEEE 754 Single and Double Precision</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/ieee_754.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="encoding_resources">
                <h1 class="siteHeaderRed">Encoding Related Resources</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/encoding_resources.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="binary">
                <h1 class="siteHeaderRed">All About Binary: +-*/ and more</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/binary.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="bitwise">
                <h1 class="siteHeaderRed">The Importance of Bitwise Operators</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/bitwise.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="basic_converter">
                <h1 class="siteHeaderRed">Basic C++ to MIPS32 Converter</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/basic_converter.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="mips_resources">
                <h1 class="siteHeaderRed">MIPS32 Resources</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/mips_resources.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="example_programs">
                <h1 class="siteHeaderRed">MIPS Example Programs</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/example_programs.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="neglected_diseases">
                <h1 class="siteHeaderRed">Neglected Diseases</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/neglected_diseases.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="senescence">
                <h1 class="siteHeaderRed">Senescence</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/senescence.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="how_to_contribute">
                <h1 class="siteHeaderRed">How to Contribute to Research</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/how_to_contribute.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="our_vision">
                <h1 class="siteHeaderRed">ADS' Goal</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/our_vision.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="scientific_photos">
                <h1 class="siteHeaderRed">Scientific Photos - Microscopy & Research</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/scientific_photos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="natural_photos">
                <h1 class="siteHeaderRed">Natural and Artistic Photography</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/natural_photos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="about_photos">
                <h1 class="siteHeaderRed">About Equipment and Technique</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/about_photos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="development_tutorials">
                <h1 class="siteHeaderRed">Development Tutorials</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/development_tutorials.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="it_tutorials">
                <h1 class="siteHeaderRed">General IT Tutorials</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/it_tutorials.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="music_ambient">
                <h1 class="siteHeaderRed">Music and Ambient Sounds</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/music_ambient.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="gaming">
                <h1 class="siteHeaderRed">Gaming</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/gaming.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="other_vids">
                <h1 class="siteHeaderRed">Miscellaneous Videos</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/other_vids.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="policy_analysis">
                <h1 class="siteHeaderRed">Policy Analysis</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/policy_analysis.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="short_stories">
                <h1 class="siteHeaderRed">Short Stories</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/short_stories.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="it_development">
                <h1 class="siteHeaderRed">Development & IT Blog</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/it_development.jsp" flush="true" />
            </div>
        <jsp:include page="pages/footer.jsp" flush="true" />
    </body>
</html>


