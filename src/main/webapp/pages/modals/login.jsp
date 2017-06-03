<%--
  Created by IntelliJ IDEA.
  User: boris
  Date: 5/1/2017
  Time: 9:12 PM
  To change this template use File | Settings | File Templates.
--%>
<div id="loginModal" class="ui basic modal">
    <div class="ui middle aligned center aligned grid">
        <div class="column">
            <h2 class="ui teal image header">
                <img src="${pageContext.request.contextPath}/resources/images/tree_grow_logo.png" class="image">
                <div class="content">
                    Log-in to your account
                </div>
            </h2>
            <form id="loginForm" class="ui large form" method="POST" onsubmit="return false;">
                <div class="ui stacked segment">
                    <div class="field">
                        <div class="ui left icon input">
                            <i class="user icon"></i>
                            <input id="existingUserEmail" type="text" name="email" placeholder="E-mail address">
                        </div>
                    </div>
                    <div class="field">
                        <div class="ui left icon input">
                            <i class="lock icon"></i>
                            <input id="existingUserPassword" type="password" name="password" placeholder="Password">
                        </div>
                    </div>
                    <div id="validateExistingUser" class="ui fluid large teal submit button">Login</div>
                </div>

                <div class="ui error message"></div>

            </form>

            <div class="ui message">
                Don't have an account? <a id="signUpOpen">Sign Up Free!</a>
            </div>
        </div>
    </div>
</div>