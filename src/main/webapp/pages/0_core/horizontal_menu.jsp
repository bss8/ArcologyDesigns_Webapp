<%--
  Created by IntelliJ IDEA.
  User: VZ9YFG
  Date: 12/19/2015
  Time: 11:03 PM
  To change this template use File | Settings | File Templates.
--%>

<div class="ui masthead vertical segment"
     style="margin-left: 280px; margin-bottom: 0; padding-bottom: 0; border: none;">

    <div class="ui menu" style="margin-right: 40px;">
        <a class="view-ui item" onclick="toggleSidebar()" >
            <i class="sidebar icon"></i> Menu
        </a>
        <a class="item">
            Home
        </a>
        <div class="ui pointing dropdown link item">
            <span class="text">Shopping</span>
            <i class="dropdown icon"></i>
            <div class="menu">
                <div class="header">Categories</div>
                <div class="item">
                    <i class="dropdown icon"></i>
                    <span class="text">Clothing</span>
                    <div class="menu">
                        <div class="header">Mens</div>
                        <div class="item">Shirts</div>
                        <div class="item">Pants</div>
                        <div class="item">Jeans</div>
                        <div class="item">Shoes</div>
                        <div class="divider"></div>
                        <div class="header">Womens</div>
                        <div class="item">Dresses</div>
                        <div class="item">Shoes</div>
                        <div class="item">Bags</div>
                    </div>
                </div>
                <div class="item">Home Goods</div>
                <div class="item">Bedroom</div>
                <div class="divider"></div>
                <div class="header">Order</div>
                <div class="item">Status</div>
                <div class="item">Cancellations</div>
            </div>
        </div>
        <a class="item">
            Forums
        </a>
        <a class="item" style="float:right;">
            Contact Us
        </a>
    </div>
</div>

<div class="ui small red active progress" id="adsProgress" data-value="0" data-total="3"
     style="margin-left: 280px; width: auto; margin-right: 40px;">
    <div class="bar">
        <div class="progress"></div>
    </div>
</div>