package br.com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.example.demo.model.Leitor;

@Repository
public interface LeitorDAO extends JpaRepository<Leitor, Long>  {
	
public void gravar(Leitor leitor);
	
	public List<Leitor> lista(Leitor leitor);
	
	public void atualizaLeitor(Leitor leitor);
	
	public void excluirLeitor(long id);
	
	

}
