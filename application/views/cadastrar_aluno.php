    <img id="imagem" class="img-fluid" src="<?php echo base_url ("extras/img/cadastro1.png");?>">
    <div class="home_container">
        <div class="home_content">
            <div class="titulo">Cadastro de Aluno</div>
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
                <div class="col-md-8 col-xs-12">
                    <form class="needs-validation" action="<?php echo base_url();?>index.php/Funcoes/cadastrar_alunos"  method="POST">
                    	<label  class="control-label">Nome Completo</label>
                        <input type="text" class="formulario" name="nome" required="" placeholder="Ex: João da Silva Souza">
                        <label  class="control-label">Curso</label>
                        <select class="formulario" name="curso">
                            <?php foreach ($cursos as $curso): ?>
                                <option value="<?php echo $curso->id_curso; ?>"><?php echo $curso->nome_curso; ?></option>
                            <?php endforeach ?>
                        </select>
                        <label  class="control-label" for="cep">CEP</label>
                        <input name="cep" type="text" id="cep" required="" class="formulario" value="" size="9" maxlength="9"
               onblur="pesquisacep(this.value);" placeholder="Apenas Números" />
                        <label  class="control-label" for="rua">Rua</label>
                        <input type="text" class="formulario" required="" value="" name="rua" id="rua" />
                     	<label  class="control-label" for="bairro">Bairro</label>
                        <input type="text" class="formulario" value="" name="bairro" id="bairro" />
                </div>
                <div class="col-md-4 col-xs-12">
                    <label  class="control-label">Data de Nascimento</label>
                    <input type="date" class="formulario" required="" name="nascimento">
                    <label  class="control-label" for="localidade">Cidade</label>
                    <input name="localidade" value="" type="text" required="" class="formulario" id="localidade" />
                    <label  class="control-label">Numero</label>
                    <input type="text" class="formulario" required="" name="numero">
                    <label  class="control-label" for="estado">Estado</label>
                    <input name="estado" class="formulario" value="" required="" type="text" id="uf" size="2" />
                </div>
            </div>
            <div class="col text-center">
                <button type="submit" class="botao" name="cadastrar_alunos">Cadastrar</button>
                </form>
            </div>
            <br>
      </div>