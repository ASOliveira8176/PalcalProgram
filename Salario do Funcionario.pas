//Titulo do Programa
program Salario_do_Funcionario;
//Variáveis
var
	bruto, liquido, desconto, aumento:real;
//Inicio do Programa
begin
	write('Digite o salário do funcionário: ');readln(bruto);
//Calculos
	aumento:=15*bruto/100;
	aumento:=bruto+aumento;
	desconto:=aumento-(8*aumento/100);
//Respostas ao usuário
	writeln('O salário inicial do funcionário era de: ',bruto);
	writeln('O salário do funcionário com o aumento de 5 por cento ficou sendo: ',aumento);
	writeln('E o salário do fucioário com o aumtento de 5 por cento seguido por um desconto de 8% resultou em: ',desconto);
//Finalização do programa
end.	