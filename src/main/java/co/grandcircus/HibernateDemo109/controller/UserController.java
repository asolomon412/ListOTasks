package co.grandcircus.HibernateDemo109.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.grandcircus.HibernateDemo109.model.Task;
import co.grandcircus.HibernateDemo109.model.UserInfo;
import co.grandcircus.HibernateDemo109.repo.TaskRepository;
import co.grandcircus.HibernateDemo109.repo.UserRepository;

@Controller

public class UserController {

	@Autowired
	UserRepository u;

	@Autowired
	TaskRepository t;

	private static UserInfo loggedIn;

	@RequestMapping("/")
	public ModelAndView loginPage() {
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}

	// check here to make sure the user isn't already in the db
	@RequestMapping("/login-confirmed")
	public ModelAndView loginNew(UserInfo user, RedirectAttributes fl) {
		System.out.println(user);
		ModelAndView mv = new ModelAndView("tasks");
		System.out.println();
		if (user.getUserId() == null && u.findByEmail(user.getEmail()) == null) {
			u.save(user);
			loggedIn = u.findByEmail(user.getEmail());
		} else if (u.findByEmail(user.getEmail()).getEmail().equalsIgnoreCase(user.getEmail())) {
			fl.addFlashAttribute("message", "Email already exists, please try again!");
			mv.setViewName("redirect:/");
			return mv;
		}

		return mv;
	}

	@RequestMapping("/login-request")
	public ModelAndView loginRequest(UserInfo user, RedirectAttributes redirectAttrs) {
		ModelAndView mv = new ModelAndView("tasks"); // tasks

		if (u.findByEmail(user.getEmail()) != null) {
			if (u.findByEmail(user.getEmail()).getPassword().equals(user.getPassword())) {
				mv.addObject("tasklist", u.findByEmail(user.getEmail()).getTask());
				loggedIn = u.findByEmail(user.getEmail());

				return mv;
			}

		}

		redirectAttrs.addFlashAttribute("message", "Invalid Credentials");

		mv.setViewName("redirect:/");

		return mv;
	}

	@RequestMapping("/logout")
	public ModelAndView logout(RedirectAttributes redirectAttrs) {
		ModelAndView mv = new ModelAndView("redirect:/");

		redirectAttrs.addFlashAttribute("message", "Logged out!");

		return mv;
	}

	@RequestMapping("/add-task")
	public ModelAndView loginNew(Task newTask, String date, RedirectAttributes fl) throws ParseException {

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		newTask.setDueDate(format.parse(date));
		newTask.setUser(loggedIn);

		t.save(newTask);

		return new ModelAndView("tasks", "tasklist", u.findById(loggedIn.getUserId()).orElse(null).getTask());
	}

	@RequestMapping("/completed")
	public ModelAndView taskCompleted(Integer taskid) {

		t.deleteById(taskid);

		return new ModelAndView("tasks", "tasklist", u.findById(loggedIn.getUserId()).orElse(null).getTask());
	}

}
