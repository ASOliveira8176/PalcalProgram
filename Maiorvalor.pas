//Nome do Programa
program maiorvalor;
//Vari�veis
var
	r,p,g: integer;
//Dados
begin
	while g<9 do
		begin
			g:=g+1;
			write('Digite o',g,'� n�mero');readln(r);
			if r>p then
				p:=r;
			end;	
			r:=r+r;
			
		end;
	end;
	writeln('Esta a soma de todos os n�meros digitados: ',r	 