    <img id="imagem" class="mw-100" src="<?php echo base_url ("extras/img/home.png");?>">
    <div class="home_container">
        <div class="home_content">
            <div class="titulo">Bem-Vindo a Flex Peak</div>
        </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-xs-12">
          <br>
          <h4 class="text-center" style="color: #00796b;">Últimos Registros</h4>
          <br>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 col-xs-12">
            <div class="card" >
              <a href="<?php echo base_url();?>index.php/Welcome/listar_profs">
                <div class="card-header"><strong>Professores</strong></div>
              </a>
              <ul class="list-group list-group-flush">
                <?php foreach ($professores as $professor): ?>
                <li class="list-group-item"><?= $professor->nome ?></li>
                <?php endforeach ?>
              </ul>
            </div>  
        </div>
        <div class="col-md-4 col-xs-12">
          <a href="<?php echo base_url();?>index.php/Welcome/listar_alunos">
            <div class="card" >
              <a href="<?php echo base_url();?>index.php/Welcome/listar_alunos">
                <div class="card-header"><strong>Alunos</strong></div>
              </a>
              <ul class="list-group list-group-flush">
                <?php foreach ($alunos as $aluno): ?>
                <li class="list-group-item"><?= $aluno->nome ?></li>
                <?php endforeach ?>
              </ul>
            </div>
        </div>
        <div class="col-md-4 col-xs-12">
            <div class="card" >
              <a href="<?php echo base_url();?>index.php/Welcome/listar_cursos">
                <div class="card-header"><strong>Cursos</strong></div>
              </a>
              <ul class="list-group list-group-flush">
                <?php foreach ($ultcursos as $curso): ?>
                <li class="list-group-item"><?= $curso->nome_curso ?></li>
                <?php endforeach ?>
              </ul>
            </div>
        </div>
      </div>
      <br>
      <div class="col text-center">
        <small class="text-center">*Para visualizar mais informações, basta clicar no índice do card desejado*</small>
      </div>
      <br>
    </div>