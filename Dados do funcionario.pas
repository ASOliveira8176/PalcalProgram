//T�tulo do Programa
Program dadosdofuncionario;
//Vari�veis
Var
	nome:string;
	salario, soma:real;
	idade:integer;
//Comandos
Begin
	write('Digite aqui o nome do funcion�rio: ');readln(nome);
	write('Agora digite o sal�rio do funcion�rio: ');readln(salario);	
	write('Por fim digite a idade do funcion�rio: ');readln(idade);
	
	while idade <=0 do
	begin
		writeln('Idade inv�lida');
		write('Por fim digite a idade do funcion�rio: ');readln(idade);
	end;
	
	
	
//Contas
		soma:=salario+150;
//Distor��o
	//Apresenta��o dos dados fornecidos e alterados
	writeln('                          Estes s�o os dados do funcion�rio');
	writeln('Este � o nome do funcion�rio: ',nome);
	writeln('Esta � a idade do funcion�rio: ',idade);
	writeln('Este era o sal�rio anterior do funcion�rio: ', salario);
	writeln('Este � o sal�rio atual do funcion�rio com o acr�scimo de R$150,00', soma);
	
End.
