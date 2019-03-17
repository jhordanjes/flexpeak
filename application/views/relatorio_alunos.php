<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <title>Relatório de Alunos</title>
    <meta charset="utf-8">
    <style type="text/css">
    .corpo{
      font-weight: 400;
    }

    tr,th{
      padding: 10px;
      text-align: left;
    }

    th{
     border: 1px solid;
    }
    </style>
  </head>
  <body>
  <div class="container">
    <h2 style="text-align: center;">RELATÓRIO DE ALUNOS</h2>
    <table class="table">
      <thead class="titulo">
        <tr>
          <th>Nome</th>
          <th>Curso</th>
          <th>Professor</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($alunos as $aluno): ?>
          <tr>
            <th class="corpo" style="width: 350px;"><?php echo $aluno->nome; ?></th>
            <th class="corpo" style="width: 160px;"><?php 
                                      foreach ($cursos as $curso):
                                        if($curso->id_curso == $aluno->curso)
                                          echo $curso->nome_curso;
                                      endforeach ?> 
            </th>
            <th class="corpo" style="width: 160px;">
              <?php
              foreach ($cursos as $curso):
                foreach ($professores as $professor):
                  if($curso->id_curso == $aluno->curso && $curso->id_professor == $professor->id_professor)
                    echo $professor->nome;
                  endforeach;
              endforeach; ?>
            </th>
          </tr>
        <?php endforeach ?>
      </tbody>
    </table>  
  </div>
  </body>
</html>