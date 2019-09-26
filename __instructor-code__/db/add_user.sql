insert into users (name, email, is_admin)
values ($1,$2, false)
returning users_id;