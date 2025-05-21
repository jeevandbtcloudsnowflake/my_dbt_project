select l_orderkey,l_linenumber, count(1) cnt
from {{ ref('lineitem') }}
group by l_orderkey,l_linenumber
having cnt>1
