namespace com.sumanth.music;
annotate com.sumanth.music.song with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Label:'Title',
            Value : title
        },
        {
            $Type : 'UI.DataField',
            Value : artist
        },
        {
            $Type : 'UI.DataField',
            Value : album
        },
        {
            $Type : 'UI.DataField',
            Value : genre
        },
        {
            $Type : 'UI.DataField',
            Value : releaseYear
        }
    ],  
);

annotate com.sumanth.music.song with @(       
    UI.FieldGroup #songInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label:'Title',
            Value : title
        },
        {
            $Type : 'UI.DataField',
            Value : artist
        },
        {
            $Type : 'UI.DataField',
            Value : album
        },
        {
            $Type : 'UI.DataField',
            Value : genre
        },
        {
            $Type : 'UI.DataField',
            Value : releaseYear
        }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'songInfoFacet',
            Label : 'song Information',
            Target : '@UI.FieldGroup#songInformation',
        },
    ],    
);
