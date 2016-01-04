<%--   User: Boris |  Date: 12/13/2015 @ 2:35 PM --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Arco ¯\_(ツ)_/¯ Land</title>

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/semantic-ui/dist/semantic.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-2.1.4.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/semantic-ui/dist/semantic.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/app.js"></script>


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

    <%-- Utilizes custom alert code and functionality
         TODO: Determine if worth effort and if anything is gainded by this if modals are available --%>
    <%--<input type="button" value = "Test the alert" onclick="alert('Alert this pages');" style="margin-left:280px;"/>--%>

        <jsp:include page="pages/0_core/sidebar_menu.jsp" flush="true" />
        <jsp:include page="pages/0_core/horizontal_menu.jsp" flush="true" />

        <div class="main ui container" style="margin-left: 280px !important; width: auto; padding-right: 40px;">

            <div class="ui tab segment active" data-tab="release_notes" style="margin-top: 14px;">
                <h1 class="siteHeaderColor">Release Notes for Current Version 0.1</h1>
                <hr />
               
                <jsp:include page="pages/release_notes.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="planned_features">
                <h1 class="siteHeaderColor">Features Planned for Future Releases</h1>
                <hr />
                
                <jsp:include page="pages/planned_features.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="request_features">
                <h1 class="siteHeaderColor">Request a New Site Feature</h1>
                <hr />
               
                <jsp:include page="pages/request_features.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="collective_resources">
                <h1 class="siteHeaderColor">Collective Resources</h1>
                <hr />
               
                <jsp:include page="pages/collective_resources.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="our_products">
                <h1 class="siteHeaderColor">Our Products</h1>
                <hr />
               
                <jsp:include page="pages/our_products.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="contact_us">
                <h1 class="siteHeaderColor">Contact Us (By 'Us' I mean me)</h1>
                <hr />
               
                <jsp:include page="pages/contact_us.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="about_the_author">
                <h1 class="siteHeaderColor">About the Author - Boris</h1>
                <hr />
               
                <jsp:include page="pages/about_the_author.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="articles">
                <h1 class="siteHeaderColor">Articles</h1>
                <hr />
               
                <jsp:include page="pages/articles.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="sample_files">
                <h1 class="siteHeaderColor">Sample Files</h1>
                <hr />
               
                <jsp:include page="pages/sample_files.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="how_to_videos">
                <h1 class="siteHeaderColor">How to save video tutorials for later viewing?</h1>
                <hr />
               
                <jsp:include page="pages/how_to_videos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="spring_rest">
                <h1 class="siteHeaderColor">RESTful Web Services w/ Spring</h1>
                <hr />
               
                <jsp:include page="pages/spring_rest.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="databases">
                <h1 class="siteHeaderColor">All About Databases & SQL</h1>
                <hr />
               
                <jsp:include page="pages/databases.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="ui_ux">
                <h1 class="siteHeaderColor">User Interface and Experience</h1>
                <hr />

                <jsp:include page="pages/ui_ux.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="build_automation">
                <h1 class="siteHeaderColor">Build Automation Tools</h1>
                <hr />

                <jsp:include page="pages/build_automation.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="algorithms">
                <h1 class="siteHeaderColor">Algorithms</h1>
                <hr />

                <jsp:include page="pages/algorithms.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="practical_rest">
                <h1 class="siteHeaderColor">Getting Data via RESTful Call from MS SQL DB</h1>
                <hr />
               
                <jsp:include page="pages/rest_table_example.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="practical_js">
                <h1 class="siteHeaderColor">Pure JavaScript Example - Chess Game</h1>
                <hr />
               
                <jsp:include page="pages/practical_js.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="practical_java">
                <h1 class="siteHeaderColor">Java Example</h1>
                <hr />

                <jsp:include page="pages/practical_java.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="practical_cpp">
                <h1 class="siteHeaderColor">C++ Example</h1>
                <hr />

                <jsp:include page="pages/practical_cpp.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="converting_bases">
                <h1 class="siteHeaderColor">Converting From Base-n To Base-n</h1>
                <hr />
               
                <jsp:include page="pages/converting_bases.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="ieee_754">
                <h1 class="siteHeaderColor">IEEE 754 Single and Double Precision</h1>
                <hr />
               
                <jsp:include page="pages/ieee_754.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="encoding_resources">
                <h1 class="siteHeaderColor">Encoding Related Resources</h1>
                <hr />
               
                <jsp:include page="pages/encoding_resources.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="binary">
                <h1 class="siteHeaderColor">All About Binary: +-*/ and more</h1>
                <hr />
               
                <jsp:include page="pages/binary.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="bitwise">
                <h1 class="siteHeaderColor">The Importance of Bitwise Operators</h1>
                <hr />
               
                <jsp:include page="pages/bitwise.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="basic_converter">
                <h1 class="siteHeaderColor">Basic C++ to MIPS32 Converter</h1>
                <hr />
               
                <jsp:include page="pages/basic_converter.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="mips_resources">
                <h1 class="siteHeaderColor">MIPS32 Resources</h1>
                <hr />
               
                <jsp:include page="pages/mips_resources.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="example_programs">
                <h1 class="siteHeaderColor">MIPS Example Programs</h1>
                <hr />
               
                <jsp:include page="pages/example_programs.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="web_applications">
                <h1 class="siteHeaderColor">Web Applications Design</h1>
                <hr />

                <jsp:include page="pages/neglected_diseases.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="client_applications">
                <h1 class="siteHeaderColor">Client Applications</h1>
                <hr />

                <jsp:include page="pages/client_applications.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="design_philosophy">
                <h1 class="siteHeaderColor">My Design Philosophy</h1>
                <hr />

                <jsp:include page="pages/design_philosophy.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="architecture_resources">
                <h1 class="siteHeaderColor">Architecture Related Resources</h1>
                <hr />

                <jsp:include page="pages/architecture_resources.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="java_stack">
                <h1 class="siteHeaderColor">J2EE Technology Stack</h1>
                <hr />

                <jsp:include page="pages/java_stack.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="dot_net_stack">
                <h1 class="siteHeaderColor">.NET Technology Stack</h1>
                <hr />

                <jsp:include page="pages/dot_net_stack.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="app_vs_site">
                <h1 class="siteHeaderColor">How is a website different from a web application?</h1>
                <hr />

                <jsp:include page="pages/app_vs_site.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="web_app_resources">
                <h1 class="siteHeaderColor">Resources for Web Apps</h1>
                <hr />

                <jsp:include page="pages/web_app_resources.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="neglected_diseases">
                <h1 class="siteHeaderColor">Neglected Diseases</h1>
                <hr />
               
                <jsp:include page="pages/neglected_diseases.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="senescence">
                <h1 class="siteHeaderColor">Senescence</h1>
                <hr />
               
                <jsp:include page="pages/senescence.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="how_to_contribute">
                <h1 class="siteHeaderColor">How to Contribute to Research</h1>
                <hr />
               
                <jsp:include page="pages/how_to_contribute.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="our_vision">
                <h1 class="siteHeaderColor">ADS' Goal</h1>
                <hr />
               
                <jsp:include page="pages/our_vision.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="scientific_photos">
                <h1 class="siteHeaderColor">Scientific Photos - Microscopy & Research</h1>
                <hr />
               
                <jsp:include page="pages/scientific_photos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="natural_photos">
                <h1 class="siteHeaderColor">Natural and Artistic Photography</h1>
                <hr />
               
                <jsp:include page="pages/natural_photos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="about_photos">
                <h1 class="siteHeaderColor">About Equipment and Technique</h1>
                <hr />
               
                <jsp:include page="pages/about_photos.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="development_tutorials">
                <h1 class="siteHeaderColor">Development Tutorials</h1>
                <hr />
               
                <jsp:include page="pages/development_tutorials.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="it_tutorials">
                <h1 class="siteHeaderColor">General IT Tutorials</h1>
                <hr />
               
                <jsp:include page="pages/it_tutorials.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="music_ambient">
                <h1 class="siteHeaderColor">Music and Ambient Sounds</h1>
                <hr />
               
                <jsp:include page="pages/music_ambient.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="gaming">
                <h1 class="siteHeaderColor">Gaming</h1>
                <hr />
               
                <jsp:include page="pages/gaming.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="other_vids">
                <h1 class="siteHeaderColor">Miscellaneous Videos</h1>
                <hr />
               
                <jsp:include page="pages/other_vids.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="policy_analysis">
                <h1 class="siteHeaderColor">Policy Analysis</h1>
                <hr />
               
                <jsp:include page="pages/policy_analysis.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="short_stories">
                <h1 class="siteHeaderColor">Short Stories</h1>
                <hr />
               
                <jsp:include page="pages/short_stories.jsp" flush="true" />
            </div>

            <div class="ui tab segment" data-tab="it_development">
                <h1 class="siteHeaderColor">Development & IT Blog</h1>
                <hr />
               
                <jsp:include page="pages/it_development.jsp" flush="true" />
            </div>

        <jsp:include page="pages/0_core/footer.jsp" flush="true" />

    </body>

    <script>
        if( window.adblockInterference === undefined ){
            // adblocker detected, show fallback
            alert("There are NO ADS on this site (I hate ads)\n" +
                    "But AdBlock disables JavaScript files. \n" +
                    "For site functionality to work, please WHITELIST this domain or DISABLE AdBlock on this site. \n" +
                    "Again...NOOO ADS HERE, EVER!");
        }
    </script>

    <jsp:include page="pages/modals/initial_settings.jsp" flush="true" />
</html>


