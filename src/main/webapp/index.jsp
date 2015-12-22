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
                <h1 style="color: #B81D18">Converting From Base-n To Base-n <span style="float:right">RIGHT</span></h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/release_notes.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="planned_features">
                <h1 style="color: #B81D18">Features Planned for Future Releases</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/planned_features.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="request_features">
                <h1 style="color: #B81D18">Request a New Site Feature</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/request_features.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="collective_resources">
                <h1 style="color: #B81D18">Collective Resources</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/collective_resources.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="our_products">
                <h1 style="color: #B81D18">Our Products</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/our_products.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="contact_us">
                <h1 style="color: #B81D18">Contact Us (By 'Us' I mean me)</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/contact_us.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="about_the_author">
                <h1 style="color: #B81D18">About the Author - Boris</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/about_the_author.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="articles">
                <h1 style="color: #B81D18">Articles</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/articles.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="sample_files">
                <h1 style="color: #B81D18">Sample Files</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/sample_files.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="how_to_videos">
                <h1 style="color: #B81D18">How to save video tutorials for later viewing?</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/how_to_videos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="how_to_soundcloud">
                <h1 style="color: #B81D18">How to download our tracks?</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/how_to_soundcloud.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="spring_rest">
                <h1 style="color: #B81D18">RESTful Web Services w/ Spring</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/spring_rest.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="databases">
                <h1 style="color: #B81D18">All About Databases & SQL</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/databases.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="ui_ux">ui_ux
                <jsp:include page="pages/ui_ux.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="practical_rest">
                <h1 style="color: #B81D18">Getting Data via RESTful Call from MS SQL DB</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/rest_table_example.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="practical_js">
                <h1 style="color: #B81D18">Pure JavaScript Example - Chess Game</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/practical_js.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="converting_bases">
                <h1 style="color: #B81D18">Converting From Base-n To Base-n</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/converting_bases.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="ieee_754">
                <h1 style="color: #B81D18">IEEE 754 Single and Double Precision</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/ieee_754.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="encoding_resources">
                <h1 style="color: #B81D18">Encoding Related Resources</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/encoding_resources.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="binary">
                <h1 style="color: #B81D18">All About Binary: +-*/ and more</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/binary.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="bitwise">
                <h1 style="color: #B81D18">The Importance of Bitwise Operators</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/bitwise.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="basic_converter">
                <h1 style="color: #B81D18">Basic C++ to MIPS32 Converter</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/basic_converter.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="mips_resources">
                <h1 style="color: #B81D18">MIPS32 Resources</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/mips_resources.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="example_programs">
                <h1 style="color: #B81D18">MIPS Example Programs</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/example_programs.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="neglected_diseases">
                <h1 style="color: #B81D18">Neglected Diseases</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/neglected_diseases.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="senescence">
                <h1 style="color: #B81D18">Senescence</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/senescence.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="how_to_contribute">
                <h1 style="color: #B81D18">How to Contribute to Research</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/how_to_contribute.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="our_vision">
                <h1 style="color: #B81D18">ADS' Goal</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/our_vision.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="scientific_photos">
                <h1 style="color: #B81D18">Scientific Photos - Microscopy & Research</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/scientific_photos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="natural_photos">
                <h1 style="color: #B81D18">Natural and Artistic Photography</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/natural_photos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="about_photos">
                <h1 style="color: #B81D18">About Equipment and Technique</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/about_photos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="development_tutorials">
                <h1 style="color: #B81D18">Development Tutorials</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/development_tutorials.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="it_tutorials">
                <h1 style="color: #B81D18">General IT Tutorials</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/it_tutorials.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="music_ambient">
                <h1 style="color: #B81D18">Music and Ambient Sounds</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/music_ambient.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="gaming">
                <h1 style="color: #B81D18">Gaming</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/gaming.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="other_vids">
                <h1 style="color: #B81D18">Miscellaneous Videos</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/other_vids.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="policy_analysis">
                <h1 style="color: #B81D18">Policy Analysis</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/policy_analysis.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="short_stories">
                <h1 style="color: #B81D18">Short Stories</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/short_stories.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="it_development">
                <h1 style="color: #B81D18">Development & IT Blog</h1>
                <hr class="horizontal" />
                <br/>
                <jsp:include page="pages/it_development.jsp" flush="true" />
            </div>
        <jsp:include page="pages/footer.jsp" flush="true" />
    </body>
</html>


