DECLARE
    message VARCHAR2(20):= 'Hello World!';
BEGIN
    dbms_output.put_line(message);
END;
/
DECLARE
    message NUMBER(20):= 123456;
BEGIN
    dbms_output.put_line(message);
END;
/
DECLARE 
    i NUMBER(1);
    j NUMBER(1);
BEGIN 
    --<< outer loop >>
    FOR i IN 1..3 LOOP
        --<< inner loop >>
        FOR j IN 1..3 LOOP
        dbms_output.put_line('i is: '|| i || ' and j is '|| j);
        END LOOP inner_loop;
    END LOOP outer_loop;
END;
/

DECLARE 
    i NUMBER(1);
BEGIN 
    --<< outer loop >>
    FOR i IN 1..3 LOOP
    dbms_output.put_line('i is: ' || i);
    END LOOP outer_loop;
END;
/
DECLARE 
    i NUMBER(1); -- global var
BEGIN
    DECLARE
        v_word VARCHAR2(10):= 'Ukraine'; -- local var
    BEGIN
        FOR i IN 1..5 LOOP
        dbms_output.put_line('Glory to ' || v_word);
        END LOOP word_loop;
    END;
END;
