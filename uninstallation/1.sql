begin
    dbms_output.put_line('Uninstallation... Id of current module: ' || :p_module_id);
    util_module.delete_module_packages(:p_module_id);
end;