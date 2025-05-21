{{ config(materialized='table') }}
select * from RAW_SCHEMA.supplier