//T�tulo do Program
Program AbonoSalarial;
//Vari�veis
Var
	salario1,conta,salario2:real;
//Come�o do Programa Entrada de Dados
Begin
	writeln('             Este programa ir� calcular o seu sal�rio com um desconto de 5%!')
	write('Digite aqui o seu sal�rio: ');readln(salario2);
//Calculos
		conta:=5*salario1/100;
	  salario2:=salario1-salario2;
//Impress�o do resultado dos c�lculos
	writeln('Este era o seu sal�rio anterior: ',salario1);
	writeln('Este � o seu sal�rio com desconto de 5%: ',salario2);
end.