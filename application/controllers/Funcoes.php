<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Funcoes extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->helper("url");
		$this->load->model("Consultas");
	}


	//FUNÇÃO PARA EXCLUIR CURSO
	public function remover_curso($id_curso=null){
		$this->db->where('id_curso',$id_curso);
		if($this->db->delete('cursos')){
			$this->session->set_flashdata('info', 'Curso Excluido com sucesso!');
			redirect ('index.php/Welcome/listar_cursos');
		}
	}

	//FUNÇÃO PARA EXCLUIR PROFESSOR
	public function remover_professor($id_professor=null){
		$this->db->where('id_professor',$id_professor);
		if($this->db->delete('professores')){
			$this->session->set_flashdata('info', 'Professor Excluido com sucesso!');
			redirect ('index.php/Welcome/listar_profs');
		}
	}

	//FUNÇÃO PARA EXCLUIR ALUNO
	public function remover_aluno($id_aluno=null){
		$this->db->where('id_aluno',$id_aluno);
		if($this->db->delete('alunos')){
			$this->session->set_flashdata('info', 'Aluno Excluido com sucesso!');
			redirect ('index.php/Welcome/listar_alunos');
		}
	}

	//FUNÇÃO PARA EDITAR
	public function editar ($id=null){
		if(isset($_POST['editar_aluno'])){
			$id = strip_tags(trim($_POST['id']));
			$aluno['nome'] =  strip_tags(trim($_POST['nome']));
			$aluno['rua'] =  strip_tags(trim($_POST['rua']));
			$aluno['bairro'] =  strip_tags(trim($_POST['bairro']));
			$aluno['cidade'] =  strip_tags(trim($_POST['cidade']));
			$aluno['curso'] =  strip_tags(trim($_POST['curso']));
			$aluno['data_nasc'] =  strip_tags(trim($_POST['nascimento']));
			$aluno['cep'] =  strip_tags(trim($_POST['cep']));
			$aluno['numero'] =  strip_tags(trim($_POST['numero']));
			$aluno['estado'] =  strip_tags(trim($_POST['estado']));
			$this->db->where('id_aluno',$id);
			if($this->db->update('alunos', $aluno)){
				$this->session->set_flashdata('info', 'Aluno Atualizado Com Sucesso!');
				redirect ('index.php/Welcome/listar_alunos');
			}
		}if(isset($_POST['editar_curso'])){
			$id = strip_tags(trim($_POST['id']));
			$curso['nome'] =  strip_tags(trim($_POST['nome']));
			$curso['criacao'] =  strip_tags(trim($_POST['criacao']));
			$curso['id_professor'] =  strip_tags(trim($_POST['id_professor']));
			$this->db->where('id_curso',$id);
			if($this->db->update('cursos', $curso)){
				$this->session->set_flashdata('info', 'Curso Atualizado Com Sucesso!');
				redirect ('index.php/Welcome/listar_cursos');
			}
		}if(isset($_POST['editar_professor'])){
			$id = strip_tags(trim($_POST['id']));
			$professor['nome'] =  strip_tags(trim($_POST['nome']));
			$professor['criacao'] =  strip_tags(trim($_POST['criacao']));
			$professor['data_nasc'] =  strip_tags(trim($_POST['data_nasc']));
			$this->db->where('id_professor',$id);
			if($this->db->update('professores', $professor)){
				$this->session->set_flashdata('info', 'Professor Atualizado Com Sucesso!');
				redirect ('index.php/Welcome/listar_profs');
			}
		}
	}

	//FUNÇÃO PARA CADASTRAR CURSO
	public function cadastrar_cursos(){
		if(isset($_POST['cadastrar_cursos'])){
			$nome =  strip_tags(trim($_POST['nome']));
			$professor =  strip_tags(trim($_POST['professor']));

			$res = $this->Consultas->cadastrar_cursos($nome, $professor);
			if($res){
				$this->session->set_flashdata('info', 'Curso cadastrado com sucesso!');
				redirect ('index.php/Welcome/cadastrar_curso');
			}else{
				$this->session->set_flashdata('error', 'Falha ao salvar os dados no Banco!');
				redirect ('index.php/Welcome/cadastrar_curso');
			}
		}
	}

	//FUNÇÃO PARA CADASTRAR PROFESSORES
	public function cadastrar_professor(){
		if(isset($_POST['cadastrar_professor'])){
			$nome =  strip_tags(trim($_POST['nome']));
			$nascimento =  strip_tags(trim($_POST['nascimento']));

			$res = $this->Consultas->cadastrar_professor($nome, $nascimento);
			if($res){
				$this->session->set_flashdata('info', 'Professor cadastrado com sucesso!');
				redirect ('index.php/Welcome/cadastrar_prof');
			}else{
				$this->session->set_flashdata('error', 'Falha ao salvar os dados no Banco!');
				redirect ('index.php/Welcome/cadastrar_prof');
			}
		}
	}

	//FUNÇÃO PARA CADASTRAR ALUNO
	public function cadastrar_alunos(){
		if(isset($_POST['cadastrar_alunos'])){
			$nome =  strip_tags(trim($_POST['nome']));
			$curso =  strip_tags(trim($_POST['curso']));
			$rua =  strip_tags(trim($_POST['rua']));
			$bairro =  strip_tags(trim($_POST['bairro']));
			$cidade =  strip_tags(trim($_POST['localidade']));
			$nascimento =  strip_tags(trim($_POST['nascimento']));
			$cep =  strip_tags(trim($_POST['cep']));
			$numero =  strip_tags(trim($_POST['numero']));
			$estado =  strip_tags(trim($_POST['estado']));

			$res = $this->Consultas->cadastrar_alunos($nome, $curso, $rua, $bairro, $cidade, $nascimento, $cep, $numero, $estado);
			if($res){
				$this->session->set_flashdata('info', 'Aluno cadastrado com sucesso!');
				redirect ('index.php/Welcome/cadastrar_aluno');
			}else{
				$this->session->set_flashdata('error', 'Falha ao salvar os dados no Banco!');
				redirect ('index.php/Welcome/cadastrar_aluno');
			}
		}
	}

	public function relatorio_alunos(){
		$dados['alunos'] = $this->Consultas->busca_alunos();
		$dados['cursos'] = $this->Consultas->busca_cursos();
		$dados['professores'] = $this->Consultas->busca_professores();
		$mpdf = new \Mpdf\Mpdf();
		$this->load->view('relatorio_alunos',$dados);
		$html = $this->load->view('relatorio_alunos',null,true);
		$mpdf->WriteHTML($html);
		$mpdf->Output();
	}

	public function relatorio_cursos(){
		$dados['cursos'] = $this->Consultas->busca_cursos();
		$dados['professores'] = $this->Consultas->busca_professores();
		$mpdf = new \Mpdf\Mpdf();
		$this->load->view('relatorio_cursos',$dados);
		$html = $this->load->view('relatorio_cursos',null,true);
		$mpdf->WriteHTML($html);
		$mpdf->Output();
	}

	public function relatorio_professores(){
		$dados['professores'] = $this->Consultas->busca_professores();
		$mpdf = new \Mpdf\Mpdf();
		$this->load->view('relatorio_professores',$dados);
		$html = $this->load->view('relatorio_professores',null,true);
		$mpdf->SetTitle('Relatório de professores');
		$mpdf->WriteHTML($html);
		$mpdf->Output();
	}
}