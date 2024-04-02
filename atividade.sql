DO $$
DECLARE
	n1 INTEGER;
	n2 NUMERIC (5, 2);
	temp_celsius REAL;
	temp_fahrenheit REAL;
	a REAL;
	b REAL;
	c REAL;
	delta REAL;
	comprimento REAL;
	largura REAL;
	preco REAL;
	nascimento INTEGER;
	atual INTEGER;

BEGIN
	-- 1.1 Faça um programa que gere um valor inteiro e o exiba.
	n1 := floor (random() * 100 + 1 ) ;
	RAISE NOTICE '%', n1;
	-- 1.2. Faça um programa que gere um valor real e o exiba.
	n2 := random() * 10 + 1;
	RAISE NOTICE '%', n2;
	-- 1.3 Faça um programa que gere um valor real no intervalo [20, 30] que representa uma
	-- temperatura em graus Celsius. Faça a conversão para Fahrenheit e exiba.
	temp_celsius := 20 + random() * 10;
	RAISE NOTICE 'Temperatura em celsius: %', temp_celsius;
	temp_fahrenheit := temp_celsius * 9 / 5 + 32;
	RAISE NOTICE 'Temperatura em Fahrenheit: %', temp_fahrenheit;
	-- 1.4 Faça um programa que gere três valores reais a, b, e c e mostre o valor de delta: aquele
	-- que calculamos para chegar às potenciais raízes de uma equação do segundo grau.
	a := random() * 10;
	RAISE NOTICE 'a = %', a;
	b := random() * 10;
	RAISE NOTICE 'b = %', b;
	c := random() * 10;
	RAISE NOTICE 'c = %', c;
	delta := b * b - 4 * a * c;
	RAISE NOTICE 'delta = %', delta;
	-- 1.5 Faça um programa que gere um número inteiro e mostre a raiz cúbica de seu antecessor
	-- e a raiz quadrada de seu sucessor.
	n1 := floor (random()* 100 + 1);
	RAISE NOTICE 'Valor = %', n1;
	RAISE NOTICE 'Raiz cúbica do antecessor: %', ||/n1 - 1;
	RAISE NOTICE 'Raiz quadrada do sucessor: %', |/n1 + 1;
	-- 1.6 Faça um programa que gere medidas reais de um terreno retangular. Gere também um
	-- valor real no intervalo [60, 70] que representa o preço por metro quadrado. O programa deve
	-- exibir o valor total do terreno.
	comprimento := random() * 100 + 1;
	RAISE NOTICE 'Comprimento = %', comprimento;
	largura := random () * 100 + 1;
	RAISE NOTICE 'Largura = %', largura;
	preco := 60 + random () * (70 - 60);
	RAISE NOTICE 'Preço = %', preco;
	RAISE NOTICE 'Valor total do terreno = %', comprimento * largura * preco;
	-- 1.7 Escreva um programa que gere um inteiro que representa o ano de nascimento de uma
	-- pessoa no intervalo [1980, 2000] e gere um inteiro que representa o ano atual no intervalo
	-- [2010, 2020]. O programa deve exibir a idade da pessoa em anos. Desconsidere detalhes
	-- envolvendo dias, meses, anos bissextos etc.
	nascimento := 1980 + floor(random() * 21);
	RAISE NOTICE 'Ano nascimento = %', nascimento;
	atual := 2010 + floor(random() * 11);
	RAISE NOTICE 'Ano atual = %', atual;
	RAISE NOTICE 'Idade = %', atual - nascimento;
	
END $$
