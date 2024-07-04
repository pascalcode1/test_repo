begin
    dbms_output.put_line('param1: ' || :name1);
    dbms_output.put_line('param2: ' || :name2);
    dbms_output.put_line('param3: ' || :name3);
    dbms_output.put_line('Uninstallation... Id of current module: ' || :p_module_id);
    util_module.delete_module_packages(:p_module_id);
end;