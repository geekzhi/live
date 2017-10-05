<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/danmu.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script>
   $(function(){
      $(".showBarrage,.s_close").click(function(){
            $(".barrage,.s_close").toggle("slow");
       });
      init_animated();
   });
//提交评论
   $(".send .s_btn").click(function(){
       var text = $(".s_text").val();
       if(text == ""){
         return;
      };
       var _lable = $("<div style='right:20px;top:0px;opacity:1;color:"+getRandomColor()+";'>"+text+"</div>");
       $(".mask").append(_lable.show());
       init_barrage();
   })
  //初始化弹幕技术
  function init_barrage(){
  var _top = 0;
  $(".mask div").show().each(function(){
  var _left = $(window).width()-$(this).width();//浏览器最大宽度，作为定位left的值
  var _height = $(window).height();//浏览器最大高度
  _top +=75;
  if(_top >= (_height -130)){
       _top = 0;
  }
  $(this).css({left:_left,top:_top,color:getRandomColor()});
  //定时弹出文字
   var time = 10000;
   if($(this).index() % 2 == 0){
     time = 15000;
   }
   $(this).animate({left:"-"+_left+"px"},time,function(){
   $(this).remove();
  });
}
);
}
//获取随机颜色
function getRandomColor(){
return '#' + (function(h){
return new Array(7 - h.length).join("0") + h
}
)((Math.random() * 0x1000000 << 0).toString(16))
}
</script>
</head>
<body>
<a href="#" class="showBarrage">打开弹幕</a>
<div class="barrage">
<div class="screen">
<a href="#" class="s_close">X</a>
<div class="mask">
<!--内容在这里显示-->
</div>
</div>
<!--Send Begin-->
<div class="send">
<input type="text" class="s_text"/>
<input type="button" class="s_btn" value="说两句"/>
</div>
<!--Send End-->
<span class="s_close">X</span>
</div>
</body>
</html>