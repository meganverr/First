SELECT CD.CASE_NUMBER, CD.PRIMARY_TYPE, C.COMMUNITY_AREA_NAME  
FROM CRIMEDATA AS CD
INNER JOIN CENSUSDATA AS C ON CD.COMMUNITY_AREA_NUMBER=C.COMMUNITY_AREA_NUMBER
WHERE CD.COMMUNITY_AREA_NUMBER = 18

select cd.case_number, cd.primary_type, c.community_area_name 
from crimedata as cd
left outer join census_data as c on cd.community_area_number=c.community_area_number
where cd.location_description like 'SCHOOL%'

select cd.community_area_number, cd.case_number
from crimedata as cd
full outer join census_data as c on cd.community_area_number=c.community_area_number 
where c.community_area_name like 'Oakland' and 'Armour Square' and 'Edgewater' and 'Chicago'

select cd.community_area_number ,c.case_number
from CRIMEDATA c  
full outer join CENSUSDATA cd 
on cd.community_area_number =c.community_area_number
where cd.community_area_name in ('Oakland', 'Armour Square', 'Edgewater', 'CHICAGO')