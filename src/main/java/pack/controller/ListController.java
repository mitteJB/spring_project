package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pack.model.LineInter;

@Controller
public class ListController {
	
	@Autowired
	private LineInter lineInter;
	
	/*@RequestMapping("list")
	public ModelAndView list() {
		return new ModelAndView("list", "list", lineInter.getDataAll());
	}*/

	//	ModelAndView -> Model
	@RequestMapping("list")
	public String list(Model model) {
		model.addAttribute("list", lineInter.getDataAll());
		return "list";
	}
}
