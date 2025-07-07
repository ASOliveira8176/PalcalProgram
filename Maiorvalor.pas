//Nome do Programa
program maiorvalor;
//Variáveis
var
	r,p,g: integer;
//Dados
begin
	while g<9 do
		begin
			g:=g+1;
			write('Digite o',g,'º número');readln(r);
			if r>p then
				p:=r;
			end;	
			r:=r+r;
			
		end;
	end;
	writeln('Esta a soma de todos os números digitados: ',r	 