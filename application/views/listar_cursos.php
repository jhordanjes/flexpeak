		<img id="imagem" class="mw-100" src="<?php echo base_url ("extras/img/listar.png");?>">
	    <div class="home_container">
	        <div class="home_content">
	            <div class="titulo">Lista de Cursos</div>
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
							    	<th scope="col">Responsável</th>
							    	<th scope="col">Açoes</th>
							    </tr>
							</thead>
							<tbody>
								<?php foreach ($cursos as $curso): ?>
									<tr>
								    	<th scope="row"><?= $curso->id_curso ?></th>
								    	<td><?= $curso->nome_curso ?></td>
								    	<td>
								    		<?php 
                            					foreach ($professores as $professor):
                            						if($curso->id_professor == $professor->id_professor)
                            							echo $professor->nome;
                            					endforeach ?>
								    	</td>
								    	<td>
								    		<button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#editar_curso<?php echo $curso->id_curso;?>"><ion-icon name="create"></ion-icon></button>
								    		<a href="<?= base_url ('index.php/Funcoes/remover_curso/'.$curso->id_curso) ?>" type="button" class="btn btn-outline-success" onclick="return confirm('Deseja realmente excluir este curso?');"><ion-icon name="trash"></ion-icon></a>
								    	</td>
								    </tr>
								<?php endforeach ?>
							</tbody>
						</table>
					</div>
				</div>
				<br>
			</div>