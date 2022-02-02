declare 
   v_test varchar2(1000);
begin
    pkg_sec.set_pid(10009255);

    update blob_data 
       set FILENAME = 'test999.jpg' 
     where blob_data_id = 10010443155;
    commit;
    
    select FILENAME
      into v_test
      from blob_data
     where blob_data_id = 10010443155;
    
    dbms_output.put_line(v_test);
    dbms_output.put_line(v_test);
    dbms_output.put_line(v_test);
    dbms_output.put_line(v_test);
    dbms_output.put_line(v_test);

end;