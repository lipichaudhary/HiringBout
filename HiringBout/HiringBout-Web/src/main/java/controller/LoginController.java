package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;

@Controller
public class LoginController {
	@RequestMapping(value="/login.jsp", method=RequestMethod.GET)
	public ModelAndView getLoginForm(){
		ModelAndView model = new ModelAndView("login.jsp");
		return model;
	}
	
	@RequestMapping(value="/home.jsp", method=RequestMethod.POST)
	public ModelAndView LoginSucceess(/*@RequestParam("username") String name*/){
		ModelAndView model = new ModelAndView("home.jsp");
		/*model.addObject("userName", name);*/
		return model;
	}
}
