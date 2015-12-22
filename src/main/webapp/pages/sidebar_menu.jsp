<%--
  Created by IntelliJ IDEA.
  Date: 12/19/2015 @ 10:57 PM
--%>


<%-- Add class 'tabular' to create a 3-sided border around tab items. --%>
<%-- TODO: dimmmer is broken when 'tabular' class is added, the sidebar darkens as well --%>

<div id="adsMainSidebar" class="ui sidebar vertical inverted demo menu left overlay visible">

    <div class="item">
        <a class="ui logo icon image" style="margin-left: -10px;">
            <img src="${pageContext.request.contextPath}/resources/images/ads_logo.png">
        </a>
        <a href=""><b>ArcologyDesigns</b></a>
    </div>

    <a class="item" >
        <b>Functionality &nbsp;&nbsp;&nbsp;&nbsp;<i class="pointing down icon"></i></b>
    </a>

    <div class="item">
        <div class="header">New in 0.1</div>

        <div class="menu">
            <a class="active inverted  item" data-tab="release_notes">Release Notes</a>
            <a class="blue item" data-tab="planned_features">Planned Features</a>
            <a class="green item" data-tab="request_features">Request Feature</a>
        </div>
    </div>

    <div class="item">
        <div class="header">About ADS &nbsp;&nbsp;&nbsp;&nbsp;<i class="mail outline icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="collective_resources">Collective Resources</a>
            <a class="blue item" data-tab="our_products">Our Products</a>
            <a class="green item" data-tab="contact_us">Contact Us</a>
            <a class="violet item" data-tab="about_the_author">About the Author</a>
        </div>

    </div>
    <div class="item">
        <div class="header">Downloads &nbsp;&nbsp;&nbsp;&nbsp;<i class="download icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="articles">Articles</a>
            <a class="blue item" data-tab="sample_files">Sample IT Files</a>
            <a class="green item" data-tab="how_to_videos">How To DL - Videos</a>
            <a class="violet item" data-tab="how_to_soundcloud">How to DL - SoundCloud</a>
        </div>

    </div>

    <div class="item">
        <div class="header">Tutorials &nbsp;&nbsp;&nbsp;&nbsp;<i class="database icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="spring_rest">Spring REST</a>
            <a class="blue item" data-tab="databases">Databases</a>
            <a class="green item" data-tab="ui_ux">UX/UI</a>
            <a class="violet item" data-tab="practical_rest">Practical Examples - REST</a>
            <a class="orange item" data-tab="practical_js">Practical Examples - JavaScript</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Digital Encoding &nbsp;&nbsp;&nbsp;&nbsp;<i class="sort numeric ascending icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="converting_bases">Converting from/to any base</a>
            <a class="blue item" data-tab="ieee_754">IEEE 754 SP & DP</a>
            <a class="green item" data-tab="encoding_resources">Resources</a>
            <a class="violet item" data-tab="binary">All About Binary</a>
            <a class="orange item" data-tab="bitwise">Bitwise Ops</a>
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
        <div class=" header">Disease Research &nbsp;&nbsp;&nbsp;&nbsp;<i class="doctor icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="neglected_diseases">Neglected Diseases</a>
            <a class="blue item" data-tab="senescence">Senescence</a>
            <a class="green item" data-tab="how_to_contribute">How to Contribute</a>
            <a class="violet item" data-tab="our_vision">Our Vision</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Photography &nbsp;&nbsp;&nbsp;&nbsp;<i class="photo icon"></i></div>

        <div class="menu">
            <a class="red item" data-tab="scientific_photos">Scientific</a>
            <a class="blue item" data-tab="natural_photos">Natural/Artistic</a>
            <a class="green item" data-tab="about_photos">About equipment/process</a>
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