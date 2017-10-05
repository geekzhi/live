<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>无标题文档</title>
    <script type="text/javascript" src="js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/muke.css">
    <link rel="stylesheet" type="text/css" href="css/live.css">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- 可选的Bootstrap主题文件（一般不使用） -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
    <script type="text/javascript" src="js/webSocket.js"></script>
    <script type='text/javascript' src='js/jwplayer.js'></script>
    <script type="text/javascript">

      $(function(){
    	  
    	   $("#send").click(function(){
    	       send();
    	     });
    	   $("#text").keydown(function() {
    	       var code = window.event.keyCode;
    	       if (code == 13){//回车键按下时，输出到弹幕
    	          send();
    	        }
    	     });
    	   //init_screen();
    	     });
    	  
      
      function launch(){
          var _height = $(window).height();
          var _left = $(window).width() - $("#"+index).width();
          var time=10000;
          if(index%2==0)
             time=20000;
          _top+=80;
          if(_top>_height-100)
             _top=80;
          $("#"+index).css({
             left:_left,
             top:_top,
             color:getRandomColor()
           });
          $("#"+index).animate({
             left:"-"+_left+"px"},
             time,
             function(){
            	 $(this).remove();
             });
           index++;
}



/* //初始化弹幕
function init_screen() {
var _top = 0;
var _height = $(window).height();
$(".d_show").find("div").show().each(function() {
var _left = $(window).width() - $(this).width();
var time=10000;
if($(this).index()%2==0)
time=20000;
_top+=80;
if(_top>_height-100)
_top=80;
$(this).css({
left:_left,
top:_top,
color:getRandomColor()

});
$(this).animate({
left:"-"+_left+"px"},
time,
function(){});


});
} */

//随机获取颜色值
function getRandomColor() {
return '#' + (function(h) {
return new Array(7 - h.length).join("0") + h
})((Math.random() * 0x1000000 << 0).toString(16))
}
    </script>
     <style>
       
    </style>

       $(function(){
    	   $("#send").click(function(){
    		   $("#msg").prop("value")
    	   });
       })
    </script>

</head>

<body class="backg_huibai">


<!-- 顶部 -->
<div class="width100 float_l height490 img_backg1">
    <div class="width100 float_l height80 line_hei80">
        <!-- 顶部左边 -->
        <div class="float_l">
            <div class="float_l margin_l20">
                <img src="img/uiz1.png">
            </div>
            <div class="float_l">
                <ul class="ul_li fon_siz16">
                    <li><a>实战</a></li>
                    <li><a>路径</a></li>
                    <li><a>猿问</a></li>
                    <li><a>手记</a></li>
                </ul>
            </div>
        </div>

        <!-- 顶部右边 -->
        <div class="float_r">
            <div class="float_l top_input">
                <input class="posi_relative" type="text" name="" id="" placeholder="请输入想搜索的内容...">
                <img class="img_sousuo bianshou" src="img/uiz4.png">
            </div>
            <div class="float_l margin_l20">
                <img src="img/uiz5.png">
            </div>
            <div class="float_l margin_l40">
                <img src="img/uiz3.png">
            </div>
            <div class="float_l margin_l35">
                <img src="img/uiz6.png">
            </div>
            <div class="float_l margin_l30 margin_r40">
                <img src="img/uiz2.png">
            </div>
        </div>
    </div>
    <!--聊天框-->
    <div style="margin-top:8%;position:absolute">
       <div id='mediaspace2' class="play">
       <div class="d_show">
        </div>
          <div id="tangmu">
          </div>
       </div>
    </div>
    
     

    <div style="right: 0;margin-top:8%;position:absolute;width: calc(90% - 1080px)">

       <textarea style="height: 700px;width: 80%;margin-left:20px;overflow-y:visible;outline:none ;resize:none" wrap="virtual" readonly="readonly"  id="msg"></textarea><br>
        <input style="height: 30px;width: 80%;margin-left:20px" type="text" id="text"/>
        <button style="height: 20px;width: 80%;margin-left:20px" id="send">发送</button>

       <textarea style="height: 700px;width: 80%;margin-left:20px" id="says" ></textarea><br>
        <input style="height: 30px;width: 80%;margin-left:20px" type="text" value="" id="msg"/><br>
        <button style="height: 20px;width: 80%;margin-left:20px" value="发送" id="send"></button>

    </div>
            <script type='text/javascript'>
                jwplayer('mediaspace2').setup({
                    'flashplayer': 'player.swf',
                    'file': 'stream1505437870609',
                    'streamer': 'rtmp://192.168.210.31:1935/oflaDemo',
                    'controlbar': 'bottom',
                    'height':'720',
                    'width':'1080'
                });
            </script>
</div>


<!-- 页脚 -->
<div class="width100 float_l  height193" style="padding-top: 500px">
    <div class="width_1200 margin_auto">
        <div class="width100 float_l text_c margin_b30">
            <a class="img_backg5" href="#"></a>
            <a class="img_backg6 posi_relative wexinmaxianshi" href="#"><i class="weixinweima dis_none"><img
                    src="img/idx-btm.png"></i></a>
            <a class="img_backg7" href="#"></a>
            <a class="img_backg8" href="#"></a>
        </div>
        <div class="width100 float_l text_c yejiao color_gray">
            <a>关于我们</a>
            <a>企业合作</a>
            <a>人才招聘</a>
            <a>讲师招募</a>
            <a>联系我们</a>
            <a>意见反馈</a>
            <a>友情链接</a>
        </div>
        <div class="width100 float_l text_c border_t margin_t20 padding_t20 color_gray fon_siz12">
            <span>© 2016 imoroc.com  京ICP备13042132号</span>
        </div>
    </div>
</div>


</body>
</html>














