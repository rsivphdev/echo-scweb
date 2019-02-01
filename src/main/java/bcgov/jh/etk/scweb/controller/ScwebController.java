package bcgov.jh.etk.scweb.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ScwebController {
	@Value("${spring.application.name}")
    String appName;
	
    @GetMapping("/")
    public String homePage(Model model) {
        model.addAttribute("appName", appName);
        return "errorMonitor";
    }
    
    @GetMapping("/thymeleaf")
    public String homePage1(Model model) {
        model.addAttribute("appName", appName);
        return "index.html";
    }
}
