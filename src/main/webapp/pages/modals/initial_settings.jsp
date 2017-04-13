<%--
  User: Boris - Date: 12/23/2015 @ 11:38 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="initial_settings_config" class="ui basic modal">
    <i class="close icon"></i>
    <div class="header">
        Welcome to the ArcologyDesigns Site
    </div>
    <div class="image content">
        <div class="image">
            <i class="book icon"></i>
        </div>
        <div class="description">
            <p>You can set some custom options. They will reset each time you clear your browser history.
            You can also reset them manually via the settings menu at any time. </p>
        </div>
    </div>

    <div class="ui input">
        <input id="userName" type="text" placeholder="Your name..." maxlength="12">
    </div>

    <div class="actions">
        <div class="two fluid ui inverted buttons">
            <div class="ui red basic inverted button">
                <i class="stop circle outline icon"></i>
                Proceed with defaults
            </div>
            <div class="ui green basic inverted button" id="setUserOptions" >
                <i class="checkmark icon"></i>
                Set custom options
            </div>
        </div>
    </div>
</div>