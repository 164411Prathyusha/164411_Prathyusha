package com.group4.project.DataService.BussinessLayer;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.group4.project.DataService.DAO.UserDAO;
import com.group4.project.DataService.Model.User;

@Controller
public class UserEntryPoint {

	@Autowired
	UserDAO dao_object;

	List<User> list = new ArrayList<User>();

	@RequestMapping("login/{id}/{uname}/{upass}")
	public String userLogin(@PathVariable String id, @PathVariable String uname, @PathVariable String upass) {
		String exitPoint = "User not there ";
		boolean value = dao_object.isPresent(id);
		list = dao_object.searchAll();
		for (User index : list) {
			if (value && uname.equals(index.getUserName()) && upass.equals(index.getPassword())) {
			exitPoint= "User successfully logged in";
			}

		}
		return exitPoint;
		
	}

	/*	@RequestMapping(method=RequestMethod.POST,value="register/{uname}/{upass}")
		public String userRegister(@PathVariable String uname, @PathVariable String upass) {
			long numberOfUsers = dao_object.total();
			long count=100l+numberOfUsers++;
			String uid=Long.toString(count);
			User user=new User(uid, uname, upass);
			dao_object.create(user);
			return "User Successfully registered"+"  "+"with userId:   "+uid;
		}*/
		
		
		@RequestMapping("finduser/{id}")
		public Optional<User> getUser(@PathVariable String id) {
			return dao_object.searchById(id);
		}
		
		@RequestMapping("findallusers")
		public List<User> findAll(){
			return dao_object.searchAll();
		}
		
	/*
	 * UI FRONT END DESIGNING METHODS USING THYM LEAF
	 * +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	 * +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	 * +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	 * 
	 * */	
		
		//New methods through ThymLeaf
		
		
		@RequestMapping(value="/login",method=RequestMethod.GET)
		public String getLoginForm() {
			return "login";
		}
		
		@RequestMapping(method=RequestMethod.POST, value="/login")
		public String validatate(@ModelAttribute(name="user") User user, Model model) {
			
			String exitPoint = "User not there ";
			boolean value = dao_object.isPresent(user.getEmailId());
			list = dao_object.searchAll();
			for (User index : list) {
				if (value && user.getUserName().equals(index.getUserName()) && user.getPassword().equals(index.getPassword())) {
				exitPoint= "User successfully logged in";
				}

			}
			
			
			return "index";
		}
		
		
		@RequestMapping(value="/register",method=RequestMethod.GET)
		public String getregisterForm() {
			return "register";
		}

		@RequestMapping(method=RequestMethod.POST, value="/register")
		public String saveUser(@ModelAttribute(name="user") User user, Model model) {
			
		/*	long numberOfUsers = dao_object.total();
			long count=100l+numberOfUsers++;
			String uid=Long.toString(count);*/
			User u1=new User(user.getEmailId(), user.getUserName(), user.getPassword());
			dao_object.create(u1);
			
		//	return "login";
			return "login";
			
			
			
		}
}
