Algoritmo "Seguro desemprego"
// Disciplina   : [Linguagem e L?gica de Programa??o]
// Wenderson Braga Ferreira
// Felipe Matheus De Souza  ra F32hgg-8
// Vinicius
// Eduardo

// Lpa
// Eliane

var

   trabalhador_formal: caracter
   trabalhador_domestico: caracter
   dispensa_justa_causa: caracter
   dispensa_indireta: caracter
   contrato_suspenso: caracter
   pescador: caracter
   bolsa_de_qualificacao_social: caracter
   bolsa_de_qualificacao_social1 : caracter
   bolsa_de_qualificacao_social2 : caracter
   bolsa_de_qualificacao_social3 : caracter
   trabalhador_resgatado: caracter
   trabalhador_resgatado1: caracter
   trabalhador_resgatado2: caracter
   trabalhador_resgatado3: caracter
   tem_direito_ao_beneficio: caracter
   nao_tem_direito: caracter
   tem_direito_trabalhador_formal: caracter
   tem_direito_trabalhador_formal1: caracter
   tem_direito_trabalhador_formal2: caracter
   tem_direito_trabalhador_formal3: caracter
   tem_direito_trabalhador_domestico: caracter
   tem_direito_trabalhador_domestico1: caracter
   tem_direito_trabalhador_domestico2: caracter
   tem_direito_trabalhador_domestico3: caracter
   tem_direito_pescador: caracter
   tem_direito_pescador1: caracter
   tem_direito_pescador2: caracter
   tem_direito_pescador3: caracter
   tem_direito_pescador4: caracter
   mes: caracter
   ultimo_salario: real
   penultimo_salario: real
   antipenultimo_salario: real
   media: real
   y: caracter
   resultado : caracter
Inicio

   // quem tem direito - pescador, trabalhador domestico, trabalhador resgatado
   // quem nao tem direito- dispensa indireta, trabalhador que recebeu mais de 6 meses


   escreva(" E trabalhador formal?  [s/n]")
   leia (trabalhador_formal)

   se (trabalhador_formal) <> "s" entao
      escreva(" E trabalhador domestico ?  [s/n]")
      leia (trabalhador_domestico)
   fimse
   se(trabalhador_domestico = "n") ou (trabalhador_formal = "n" ) entao
      escreva(" ? pescador? [s/n]")
      leia(pescador)
   fimse
   se(pescador = "n") entao
      escreva (" ? trabalhador resgatado da condi??o de escravo?  [s/n]")
      leia (trabalhador_resgatado)
   fimse
   se (pescador = "s") entao
      escreva (" ? trabalhador resgatado da condi??o de escravo?  [s/n]")
      leia (trabalhador_resgatado)

   fimse

   se(trabalhador_resgatado = "n") entao
      escreva(" Bolsa de qualifica??o Social ? [s/n] ")
      leia(bolsa_de_qualificacao_social)




   fimse


   se (trabalhador_formal = "s") ou (trabalhador_domestico="s")  entao
      escreva(" Foi dispensado por justa causa? [s/n]")
      leia(dispensa_justa_causa)

   fimse

   se(dispensa_justa_causa) <> "s" entao
      escreva(" Foi dispensado por demissao indireta? [s/n]")
      leia (dispensa_indireta)

   fimse

   se(dispensa_indireta = "n") entao
      escreva (" Teve seu contrato suspenso ? [s/n] ")
      leia(contrato_suspenso)

   fimse

   // Verificar se tem direito ao benef?cio

   se(trabalhador_formal = "s") entao
      escreva(" Teve alguma renda de pessoa f?sica ou juridica no per?odo de 6 meses? [s/n]")
      leia(tem_direito_trabalhador_formal)
      escreva("Est? desempregado(a) no momento ? [s/n] ")
      leia(tem_direito_trabalhador_formal1)
      escreva("Poss?i alguma renda pr?pria ? [s/n]")
      leia(tem_direito_trabalhador_formal2)
      escreva("Est? em gozo de algum benef?cio previdenci?rio ?. Exceto aux?lio-acidente ou pens?o por ?bito  : [s/n]")
      leia(tem_direito_trabalhador_formal3)

   fimse

   se (tem_direito_trabalhador_formal = "n") ou (trabalhador_domestico = "s") entao
      escreva("Trabalhou exclusivamente como empregado dom?stico no per?odo m?nimo de 15 meses nos ultimos 24 meses  ? [s/n]")
      leia(tem_direito_trabalhador_domestico)
      escreval ("Poss?i alguma renda pr?pria suficiente a sua manuten??o e da sua fam?lia? [s/n]")
      leia(tem_direito_trabalhador_domestico1)
      escreval ("Est? em gozo de algum benef?cio previdenci?rio ? Exceto aux?lio-acidente ou pens?o por ?bito  : [s/n]")
      leia(tem_direito_trabalhador_domestico2)

   fimse

   se (pescador = "s") entao
      escreva ("Poss?i inscri??o no INSS como segurado especial ?[s/n]")
      leia(tem_direito_pescador)
      escreva ("Guarda algum comprovante de venda do pescado no per?odo dos ultimos 12 meses ? [s/n]")
      leia(tem_direito_pescador1)
      escreva ("Est? em gozo de algum benef?cio de presta??o continuada da Previd?ncia social ou Assist?ncia ?.Exceto aux?lio-acidente ou pens?o por ?bito   :")
      leia(tem_direito_pescador2)
      escreva("Poss?i alguma outra renda ou rela??o de trabalho al?m da pesca ? [s/n]")
      leia(tem_direito_pescador3)
      escreva("Existe algum comprovante que prova a sua atividade de pesca ? [s/n]")
      leia(tem_direito_pescador4)


   fimse
   se (trabalhador_resgatado = "s") entao
      escreva("Cont?m algum comprovante que foi resgatado de trabalhado for?ado ou da condi??o anal?gica de escravo ? [s/n]")
      leia (trabalhador_resgatado1)
      escreva("Est? em gozo de algum benef?cio de presta??o continuada da Previd?ncia social ou Assist?ncia ?.Exceto aux?lio-acidente ou pens?o por ?bito   :")
      leia(trabalhador_resgatado2)
      escreva("Poss?i alguma renda pr?pria suficiente a sua manuten??o e da sua fam?lia? [s/n]")
      leia(trabalhador_resgatado3)
   fimse
   se(bolsa_de_qualificacao_social = "s") entao
      escreva("Est? com contrato de trabalho suspenso, em conformidade com o disposto em conven??o ou acordo coletivo ? [s/n]")
      leia(bolsa_de_qualificacao_social1)
      escreva("Poss?i matricula em curso ou programa de qualifica??o oferecido pelo empregador ?  [s/n]")
      leia(bolsa_de_qualificacao_social2)
      escreva("Teve registro de pessoa f?sica ou juridica, no min?mo 12 meses durante os ?ltimos tr?s anos ? [s/n]")
      leia(bolsa_de_qualificacao_social3)
   fimse
   se(tem_direito_trabalhador_formal = "n") ou (dispensa_indireta = "n") ou (tem_direito_trabalhador_formal2 = "s") ou (tem_direito_trabalhador_formal3 = "s") ou (tem_direito_trabalhador_domestico1 = "s") ou (tem_direito_trabalhador_domestico2 = "s") ou (tem_direito_pescador2 = "s") ou (tem_direito_pescador3 = "s") ou (trabalhador_resgatado2 = "s") ou (trabalhador_resgatado3 = "s") ou (bolsa_de_qualificacao_social1 = "s") entao
      escreva (" N?o tem direito ao beneficio")
      leia (nao_tem_direito!)

   senao (trabalhador_formal = "s") ou (trabalhador_domestico = "s") ou (tem_direito_trabalhador_formal1 = "n") entao
      se (dispensa_indireta = "s") ou (tem_direito_trabalhador_formal = "s") ou (tem_direito_trabalhador_domestico = "s")ou (tem_direito_pescador = "s") ou (tem_direito_pescador1 = "s") ou (tem_direito_pescador4 = "s") ou (trabalhador_resgatado1 = "s") ou (bolsa_de_qualificacao_social2 = "s") ou (bolsa_de_qualificacao_social3 = "s" ) entao
         escreva (" tem direito ao beneficio")
         leia(tem_direito_ao_beneficio!)

      fimse

      //calculos - parcelas
      escreva (" Quantos meses voc? trabalhou?")

      leia(mes)

      escolha mes
      caso "6","7","8","9","10","11"
         escreval (" Quantidades de parcelas: 3x")
      caso "12","13","14","15","16","17","18","19","20","21","22","23"
         escreval (" Quantidades de parcelas: 4x")
      caso "24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50"
         escreval (" Quantidades de parcelas: 5x")

      fimescolha
   fimse
   escreval ("Qual seu ultimo salario?")
   leia (ultimo_salario)
   escreval ("Qual seu penultimo salario?")
   leia (penultimo_salario)
   escreval ("Qual seu antipenultimo salario?")
   leia (antipenultimo_salario)
   escreva(((ultimo_salario) + (penultimo_salario) + (antipenultimo_salario))/3)

   media <- (ultimo_salario + penultimo_salario + antipenultimo_salario)
   se (media <= 1222.77) entao
      media <- media * 0.8
   senao
      se (media <= 2038.15)entao
         media <-(((media-1222.77)*0.5)+978.22)
      senao
         media <- 1385.91
         escreval()
         escreval(" o valor do seu seguro sera de  r$ ", media)
      fimse
   fimse


Fimalgoritmo
