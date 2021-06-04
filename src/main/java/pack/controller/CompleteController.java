package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.LineInter;

@Controller
public class CompleteController {
	
	@Autowired
	private LineInter lineInter;
	
	/*@RequestMapping(value="complete", method=RequestMethod.POST)
	public ModelAndView good(CompleteBean bean) {
		lineInter.DepartIns(bean);
		
		ModelAndView view = new ModelAndView();
		view.setViewName("complete");
		view.addObject("complete", bean);
		return view;
	}*/

	//	RequestMapping -> PostMapping / ModelAndView -> Model
	@PostMapping("complete")
	public String good(Model model, CompleteBean bean) {
		lineInter.DepartIns(bean);
		model.addAttribute("complete", bean);
		return "complete";
	}

	/*@RequestMapping(value="complete_R", method=RequestMethod.POST)
	public ModelAndView good2(CompleteBean bean) {
		lineInter.DepartIns(bean);
		lineInter.DepartIns_R(bean);
		ModelAndView view = new ModelAndView();
		view.setViewName("complete_R");
		view.addObject("complete", bean);
		return view;
	}*/

	//	RequestMapping -> PostMapping / ModelAndView -> Model
	@PostMapping("complete_R")
	public String good2(Model model, CompleteBean bean) {
		lineInter.DepartIns(bean);
		lineInter.DepartIns_R(bean);
		model.addAttribute("complete", bean);
		return "complete_R";
	}
}
