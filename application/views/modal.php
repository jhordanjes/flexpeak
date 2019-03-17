		<?php foreach ($alunos as $aluno): ?>
			<div class="modal fade bd-example-modal-lg" id="editar_aluno<?php echo $aluno->id_aluno;?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
			    	<div class="modal-content">
			    		<div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">Editar</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					    </div>
					    <div class="modal-body">
					    	<div class="row">
	                    		<div class="col-md-8 col-xs-12">
	                    			<form class="needs-validation" action="<?php echo base_url();?>index.php/Funcoes/editar"  method="POST">
	                    				<input type="hidden" name="id" value="<?php echo $aluno->id_aluno; ?>">
	                        			<label  class="control-label">Nome Completo</label>
	                        			<input type="text" class="formulario" name="nome" value="<?php echo $aluno->nome; ?>">
	                        			<label  class="control-label">Rua</label>
	                        			<input type="text" class="formulario" name="rua" value="<?php echo $aluno->rua; ?>">
	                        			<label  class="control-label">Bairro</label>
	                        			<input type="text" class="formulario" name="bairro" value="<?php echo $aluno->bairro; ?>">
	                       				<label  class="control-label">Cidade</label>
	                        			<input type="text" class="formulario" name="cidade" value="<?php echo $aluno->cidade; ?>">
	                        			<label  class="control-label">Curso</label>
	                        			<select class="formulario" name="curso">
                            				<option value="<?php echo $aluno->curso; ?>">
                            					<?php 
                            					foreach ($cursos as $curso):
                            						if($aluno->curso == $curso->id_curso)
                            							echo $curso->nome_curso;
                            					endforeach ?>
                            				</option>
                            				<?php foreach ($cursos as $curso): ?>
                            				<option value="<?php echo $curso->id_curso; ?>"><?php echo $curso->nome_curso; ?></option>
                            				<?php endforeach ?>
                        				</select>
	                    		</div>
	                    		<div class="col-md-4 col-xs-12">
	                    			<label  class="control-label">Data de Nascimento</label>
                    				<input type="date" class="formulario" name="nascimento" value="<?php echo $aluno->data_nasc; ?>">
                    				<label  class="control-label">CEP</label>
                    				<input type="text" class="formulario" name="cep" value="<?php echo $aluno->cep; ?>">
                    				<label  class="control-label">Numero</label>
                    				<input type="text" class="formulario" name="numero" value="<?php echo $aluno->numero; ?>">
                    				<label  class="control-label">Estado</label>
                    				<input type="text" class="formulario" name="estado" value="<?php echo $aluno->estado; ?>">
	                    		</div>
	                    	</div>
					    </div>
					    <div class="modal-footer">
                  			<button type="submit" class="botao" name="editar_aluno" onclick="return confirm('Deseja realmente salvar as alterações?');">Atualizar</button>
                  			</form>
                		</div>
			    	</div>
			    </div>
			</div>
		<?php endforeach ?>

		<?php foreach ($cursos as $curso): ?>
			<div class="modal fade bd-example-modal-lg" id="editar_curso<?php echo $curso->id_curso;?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
			    	<div class="modal-content">
			    		<div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">Editar</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					    </div>
					    <div class="modal-body">
					    	<div class="row">
	                    		<div class="col-md-12 col-xs-12">
	                    			<form class="needs-validation" action="<?php echo base_url();?>index.php/Funcoes/editar"  method="POST">
	                    				<input type="hidden" name="id" value="<?php echo $curso->id_curso; ?>">
	                        			<label  class="control-label">Nome Completo</label>
	                        			<input type="text" class="formulario" name="nome" value="<?php echo $curso->nome_curso; ?>">
	                        			<label  class="control-label">Criação</label>
	                        			<input type="text" class="formulario" name="criacao" value="<?php echo $curso->criacao; ?>">
	                        			<label  class="control-label">Professor Responsável</label>
	                        			<select class="formulario" name="id_professor">
                            				<option value="<?php echo $curso->id_professor; ?>">
                            					<?php 
                            					foreach ($professores as $professor):
                            						if($curso->id_professor == $professor->id_professor)
                            							echo $professor->nome;
                            					endforeach ?>
                            				</option>
                            				<?php foreach ($professores as $professor): ?>
                            				<option value="<?php echo $professor->id_professor; ?>"><?php echo $professor->nome; ?></option>
                            				<?php endforeach ?>
                        				</select>
	                    		</div>
	                    	</div>
					    </div>
					    <div class="modal-footer">
                  			<button type="submit" class="botao" name="editar_curso" onclick="return confirm('Deseja realmente salvar as alterações?');">Atualizar</button>
                  			</form>
                		</div>
			    	</div>
			    </div>
			</div>
		<?php endforeach ?>

		<?php foreach ($professores as $professor): ?>
			<div class="modal fade bd-example-modal-lg" id="editar_professor<?php echo $professor->id_professor;?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
			    	<div class="modal-content">
			    		<div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">Editar</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					    </div>
					    <div class="modal-body">
					    	<div class="row">
	                    		<div class="col-md-12 col-xs-12">
	                    			<form class="needs-validation" action="<?php echo base_url();?>index.php/Funcoes/editar"  method="POST">
	                    				<input type="hidden" name="id" value="<?php echo $professor->id_professor; ?>">
	                        			<label  class="control-label">Nome Completo</label>
	                        			<input type="text" class="formulario" name="nome" value="<?php echo $professor->nome; ?>">
	                        			<label  class="control-label">Data de Nascimento</label>
	                        			<input type="text" class="formulario" name="data_nasc" value="<?php echo $professor->data_nasc; ?>">
	                        			<label  class="control-label">Criação</label>
	                        			<input type="text" class="formulario" name="criacao" value="<?php echo $professor->criacao; ?>">
	                    		</div>
	                    	</div>
					    </div>
					    <div class="modal-footer">
                  			<button type="submit" class="botao" name="editar_professor" onclick="return confirm('Deseja realmente salvar as alterações?');">Atualizar</button>
                  			</form>
                		</div>
			    	</div>
			    </div>
			</div>
		<?php endforeach ?>