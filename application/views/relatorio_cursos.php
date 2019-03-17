<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <title>Relatório de Cursos</title>
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
    <h2 style="text-align: center;">RELATÓRIO DE CURSOS</h2>
    <table class="table">
      <thead class="titulo">
        <tr>
          <th>Nome</th>
          <th>Professor Responsável</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($cursos as $curso): ?>
          <tr>
            <th class="corpo" style="width: 350px;"><?php echo $curso->nome_curso; ?></th>
            <th class="corpo" style="width: 350px;"><?php 
                                      foreach ($professores as $professor):
                                        if($curso->id_professor == $professor->id_professor)
                                          echo $professor->nome;
                                      endforeach ?> 
            </th>
          </tr>
        <?php endforeach ?>
      </tbody>
    </table>  
  </div>
  </body>
</html>