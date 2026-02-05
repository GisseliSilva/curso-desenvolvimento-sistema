medicamentos = []

for i in range(5):
    nome = input(f'Digite o nome do {i+1}º medicamento: ')
    preco_str = input(f'Digite o preco do {i+1}º medicamento: R$ ')
    preco = float(preco_str.replace(',',',','.'))
    medicamentos.append({'nome': nome, 'preco':preco}) 

    mais_barato = min(medicamentos, key=lambda x: x['preco'])

    media = sum(medicamento['preco'] for medicamento in medicamentos)/5
    print(f"\n Medicamento mais barato: {mais_barato['nome']} (R$) {mais_barato['preco']: .2f}")
    print(f'média aritmétrica dos preços: R$ {media: .2f}')
    

    
    
