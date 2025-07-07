//Título do Programa
program Eleicao;
//Variáveis
var	
	ELS, AE, DI, MA, VE, VO,PO, NE, ZE, ML:integer;
	PC:real;
	OP:char;                
//Abertura do Programa
begin
//Votação
	VO:=1;
	writeln('Bem vindo à eleição para presidente, é aqui onde você decide como será o futuro de sua nação, portanto, escolha sabiamente o seu candidato!!!');
	writeln('Escolha o seu candidato, vote: 1-Aécio Neves, 2-Dilma Rouseff, 3-Marina Silva');
	while (VO>0) do
				begin
					VO:=VO-2; 
					write('Digite o número do seu candidato, "Caso não haja mais eleitores digite 0": ');readln(VO);
					while (VO<0) or (VO>3) do
						begin
							write('Número inválido, por favor digite novamente: ');readln(VO);
						end;		
					case VO of
						1:AE:=AE+1;
						2:DI:=DI+1;
						3:MA:=MA+1					
					end;			
					VO:=VO+VO;			
//Votação condicional sobre como foi o Mandato de Lula
					while (VO>1) do
				  	begin
				  		ELS:=ELS+1;
							VO:=VO-VO+1;
							write('Agora, se desejar você poderá dar uma nota para os oito anos do mandato de Lula! Digite Sim ou Não: ');readln(OP);
							while (OP<>'S') and (OP<>'s') and (OP<>'Y') and (OP<>'y') and (OP<>'N') and (OP<>'n') do
							begin	
								write('Termo errôneo, por favor digite novamente: ');readln(OP);
							end;	
							if (OP='S') or (OP='s') or (OP='Y') or (OP='y') then
								begin 
									write('Você optou por dar uma nota ao mandato de Lula, digite: 1-Ótimo, 2-Bom, 3-Regular, 4-Ruim e 5-Péssimo: ');readln(ML);
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
										writeln('Obrigado por sua colaboração');
										VO:=1;
									end;
						end;
				end;
//Porcentagem dos votos					     	 	
	ML:=PO+ZE+NE;
	if ML>0 then
		PC:=(PO*100)/ML;
//Quantidade de eleitores
	writeln('O número de eleitores que participaram da votação foi: ', ELS);
//Pré Vencedor
	if (AE>=DI) and (AE>=MA) then
		VE:=AE;
	if (DI>=MA) and (DI>=AE) then
		VE:=DI;
	if (MA>=AE) and (MA>=DI) then
		VE:=MA;				
//Segundo Turno
	while (VE=AE) and (VE=DI) and (VE<ELS) do
		begin
			writeln('A votação rendeu empate para Aécio Neves e Dilma Rouseff, teremos segundo turno, que deverá ser feito pelo mesmo número de elitores!');
			writeln('Caso todos os eleitores ja tenham votado, e tenha dado empate novamente, um elitor um concederá o voto de minerva!');
			write('Segundo Turno, digite 1- Aécio Neves, 2-Dilma Rouseff: ');readln(VO);
			while (VO<1) and (VO>2) do
				begin
					write('Número inválido, por favor digite novamente: ');readln(VO);
				end;	
			case VO of
				1:AE:=AE+1;
				2:DI:=DI+1
			end;
		end;
	while (VE=AE) and (VE=MA) and (VE<ELS) do
		begin
			writeln('A votação rendeu empate para Aécio Neves e Marina Silva, teremos segundo turno, que deverá ser feito pelo mesmo número de elitores!');
			writeln('Caso todos os eleitores ja tenham votado, e tenha dado empate novamente, um elitor um concederá o voto de minerva!');
			write('Segundo Turno, digite 1- Aécio Neves, 3-Marina Silva: ');readln(VO);
			while (VO<>1) or (VO<>3) do
				begin
					write('Número inválido, por favor digite novamente: ');readln(VO);
				end;
			case VO of
				1:AE:=AE+1;
				3:MA:=MA+1
			end;
		end;
	while (VE=DI) and (VE=MA) and (VE<ELS) do
		begin
			writeln('A votação rendeu empate para Aécio Neves e Marina Silva, teremos segundo turno, que deverá ser feito pelo mesmo número de elitores!');
			writeln('Caso todos os eleitores ja tenham votado, e tenha dado empate novamente, um elitor concederá o voto de minerva!');
			write('Segundo Turno, digite 1- Aécio Neves, 3-Dilma Rouseff: ');readln(VO);
			while (VO<2) and (VO>3) do
				begin
					write('Número inválido, por favor digite novamente: ');readln(VO);
				end;
			case VO of
				2:DI:=DI+1;
				3:MA:=MA+1
			end;
		end;
//Vencedor da eleição					
	if (AE>DI) and (AE>MA) then
			writeln('O vencedor foi Aécio Neves com ', AE,' Votos!!!')
	else
		if (DI>AE) and (DI>MA) then
			writeln('O vencedor foi Dilma Rouseff com ', DI,' Votos!!!')
		else
			if (MA>AE) and (MA>DI) then
				writeln('O vencedor foi Marina Silva com ', MA,' Votos!!!');
//Opiniões sobre o governo Lula
	writeln('O número de eleitores que responderam a pesquisa foi: ',ML);
	writeln(PC:2:2,' porcento das pessoas concordam que o mandato de Lula foi bom para o país!!!');
	if ML>0 then
		PC:=(ZE*100)/ML;
	writeln(PC:2:2,' porcento das pessoas acham que o governo de Lula foi irrelevante para o país!!!');
	if ML>0 then
		PC:=(NE*100)/ML;
	writeln(PC:2:2,' porcento das pessoas alegam que o governo de Lula foi ruim para o país!!!');
//Fim do Programa		
end.						 		  