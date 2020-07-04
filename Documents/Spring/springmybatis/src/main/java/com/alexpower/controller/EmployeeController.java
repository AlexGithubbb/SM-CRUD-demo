package com.alexpower.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alexpower.dao.EmployeeMapper;
import com.alexpower.entity.Employee;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeMapper mapper;
	
	@RequestMapping("/")
	public ModelAndView getIndex(){
//		System.out.println("employee mapper" + mapper.getAllEmployees());
//		return "list-employees";
		
		ModelAndView mav = new ModelAndView("list-employees");
		mav.addObject("listallemployees", mapper.getAllEmployees());

		return mav;

	}
	
	@RequestMapping("/showFormForAddEmployee")
	public ModelAndView showForm() {
		ModelAndView mav = new ModelAndView("add-employee");
		mav.addObject("employee", new Employee());	
		return mav;
	}
	
	@RequestMapping("/insertEmployee")
	public String insertEmployee(@ModelAttribute("employee") Employee employee) {
		
		if( employee.getId() == null ) {
			// create new employee
			mapper.insertEmp(employee);
		}else {			
			// udpate the current employee
			mapper.updateEmp(employee);
		}
		return "redirect:/";
	}
	
	
	@RequestMapping("/deleteemployee")
	public String deleteEmployee(@RequestParam("employeeId") int eid) {
		System.out.println("employee ID " + eid + " get deleted");
		// mapper.delete....
		mapper.deleteEmp(eid);
		// redirect to list page
		return "redirect:/";
	}
	
	@RequestMapping("/editemployee")
	public ModelAndView editEmployee(@RequestParam("employeeId") int eid) {
		ModelAndView mav = new ModelAndView("add-employee");
		Employee employee = mapper.selectEmp(eid);
		mav.addObject("employee", employee);	
		return mav;
	}
	
}
