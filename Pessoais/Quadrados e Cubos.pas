//Título do Programa
program quadrados_e_cubos;
//Variáveis
Var
	Quad,Cubo, Num:real;
//Dados
Begin
	write('Digite aqui um número inteiro: ');readln(Num);
//Cálculo
	Quad:=Num*Num;
	Cubo:=Num*Num*Num;
//Impressão do resultado dos Cálculos
	writeln('Este é o número que você digitou: ',Num);
	writeln('Este é o quadrado do número que você digitou: ',Quad);
	writeln('E este é o número que você digitou elevado ao cubo: ',Cubo);
End.