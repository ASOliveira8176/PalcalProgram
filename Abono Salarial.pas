//Título do Program
Program AbonoSalarial;
//Variáveis
Var
	salario1,conta,salario2:real;
//Começo do Programa Entrada de Dados
Begin
	writeln('             Este programa irá calcular o seu salário com um desconto de 5%!')
	write('Digite aqui o seu salário: ');readln(salario2);
//Calculos
		conta:=5*salario1/100;
	  salario2:=salario1-salario2;
//Impressão do resultado dos cálculos
	writeln('Este era o seu salário anterior: ',salario1);
	writeln('Este é o seu salário com desconto de 5%: ',salario2);
end.