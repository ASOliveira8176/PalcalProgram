//Nome do Programa
program Desconto13;
//Variáveis
var
	nome:string;
	salario,salario2:real;
//Entrada de Dados
begin
	write('Digite o nome do funcionário: ');readln(nome);
	write('Digite o salário do funcionário: ');readln(salario);
//Calculos
		salario2:=salario*0.13;
//Impressão da resolusão do problema
	writeln('                   Dados do Funcionário');
	writeln('Este era o salário inicial do funcionário: ',salario);
	writeln('E este é o salário atual que teve desconto de 13%: ',salario2);
end.
				