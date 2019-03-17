    <img id="imagem" class="mw-100" src="<?php echo base_url ("extras/img/cadastro1.png");?>">
    <div class="home_container">
        <div class="home_content">
            <div class="titulo">Cadastro de Professor</div>
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
                <div class="col-md-9 col-xs-12">
                    <form class="needs-validation" action="<?php echo base_url();?>index.php/Funcoes/cadastrar_professor" method="POST">
                    	<label  class="control-label">Nome Completo</label> 
                        <input type="text" class="formulario" required="" name="nome" placeholder="Ex: Joaquina da Silva Braga">
                </div>
                <div class="col-md-3 col-xs-12">
                    <label  class="control-label">Data de Nascimento</label>
                    <input type="date" class="formulario" required="" name="nascimento">
                </div>
            </div>
            <div class="col text-center">
                <button type="submit" class="botao" name="cadastrar_professor">Cadastrar</button>
                </form>
            </div>
            <br>
      </div>