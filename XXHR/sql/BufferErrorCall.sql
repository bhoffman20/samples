set serveroutput on
spool $PWD/abc.log
exec display_line
/
spool off