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
            <a class="active inverted item"
               href="${pageContext.request.contextPath}/">Release Notes</a>
            <a class="item"
               href="${pageContext.request.contextPath}/sitefeatures">Site Features</a>
        </div>
    </div>

    <div class="item">
        <div class="header">About ADS &nbsp;&nbsp;&nbsp;&nbsp;<i class="info icon"></i></div>

        <div class="menu">
            <a class="item" href="${pageContext.request.contextPath}/products">Products and Services</a>
            <a class="item" href="${pageContext.request.contextPath}/contact">
                <i class="mail icon red"></i> Contact (+ tutorial)</a>
            <a class="item" href="${pageContext.request.contextPath}/about">About the Author</a>
        </div>

    </div>
    <div class="item">
        <div class="header">Downloads &nbsp;&nbsp;&nbsp;&nbsp;<i class="download icon"></i></div>

        <div class="menu">
            <a class="item" href="${pageContext.request.contextPath}/downloads">Articles & Files</a>
            <a class="item" href="${pageContext.request.contextPath}/videoDownload">Video Downloader</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Career Resources &nbsp;&nbsp;&nbsp;&nbsp;<i class="lince chart icon"></i></div>

        <div class="menu">
            <a class="item" href="${pageContext.request.contextPath}/resumes">Resumes & Portfolios</a>
            <a class="item" href="${pageContext.request.contextPath}/technicalInterviews">Technical Interviews</a>
            <a class="item" href="${pageContext.request.contextPath}/hotCareerTips">Hot Tips</a>
        </div>

    </div>

    <div class="item">
        <div class="header">Tutorials &nbsp;&nbsp;&nbsp;&nbsp;<i class="database icon"></i></div>

        <div class="menu">
            <a class="item" href="${pageContext.request.contextPath}/springREST">Spring REST</a>
            <a class="item" href="${pageContext.request.contextPath}/databases">Databases</a>
            <a class="item" href="${pageContext.request.contextPath}/uiux">UX/UI</a>
            <a class="item" href="${pageContext.request.contextPath}/buildAutomation">Build Automation</a>
            <a class="item" href="${pageContext.request.contextPath}/algorithms">Algorithms</a>
            <a class="item" href="${pageContext.request.contextPath}/restExample">Practical Ex. - REST</a>
            <a class="item" href="${pageContext.request.contextPath}/javascriptExample">Practical Ex. - JavaScript</a>
            <a class="item" href="${pageContext.request.contextPath}/javaClientExample">Practical Ex. - Java Client</a>
            <a class="item" href="${pageContext.request.contextPath}/cppClient">Practical Ex. - C++ Client</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Digital Encoding &nbsp;&nbsp;&nbsp;&nbsp;<i class="sort numeric ascending icon"></i></div>

        <div class="menu">
            <a class="item" href="${pageContext.request.contextPath}/convertingBases">Converting from/to any base</a>
            <a class="item" href="${pageContext.request.contextPath}/ieee754">IEEE 754 SP & DP</a>
            <a class="item" href="${pageContext.request.contextPath}/encoding">Resources</a>
            <a class="item" href="${pageContext.request.contextPath}/binary">All About Binary</a>
            <a class="item" href="${pageContext.request.contextPath}/bitwise">Bitwise Operations</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">C++ to MIPS32 &nbsp;&nbsp;&nbsp;&nbsp;<i class="columns icon"></i></div>

        <div class="menu">
            <a class="item" href="${pageContext.request.contextPath}/mipsBasicConverter">C++ to MIPS Converter</a>
            <a class="item" href="${pageContext.request.contextPath}/mipsExamples">MIPS Example Programs</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Soft. Architecture &nbsp;&nbsp;&nbsp;&nbsp;<i class="university icon"></i></div>

        <div class="menu">
            <a class="item" href="${pageContext.request.contextPath}/webApplications">Web Applications</a>
            <a class="item" href="${pageContext.request.contextPath}/clientApplications">Client Applications</a>
            <a class="item" href="${pageContext.request.contextPath}/designPhilosophy">My Design Philosophy</a>
            <a class="item" href="${pageContext.request.contextPath}/architectureResources">Resources</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Web Applications &nbsp;&nbsp;&nbsp;&nbsp;<i class="browser icon"></i></div>

        <div class="menu">
            <a class="item" href="${pageContext.request.contextPath}/javaStack">Java Technology Stack</a>
            <a class="item" href="${pageContext.request.contextPath}/dotNetStack">.NET Technology Stack</a>
            <a class="item" href="${pageContext.request.contextPath}/objectOriented">Object Oriented</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Disease Research &nbsp;&nbsp;&nbsp;&nbsp;<i class="doctor icon"></i></div>

        <div class="menu">
            <a class="item" href="${pageContext.request.contextPath}/neglectedDiseases">Neglected Diseases</a>
            <a class="item" href="${pageContext.request.contextPath}/senescence">Senescence</a>
            <a class="item" href="${pageContext.request.contextPath}/myVision">My Vision</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Photography &nbsp;&nbsp;&nbsp;&nbsp;<i class="photo icon"></i></div>

        <div class="menu">
            <a class="item" href="${pageContext.request.contextPath}/gallery">Gallery</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Video Highlights &nbsp;&nbsp;&nbsp;&nbsp;<i class="film icon"></i></div>

        <div class="menu">
            <a class="item" href="${pageContext.request.contextPath}/developmentTutorials">Development Tutorials</a>
            <a class="item" href="${pageContext.request.contextPath}/itTutorials">IT Tutorials</a>
            <a class="item" href="${pageContext.request.contextPath}/careerSeries">Career Series</a>
            <a class="item" href="${pageContext.request.contextPath}/music">Music / Ambient</a>
        </div>

    </div>

    <div class="item">
        <div class=" header">Writings / Blog &nbsp;&nbsp;&nbsp;&nbsp;<i class="newspaper icon"></i></div>

        <div class="menu">
            <a class="item" href="https://arcologydesigns.blogspot.com">Career / Software Blog</a>
        </div>

    </div>
</div>

