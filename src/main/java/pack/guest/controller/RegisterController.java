package pack.guest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pack.guest.model.GuestInter;


@Controller
public class RegisterController {

    @Autowired
    private GuestInter guestInter;

    //	@RequestMapping(value="register" , method=RequestMethod.GET)
    @GetMapping("register")
    public String insert() {
        return "registerform";
    }


    //	@RequestMapping(value="register" ,method=RequestMethod.POST)
    @PostMapping("register")
    public String submit(GuestBean bean) {

        boolean b = guestInter.insData(bean);
        if (b) {
            return "registerOk";
        } else {
            return "error";
        }
    }
}
