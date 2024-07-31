
	package com.global.controller;

	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

	import com.global.service.BoardService;
import com.global.vo.BoardVO;

import lombok.AllArgsConstructor;
	import lombok.extern.log4j.Log4j;

	@Controller
	@RequestMapping("/board/*")
	@AllArgsConstructor
	public class BoardController {
		
		private BoardService boardService;
		
		@GetMapping("/insertForm")
		public String insertForm() {
			return "board/insertForm";
		}
		
		@PostMapping("/insert")
		public String insert(BoardVO boardVO) {
			boardService.insert(boardVO);
			return "redirect:/list";
		}
		
		@GetMapping("/list")
		public String list(Model model) {
			model.addAttribute("list", boardService.select());
			return "board/list";
		}

	}


