		<img id="imagem" class="mw-100" src="<?php echo base_url ("extras/img/listar.png");?>">
	    <div class="home_container">
	        <div class="home_content">
	            <div class="titulo">Lista de Professores</div>
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
							    	<th scope="col">Criação</th>
							    	<th scope="col">Açoes</th>
							    </tr>
							</thead>
							<tbody>
								<?php foreach ($professores as $professor): ?>
									<tr>
								    	<th scope="row"><?= $professor->id_professor ?></th>
								    	<td><?= $professor->nome ?></td>
								    	<td><?php echo substr($professor->criacao, 0 , 10); ?></td>
								    	<td>
								    		<button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#editar_professor<?php echo $professor->id_professor;?>"><ion-icon name="create"></ion-icon></button>
								    		<a href="<?= base_url ('index.php/Funcoes/remover_professor/'.$professor->id_professor) ?>" type="button" class="btn btn-outline-success" onclick="return confirm('Deseja realmente excluir este aluno?');"><ion-icon name="trash"></ion-icon></a>
								    	</td>
								    </tr>
								<?php endforeach ?>
							</tbody>
						</table>
					</div>
				</div>
				<br>
			</div>