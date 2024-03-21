begin
    update components_package
       set is_locked = 1
     where name = 'My Package';
    commit;
    dbms_output.put_line('The Components Package has been locked'|| chr(13) || chr(10));
end;