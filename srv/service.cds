using { API_BUSINESS_PARTNER } from './external/API_BUSINESS_PARTNER.cds';

using { testapp as my } from '../db/schema.cds';

@path : '/service/testappService'
service testappService
{
    @odata.draft.enabled
    entity Entity1 as
        projection on my.Entity1;

    entity A_BusinessPartner as projection on API_BUSINESS_PARTNER.A_BusinessPartner
    {
        BusinessPartner,
        FirstName,
        LastName
    }
    actions
    {
        action Action1
        (
            name : String(100)
        )
        returns String;
    };
}

annotate testappService with @requires :
[
    'authenticated-user'
];
