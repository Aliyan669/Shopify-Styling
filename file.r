  
# ///////// theme.liquid /////// file ke end me paste karna hai or ye navbar transparent karna k kam ata hai
  
{% if template == 'index' %}
  
<style>
.shopify-section-group-header-group.announcement-bar-section{
height: 35px;
}
.header-wrapper{
position: absolute;
width: 100%;
background: transparent;
}
.header-wrapper .header{
margin-top: 0px;
 
}
</style>
 
{% endif %}


# ///////// base.css //////////  file ke end me paste karna hai  navbar bottom animation /////////////


.header__active-menu-item{
  text-decoration:none;
}
.header__menu-item:hover span {
	 text-decoration: none;
}
.header__menu-item span{
  position: relative;
  font-size:15px;
  margin:0px 5px 0px 5px
}
.header__menu-item span:hover{
  text-decoration:none;
}
.header__menu-item span:hover:after{
  color: black !important;
  transform: scale(1);
  width: 100%;
}
.header__menu-item span:after {
  content: "";
  position: absolute;
  background-color: black;
  height: 1.3px;
  border-radius: 50px;
  width: 0;
  left: 0;
  transition: 0.3s;
  bottom: -5px;
}

# //////////////// theme.liquid  Head me code paste karna hai ////////////////// Announcement Marquee Animation /////

     <style>
/**
-----------------------------
Add below scss in theme.liquid file to make announcement bar
marquee left to right

-----------------------------
*/

.announcement-bar__message {
    padding-left: 0px;
    padding-right: 0px;
    white-space: nowrap;
     -moz-transform: translateX(100%);
    -webkit-transform: translateX(100%);
    transform: translateX(100%);
    -moz-animation: scroll-left 2s linear infinite;
    -webkit-animation: scroll-left 2s linear infinite;
    animation: scroll-left 17s linear infinite;
  }
  .announcement-bar {
      overflow: hidden;
      height: 40px;
  }
  
  @-moz-keyframes scroll-left {
    0% {
      -moz-transform: translateX(100%);
    }
    100% {
      -moz-transform: translateX(-100%);
    }
  }

  @-webkit-keyframes scroll-left {
    0% {
      -webkit-transform: translateX(100%);
    }
    100% {
      -webkit-transform: translateX(-100%);
    }
  }

  @keyframes scroll-left {
    0% {
      -moz-transform: translateX(100%);
      -webkit-transform: translateX(100%);
      transform: translateX(100%);
    }
    100% {
      -moz-transform: translateX(-100%);
      -webkit-transform: translateX(-100%);
      transform: translateX(-100%);
    }
  }
  @media only screen and (max-width: 800px) {
    .announcement-bar__message {
      font-size: 13px;
        animation: scroll-left 20s linear infinite;
    }
    .home-page-video video {
      width: 100%;
    }
    #shopify-section-slideshow img, .index-slideshow-section img  {
        height: unset !important;
/*         opacity: 0.8 !important; */
    }
    #shopify-section-slideshow, #shopify-section-slideshow .slick-list, .index-slideshow-section, .index-slideshow-section .slick-list {
        height: 400px;
    }
    
    @-moz-keyframes scroll-left {
    0% {
      -moz-transform: translateX(100%);
    }
    100% {
      -moz-transform: translateX(-150%);
    }
  }

  @-webkit-keyframes scroll-left {
    0% {
      -webkit-transform: translateX(100%);
    }
    100% {
      -webkit-transform: translateX(-150%);
    }
  }

  @keyframes scroll-left {
    0% {
      -moz-transform: translateX(100%);
      -webkit-transform: translateX(100%);
      transform: translateX(100%);
    }
    100% {
      -moz-transform: translateX(-150%);
      -webkit-transform: translateX(-150%);
      transform: translateX(-150%);
    }
  }
  }
  @media only screen and (max-width: 600px) {
    #shopify-section-slideshow, #shopify-section-slideshow .slick-list, .index-slideshow-section, .index-slideshow-section .slick-list {
      height: 260px;
    }
    
  }
  @media only screen and (max-width: 500px) {
    #shopify-section-slideshow, #shopify-section-slideshow .slick-list, .index-slideshow-section, .index-slideshow-section .slick-list {
      height: 240px;
    }
    
  }
       </style>





#  ///////////////// Footer.liquid ///////////  nicha code sa replaced karna hai footer payment Icons


{% for type in shop.enabled_payment_types %}


# ////////// is code ki jagah nicha wala code replace karna hai 

 {% assign enabled_payment_types = 'shopify_pay,visa,master,apple_pay,american_express,paypal' | remove: ' ' | split: ',' %}
       
      {% for type in enabled_payment_types %}




