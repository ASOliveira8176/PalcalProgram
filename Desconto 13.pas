//Nome do Programa
program Desconto13;
//Vari�veis
var
	nome:string;
	salario,salario2:real;
//Entrada de Dados
begin
	write('Digite o nome do funcion�rio: ');readln(nome);
	write('Digite o sal�rio do funcion�rio: ');readln(salario);
//Calculos
		salario2:=salario*0.13;
//Impress�o da resolus�o do problema
	writeln('                   Dados do Funcion�rio');
	writeln('Este era o sal�rio inicial do funcion�rio: ',salario);
	writeln('E este � o sal�rio atual que teve desconto de 13%: ',salario2);
end.
				