<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->helper("url");
		$this->load->model("Consultas");
	}
	
	//CHAMADA DA VIEW HOME
	public function index (){
		$dados['ultcursos'] = $this->Consultas->ultimos_cursos();
		$dados['alunos'] = $this->Consultas->ultimos_alunos();
		$dados['professores'] = $this->Consultas->ultimos_profs();
		$dados['cursos'] = $this->Consultas->busca_cursos();
		$this->load->view('head',$dados);
		$this->load->view('index',$dados);
		$this->load->view('footer');
	}

	//CHAMADA DA VIEW CADASTRO DE ALUNOS
	public function cadastrar_aluno(){
		$dados['cursos'] = $this->Consultas->busca_cursos();
		$this->load->view('head',$dados);
		$this->load->view('cadastrar_aluno',$dados);
		$this->load->view('footer');
	}

	//CHAMADA DA VIEW CADASTRO DE CURSOS
	public function cadastrar_curso(){
		$dados['cursos'] = $this->Consultas->busca_cursos();
		$dados['professores'] = $this->Consultas->busca_professores();
		$this->load->view('head',$dados);
		$this->load->view('cadastrar_curso',$dados);
		$this->load->view('footer');
	}

	//CHAMADA DA VIEW CADASTRO DE PROFESSORES
	public function cadastrar_prof(){
		$dados['cursos'] = $this->Consultas->busca_cursos();
		$this->load->view('head',$dados);
		$this->load->view('cadastrar_prof');
		$this->load->view('footer');
	}

	//CHAMADA DA VIEW LISTAGEM DE ALUNOS
	public function listar_alunos(){
		$dados['alunos'] = $this->Consultas->busca_alunos();
		$dados['cursos'] = $this->Consultas->busca_cursos();
		$dados['professores'] = $this->Consultas->busca_professores();
		$this->load->view('head',$dados);
		$this->load->view('listar_alunos',$dados);
		$this->load->view('modal',$dados);
		$this->load->view('footer');
	}

	//CHAMADA DA VIEW LISTAGEM DE PPROFESSORES
	public function listar_profs(){
		$dados['cursos'] = $this->Consultas->busca_cursos();
		$dados['alunos'] = $this->Consultas->busca_alunos();
		$dados['professores'] = $this->Consultas->busca_professores();
		$this->load->view('head',$dados);
		$this->load->view('listar_profs',$dados);
		$this->load->view('modal',$dados);
		$this->load->view('footer');
	}

	//CHAMADA DA VIEW LISTAGEM DE CURSOS
	public function listar_cursos(){
		$dados['cursos'] = $this->Consultas->busca_cursos();
		$dados['alunos'] = $this->Consultas->busca_alunos();
		$dados['professores'] = $this->Consultas->busca_professores();
		$this->load->view('head',$dados);
		$this->load->view('listar_cursos',$dados);
		$this->load->view('modal',$dados);
		$this->load->view('footer');
	}

	//CHAMADA DA VIEW LISTAGEM DE ALUNOS POR CURSOS
	public function listar_porcurso($id=null){
		$dados['cursos'] = $this->Consultas->busca_cursos();
		$dados['alunos'] = $this->Consultas->buscaporcurso($id);
		$dados['professores'] = $this->Consultas->busca_professores();
		$this->load->view('head',$dados);
		$this->load->view('listar_porcurso',$dados);
		$this->load->view('modal',$dados);
		$this->load->view('footer');
	}
}