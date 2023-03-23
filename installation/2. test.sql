declare
    v_id number;
begin

    select xitor_type_id
      into v_id
      from xitor_type
     where xitor_type_id = 10;
end;