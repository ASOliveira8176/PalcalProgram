//Título do Programa
program BugTrocadeValores;
//Variáveis
var	A,B:integer;
//Início do Programa
begin
	write('Digite um número inteiro para A: ');readln(A);
	write('Digite um número inteiro para B: ');readln(B);
//Processamentto de Dados
A:=A+B;
B:=A-B;
A:=A-B;
	writeln('Este é o novo valor de A: ',A);
	writeln('Este é o novo valor de B: ',B);
end.
//Fim do Programa