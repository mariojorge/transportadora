$(document).ready(function(){
  
  $("[id*=data]").mask('99/99/9999')
  $("[id*=telefone]").mask('(99)9999-9999')
  $("[id*=cep]").mask('99.999-999')
  $("[id*=cnpj]").mask('99.999.999/9999-99')

  function preencher_combo_cidade(ufd_id) {
    $.getJSON("/ufd/" + ufd_id + '/cidades.json', function(data) {
      $('[id*=_cidade_id]').empty();
      $.each(data, function(i,item){
        $('[id*=_cidade_id]').append('<option value="' + item.cidade.id + '">' + item.cidade.nome + '</option>');
      });
      preencher_combo_cliente($('#entrega_cidade_id').val())
    });
  }

  function preencher_combo_cliente(cidade_id) {
    $.getJSON("/cidade/" + cidade_id + '/clientes.json', function(data) {
      $('#entrega_cliente_id').empty();
      $.each(data, function(i,item){
        $('#entrega_cliente_id').append('<option value="' + item.cliente.id + '">' + item.cliente.nome_fantasia + '</option>');
      });
    });
  }

  function preencher_combo_motorista(data_da_partida) {
    $.getJSON("/motoristas/" + data_da_partida + '/disponiveis.json', function(data) {
      $('#entrega_motorista_id').empty();
      $.each(data, function(i, item){
        $('#entrega_motorista_id').append('<option value="' + item.motorista.id + '">' + item.motorista.nome + '</option>')
      })
    });
  }

  $('[id*=_ufd_id]').change(function(){
    preencher_combo_cidade($(this).val());
    preencher_combo_motorista($('#entrega_data_da_partida').val().replace(/\//g,'-'));
  });

  $('#entrega_cidade_id').change(function(){
    preencher_combo_cliente($(this).val());  
  });    
  
  $('#entrega_data_da_partida').blur(function(){
    data_da_partida = $(this).val().replace(/\//g,'-');
    preencher_combo_motorista(data_da_partida);
  });

})
