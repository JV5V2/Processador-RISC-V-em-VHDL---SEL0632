ENTITY test_mux2 IS
END test_mux2;

ARCHITECTURE tb OF test_mux2 IS
  TYPE sinais IS 
    RECORD d0, d1, s, y	:bit;
    END RECORD;
 TYPE conjunto_sinais IS ARRAY (natural RANGE <>) OF sinais;
 CONSTANT vetores : conjunto_sinais :=
--  d0, d1, s,  y
 (('0','0','0','0'),
  ('0','0','1','0'),
  ('0','1','0','0'),
  ('0','1','1','1'),
  ('1','0','0','1'),
  ('1','0','1','0'),
  ('1','1','0','1'),
  ('1','1','1','1')); 

 COMPONENT mux2
   PORT (d0, d1 : in bit;
   		 s		: in bit; 
         y		: out bit);
 END COMPONENT;

SIGNAL d0_t, d1_t, s_t, y_t, y : bit;

BEGIN
  operacao: PROCESS
    BEGIN
       FOR i IN 0 TO  vetores'LENGTH-1 LOOP
        d0_t  <= vetores(i).d0;  
        d1_t  <= vetores(i).d1;  
        s_t   <= vetores(i).s;   
        y_t   <= vetores(i).y;   
        WAIT FOR 10 ns;
      END LOOP;
    WAIT;
  END PROCESS;
  
  teste: postponed process(y, y_t)
  begin
     ASSERT y = y_t  -- (y=y_t) condicao correta, caso falso mensagem e' apresentada 
        REPORT "Valor da saida y difere do proposto" SEVERITY ERROR;
  end postponed process;
     
  mux0: mux2 PORT MAP(d0_t, d1_t, s_t, y);
END tb;