begin
    pkg_objref.validate_rebuild_id_pkg_and_types();
    pkg_objref.rebuild_id_pkg_and_types();
    dbms_output.put_line('Object references were rebuilt');
exception
    when others then
        for v_rec in (select objref_validation_error_id,
                             object_name,
                             replace(error_msg, chr(13) || chr(10), '') as error_msg,
                             replace(object_ddl_text, chr(13) || chr(10), '') as object_ddl_text
                        from objref_validation_error) loop
            dbms_output.put_line('objref_validation_error_id:' || v_rec.objref_validation_error_id 
                || chr(13) || chr(10) || 'object_name:' || v_rec.object_name
                || chr(13) || chr(10) || 'error_msg:' || v_rec.error_msg 
                || chr(13) || chr(10) || 'object_ddl_text:' || v_rec.object_ddl_text);
        end loop;
end;
