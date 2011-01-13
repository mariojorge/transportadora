caminho = "#{Rails.root}/db/seed_data/"

File.open(caminho + 'estados.txt').each_with_index do |linha, index|
  pais, sigla, nome, ibge = linha.chomp.split('|')
  puts "Importando Estado #{index} - #{nome}"
  Ufd.create!(:sigla => sigla, :nome => nome, :codigo_ibge => ibge)
end

File.open(caminho + 'cidades.txt').each_with_index do |linha, index|
  ufd, ibge, nome = linha.chomp.split('|')
  puts "Importando Cidade #{index} - #{nome}"
  Cidade.create!(:ufd_id => ufd, :codigo_ibge => ibge, :nome => nome)
end

File.open(caminho + 'clientes.txt').each_with_index do |linha, index|
  cidade_id, nome_fantasia, razao_social, cnpj, endereco, bairro, cep = linha.chomp.split('|')
  puts "Importando Cliente #{index} - #{nome_fantasia}"
  Cliente.create!(:cidade_id => cidade_id, :nome_fantasia => nome_fantasia, :razao_social => razao_social, :cnpj => cnpj, :endereco => endereco, :bairro => bairro, :cep => cep)
end
