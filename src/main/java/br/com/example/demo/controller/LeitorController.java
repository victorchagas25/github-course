package br.com.example.demo.controller;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.example.demo.dao.LeitorDAO;
import br.com.example.demo.model.Leitor;

@RequestMapping("/leitor")
@Controller
public class LeitorController {

	@Autowired
	LeitorDAO leitordao;

	@RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView gravar(@Valid Leitor leitor) {

		Map<String, Object> data = new HashMap<String, Object>();

		leitordao.save(leitor);

		data.put("mensagem", "Cadastrado com Sucesso");

		return new ModelAndView("index");

	}

	@GetMapping("/listar")
	public ModelAndView listar(Leitor leitor) {

		leitordao.lista(leitor);
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("listaleitor", leitordao.lista(leitor));

		return new ModelAndView("listar", data);

	}

	@ResponseBody
	@PostMapping("/atualiza")
	public ModelAndView atualizar(Leitor leitor) {
		leitordao.findById(leitor.getId());

		leitordao.save(leitor);

		return new ModelAndView("atualiza");
	}
	
	@RequestMapping("/excluir")
	public ModelAndView excluir(Leitor leitor) {
		
		leitordao.deleteById(leitor.getId());
		leitordao.delete(leitor);
		
		return new ModelAndView("delete");
	}

}
