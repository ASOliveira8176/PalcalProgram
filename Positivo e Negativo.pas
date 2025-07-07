//Título do Programa
program Negativo_Positivo;
//Variáveis
var
	A,B,D:Integer;
//Início do Programa
begin
	write('Digite um número para saber se ele é positivo ou negativo, e para saber em qual variável ele é armazenado: ');readln(D);
//Processamento dos Dados
	write('Digite um número para saber se ele é positivo ou negativo, e para saber em qual variável ele é armazenado: ');readln(D);
	if D>0 then
		begin
			A:=D;
			writeln('Este é o número que foi digitado, ele foi armazenado em A pois é um número positivo: ',A);
		end;
	if D<0 then
		begin
			B:=D;
			writeln('Este é o número que foi digitado, ele foi armazenado em B pois é um número negativo: ',B);
		end;
	if D=0 then
		begin
			writeln('Este é o número que foi digitado, ele foi armazenado em D pois zero é um número neutro, ou seja não nem positivo nem negativo: ',D);	
		end;
	if (D<>integer) or (D<>Real) then
		writeln('Isto não é número, portanto não é válido, tente novamente: ');
end.