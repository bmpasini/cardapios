# Menu, fazer pelo server
# Restaurante, fazer pelo server

["Africano", "Alemão", "Americano", "Árabe", "Argentino", "Armênio", "Asiático", "Australiano", "Bar", "Bistro", "Brasileiro", "Buffet e Quilo", "Cachorro Quente", "Café", "Cervejaria", "Chileno", "Chinês", "Churrascaria", "Comida Baiana", "Comida Mineira", "Comida Nordestina", "Contemporâneo", "Coreano", "Escandinavo", "Espanhol", "Fondue", "Francês", "Galeteria", "Grego", "Hamburgueria", "Indiano", "Inglesa", "Italiano", "Japonês", "Lanchonete", "Marroquino", "Mediterrâneo", "Mexicano", "Padaria", "Frutos do Mar / Peixe", "Peruano", "Petiscos", "Pizzaria", "Português", "Restaurante Natural", "Russo", "Sanduicheria", "Sobremesas", "Sopa", "Sorveteria", "Sucos", "Suíço", "Tailandês", "Temakeria", "Vegetariano"].each { |specialty| RestaurantSpecialty.create(specialty: specialty) }

["Barra Funda", "Bela Vista", "Bom Retiro", "Brooklin", "Brás", "Butantã", "Campo Belo", "Campo Grande", "Centro", "Cerqueira César", "Cidade Ademar", "Consolação", "Cursino", "Freguesia do Ó", "Higienópolis", "Ipiranga", "Itaim Bibi", "Itaquera", "Jabaquara", "Jardim Paulista", "Jardim Paulistano", "Lapa", "Liberdade", "Moema", "Mooca", "Morumbi", "Paraíso", "Penha", "Perdizes", "Pinheiros", "República", "Sacomã", "Santa Cecília", "Santana", "Santo Amaro", "Saúde", "Sé", "Tatuapé", "Tucuruvi", "Vila Formosa", "Vila Guilherme", "Vila Leopoldina", "Vila Madalena", "Vila Mariana", "Vila Nova Conceição", "Vila Olímpia", "Vila Prudente", "Vila Sônia"].each { |neighborhood| Neighborhood.create(name: neighborhood) }


