using { com.sumanth.music as db } from '../db/schema';

service music{
    entity song as projection on db.song;
    entity artist as projection on db.artist;
    entity user as projection on db.user;
    entity playlist as projection on db.playlist;
}

annotate  music.song @odata.draft.enabled;
annotate  music.artist @odata.draft.enabled;
annotate  music.user @odata.draft.enabled;
annotate  music.playlist @odata.draft.enabled;
