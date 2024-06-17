using testappService as service from '../../srv/service';
annotate service.Entity1 with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'desc',
                Value : desc,
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
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'desc',
            Value : desc,
        },
        {
            $Type : 'UI.DataField',
            Value : a_BusinessPartner.BusinessPartner,
            Label : 'BusinessPartner',
        },
    ],
);

annotate service.A_BusinessPartner with {
    BusinessPartner @Common.Text : FirstName
};
annotate service.A_BusinessPartner with {
    BusinessPartner @UI.MultiLineText : false
};
annotate service.A_BusinessPartner with {
    BusinessPartner @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'A_BusinessPartner',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : BusinessPartner,
                    ValueListProperty : 'BusinessPartner',
                },
            ],
            Label : 'Business Partner Name',
        },
        Common.ValueListWithFixedValues : true
)};
