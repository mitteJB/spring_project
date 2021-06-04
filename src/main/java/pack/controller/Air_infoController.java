package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.LineInter;

@Controller
public class Air_infoController {
	
	@Autowired
	private LineInter lineInter;
	
	/*@RequestMapping(value="airinfo", method=RequestMethod.GET)
	public String ainsert() {
		return "dateinsert";
	}
	RequestMapping -> GetMapping*/
	@GetMapping("airinfo")
	public String ainsert() {
		return "dateinsert";
	}
	
	/*@RequestMapping(value="airinfo", method=RequestMethod.POST)
	public ModelAndView one_way_list(LineBean bean) {
		ModelAndView view = new ModelAndView();
		view.setViewName("airinfo");
		view.addObject("airinfo", lineInter.DatePart(bean));
		view.addObject("airbean", bean);
		view.addObject("num", lineInter.MaxT());
		return view;
	}*/
//	RequestMapping -> PostMapping / ModelAndView -> Model
	@PostMapping("airinfo")
	public String one_way_list(Model model, LineBean bean) {
		model.addAttribute("airinfo", lineInter.DatePart(bean));
		model.addAttribute("airbean", bean);
		model.addAttribute("num", lineInter.MaxT());
		return "airinfo";
	}
	
	/*@RequestMapping(value="airinfo_R", method=RequestMethod.POST)
	public ModelAndView roundlist(LineBean bean) {
		ModelAndView view = new ModelAndView();
		view.setViewName("airinfo_R");
		view.addObject("airinfo", lineInter.DatePart(bean));
		view.addObject("airinfo_R", lineInter.DatePart_R(bean));

		view.addObject("airbean", bean);
		view.addObject("num", lineInter.MaxT());
		return view;
	}*/

//	RequestMapping -> PostMapping / ModelAndView -> Model
	@PostMapping("airinfo_R")
	public String roundlist(Model model, LineBean bean) {
		model.addAttribute("airinfo", lineInter.DatePart(bean));
		model.addAttribute("airinfo_R", lineInter.DatePart_R(bean));
		model.addAttribute("airbean", bean);
		model.addAttribute("num", lineInter.MaxT());
		return "airinfo_R";
	}
	
	
}
