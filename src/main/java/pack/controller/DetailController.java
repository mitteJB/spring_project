package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.BookDto;
import pack.model.LineInter;

@Controller
public class DetailController {
	
	@Autowired
	private LineInter lineInter;
	
	/*@RequestMapping(value="detail", method=RequestMethod.POST)
	public ModelAndView details(BookBean bean) {
		BookDto dto = lineInter.detailPart(bean);
		
		return new ModelAndView("detail","dto", dto);
	}*/

	//	RequestMapping -> PostMapping / ModelAndView -> Model
	@PostMapping("detail")
	public String details(Model model, BookBean bean) {
		BookDto dto = lineInter.detailPart(bean);
		model.addAttribute("dto", dto);
		return "detail";
	}
}
