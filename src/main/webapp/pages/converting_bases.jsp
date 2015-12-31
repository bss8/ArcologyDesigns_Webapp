<%--
  User: VZ9YFG Date: 12/21/2015 @ 8:20 PM
--%>



<div id="context10">
    <div class="ui secondary menu">
        <a class="item active" data-tab="first">First</a>
        <a class="item" data-tab="second">Second</a>
        <a class="item" data-tab="third">Third</a>
    </div>
    <div class="ui tab segment active" data-tab="first" >
        <div class="ui top attached tabular menu">
            <a class="item" data-tab="first/a">1A</a>
            <a class="item active" data-tab="first/b">1B</a>
            <a class="item" data-tab="first/c">1C</a>
        </div>
        <div class="ui bottom attached tab segment" data-tab="first/a">1A

            <div>
                <label for="myInput" class="label">Enter an integer: </label>
                <input type="number" maxlength="20" id="myInput" class="input">  &nbsp;<span id="integerErrorMsg"></span>
            </div>

        </div>
        <div class="ui bottom attached tab segment active" data-tab="first/b">1B</div>
        <div class="ui bottom attached tab segment" data-tab="first/c">1C</div>
    </div>
    <div class="ui tab segment" data-tab="second">
        <div class="ui top attached tabular menu">
            <a class="item active" data-tab="second/a">2A</a>
            <a class="item" data-tab="second/b">2B</a>
            <a class="item" data-tab="second/c">2C</a>
        </div>
        <div class="ui bottom attached tab segment active" data-tab="second/a">2A</div>
        <div class="ui bottom attached tab segment" data-tab="second/b">2B</div>
        <div class="ui bottom attached tab segment" data-tab="second/c">2C</div>
    </div>
    <div class="ui tab segment" data-tab="third">
        <div class="ui top attached tabular menu">
            <a class="item active" data-tab="third/a">3A</a>
            <a class="item" data-tab="third/b">3B</a>
            <a class="item" data-tab="third/c">3C</a>
        </div>
        <div class="ui bottom attached tab segment active" data-tab="third/a">3A</div>
        <div class="ui bottom attached tab segment" data-tab="third/b">3B</div>
        <div class="ui bottom attached tab segment" data-tab="third/c">3C</div>
    </div>
</div>