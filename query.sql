select 
    K.Konfoederationscode, 
    count(*) AS 'Anzahl an Schiedsrichter'
from 
    Schiedsrichter S
inner join 
    Konfoederationen K 
on 
    S.Konfoederations_ID = K.Konfoederations_ID
group by 
    K.Konfoederationscode
order by K.Konfoederationscode desc;
