-- 查看oracle版本
select * from product_component_version;

-- select 1 from dual;

-- 删除用户以及下面的objects
-- DROP USER hr CASCADE;

-- 查看数据库列表
select username as schema_name from sys.all_users order by username;