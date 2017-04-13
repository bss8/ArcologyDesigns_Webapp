<%--
  User: Boris
  Date: 12/21/2015  @ 8:17 PM
--%>

<div id="context9">
    <form>
        <%--<div class="ui grid">--%>
            <%--<div class="one wide column">--%>
                <%--<h3 class="header">--%>
                    <%--<label class="label" for="toField">To:&nbsp;&nbsp;&nbsp;</label>--%>
                <%--</h3>--%>
            <%--</div>--%>
            <%--<div class="four wide column">--%>
                <%--<div class="ui input">--%>
                    <%--<input class="input" id="toField" type="email" placeholder="To..." value="arcologydesigns@gmail.com" />--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<br />--%>

        <%--<div class="ui grid">--%>
            <%--<div class="one wide column">--%>
                <%--<h3 class="header">--%>
                    <%--<label class="label" for="ccField">CC:&nbsp;&nbsp;&nbsp;</label>--%>
                <%--</h3>--%>
            <%--</div>--%>
            <%--<div class="four wide column">--%>
                <%--<div class="ui input">--%>
                    <%--<input class="input" id="ccField" type="email" placeholder="CC..." />--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <br />
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
            <div class="two wide column">
                <button class="button" type="button" onclick="sendEmail()">
                    Send Email
                </button>
            </div>

        </div>

    </form>

</div>