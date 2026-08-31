CREATE OR REPLACE FUNCTION tasks.task_add(author BIGINT,
                                          title  VARCHAR(200),
                                          body   TEXT)
    RETURNS JSONB
    LANGUAGE plpgsql
    SECURITY DEFINER
AS
$$
DECLARE
    _dt      TIMESTAMP WITHOUT TIME ZONE;
    _error   VARCHAR(500);
    _task_id BIGINT;
BEGIN
    _dt = NOW();

    _error = CONCAT('author = ', author,
                    ', title = ', title);

    _task_id = NEXTVAL('tasks.task_id');

    INSERT INTO tasks.tasks(id, title, author, ch_dt, body)
    SELECT _task_id,
           title,
           author,
           _dt,
           body;

    RETURN JSONB_BUILD_OBJECT('task_id', _task_id,
                              'task_title', title);
END;
$$;