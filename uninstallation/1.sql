declare
    v_comp_package_id number;
begin
    select components_package_id
      into v_comp_package_id
      from components_package
     where name = 'TEST1';

    pkg_comp_package.delete_comp_package(v_comp_package_id);

    dbms_output.put_line('All Module Components have been successfully removed.'|| chr(13) || chr(10));
end;