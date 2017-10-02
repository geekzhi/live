package org.lanqiao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArraySet;


import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
@Controller
public class LiveController {
	
	@RequestMapping("course")
	public String course(){
		return "course";
	}
	
	@RequestMapping("danmu")
	public String danmu(){
		return "danmu";
	}
	@RequestMapping("aa")
	public String aa(){
		return "aa";
	}
	@RequestMapping("bb")
	public String bb(){
		return "bb";
	}
	@RequestMapping("cc")
	public String cc(){
		return "cc";
	}
	@RequestMapping("livetwo")
	public String livetwo(){
		return "livetwo";
	}
	@RequestMapping("two")
	public String two(){
		return "two";
	}
	
	

}
