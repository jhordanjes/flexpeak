<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Consultas extends CI_Model {
	function __construct(){
		parent::__construct();
	}


	function cadastrar_professor($nome,$nascimento){
		return $this->db->query("INSERT INTO professores(nome, data_nasc) VALUES ('$nome','$nascimento')");
	}

	function cadastrar_cursos($nome,$professor){
		return $this->db->query("INSERT INTO cursos(nome_curso, id_professor) VALUES ('$nome','$professor')");
	}

	function cadastrar_alunos($nome, $curso, $rua, $bairro, $cidade, $nascimento, $cep, $numero, $estado){
		return $this->db->query("INSERT INTO alunos(nome, curso, rua, bairro, cidade, data_nasc, cep, numero, estado) VALUES ('$nome','$curso','$rua','$bairro','$cidade','$nascimento','$cep','$numero','$estado')");
	}

	function busca_professores(){
		$this->db->order_by('nome','CRES');
		return $this->db->get("professores")->result();
	}

	function busca_cursos(){
		$this->db->order_by('nome_curso','CRES');
		return $this->db->get("cursos")->result();
	}

	function busca_alunos(){
		$this->db->order_by('nome','CRES');
		return $this->db->get("alunos")->result();
	}

	function ultimos_cursos(){
		$this->db->order_by('id_curso','DESC');
		$this->db->limit(5);
		return $this->db->get("cursos")->result();
	}

	function ultimos_alunos(){
		$this->db->order_by('id_aluno','DESC');
		$this->db->limit(5);
		return $this->db->get("alunos")->result();
	}

	function ultimos_profs(){
		$this->db->order_by('id_professor','DESC');
		$this->db->limit(5);
		return $this->db->get("professores")->result();
	}

	function buscaporcurso($id){
		$this->db->where('id_curso',$id);
		$this->db->join('cursos','id_curso=curso','inner');
		$this->db->order_by('nome','DESC');
		return $this->db->get("alunos")->result();
	}
}