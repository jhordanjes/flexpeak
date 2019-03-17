<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <title>Relatório de Professores</title>
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
    <h2 style="text-align: center;">RELATÓRIO DE PROFESSORES</h2>
    <table class="table">
      <thead class="titulo">
        <tr>
          <th>Nome</th>
          <th>Data de Nascimento</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($professores as $professor): ?>
          <tr>
            <th class="corpo" style="width: 450px;"><?php echo $professor->nome; ?></th>
            <th class="corpo" style="width: 250px;"><?php echo $professor->data_nasc; ?></th>
          </tr>
        <?php endforeach ?>
      </tbody>
    </table>  
  </div>
  </body>
</html>