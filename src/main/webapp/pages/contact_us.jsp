<%--
  User: Boris
  Date: 12/21/2015  @ 8:17 PM
--%>

<div id="context9">
    <div class="ui secondary menu">
        <a class="item active" data-tab="first">Contact Details</a>
        <a class="item" data-tab="second">SMTP Tutorial</a>
        <a class="item" data-tab="third">Implementing reCAPTCHA</a>
    </div>
    <div class="ui tab segment active" data-tab="first">
        <div>
            <h3 class="blue">Find ArcologyDesigns on these platforms:</h3>
            <br/>
            <a href="https://www.youtube.com/user/ArcologyDesigns">
                <i class="youtube icon huge red"></i>
            </a>
            <a href="https://plus.google.com/+ArcologydesignsStudio">
                <i class="google plus icon big red"></i>
            </a>
            <a href="https://www.facebook.com/arcologydesigns/">
                <i class="facebook icon large"></i>
            </a>
            <a href="https://soundcloud.com/arcologydesigns">
                <i class="soundcloud icon big orange"></i>
            </a>
            &nbsp;&nbsp;
            <a href="https://twitter.com/ArcologyDesigns">
                <i class="twitter icon large"></i> @ArcologyDesigns
            </a>
        </div>
        <br />
        <hr/>
        <br/>
        <form>
            <div class="ui grid">
                <div class="one wide column">
                    <h3 class="header">
                        <label class="label" for="subjectField">Subject:&nbsp;&nbsp;&nbsp;</label>
                    </h3>
                </div>
                <div class="two wide column">
                    <div class="ui labeled button" tabindex="0">
                        <div class="ui red button">
                            Ticket #
                        </div>
                        <a id="ticketNumber" class="ui basic red left pointing label">
                        </a>
                    </div>
                </div>
                <div class="three wide column">
                    <div class="ui input">
                        <input class="input" id="subjectField" type="text" placeholder="Subject..." maxlength="50" />
                    </div>
                </div>
            </div>
            <br />
            <div class="ui grid">
                <div class="one wide column">
                    <h3 class="header">
                        <label class="label" for="messageField">Message:&nbsp;&nbsp;&nbsp;</label>
                    </h3>
                </div>
                <div class="six wide column">
            <textarea id="messageField" rows="5" cols="60" >
            </textarea>
                </div>
            </div>
            <br/>
            <hr />
            <br/>
            <div class="ui grid">
                <div class="two wide column notAllowedCursor">
                    <div class="g-recaptcha" data-sitekey="6Lf-Bx0UAAAAAPFzuPmVPhZj1TXcrR_OBgLTaR-q"
                         data-callback="recaptchaCallback"></div>
                    <br/>
                    <button id="submitContactBtn" class="button" type="submit" onclick="sendEmail()" disabled>
                        Send Email
                    </button>
                </div>
            </div>
        </form>
    </div>
    <div class="ui tab segment" data-tab="second">
        test2
    </div>
    <div class="ui tab segment" data-tab="third">
        test3
    </div>

</div>