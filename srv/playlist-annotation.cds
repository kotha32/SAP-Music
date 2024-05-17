namespace com.sumanth.music;
annotate com.sumanth.music.playlist with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Label:'Name',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : description
        }
    ],  
);

annotate com.sumanth.music.playlist with @(       
    UI.FieldGroup #playlistInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label:'Name',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : description
        }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'playlistInfoFacet',
            Label : 'playlist Information',
            Target : '@UI.FieldGroup#playlistInformation',
        },
    ],    
);
