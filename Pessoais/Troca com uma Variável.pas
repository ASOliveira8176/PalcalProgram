//Nome do Programa
program Trocaumavariavel;
//VARIÁVEL
var
	A:integer;
//Início do Programa
begin
	write('Digite um valor para A: ');readln(A);
//Desenvolvimento dos Comandos
if 
	A=0 then
		write('Digite um valor para B: ');readln(A);
		writeln('Este é o novo valor de A: ',A);
		writeln('Este é o novo valor de B: 0')
	else
if A=1 then
	write('Digite um valor para B: ');readln(A);
	writeln('Este é o novo valor de A: ',A);
	writeln('Este é o novo valor de B: 1');	
end.	