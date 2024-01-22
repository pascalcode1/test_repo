begin
    pkg_objref.validate_rebuild_id_pkg_and_types();
    pkg_objref.rebuild_id_pkg_and_types();
    dbms_output.put_line('Object references were rebuilt');
exception
    when others then
        for v_rec in (select objref_validation_error_id,
                             object_name,
                             replace(error_msg, chr(13) || chr(10), '') as error_msg
                        from objref_validation_error) loop
            dbms_output.put_line('objref_validation_error_id:' || v_rec.objref_validation_error_id
                || chr(13) || chr(10) || 'object_name:' || v_rec.object_name
                || chr(13) || chr(10) || 'error_msg:' || v_rec.error_msg);
        end loop;
        raise;
end;
