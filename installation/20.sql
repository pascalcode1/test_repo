begin
    update config_field
       set obj_xitor_type_id = util_module.get_module_param_val('test_repo', 'TrackorTypeID')
     where config_field_name = 'T1_TRACKOR_SELECTOR';

    dbms_output.put_line('Selector''s Trackor Type has been updated');
end;
