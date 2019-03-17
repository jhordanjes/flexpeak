		<img id="imagem" class="mw-100" src="<?php echo base_url ("extras/img/listar.png");?>">
	    <div class="home_container">
	        <div class="home_content">
	            <div class="titulo">Lista de Alunos</div>
	        </div>
	    </div>
		<div class="container">
			<br>
            <?php if ($this->session->flashdata('info')){?>
	            <div class="alert alert-info alert-dismissible" role="alert">
	                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                <p><strong><?php echo $this->session->flashdata('info'); ?></strong></p>
	            </div>
           	<?php } ?>
			<div class="row">
				<div class="col-md-12 col-xs-12">
					<table class="table" id="tabela">
						<thead>
							<tr>
							    <th scope="col">ID</th>
							    <th scope="col">Nome</th>
							    <th scope="col">Curso</th>
							    <th scope="col">Açoes</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach ($alunos as $aluno): ?>
								<tr>
								    <th scope="row"><?= $aluno->id_aluno ?></th>
								    <td><?= $aluno->nome ?></td>
								    <td><?php 
                            					foreach ($cursos as $curso):
                            						if($aluno->curso == $curso->id_curso)
                            							echo $curso->nome_curso;
                            					endforeach ?>
                            		</td>
								    <td><button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#editar_aluno<?php echo $aluno->id_aluno;?>"><ion-icon name="create"></ion-icon></button>
								    <a href="<?= base_url ('index.php/Funcoes/remover_aluno/'.$aluno->id_aluno) ?>" type="button" class="btn btn-outline-success" onclick="return confirm('Deseja realmente excluir este aluno?');"><ion-icon name="trash"></ion-icon></a>
								    </td>
								</tr>
							<?php endforeach ?>
						</tbody>
					</table>
				</div>
			</div>
			<br>
		</div>
