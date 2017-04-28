--Provide a query that shows the total number of tracks in each playlist. 
--The Playlist name should be include on the resulant table.
select count(plt.trackid) as number_of_tracks, pl.name as playlist_name
from Playlist pl 
join PlaylistTrack plt on pl.playlistid = plt.playlistid
group by pl.name; 