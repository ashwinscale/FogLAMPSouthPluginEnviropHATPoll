--- Database commands to insert the new plugin into FogLAMP

--- Insert the config needed to load the plugin
INSERT INTO foglamp.configuration ( key, description, value )
    VALUES ( 'ENVHATPOLL',
             'EnviroHat polling South Plugin',
             ' { "plugin" : { "type" : "string", "value" : "envhatpoll", "default" : "envhatpoll", "description" : "Python module name of the plugin to load" } } '
           );

--- Create the south service instannce
INSERT INTO foglamp.scheduled_processes ( name, script ) VALUES ( 'ENVHATPOLL', '["services/south"]' );

--- Add the schedule to start the service at system startup
INSERT INTO foglamp.schedules ( id, schedule_name, process_name, schedule_type,
                                schedule_time, schedule_interval, exclusive, enabled )
       VALUES ( '4e82840c-34c0-4b0b-8ce2-9ae4ae83162b', -- id
                'ENVHAT poll south',                    -- schedule_name
                'ENVHATPOLL',                           -- proceess_name
                1,                                      -- schedule_type (startup)
                NULL,                                   -- schedule_time
                '00:00:00',                             -- schedule_interval
                true,                                   -- exclusive
                true                                    -- enabled
              );

