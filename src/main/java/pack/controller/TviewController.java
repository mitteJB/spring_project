package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.BookDto;
import pack.model.LineInter;


@Controller
public class TviewController {
	@Autowired
	LineInter lineInter;
	
	/*@RequestMapping(value="tview", method=RequestMethod.POST)
	public ModelAndView details(BookBean bean) {
		BookDto dto = lineInter.detailPart(bean);
		return new ModelAndView("tview","dto", dto);
	}*/

	//	ModelAndView -> Model
	@RequestMapping("tview")
	public String details(Model model, BookBean bean) {
		BookDto dto = lineInter.detailPart(bean);
		model.addAttribute("dto", dto);
		return "tview";
	}
	
}
