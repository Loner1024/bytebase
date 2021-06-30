-- Issue for the single stage, single step "Hello world" pipeline
INSERT INTO
    issue (
        id,
        creator_id,
        updater_id,
        project_id,
        pipeline_id,
        name,
        `status`,
        `type`,
        description,
        assignee_id,
        subscriber_id_list
    )
VALUES
    (
        13001,
        1,
        1,
        3001,
        9001,
        'Hello world!',
        'OPEN',
        'bb.issue.general',
        'Welcome to Bytebase, this is the issue interface where tech leads, developers and DBAs collaborate on database management issues such as: ' || char(10, 10) || ' - Creating a new database' || char(10) || ' - Creating a table' || char(10) || ' - Creating an index' || char(10) || ' - Adding a column' || char(10) || ' - Troubleshooting performance issue' || char(10, 10) || 'Let''s bookmark this issue by clicking the star icon on the top of this page.' || char(10, 10) || 'And then click the ''Approve'' button on the top right.',
        101,
        '101,102,103,104'
    );

-- Issue for simulating webhook push event to create table in multi-stage for shop project.
INSERT INTO
    issue (
        id,
        creator_id,
        created_ts,
        updater_id,
        updated_ts,
        project_id,
        pipeline_id,
        name,
        `status`,
        `type`,
        description,
        assignee_id,
        subscriber_id_list
    )
VALUES
    (
        13002,
        1,
        1624873710,
        1,
        1624873710,
        3002,
        9002,
        'Create product table',
        'OPEN',
        'bb.issue.database.schema.update',
        'Create product table',
        101,
        '101,102,103,104'
    );

-- Issue for the multi stage create table pipeline, first stage has a failed task run
INSERT INTO
    issue (
        id,
        creator_id,
        updater_id,
        project_id,
        pipeline_id,
        name,
        `status`,
        `type`,
        description,
        assignee_id,
        subscriber_id_list
    )
VALUES
    (
        13003,
        103,
        103,
        3001,
        9003,
        'Create a new table ''tbl1''',
        'OPEN',
        'bb.issue.database.schema.update',
        'Create tbl1.',
        102,
        '101,102,103,104'
    );

-- Issue for simulating webhook push event to create table for blog project dev database.
INSERT INTO
    issue (
        id,
        creator_id,
        created_ts,
        updater_id,
        updated_ts,
        project_id,
        pipeline_id,
        name,
        `status`,
        `type`,
        description,
        assignee_id,
        subscriber_id_list
    )
VALUES
    (
        13004,
        1,
        1624865387,
        1,
        1624865387,
        3003,
        9004,
        'Create user, post, comment table for dev environment',
        'DONE',
        'bb.issue.database.schema.update',
        'Create user, post, comment table for dev environment',
        1,
        '101,102,103,104'
    );

-- Issue for simulating webhook push event to create table for blog project integration database.
INSERT INTO
    issue (
        id,
        creator_id,
        created_ts,
        updater_id,
        updated_ts,
        project_id,
        pipeline_id,
        name,
        `status`,
        `type`,
        description,
        assignee_id,
        subscriber_id_list
    )
VALUES
    (
        13005,
        1,
        1624866790,
        1,
        1624866790,
        3003,
        9005,
        'Create user, post, comment table for integration environment',
        'DONE',
        'bb.issue.database.schema.update',
        'Create user, post, comment table for integration environment',
        1,
        '101,102,103,104'
    );

-- Issue for simulating webhook push event to create table for blog project staging database.
INSERT INTO
    issue (
        id,
        creator_id,
        created_ts,
        updater_id,
        updated_ts,
        project_id,
        pipeline_id,
        name,
        `status`,
        `type`,
        description,
        assignee_id,
        subscriber_id_list
    )
VALUES
    (
        13006,
        1,
        1624868407,
        1,
        1624868407,
        3003,
        9006,
        'Create user, post, comment table for staging environment',
        'DONE',
        'bb.issue.database.schema.update',
        'Create user, post, comment table for staging environment',
        1,
        '101,102,103,104'
    );

-- Issue for simulating webhook push event to create table for blog project prod database.
INSERT INTO
    issue (
        id,
        creator_id,
        created_ts,
        updater_id,
        updated_ts,
        project_id,
        pipeline_id,
        name,
        `status`,
        `type`,
        description,
        assignee_id,
        subscriber_id_list
    )
VALUES
    (
        13007,
        1,
        1624868680,
        1,
        1624868680,
        3003,
        9007,
        'Create user, post, comment table for prod environment',
        'DONE',
        'bb.issue.database.schema.update',
        'Create user, post, comment table for prod environment',
        1,
        '101,102,103,104'
    );

-- Issue for simulating webhook push event to alter table for blog project dev database.
INSERT INTO
    issue (
        id,
        creator_id,
        created_ts,
        updater_id,
        updated_ts,
        project_id,
        pipeline_id,
        name,
        `status`,
        `type`,
        description,
        assignee_id,
        subscriber_id_list
    )
VALUES
    (
        13008,
        1,
        1624869944,
        1,
        1624869944,
        3003,
        9008,
        'Add created_at column to user,post,comment table for dev environment',
        'OPEN',
        'bb.issue.database.schema.update',
        'Add created_at column to user,post,comment table for dev environment',
        1,
        '101,102,103,104'
    );