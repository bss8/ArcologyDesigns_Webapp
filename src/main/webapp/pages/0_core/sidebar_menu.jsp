<%--
  User: Boris
  Date: 12/19/2015 @ 10:57 PM
--%>


<%-- Add class 'tabular' to create a 3-sided border around tab items. --%>
<%-- TODO: dimmmer is broken when 'tabular' class is added, the sidebar darkens as well --%>

<div id="adsMainSidebar" class="ui sidebar vertical inverted demo menu left overlay visible">

    <div class="item">
        <a class="ui logo icon image" >
            <img style="border-radius: 20%; "
                    src="${pageContext.request.contextPath}/resources/images/arco_logo_s.jpg">
        </a>
    </div>

    <a class="item" >
        <b>Site Content &nbsp;&nbsp;&nbsp;&nbsp;<i class="pointing down icon"></i></b>
    </a>

    <div class="item">
        <div class="header">New in 1.0</div>

        <div class="menu">
            <a class="active inverted  item"
               href="${pageContext.request.contextPath}/">Release Notes</a>
            <a class="blue item"
               href="${pageContext.request.contextPath}/sitefeatures">Site Features</a>
            <a class="green item"
               href="${pageContext.request.contextPath}/requestfeatures">Request Feature</a>
        </div>
    </div>

    <div class="item">
        <div class="header">About ADS &nbsp;&nbsp;&nbsp;&nbsp;<i class="mail outline icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="collective_resources">Collective Resources</a>
            <a class="blue item" data-tab="our_products">Our Products</a>
            <a class="green item" data-tab="contact_us">Contact Us (+ tutorial)</a>
            <a class="violet item" data-tab="about_the_author">About the Author</a>
        </div>

    </div>
    <div class="item">
        <div class="header">Downloads &nbsp;&nbsp;&nbsp;&nbsp;<i class="download icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="articles">Articles</a>
            <a class="blue item" data-tab="sample_files">Sample IT Files</a>
            <a class="green item" data-tab="how_to_videos">How-to DL: Audio / Video</a>
        </div>

    </div>

    <div class="item">
        <div class="header">Tutorials &nbsp;&nbsp;&nbsp;&nbsp;<i class="database icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="spring_rest">Spring REST</a>
            <a class="blue item" data-tab="databases">Databases</a>
            <a class="green item" data-tab="ui_ux">UX/UI</a>
            <a class="green item" data-tab="build_automation">Build Automation</a>
            <a class="green item" data-tab="algorithms">Algorithms</a>
            <a class="violet item" href="${pageContext.request.contextPath}/restexample">Practical Ex. - REST</a>
            <a class="orange item" data-tab="practical_js">Practical Ex. - JavaScript</a>
            <a class="orange item" data-tab="practical_java">Practical Ex. - Java Client</a>
            <a class="orange item" data-tab="practical_cpp">Practical Ex. - C++ Client</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Digital Encoding &nbsp;&nbsp;&nbsp;&nbsp;<i class="sort numeric ascending icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="converting_bases">Converting from/to any base</a>
            <a class="blue item" data-tab="ieee_754">IEEE 754 SP & DP</a>
            <a class="green item" data-tab="encoding_resources">Resources</a>
            <a class="violet item" data-tab="binary">All About Binary</a>
            <a class="orange item" data-tab="bitwise">Bitwise Operations</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">C++ to MIPS32 &nbsp;&nbsp;&nbsp;&nbsp;<i class="columns icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="basic_converter">Basic Converter</a>
            <a class="blue item" data-tab="mips_resources">MIPS Resources</a>
            <a class="green item" data-tab="example_programs">Example Programs</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Soft. Architecture &nbsp;&nbsp;&nbsp;&nbsp;<i class="university icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="web_applications">Web Applications</a>
            <a class="blue item" data-tab="client_applications">Client Applications</a>
            <a class="violet item" data-tab="design_philosophy">My Design Philosophy</a>
            <a class="orange item" data-tab="architecture_resources">Resources</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Web Applications &nbsp;&nbsp;&nbsp;&nbsp;<i class="browser icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="java_stack">Java Technology Stack</a>
            <a class="blue item" data-tab="dot_net_stack">.NET Technology Stack</a>
            <a class="violet item" data-tab="app_vs_site">Web Application vs Site</a>
            <a class="orange item" data-tab="web_app_resources">Resources</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Disease Research &nbsp;&nbsp;&nbsp;&nbsp;<i class="doctor icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="neglected_diseases">Neglected Diseases</a>
            <a class="blue item" data-tab="senescence">Senescence</a>
            <a class="green item" data-tab="how_to_contribute">How to Contribute</a>
            <a class="violet item" data-tab="our_vision">My Vision</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Photography &nbsp;&nbsp;&nbsp;&nbsp;<i class="photo icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="scientific_photos">Scientific</a>
            <a class="blue item" data-tab="natural_photos">Natural / Artistic</a>
            <a class="green item" data-tab="about_photos">Equipment & Process</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Video Highlights &nbsp;&nbsp;&nbsp;&nbsp;<i class="film icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="development_tutorials">Development Tutorials</a>
            <a class="blue item" data-tab="it_tutorials">IT Tutorials</a>
            <a class="green item" data-tab="music_ambient">Music / Ambient</a>
            <a class="violet item" data-tab="gaming">Gaming</a>
            <a class="orange item" data-tab="other_vids">Other</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Writings / Blog &nbsp;&nbsp;&nbsp;&nbsp;<i class="line chart icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="policy_analysis">Policy Analysis</a>
            <a class="blue item" data-tab="short_stories">Short Stories</a>
            <a class="green item" data-tab="it_development">IT / Development</a>
        </div>

    </div>
</div>

