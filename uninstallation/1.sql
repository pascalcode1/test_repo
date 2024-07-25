declare
    param_1 module_param.value%type;
    param_2 module_param.value%type;
    param_3 module_param.value%type;
begin
    select util_module.get_module_param_val('test_repo', 'UNinstallationParam1') into param_1 from dual;
    select util_module.get_module_param_val('test_repo', 'UNinstallationParam2') into param_2 from dual;
    select util_module.get_module_param_val('test_repo', 'UNinstallationParam3') into param_3 from dual;

    dbms_output.put_line('The entered parameters will be used for uninstallation:');
    dbms_output.put_line('param1: ' || param_1);
    dbms_output.put_line('param2: ' || param_2);
    dbms_output.put_line('param3: ' || param_3);

    dbms_output.put_line('Uninstallation... Id of current module: ' || :p_module_id);
    util_module.delete_module_packages(:p_module_id);
end;