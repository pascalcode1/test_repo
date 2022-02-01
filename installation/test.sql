begin 
    update blob_data 
       set FILENAME = 'test.jpg' 
     where blob_data_id = 10010443155;
    commit;
    
    dbms_output.put_line('test');
end;