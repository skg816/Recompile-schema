set pagesize 0
set feedback off
spool recompile_second.sql
select 'spool recompile_second.log' from dual;
select 'alter '||decode(object_type,'PACKAGE BODY','PACKAGE',object_type)||' '||
        object_name||' '||decode(object_type,'PACKAGE BODY','COMPILE BODY','COMPILE')||';'  from user_objects
where status <> 'VALID';
select 'spool off' from dual;
select 'exit' from dual;
spool off
exit
