package co.board.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import co.board.service.BoardService;
 
@Controller
public class BoardController {
	
	String id="";
	
	String nickname=""; 
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Autowired // 占쌘듸옙占쏙옙占쏙옙 찾占싣곤옙占쏙옙占쌍곤옙 占싹댐옙 占쏙옙占쏙옙占쏙옙抉占�
	private BoardService service;
	
	
	@RequestMapping(value = "/" , method = RequestMethod.GET)
	public String mainPage() {
		if(id.equals("")){ 
			return "home";
		}
		return "redirect:/list";
	}
	@RequestMapping(value = "/login" ,method = RequestMethod.POST) 
	public String loginPage(Model model ,@RequestParam HashMap<String, Object> param) throws Exception {
		String msg = "";
		String password = (String) param.get("TH_USER_PASSWORD");
		HashMap<String , Object> login = service.login(param);
		if(login != null) {
			if(encoder.matches(password, (String)login.get("PASSWORD"))) {
				id = (String) login.get("ID");
				nickname =(String) login.get("NICKNAME");			
				return "redirect:/list"; 			
			}else {
				msg = "占쏙옙橘占싫ｏ옙占� 확占쏙옙占쏙옙 占쌍쇽옙占쏙옙";
			}
		}else {
			msg = "占쌩몌옙占쏙옙 占쏙옙占싱듸옙 占쌉니댐옙.";
		}
		model.addAttribute("msg", msg);
		return "home";
	}
	
	@RequestMapping(value = "/logout" , method = RequestMethod.GET)
	public String logout() {
		id="";
		nickname="";
		return "home";
	}
	
	@RequestMapping(value = "/list" ,method = RequestMethod.GET)
	public String listPage(Model model){
		model.addAttribute("list", service.getList());
		model.addAttribute("nickname", nickname);
		if(!id.equals("")) {
			return "list"; 			
		}
		return "home";
	}
	
	@RequestMapping(value = "/insertPage" , method =RequestMethod.GET )
	public String insertPage(Model model) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date today = new Date();
		model.addAttribute("today", format.format(today));
		model.addAttribute("boardNo", service.boardNoMax()+1);
		model.addAttribute("nickname", nickname);
		if(!id.equals("")) {
			return "insert"; 			
		}
		return "home";
	}
	
	@RequestMapping(value = "/insert", method =RequestMethod.POST)
	public String insert(@RequestParam HashMap<String, Object> param) {
		service.insert(param);
		if(!id.equals("")) {
			return "redirect:/list"; 			
		}
		return "home";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detailPage(Model model, @RequestParam int TH_BOARD_NO) {
		model.addAttribute("detail", service.detail(TH_BOARD_NO));
		model.addAttribute("ID", id);
		return "detail";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(int TH_BOARD_NO) {
		service.delete(TH_BOARD_NO);
		return "redirect:/list";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String editPage(Model model, int TH_BOARD_NO) {
		model.addAttribute("detail", service.detail(TH_BOARD_NO));
		return "edit";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@RequestParam HashMap<String, Object> param) {
		int TH_BOARD_NO = Integer.parseInt((String)param.get("TH_BOARD_NO"));
		service.update(param);
		return "redirect:/detail?TH_BOARD_NO="+TH_BOARD_NO;
	}
	
	@RequestMapping(value ="/join" , method = RequestMethod.GET)
	public String join() {
		return "join";
	}
	@RequestMapping(value ="/join", method = RequestMethod.POST)
	public String createUser(@RequestParam HashMap<String,Object> param) {
		param.put("TH_USER_PASSWORD", encoder.encode((String)param.get("TH_USER_PASSWORD")));
		service.createUser(param);
		return "redirect:/";
	}
}