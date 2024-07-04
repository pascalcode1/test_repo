begin
    dbms_output.put_line('param1: ' || :name1);
    dbms_output.put_line('param2: ' || :name2);
    dbms_output.put_line('param3: ' || :name3);
    dbms_output.put_line('Installation... Id of current module: ' || :p_module_id);
end;