CREATE TABLE IF NOT EXISTS tasks.tasks
(
    id     BIGINT                      NOT NULL,
    title  VARCHAR(200)                NOT NULL,
    author BIGINT                      NOT NULL,
    ch_dt  TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    body   TEXT                        NULL,
    CONSTRAINT pk_taskid PRIMARY KEY (id)
);