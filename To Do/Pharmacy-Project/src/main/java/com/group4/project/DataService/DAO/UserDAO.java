package com.group4.project.DataService.DAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.group4.project.DataService.Model.User;
import com.group4.project.DataService.Repository.UserRepository;

@Component
public class UserDAO {

	@Autowired
	UserRepository userRepository;

	//@RequestMapping(method = RequestMethod.POST, value = "user/create")

	public void create( User user) {
		userRepository.save(user);
	}

	//@RequestMapping(method = RequestMethod.DELETE, value = "users/remove")
	public void remove( User user) {
		userRepository.delete(user);
	}

	//@RequestMapping(method = RequestMethod.DELETE, value = "user/removeusingid/{id}")
	public void removebyId( String id) {
		userRepository.deleteById(id);
	}

	//@RequestMapping(method = RequestMethod.DELETE, value = "user/removeall")
	public void removeAll() {
		userRepository.deleteAll();
	}

	//@RequestMapping(method = RequestMethod.GET, value = "user/present/{id}")
	public boolean isPresent( String id) {
		return userRepository.existsById(id);
	}

	//@RequestMapping("user/total")
	public long total() {
		return userRepository.count();
	}

	//@RequestMapping(method = RequestMethod.GET, value = "user/searchbyid/{id}")
	public Optional<User> searchById( String id) {
		return userRepository.findById(id);
	}

	//@RequestMapping(method = RequestMethod.GET, value = "user/searchallbyid/{ids}")
	public Iterable<User> searchAllbyId(ArrayList<String> ids) {
		return userRepository.findAllById(ids);
	}

	//@RequestMapping(method = RequestMethod.POST, value = "user/createall")
	public void creatAll( ArrayList<User> u) {
		userRepository.saveAll(u);
	}

	//@RequestMapping("user/getall")
	public List<User> searchAll() {
		List<User> userList = userRepository.findAll();
		return userList;

	}

}
