declare 
   v_test_id number;
begin
    pkg_sec.set_pid(10009255);
    
    dbms_output.put_line('Updating BLOB Data filename');

    update blob_data 
       set filename = 'test111.jpg'
     where filename = 'test999.jpg';
     
    select blob_data_id
      into v_test_id
      from blob_data
     where filename = 'test111.jpg';
    
    dbms_output.put_line('Updated BLOB Data with id = ' || to_char(v_test_id));
    dbms_output.put_line('BLOB Data filename = test111.jpg');

    update blob_data 
       set filename = 'test999.jpg'
     where filename = 'test111.jpg';
    
    select blob_data_id
      into v_test_id
      from blob_data
     where filename = 'test999.jpg';
     
    dbms_output.put_line('Updated BLOB Data with id = ' || to_char(v_test_id));
    dbms_output.put_line('BLOB Data filename = test999.jpg');

end;