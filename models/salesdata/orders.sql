{{ config(materialized='table') }}
select 
O_ORDERKEY, O_CUSTKEY, O_ORDERSTATUS, O_TOTALPRICE, {{format_date_ddmmyyyy('O_ORDERDATE')}} as O_ORDERDATE,O_ORDERPRIORITY, O_CLERK, O_SHIPPRIORITY, O_COMMENT
from RAW_SCHEMA.Orders