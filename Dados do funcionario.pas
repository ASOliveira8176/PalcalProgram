//Título do Programa
Program dadosdofuncionario;
//Variáveis
Var
	nome:string;
	salario, soma:real;
	idade:integer;
//Comandos
Begin
	write('Digite aqui o nome do funcionário: ');readln(nome);
	write('Agora digite o salário do funcionário: ');readln(salario);	
	write('Por fim digite a idade do funcionário: ');readln(idade);
	
	while idade <=0 do
	begin
		writeln('Idade inválida');
		write('Por fim digite a idade do funcionário: ');readln(idade);
	end;
	
	
	
//Contas
		soma:=salario+150;
//Distorção
	//Apresentação dos dados fornecidos e alterados
	writeln('                          Estes são os dados do funcionário');
	writeln('Este é o nome do funcionário: ',nome);
	writeln('Esta é a idade do funcionário: ',idade);
	writeln('Este era o salário anterior do funcionário: ', salario);
	writeln('Este é o salário atual do funcionário com o acréscimo de R$150,00', soma);
	
End.
