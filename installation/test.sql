insert into v_installation_step (installation_step_id, name)
values (10, 'test');
commit;

select *
  from v_installation_step;