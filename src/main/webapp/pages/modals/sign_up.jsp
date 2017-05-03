<%--
  Created by IntelliJ IDEA.
  User: boris
  Date: 5/2/2017
  Time: 5:02 PM
  To change this template use File | Settings | File Templates.
--%>
<div id="signUpModal" class="ui basic modal">
    <div class="ui middle aligned center aligned grid">
        <div class="column">
            <h2 class="ui teal image header">
                <img src="${pageContext.request.contextPath}/resources/images/tree_grow_logo.png" class="image">
                <div class="content">
                    Create an account
                </div>
            </h2>
            <div class="ui info message">
                <p>Why register on GrowYourCareer.com?</p>
                <p>By signing up, you are letting me know you are interested in this site and the content it provides.
                The minimal information you provide on this form will allow me to let you know about any new developments
                 - tutorials, eBooks, giveaways, and products.
                <p>You will also be supporting me as a content creator, allowing me to create new products and features
            sometimes tailored specifically to your needs. Thank you!</p>
            </div>
            <form id="signUpForm" class="ui large form" method="POST">
                <div class="ui stacked segment">
                    <div class="field">
                        <div class="ui left icon input">
                            <i class="user icon"></i>
                            <input id="newUserName" type="text" name="name"
                                   placeholder="Your name" /> <span id="nameErrorMsg"></span>
                        </div>
                    </div>
                    <div class="field">
                        <div class="ui left icon input">
                            <i class="user icon"></i>
                            <input id="newUserEmail" type="text" name="email"
                                   placeholder="E-mail address" /> <span id="emailErrorMsg"></span>
                        </div>
                    </div>
                    <div class="field">
                        <div class="ui left icon input">
                            <i class="lock icon"></i>
                            <input id="newUserPassword" type="password" name="newPassword" placeholder="Password" />
                        </div>
                    </div>
                    <div class="field">
                        <div class="ui left icon input">
                            <i class="lock icon"></i>
                            <input type="password" name="password2" placeholder="Confirm Password">
                        </div>
                    </div>
                    <div class="inline field">
                        <div class="ui checkbox">
                            <input type="checkbox" name="agreeWithPrivacy">
                            <label>I agree to
                                <a target="_blank"
                                   href="https://drive.google.com/open?id=0B_lD7FHorWGzMWl1cUI4MGNmSDg" >
                                    privacy policy
                                </a>
                            </label>
                        </div>
                    </div>
                    <div id="registerNewUser" class="ui fluid large teal submit button">Register</div>
                </div>

                <div class="ui error message"></div>

            </form>
        </div>
    </div>
</div>