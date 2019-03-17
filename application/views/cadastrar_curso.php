    <img id="imagem" class="mw-100" src="<?php echo base_url ("extras/img/cadastro1.png");?>">
    <div class="home_container">
        <div class="home_content">
            <div class="titulo">Cadastro de Curso</div>
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
                    <form class="needs-validation"  action="<?php echo base_url();?>index.php/Funcoes/cadastrar_cursos" method="POST">
                    	<label  class="control-label">Nome do Curso</label>
                        <input type="text" class="formulario" name="nome" required="" placeholder="Ex: Serviço Social">
                </div>
                <div class="col-md-4 col-xs-12">
                    <label  class="control-label">Professor</label>
                        <select class="formulario" name="professor">
                            <?php foreach ($professores as $professor): ?>
                                <option value="<?php echo $professor->id_professor; ?>"><?php echo $professor->nome; ?></option>
                            <?php endforeach ?>
                        </select>
                </div>
            </div>
            <div class="col text-center">
                <button type="submit" class="botao" name="cadastrar_cursos">Cadastrar</button>
                </form>
            </div>
            <br>
        </div>