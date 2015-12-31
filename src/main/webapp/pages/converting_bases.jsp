<%--
  User: Boris Date: 12/21/2015 @ 8:20 PM
--%>

<div id="context10">
    <div class="ui secondary menu">
        <a class="item active" data-tab="first">First</a>
        <a class="item" data-tab="second">Second</a>
        <a class="item" data-tab="third">Third</a>
    </div>
    <div class="ui tab segment active" data-tab="first" >

        <div class="ui top attached tabular menu">
            <a class="item active" data-tab="first/a">1A</a>
            <a class="item" data-tab="first/b">1B</a>
            <a class="item" data-tab="first/c">1C</a>
        </div>

        <div class="ui bottom attached tab segment active" data-tab="first/a">
            <div class="ui ">
                <div class="ui grid conversion_form">
                    <div class="two wide column">
                        <div>
                            <label for="integer_input" class="label">Enter an integer: </label>
                            <br/>
                            <input type="number" maxlength="20" id="integer_input" class="input">  &nbsp;<span id="integerErrorMsg"></span>
                        </div>
                    </div>
                    <div class="one wide column"></div>
                    <div class="ten wide column">
                        <label for="base_selection">Select a base: </label>
                        <select id="base_selection" name="skills" multiple="" class="ui fluid dropdown select_a_base" >
                            <option value="">Bases (2-15)</option>
                            <option value="b2">Base-2 (binary)</option>
                            <option value="b3">Base-3 (ternary)</option>
                            <option value="b4">Base-4</option>
                            <option value="b5">Base-5</option>
                            <option value="b6">Base-6</option>
                            <option value="b7">Base-7</option>
                            <option value="b8">Base-8</option>
                            <option value="b9">Base-9</option>
                            <option value="b10">Base-10 (decimal)</option>
                            <option value="b11">Base-11</option>
                            <option value="b12">Base-12</option>
                            <option value="b13">Base-13</option>
                            <option value="b14">Base-14</option>
                            <option value="b15">Base-15</option>
                        </select>
                    </div>

                    <div class="one wide column">
                        <br/>
                        <div class="ui button">Clear</div>
                    </div>
                    <div class="one wide column"></div>
                </div>

                <br/>
                <hr/>

                <div>
                    RESULTS
                </div>
            </div>

        </div>
        <div class="ui bottom attached tab segment" data-tab="first/b">1B</div>
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