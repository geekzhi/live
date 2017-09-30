var websocket=null;
var _top=80;
var index=0;
var host=window.location.host;
//�жϵ�ǰ������Ƿ�֧��WebSocket
if('WebSocket' in window){
websocket=new WebSocket("ws://"+host+"/live/websocket");
}
else{
alert("Not Support WebSocket!");
}


//���ӷ�������Ļص�����
websocket.onerror = function(){
    setMessageInnerHTML("error");
};
 
//���ӳɹ������Ļص�����
websocket.onopen = function(event){
    setMessageInnerHTML("open");
}
 
//���յ���Ϣ�Ļص�����
websocket.onmessage = function(){
    setMessageInnerHTML(event.data);
}
 
//���ӹرյĻص�����
websocket.onclose = function(){
    setMessageInnerHTML("close");
}


//�������ڹر��¼��������ڹر�ʱ������ȥ�ر�websocket���ӣ���ֹ���ӻ�û�Ͽ��͹رմ��ڣ�server�˻����쳣��
window.onbeforeunload = function(){
    websocket.close();
}


//����Ϣ��ʾ����ҳ��
function setMessageInnerHTML(innerHTML){
$(".d_show").append("<div id='"+index+"'>"+ innerHTML + "</div>");
launch();
}


//������Ϣ
function send(){
    //var message = document.getElementById('text').value;
    var message = $("#text").val();
    $("#text").val("");
    websocket.send(message);
}