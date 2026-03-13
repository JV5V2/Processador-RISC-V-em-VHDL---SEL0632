<h1>Processador RISC-V em VHDL</h1>

Este repositório contém a implementação em RTL de um processador RISC-V cujo objetivo principal foi a construção da arquitetura básica do processador, unindo o Datapath (caminho de dados) e a Unidade de Controle.Este projeto foi desenvolvido como Projeto Final da disciplina SEL0632 - Linguagens de Descrição de Hardware da Escola de Engenharia de São Carlos (EESC-USP)

<h2>Estrutura do Repositório</h2>

O projeto do processador RISC-V se divide nos seguintes arquivos .vhd:

  <b>riscvsingle.vhd</b>: Arquivo principal da CPU, conectando o Datapath ao Controller;
  
  <b>top.vhd</b>: Top-level global que encapsula a CPU e as memórias primárias;
  
  <b>datapath.vhd</b>: Integração das unidades aritméticas, registradores e multiplexadores;
  
  <b>controller.vhd, maindec.vhd, aludec.vhd:</b> Unidade de controle e decodificadores responsáveis pela execução com base nos opcodes;
  
  <b>alu.vhd, adder.vhd, slt.vhd</b>: Unidade Lógica Aritmética (ALU) e componentes de operações matemáticas;
  
  <b>regfile.vhd, flopr.vhd</b>: Banco de 32 registradores e módulo do Program Counter (PC);
  
  <b>extend.vhd</b>: Extensor de sinal para valores imediatos da ISA RISC-V;
  
  <b>imem.vhd, dmem.vhd</b>: Memória de Instruções e de Dados;
  
  <b>testbench.vhd</b>: Instruções de teste para que a verificação do RTL seja feita.



<h2>Ferramentas Utilizadas</h2>
<b>Linguagem VHDL:</b> (bibliotecas padrão IEEE.STD_LOGIC_1164 e IEEE.NUMERIC_STD);

<b>Simulador:</b> ModelSim (Siemens EDA / Mentor Graphics).

<h2>Créditos</h2>

<b>Autores:</b> João Vitor de Oliveira Ribeiro e Hélio Arthur Molina


<b>Professor Responsável:</b> Dr. Maximiliam LuppeInstituição: EESC-USP (Departamento de Engenharia Elétrica e de Computação).
