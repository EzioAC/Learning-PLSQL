SET ServerOutput ON;
DECLARE
  v_Num INTEGER := 1; 
  v_Sum INTEGER := 0;
BEGIN
  LOOP
    IF v_Num = 100+1 THEN
      EXIT;
    END IF;
    IF mod(v_Num,2) = 0 THEN
      v_Sum := v_Sum+v_Num;
    END IF;
    v_Num := v_Num + 1;
  END LOOP;
  dbms_output.put_line(v_Sum);
END;