-- since Citus is being run in Docker, a typical copy command doesn't work because it doesn't have access to the file system but I was able
-- to get these commands to work given that it is run from the same directory as the csv files:

psql -h localhost -p 5432 -d postgres -U postgres --password -c "\COPY github_users FROM 'users.csv' WITH (format csv);"

psql -h localhost -p 5432 -d postgres -U postgres --password -c "\COPY github_events FROM 'events.csv' WITH (format csv);"
