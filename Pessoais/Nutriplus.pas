//T�tulo do Programa
program	Nutriplus;
//Vari�veis
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
//Condi��o para caso valores inv�lidos sejam digitados
	while peso<=0 do
		begin
  		write('Este peso n�o � v�lido, tente novamente: ');readln(peso);
		end;
	while altura <= 0	do
		begin
  		write('Esta n�o � uma altura v�lida, digite novamente: ');readln(altura);
		end;
//Calculo do IMC
imc:=peso/(altura*altura);
//Respostas poss�veis para o resultado do IMC
if imc<20 then
	begin
  	writeln('Este � o seu IMC (�ndice de Massa Corp�rea): ',imc);
  	writeln('Seu estado atual � de baixo peso, ent�o palito de dente, t� na hora de ganhar massa!!!')
	end
else
	if (imc>=20) and (imc<25) then
		begin
 			writeln('Este � o seu IMC (�ndice de Massa Corp�rea): ',imc);
			writeln('Seu estado atual � adequado, sendo assim meus parab�ns voc� esta em forma, continue o seu bom trabalho para manter o seu corpo assim!!!')
		end
	else
		if (imc>=20) and (imc<30) then
			begin
 				writeln('Este � o seu IMC (�ndice de Massa Corp�rea): ',imc);
				writeln('Seu estado atual � sobrepeso, sinto em dizer mas ser� necess�rio fazer uma dieta, mas alegre-se o seu estado pode ser revertido com uma dieta b�sica e um pouco de exerc�cio!!!')
			end
		else
			if (imc>=30) and (imc<40) then
				begin
 					writeln('Este � o seu IMC (�ndice de Massa Corp�rea): ',imc);
					writeln('Seu estado atual � de obesidade, esse caso est� grave voc� deve fazer exerc�cios e uma dieta o mais breve poss�vel, antes que acarrete em coisas piores!!!')
				end
			else
			if (imc>=40) and (imc<61) then
				begin
 					writeln('Este � o seu IMC (�ndice de Massa Corp�rea): ',imc);
					writeln('Seu estado atual � de obesidade morbida, sua situa��o est� grav�ssima voc� dever� tomar medidas imediatamente para aumentar as suas chances de ter um corpo saud�vel, ser�o exerc�cios pesados e uma dieta rigorosa sem op��o de desist�ncia!!!')
				end;
		writeln('Este � o seu IMC: ', imc);
end.