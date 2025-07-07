//Nome do Programa
program Antecessor_e_Sucessor;
//Variáveis
var
	num:integer;	
//Entrada de Dados ou inicio do programa
begin
	write('Digite um número inteiro: ');readln(num);
	begin
		if num <>integer then writeln('Este não é um número inteiro!');
	end;
//impressão dos dados desejados
	writeln('Este é o antecessor do número que você digitou: ',num-1);
	writeln('Este é o número que você digitou: ',num);
	writeln('Este é o sucessor do número que você digitou: ',num+1);
end.