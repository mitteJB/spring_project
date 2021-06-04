package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.LineInter;

@Controller
public class MyBookController {
	
	@Autowired
	private LineInter lineInter;
	
	/*@RequestMapping("mybook")
	public ModelAndView list(@RequestParam("g_id") String id) {
		return new ModelAndView("mybook", "mybook", lineInter.myDataAll(id));
	}*/

	@RequestMapping("mybook")
	public String list(Model model, @RequestParam("g_id") String id) {
		model.addAttribute("mybook", lineInter.myDataAll(id));
		return "mybook";
	}
}
