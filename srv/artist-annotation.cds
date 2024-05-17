namespace com.sumanth.music;
annotate com.sumanth.music.artist with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Label:'Name',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : country
        },
        {
            $Type : 'UI.DataField',
            Value : genre
        },
        {
            $Type : 'UI.DataField',
            Value : active
        }
    ],  
);

annotate com.sumanth.music.artist with @(       
    UI.FieldGroup #artistInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type : 'UI.DataField',
            Label:'Name',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : country
        },
        {
            $Type : 'UI.DataField',
            Value : genre
        },
        {
            $Type : 'UI.DataField',
            Value : active
        }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'artistInfoFacet',
            Label : 'artist Information',
            Target : '@UI.FieldGroup#artistInformation',
        },
    ],    
);
