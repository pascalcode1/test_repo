declare
    v_module_name varchar(100);
begin
    select module_name
    into v_module_name
    from module
    where module_id = :p_module_id;

    dbms_output.put_line(v_module_name);
end;