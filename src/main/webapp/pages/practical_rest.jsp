
<div id="context2">

    <div class="ui secondary menu">
        <a class="item active" data-tab="first">Demo</a>
        <a class="item" data-tab="second">How it works</a>
        <a class="item" data-tab="third">Implementation in code</a>
    </div>
    <div class="ui tab segment active" data-tab="first" >
        <div class="ui top attached tabular menu">
            <a class="item active" data-tab="first/a">JQuery DataTables</a>
            <a class="item" data-tab="first/b">ui-grid</a>
            <a class="item" data-tab="first/c">Other / Custom</a>
        </div>
        <div class="ui bottom attached tab segment active" data-tab="first/a">1A

            <div>
                <table id="example" class="display" cellspacing="0" width="100%">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Position</th>
                        <th>Interest</th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Position</th>
                        <th>Interest</th>
                    </tr>
                    </tfoot>
                </table>
            </div>

        </div>
        <div class="ui bottom attached tab segment" data-tab="first/b">1B</div>
        <div class="ui bottom attached tab segment" data-tab="first/c">1C</div>
    </div>
    <div class="ui tab segment" data-tab="second">
        <div class="ui top attached tabular menu">
            <a class="item active" data-tab="second/a">RESTful service</a>
            <a class="item" data-tab="second/b">Ajax call</a>
            <a class="item" data-tab="second/c">Front-end display</a>
        </div>
        <div class="ui bottom attached tab segment active" data-tab="second/a">2A</div>
        <div class="ui bottom attached tab segment" data-tab="second/b">2B</div>
        <div class="ui bottom attached tab segment" data-tab="second/c">2C</div>
    </div>
    <div class="ui tab segment" data-tab="third">
        <div class="ui top attached tabular menu">
            <a class="item active" data-tab="third/a">Database Layer</a>
            <a class="item" data-tab="third/b">Middle Layer</a>
            <a class="item" data-tab="third/c">UI Layer</a>
        </div>
        <div class="ui bottom attached tab segment active" data-tab="third/a">3A</div>
        <div class="ui bottom attached tab segment" data-tab="third/b">3B</div>
        <div class="ui bottom attached tab segment" data-tab="third/c">3C</div>
    </div>
</div>

<script>

    document.addEventListener('DOMContentLoaded', function() {
        setTimeout(function(){
            loadAzureData();
        }, 200);
    }, false);

</script>