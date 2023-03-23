declare
    v_id number;
begin
    
    dbms_output.put_line('Lorem ipsum dolor sit amet, consectetur adipiscing elit.');
    dbms_output.put_line('Lorem ipsum dolor sit amet, consectetur adipiscing elit.');
    dbms_output.put_line('Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

    select xitor_type_id
      into v_id
      from xitor_type
     where xitor_type_id = 0;
end;