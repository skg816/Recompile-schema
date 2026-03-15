declare
        n integer := rtl.open;
begin
        -- Компилируем операции ИБСО со статусом 'UPDATED', результаты сливаем в канал 'COMPILE$'
        method.compile_status('NOT COMPILED', 'COMPILE$', TRUE, null);
        method.compile_status('NOT_COMPILED', 'COMPILE$', TRUE, null);
        method.compile_status('UPDATED', 'COMPILE$', TRUE, null);
        method.compile_status('INVALID', 'COMPILE$', TRUE, null);
        method.compile_status('PROCESSED', 'COMPILE$', TRUE, null);
end;

/

exit
