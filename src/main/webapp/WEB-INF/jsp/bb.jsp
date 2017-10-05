<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>弹幕代码详解-jq22.com</title>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<style>
/*黑色屏幕父容器*/

.barrage .screen {
    width: 100%;
    height: 100%;
    /*绝对定位设置 上边0px右边0px*/
    position: absolute;
    top: 0px;
    right: 0px;
}


/*退出符号*/

.barrage .screen .s_close {
    /*图像显示的前后越小越靠后*/
    z-index: 2;
    top: 20px;
    right: 20px;
    position: absolute;
    /*默认定义标准文本*/
    text-decoration: none;
    width: 40px;
    height: 40px;
    /*定义圆角形状*/
    border-radius: 20px;
    /*文本居中对齐*/
    text-align: center;
    color: #fff;
    background: #000;
    /*设置行间的距离 //没有什么用可以删除*/
    line-height: 40px;
    /*此元素不会被显示*/
    display: none;
}


/*黑屏子容器*/

.barrage .screen .mask {
    /*相对定位*/
    position: relative;
    width: 100%;
    height: 100%;
    background: #000;
    /*设置透明的级别*/
    opacity: 0.5;
    /*IE8以及更早的浏览器设置的不透明属性*/
    filter: alpha(opacity: 1);
    z-index: 1;
}

.barrage {
    display: none;
    width: 100%;
    height: 100%;
}

.barrage .screen .mask div {
    position: absolute;
    /*弹幕的字体的大小*/
    font-size: 20px;
    /*定义粗体字符*/
    font-weight: bold;
    /* 规定段落文本不换行*/
    white-space: nowrap;
    line-height: 40px;
    z-index: 40;
}

.barrage .send {
    z-index: 1;
    width: 100%;
    height: 6%;
    background: #000;
    position: absolute;
    /*低端0px*/
    bottom: 0px;
    /*浏览器设置左边边距*/
    margin-left: auto;
    /*浏览器设置右边边距*/
    margin-right: auto;
    /*把文本排列到中间*/
    text-align: center;
}

.barrage .send .s_text {
    width: 79%;
    height: 90%;
    line-height: 10px;
    font-size: 20px;
    /*上下边距为零*/
    margin: 0 auto;
    /*字体样式*/
    font-family: "微软黑体";
}

.barrage .send .s_btn {
    margin: 0 auto;
    width: 18%;
    height: 90%;
    background: #22B14c;
    color: #fff;
}
</style>
</head>
<body>
    <a href="javascript:void(0)" class="showBarrage">打开弹幕</a>
    <div class="barrage">
        <div class="screen">
            <a href="#" class="s_close">X</a>
            <div class="mask">
                <!-- 内容在这里显示 -->
            </div>
        </div>
        <!-- Send Begin -->
        <div class="send">
            <input type="text" class="s_text">
            <input type="button" class="s_btn" value="说两句">
        </div>
        <!-- Send End -->
        <span class="s_close">X</span>
    </div>



<script>
/*点击打开弹幕跳出弹幕页*/
$(function() {
    $(".showBarrage,.s_close").click(function() {
        /*toggle切换元素可见状态*/
        $(".barrage,.s_close").toggle("slow");
    });
    /*init_animated();不知道有什么效果*/
    init_animated();
})
//提交评论
$(".send .s_btn").click(function() {
    /*用val()获取 .s_text 里面的值再赋给text*/
    var text = $(".s_text").val();
    /*如果值赋给了text则给函数返回值，不在靠下执行*/
    if (text == "") {
        return;
    };
    /*样式：右边是20像素 上边0像素 透明度值为1 getRandomColor()是随机生成颜色赋予text*/
    var _lable = $("<div style='right:20px;top:0px;opacity:1;color:" + getRandomColor() + ";'>" + text + "</div>");
    /*append给.mask后面添加lable.隐藏元素 .show()显示被隐藏的元素*/
    $(".mask").append(_lable.show());
    //执行init_barrage();动作
    init_barrage();
})
//初始化弹幕技术
function init_barrage() {
    /*声明变量_top为0*/
    var _top = 0;
    /*弹幕遍历不隐藏 .each遍历*/
    $(".mask div").show().each(function() {
        /*$(window).width()获取当前窗口的宽度(不包含滚动条)减去字体的宽*/
        //浏览器最大宽度，作为定位left的值
        var _left = $(window).width() - $(this).width();
        //浏览器最大高度
        var _height = $(window).height();
        /*_top = 75+_top 弹幕之间每次加75的距离*/
        _top += 75;
        /*如果(_top 大于等于 (_height -130))*/
        if (_top >= (_height - 130)) {
            /*则0赋予_top*/
            _top = 0;
        }
        /*将css中left、top、color转换为jquery对象*/
        $(this).css({
            left: _left,
            top: _top,
            color: getRandomColor()
        });
        //定时弹出文字
        var time = 10000;
        /*idnex()方法返回指定元素相对于其他指定元素的index位置 index()除以2余数为0*/
        if ($(this).index() % 2 == 0) {
            /*则时间为15000*/
            time = 15000;
        }
        /*animate()方法执行css属性集的自定义动画。*/
        $(this).animate({
            left: "-" + _left + "px"
        },
        time,
        function() {
            /*remove()方法移除被选元素，包括所有的文本和子节点*/
            $(this).remove();
        });
    });
}
//获取随机颜色
function getRandomColor() {
    return '#' + (function(h) {
        return new Array(7 - h.length).join("0") + h
    })((Math.random() * 0x1000000 << 0).toString(16))
}
</script>

</body>
</html>
