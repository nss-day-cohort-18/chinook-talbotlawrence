--Provide a query that shows all the Tracks, but displays no IDs. 
--The result should include the Album name, Media type and Genre.
select 
tra.name as track_name, 
alb.title as album_name, 
met.name as media_type, 
gen.name as genre_name
from Album alb 
join Track tra on alb.albumid = tra.albumid
join MediaType met on tra.mediatypeid = tra.mediatypeid
join Genre gen on tra.genreid = gen.genreid;