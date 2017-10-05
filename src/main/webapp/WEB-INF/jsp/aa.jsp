<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
 <head>
  <title>javascript弹幕</title>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
  
    <style>
        #play{
            width:1080px;
            height:720px;
            background-color:#000;
            margin-left: 135px;
        }
          
        #tangmu{
            width:1080px;
            height:720px;
            background-color:#fff;
            z-index:9999;
            background-color: rgba(000, 1, 000, 0.1); 
        }
          
        #textStyle{
            position:absolute;
            font-size:24px;
            color:yellow;
        }
    </style>
      
 </head>
  
 <body>
    <div id="play">
        <div id="tangmu">
              
        </div>
    </div>
      
    <input type="text" id="text" value="这是弹幕..."/><input type="button" value="发送" onClick="tangmu()"/>
      
    <script>
        var si;
        function tangmu(){
            clearInterval(si);
            var text = document.getElementById("text");
            var tangmu = document.getElementById("tangmu");
  
            var textStyle="<font id=\"textStyle\">"+text.value+"</font>";
              
            mathHeight = Math.round(Math.random()*tangmu.offsetHeight)+"px";
  
            var textLeft=tangmu.offsetWidth+"px";
              
            tangmu.innerHTML=textStyle;
              
            var textStyleObj = document.getElementById("textStyle");
              
            textStyleObj.style.left=textLeft;
            textStyleObj.style.top=mathHeight;
              
            var x=parseInt(textStyleObj.style.left);
              
            si = setInterval("xunhuan("+x+")",100);
              
        }
        function xunhuan(left){
            var textStyleObj = document.getElementById("textStyle");
            textStyleObj.style.left=left;
              
            var x=parseInt(textStyleObj.style.left);
  
            if(x<textStyleObj.style.width){
                document.getElementById("tangmu").innerHTML="";
                clearInterval(si);
            }else{
                x-=18;
            }
              
            textStyleObj.style.left=x+"px";
        }
    </script>
      
 </body>
</html>



