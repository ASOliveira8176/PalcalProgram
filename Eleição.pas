//T�tulo do Programa
program Eleicao;
//Vari�veis
var	
	ELS, AE, DI, MA, VE, VO,PO, NE, ZE, ML:integer;
	PC:real;
	OP:char;                
//Abertura do Programa
begin
//Vota��o
	VO:=1;
	writeln('Bem vindo � elei��o para presidente, � aqui onde voc� decide como ser� o futuro de sua na��o, portanto, escolha sabiamente o seu candidato!!!');
	writeln('Escolha o seu candidato, vote: 1-A�cio Neves, 2-Dilma Rouseff, 3-Marina Silva');
	while (VO>0) do
				begin
					VO:=VO-2; 
					write('Digite o n�mero do seu candidato, "Caso n�o haja mais eleitores digite 0": ');readln(VO);
					while (VO<0) or (VO>3) do
						begin
							write('N�mero inv�lido, por favor digite novamente: ');readln(VO);
						end;		
					case VO of
						1:AE:=AE+1;
						2:DI:=DI+1;
						3:MA:=MA+1					
					end;			
					VO:=VO+VO;			
//Vota��o condicional sobre como foi o Mandato de Lula
					while (VO>1) do
				  	begin
				  		ELS:=ELS+1;
							VO:=VO-VO+1;
							write('Agora, se desejar voc� poder� dar uma nota para os oito anos do mandato de Lula! Digite Sim ou N�o: ');readln(OP);
							while (OP<>'S') and (OP<>'s') and (OP<>'Y') and (OP<>'y') and (OP<>'N') and (OP<>'n') do
							begin	
								write('Termo err�neo, por favor digite novamente: ');readln(OP);
							end;	
							if (OP='S') or (OP='s') or (OP='Y') or (OP='y') then
								begin 
									write('Voc� optou por dar uma nota ao mandato de Lula, digite: 1-�timo, 2-Bom, 3-Regular, 4-Ruim e 5-P�ssimo: ');readln(ML);
									while (ML<0) or (ML>5) do
										begin
											write('Valor Incorreto, digite novamente: ');readln(ML);	
										end;	
									case ML of 
										1,2:PO:=PO+1;
										3:ZE:=ZE+1;
										4,5:NE:=NE+1															
						  		end;			
								end
							else
								if (OP='N') or (OP='n') then
									begin
										writeln('Obrigado por sua colabora��o');
										VO:=1;
									end;
						end;
				end;
//Porcentagem dos votos					     	 	
	ML:=PO+ZE+NE;
	if ML>0 then
		PC:=(PO*100)/ML;
//Quantidade de eleitores
	writeln('O n�mero de eleitores que participaram da vota��o foi: ', ELS);
//Pr� Vencedor
	if (AE>=DI) and (AE>=MA) then
		VE:=AE;
	if (DI>=MA) and (DI>=AE) then
		VE:=DI;
	if (MA>=AE) and (MA>=DI) then
		VE:=MA;				
//Segundo Turno
	while (VE=AE) and (VE=DI) and (VE<ELS) do
		begin
			writeln('A vota��o rendeu empate para A�cio Neves e Dilma Rouseff, teremos segundo turno, que dever� ser feito pelo mesmo n�mero de elitores!');
			writeln('Caso todos os eleitores ja tenham votado, e tenha dado empate novamente, um elitor um conceder� o voto de minerva!');
			write('Segundo Turno, digite 1- A�cio Neves, 2-Dilma Rouseff: ');readln(VO);
			while (VO<1) and (VO>2) do
				begin
					write('N�mero inv�lido, por favor digite novamente: ');readln(VO);
				end;	
			case VO of
				1:AE:=AE+1;
				2:DI:=DI+1
			end;
		end;
	while (VE=AE) and (VE=MA) and (VE<ELS) do
		begin
			writeln('A vota��o rendeu empate para A�cio Neves e Marina Silva, teremos segundo turno, que dever� ser feito pelo mesmo n�mero de elitores!');
			writeln('Caso todos os eleitores ja tenham votado, e tenha dado empate novamente, um elitor um conceder� o voto de minerva!');
			write('Segundo Turno, digite 1- A�cio Neves, 3-Marina Silva: ');readln(VO);
			while (VO<>1) or (VO<>3) do
				begin
					write('N�mero inv�lido, por favor digite novamente: ');readln(VO);
				end;
			case VO of
				1:AE:=AE+1;
				3:MA:=MA+1
			end;
		end;
	while (VE=DI) and (VE=MA) and (VE<ELS) do
		begin
			writeln('A vota��o rendeu empate para A�cio Neves e Marina Silva, teremos segundo turno, que dever� ser feito pelo mesmo n�mero de elitores!');
			writeln('Caso todos os eleitores ja tenham votado, e tenha dado empate novamente, um elitor conceder� o voto de minerva!');
			write('Segundo Turno, digite 1- A�cio Neves, 3-Dilma Rouseff: ');readln(VO);
			while (VO<2) and (VO>3) do
				begin
					write('N�mero inv�lido, por favor digite novamente: ');readln(VO);
				end;
			case VO of
				2:DI:=DI+1;
				3:MA:=MA+1
			end;
		end;
//Vencedor da elei��o					
	if (AE>DI) and (AE>MA) then
			writeln('O vencedor foi A�cio Neves com ', AE,' Votos!!!')
	else
		if (DI>AE) and (DI>MA) then
			writeln('O vencedor foi Dilma Rouseff com ', DI,' Votos!!!')
		else
			if (MA>AE) and (MA>DI) then
				writeln('O vencedor foi Marina Silva com ', MA,' Votos!!!');
//Opini�es sobre o governo Lula
	writeln('O n�mero de eleitores que responderam a pesquisa foi: ',ML);
	writeln(PC:2:2,' porcento das pessoas concordam que o mandato de Lula foi bom para o pa�s!!!');
	if ML>0 then
		PC:=(ZE*100)/ML;
	writeln(PC:2:2,' porcento das pessoas acham que o governo de Lula foi irrelevante para o pa�s!!!');
	if ML>0 then
		PC:=(NE*100)/ML;
	writeln(PC:2:2,' porcento das pessoas alegam que o governo de Lula foi ruim para o pa�s!!!');
//Fim do Programa		
end.						 		  