//Nome do Programa
program Antecessor_e_Sucessor;
//Vari�veis
var
	num:integer;	
//Entrada de Dados ou inicio do programa
begin
	write('Digite um n�mero inteiro: ');readln(num);
	begin
		if num <>integer then writeln('Este n�o � um n�mero inteiro!');
	end;
//impress�o dos dados desejados
	writeln('Este � o antecessor do n�mero que voc� digitou: ',num-1);
	writeln('Este � o n�mero que voc� digitou: ',num);
	writeln('Este � o sucessor do n�mero que voc� digitou: ',num+1);
end.