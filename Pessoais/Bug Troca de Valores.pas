//T�tulo do Programa
program BugTrocadeValores;
//Vari�veis
var	A,B:integer;
//In�cio do Programa
begin
	write('Digite um n�mero inteiro para A: ');readln(A);
	write('Digite um n�mero inteiro para B: ');readln(B);
//Processamentto de Dados
A:=A+B;
B:=A-B;
A:=A-B;
	writeln('Este � o novo valor de A: ',A);
	writeln('Este � o novo valor de B: ',B);
end.
//Fim do Programa