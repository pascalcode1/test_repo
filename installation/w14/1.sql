declare
    v_xitor_label varchar(100);
begin
    select lp.label_program_text
      into v_xitor_label
      from xitor_type xt
      join label_program lp on lp.label_program_id = xt.applet_label_id
     where xt.xitor_type = '{TrackorTypeName}'
       and lp.app_lang_id = 1;

    dbms_output.put_line('The label of the selected Trackor Type: [' || v_xitor_label || ']');
end;