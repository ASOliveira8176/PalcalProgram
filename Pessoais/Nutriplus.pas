//Título do Programa
program	Nutriplus;
//Variáveis
var
	peso,altura,imc,pesoid: real{3};
	nome:string;
	sexo:char;
//Comandos de entrada do programa
begin
  writeln('Seja bem vindo ao Nutriplus!!!');
  write('Digite aqui o seu nome: ');readln(nome);
  write('Digite aqui o seu peso: ');readln(peso);
  write('Digite aqui a sua altura: ');readln(altura);
	write('Digite aqui o seu sexo, sendo [M] para Masculino e [F] para Feminino: ');readln(sexo);
//Processamento de dados
//Condição para caso valores inválidos sejam digitados
	while peso<=0 do
		begin
  		write('Este peso não é válido, tente novamente: ');readln(peso);
		end;
	while altura <= 0	do
		begin
  		write('Esta não é uma altura válida, digite novamente: ');readln(altura);
		end;
//Calculo do IMC
imc:=peso/(altura*altura);
//Respostas possíveis para o resultado do IMC
if imc<20 then
	begin
  	writeln('Este é o seu IMC (Índice de Massa Corpórea): ',imc);
  	writeln('Seu estado atual é de baixo peso, então palito de dente, tá na hora de ganhar massa!!!')
	end
else
	if (imc>=20) and (imc<25) then
		begin
 			writeln('Este é o seu IMC (Índice de Massa Corpórea): ',imc);
			writeln('Seu estado atual é adequado, sendo assim meus parabéns você esta em forma, continue o seu bom trabalho para manter o seu corpo assim!!!')
		end
	else
		if (imc>=20) and (imc<30) then
			begin
 				writeln('Este é o seu IMC (Índice de Massa Corpórea): ',imc);
				writeln('Seu estado atual é sobrepeso, sinto em dizer mas será necessário fazer uma dieta, mas alegre-se o seu estado pode ser revertido com uma dieta básica e um pouco de exercício!!!')
			end
		else
			if (imc>=30) and (imc<40) then
				begin
 					writeln('Este é o seu IMC (Índice de Massa Corpórea): ',imc);
					writeln('Seu estado atual é de obesidade, esse caso está grave você deve fazer exercícios e uma dieta o mais breve possível, antes que acarrete em coisas piores!!!')
				end
			else
			if (imc>=40) and (imc<61) then
				begin
 					writeln('Este é o seu IMC (Índice de Massa Corpórea): ',imc);
					writeln('Seu estado atual é de obesidade morbida, sua situação está gravíssima você deverá tomar medidas imediatamente para aumentar as suas chances de ter um corpo saudável, serão exercícios pesados e uma dieta rigorosa sem opção de desistância!!!')
				end;
		writeln('Este é o seu IMC: ', imc);
end.