package running.PI.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.elasticsearch.ElasticsearchException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import running.PI.model.DTO.PIDTO;
import running.PI.service.PIService;

@Controller
public class PIController {

	@Autowired
	private PIService PIService;

	public PIController() {
		System.out.println("\n===== PI Controller =====\n");
	}

	@GetMapping("/index")
	public String index() {
		return "index";
	}
	
	@GetMapping("/imageResult")
	public String imageResult() {
		return "imageResult";
	}

	@GetMapping("/imageResult/{name}")
	public Object imageResult(@PathVariable(value ="name") String name) {
		System.out.println("\n== 검색 페이지 호출 ==\n");
		System.out.println(name);

		List<PIDTO> result = new ArrayList<>();
		System.out.println(1);
		try {
			result = PIService.imageSearch(name);
			System.out.println(result);
			if(result==null) {
				System.out.println(2);
				return "redirect:/error";
			}
			System.out.println(3);
		} catch (ElasticsearchException | IOException e) {
			e.printStackTrace();
			System.out.println(4);
			return "redirect:/error";
		}
		System.out.println(5);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageResult");
		mav.addObject("pill", result);
		mav.addObject("id", result.get(0).getId());
		mav.addObject("itemName", result.get(0).getItemName());
		mav.addObject("entpName", result.get(0).getEntpName());
		return mav;
	}

	@GetMapping("/error")
	public String error() {
		return "error";
	}

	@GetMapping("/textresult")
	public Object searched(@RequestParam(value = "name") String name, @RequestParam(value = "print1") String print1,
			@RequestParam(value = "print2") String print2, @RequestParam(value = "shape") String shape,
			@RequestParam(value = "color") String color, PIDTO PIDTO) {
		System.out.println("\n== 검색 페이지 호출 ==\n");
		System.out.println(name + " " + print1 + " " + print2 + " " + shape + " " + color);
		ModelAndView mav = null;
		List<PIDTO> result = new ArrayList<>();

		try {
			result = PIService.textSearch(name, print1, print2, shape, color);
			if (result == null) {
				mav = new ModelAndView("redirect:/error");
				return mav;
			}
		} catch (ElasticsearchException | IOException e) {
			e.printStackTrace();
			mav = new ModelAndView("redirect:/error");
			return mav;
		}
		mav = new ModelAndView("/textresult");
		mav.addObject("pill", result);
		mav.addObject("id", result.get(0).getId());
		mav.addObject("itemName", result.get(0).getItemName());
		mav.addObject("entpName", result.get(0).getEntpName());
		return mav;
	}

	// 스프링 컨트롤러 부분
	@GetMapping("/json")
	public @ResponseBody String autocomplete() {
		Object array = null;
		Gson gson = new Gson();
		try {
			array = PIService.getAutocompleteData();

		} catch (IOException e) {
			e.printStackTrace();
		}
		return gson.toJson(array);
	}

	@GetMapping("/jsAuto")
	public String jsAuto() {
		System.out.println("== 자바스크립트 Autocomplete 페이지 호출 ==");

		return "jsAuto";
	}
}
