//T�tulo do Programa
program quadrados_e_cubos;
//Vari�veis
Var
	Quad,Cubo, Num:real;
//Dados
Begin
	write('Digite aqui um n�mero inteiro: ');readln(Num);
//C�lculo
	Quad:=Num*Num;
	Cubo:=Num*Num*Num;
//Impress�o do resultado dos C�lculos
	writeln('Este � o n�mero que voc� digitou: ',Num);
	writeln('Este � o quadrado do n�mero que voc� digitou: ',Quad);
	writeln('E este � o n�mero que voc� digitou elevado ao cubo: ',Cubo);
End.