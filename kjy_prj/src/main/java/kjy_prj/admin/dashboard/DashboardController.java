package kjy_prj.admin.dashboard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class DashboardController {

	@RequestMapping(value="/admin/dashboard", method = {GET, POST})
	public String dashboard() {
		
		return "admin/dashboard/dashboard2";
	//	return "admin/dashboard/dashboard";
	}//dashboard
	
}
