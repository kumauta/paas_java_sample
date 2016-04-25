package test;

import org.springframework.stereotype.Controller;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@EnableAutoConfiguration
public class SampleController 
{
    @RequestMapping("/")
    @ResponseBody
    public String home() {
        return "Hello world";
    }
    
    @RequestMapping("/secret")
    @ResponseBody
    public String secret() {
        return "Hello secret world";
    }
}