using GameService as service from '../../srv/game-service';

annotate service.Student with @odata.draft.enabled;

annotate service.Student with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Student_ID',
                Value : Student_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'First_name',
                Value : First_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Last_name',
                Value : Last_name,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'FavoGame',
            ID : 'FavoGame',
            Target : 'to_favos/@UI.LineItem#FavoGame',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Student_ID',
            Value : Student_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'First_name',
            Value : First_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last_name',
            Value : Last_name,
        },
    ],
);

annotate service.FavoriteGame with @(
    UI.LineItem #FavoGame : [
        {
            $Type : 'UI.DataField',
            Label : 'Game Name',
            Value : to_game.Name
        },
        {
            $Type : 'UI.DataField',
            Label : 'Genre',
            Value : to_game.Genre
        }
    ]
);


