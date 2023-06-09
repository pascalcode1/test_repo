begin
    
    dbms_output.put_line('Test');
    dbms_output.put_line('Test');
    dbms_output.put_line('Test');
    dbms_output.put_line('Test');
    
    declare
        v_test number;
    begin
        select xitor_id
          into v_test
          from xitor
         where xitor_id = -1;
    end;
end;
