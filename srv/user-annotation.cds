namespace com.sumanth.music;
annotate com.sumanth.music.user with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Label:'Username',
            Value : username
        },
        {
            $Type : 'UI.DataField',
            Value : email
        },
        {
            $Type : 'UI.DataField',
            Value : password
        }
    ],  
);

annotate com.sumanth.music.user with @(       
    UI.FieldGroup #userInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label:'Username',
            Value : username
        },
        {
            $Type : 'UI.DataField',
            Value : email
        },
        {
            $Type : 'UI.DataField',
            Value : password
        }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'userInfoFacet',
            Label : 'user Information',
            Target : '@UI.FieldGroup#userInformation',
        },
    ],    
);
