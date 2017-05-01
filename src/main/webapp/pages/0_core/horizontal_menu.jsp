<%--
  User: Boris  Date: 12/19/2015 @ 11:03 PM
--%>

<%--<div class=""--%>
     <%--style="margin-left: 280px; margin-bottom: 0; padding-bottom: 0; border: none;">--%>

    <div id="horizontalMenu" class="ui menu" >
        <a id="sidebar_toggle" class="view-ui item" data-content="To anchor/pin the sidebar menu, refresh the page (F5)" data-variation="wide inverted large"
           onclick="toggleSidebar()" >
            <i class="sidebar icon" ></i> Menu
        </a>
        <div class="ui dropdown link item">
            <span class="text">Tools </span>
            <i class="dropdown icon"></i>
            <div class="menu">
                <div class="header">Categories</div>
                <div class="ui dropdown item">
                    Themes
                    <i class="dropdown icon"></i>
                    <div class="menu">
                        <%--<a class="item"><i class="edit icon"></i> Edit Profile</a>--%>
                        <%--<a class="item"><i class="globe icon"></i> Choose Language</a>--%>
                        <%--<a class="item"><i class="settings icon"></i> Account Settings</a>--%>
                        <div id="darkTheme" class="item">Dark</div>
                        <div id="redTheme" class="item">Red</div>
                        <div id="greenTheme" class="item">Green</div>
                        <div id="defaultTheme" class="item">Default</div>
                    </div>
                </div>
                <%--<div class="item">--%>
                    <%--<i class="dropdown icon"></i>--%>
                    <%--<div class="ui dropdown item"><i class="options icon"></i>&nbsp; Themes--%>
                        <%--<div class="menu">--%>
                            <%--<div id="darkTheme" class="item">Dark</div>--%>
                            <%--<div id="redTheme" class="item">Red</div>--%>
                            <%--<div id="greenTheme" class="item">Green</div>--%>
                            <%--<div id="defaultTheme" class="item">Default</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div class="item">Home Goods</div>
                <div class="item">Bedroom</div>
                <div class="divider"></div>
                <div class="header">Order</div>
                <div class="item">Status</div>
                <div class="item">Cancellations</div>
            </div>
        </div>
        <a class="item">
            <i class="settings icon"></i>&nbsp; Settings
        </a>
        <a class="item" style="float:right;">
            <i class="favorite icon"></i>&nbsp; Favorites
        </a>
        <div class="right menu">
            <div class="item" style="display: block; min-width: 50px;">
            <div id="welcomeUser" style=" text-overflow: ellipsis;  overflow: hidden; white-space: nowrap;"></div>
            </div>
        </div>
        <div class="right menu" >
            <div class="item" >
                <div class="ui transparent icon input">
                    <input type="text" placeholder="Search...">
                    <i class="search link icon"></i>
                </div>
            </div>
        </div>
    </div>
    </div>
<%--</div>--%>

<div class="ui small red active progress" id="adsProgress" data-value="0" data-total="6"
     style="margin-left: 280px; width: auto; margin-right: 40px;">
    <div class="bar">
        <div class="progress"></div>
    </div>
</div>