<%--
  User: Boris
  Date: 12/21/2015  @ 8:17 PM
--%>

<div id="context9">
    <form>
        <label class="label" for="toField">To: </label>
        <input class="input" id="toField" type="email" />
        <label class="label" for="ccField">CC: </label>
        <input class="input" id="ccField" type="email" />
        <label class="label" for="subjectField">Subject: </label>
        <input class="input" id="subjectField" type="text" />
        <label class="label" for="messageField">Message: </label>
        <input class="input" id="messageField" type="text" />

        <button class="button" type="button" onclick="sendEmail()">
            Send Email
        </button>

    </form>

</div>