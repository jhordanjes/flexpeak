	<br>
	<br>
	<footer class="page-footer font-small teal pt-4">
	    <div class="container-fluid text-center text-md-left">
	    	<div class="row">
	        	<div class="col-md-12 col-xs-12">
	        		<h5 class="text-uppercase font-weight-bold text-center">Contato</h5>
	          		<p class="text-uppercase text-center"><strong>Endereço:</strong> Rua Major Gabriel, Nº 863 APT 07, CENTRO</p>
	          		<p class="text-center"><strong>Telefone:</strong> (92) 98410-9787 / 98410-9787</p>
	          		<p class="text-center"><strong>E-mail:</strong> jhordanjes@gmail.com</p>
	          		<div class="col text-center">
		          		<a target="blank" href="https://instagram.com/jhordanjesse"><img class="img-social" src="<?php echo base_url ("extras/img/instagram.png");?>" alt="..."></a>
	              		<a target="blank"  href="https://m.facebook.com/jhordanolive" href="#"><img class="img-social" src="<?php echo base_url ("extras/img/facebook.png");?>" alt="..."></a>
	              		<a target="blank" href="https://linkedin.com/in/jhordan-oliveira-743330162"><img class="img-social" src="<?php echo base_url ("extras/img/linkedin.png");?>" alt="..."></a>
              		</div>
	        	</div>
	      	</div>
	    </div>
    	<div class="footer-copyright text-center py-3">© 2019 Criado Por: Jhordan Jessé O. de Albuquerque</div>
  	</footer>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="<?php echo base_url ("extras/DataTables/datatables.min.js");?>"></script>
    <script src="https://unpkg.com/ionicons@4.5.5/dist/ionicons.js"></script>
    
    <script type="text/javascript">
      	$(document).ready( function () {
    		$('#tabela').DataTable({
        		"language": {
		            "lengthMenu": "Mostrando _MENU_ registros por página",
		            "zeroRecords": "Nada encontrado",
		            "info": "Mostrando página _PAGE_ de _PAGES_",
		            "infoEmpty": "Nenhum registro disponível",
		            "infoFiltered": "(filtrado de _MAX_ registros no total)",
		            "search": "Procurar",
		            "paginate": {"previous": "Anterior", "next": "Próximo"} 
        		}
    		});
		} );
    </script>
  </body>
</html>