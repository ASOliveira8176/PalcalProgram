//Titulo do Programa
program Salario_do_Funcionario;
//Vari�veis
var
	bruto, liquido, desconto, aumento:real;
//Inicio do Programa
begin
	write('Digite o sal�rio do funcion�rio: ');readln(bruto);
//Calculos
	aumento:=15*bruto/100;
	aumento:=bruto+aumento;
	desconto:=aumento-(8*aumento/100);
//Respostas ao usu�rio
	writeln('O sal�rio inicial do funcion�rio era de: ',bruto);
	writeln('O sal�rio do funcion�rio com o aumento de 5 por cento ficou sendo: ',aumento);
	writeln('E o sal�rio do fucio�rio com o aumtento de 5 por cento seguido por um desconto de 8% resultou em: ',desconto);
//Finaliza��o do programa
end.	