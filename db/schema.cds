namespace com.sumanth.music;
using { managed, cuid } from '@sap/cds/common';

entity song:managed, cuid {
    @title: 'Title'
    title: String(50);
    @title: 'Artist'
    artist: String(50);
    @title: 'Album'
    album: String(50);
    @title: 'Genre'
    genre: String(20);
    @title: 'ReleaseYear'
    releaseYear: Integer;
}

entity playlist:managed, cuid {
    @title: 'Name'
    name: String(50);
    @title: 'Description'
    description: String(255);
}

entity user:managed, cuid {
    @title: 'Username'
    username: String(50);
    @title: 'Email'
    email: String(100);
    @title: 'Password'
    password: String(255);
}

entity artist:managed, cuid {
    @title: 'Name'
    name: String(50);
    @title: 'Country'
    country: String(50);
    @title: 'Genre'
    genre: String(20);
    @title: 'Active'
    active: Boolean;
}