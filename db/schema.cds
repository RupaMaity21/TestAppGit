namespace testapp;

using { API_BUSINESS_PARTNER } from '../srv/external/API_BUSINESS_PARTNER.cds';

entity Entity1
{
    key ID : UUID;
    name : String(100);
    desc : String(100);
    a_BusinessPartner : Association to one API_BUSINESS_PARTNER.A_BusinessPartner;
}
