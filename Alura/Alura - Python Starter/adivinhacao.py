print("***********************************")
print("Bem vindo no jogo de adivinhacao")
print("***********************************")

numero_secreto = 42

chute_str = input("Digite o seu número: ")

print("Você digitou ", chute_str)

chute = int(chute_str)

if numero_secreto == chute:
    print("Você acertou!")
else:
    print("Poxa que pena, você errou.")

print ("Fim do jogo")
