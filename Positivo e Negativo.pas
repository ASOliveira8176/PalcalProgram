//T�tulo do Programa
program Negativo_Positivo;
//Vari�veis
var
	A,B,D:Integer;
//In�cio do Programa
begin
	write('Digite um n�mero para saber se ele � positivo ou negativo, e para saber em qual vari�vel ele � armazenado: ');readln(D);
//Processamento dos Dados
	write('Digite um n�mero para saber se ele � positivo ou negativo, e para saber em qual vari�vel ele � armazenado: ');readln(D);
	if D>0 then
		begin
			A:=D;
			writeln('Este � o n�mero que foi digitado, ele foi armazenado em A pois � um n�mero positivo: ',A);
		end;
	if D<0 then
		begin
			B:=D;
			writeln('Este � o n�mero que foi digitado, ele foi armazenado em B pois � um n�mero negativo: ',B);
		end;
	if D=0 then
		begin
			writeln('Este � o n�mero que foi digitado, ele foi armazenado em D pois zero � um n�mero neutro, ou seja n�o nem positivo nem negativo: ',D);	
		end;
	if (D<>integer) or (D<>Real) then
		writeln('Isto n�o � n�mero, portanto n�o � v�lido, tente novamente: ');
end.