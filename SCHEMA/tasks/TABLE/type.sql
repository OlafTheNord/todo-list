CREATE TABLE IF NOT EXISTS tasks.type
(
    type_id   INT                         NOT NULL,
    title     CHAR(50)                    NOT NULL,
    ch_dt     TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    ch_author BIGINT                      NOT NULL,
    CONSTRAINT pk_tasktypeid PRIMARY KEY (type_id, title)
);
