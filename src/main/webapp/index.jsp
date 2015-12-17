<%--   User: Boris |  Date: 12/13/2015 @ 2:35 PM --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <script type="text/javascript" src="resources/js/jquery-2.1.4.js"></script>
        <link rel="stylesheet" type="text/css" href="resources/semantic/dist/semantic.min.css">
        <script type="text/javascript" src="resources/semantic/dist/semantic.min.js"></script>
    </head>
    <body>
        <h1>Spring 4.0.2 MVC web service</h1>
        <h3>Name : ${name}</h3>

        <label for="dropdown_1">Dropdown test: </label>
        <select id="dropdown_1" name="skills" multiple="" class="ui fluid dropdown" >
            <option value="">Skills</option>
            <option value="angular">Angular</option>
            <option value="css">CSS</option>
            <option value="ember">Ember</option>
            <option value="html">HTML</option>
            <option value="javascript">Javascript</option>
            <option value="meteor">Meteor</option>
            <option value="node">NodeJS</option>
        </select>

    <script>
        (function($){
            $('select.dropdown')
                    .dropdown('set selected', ['meteor', 'ember'])
            ;
        })(jQuery);

    </script>
    </body>
</html>
