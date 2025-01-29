@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view per ZR_BID_UTENTI'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_BID_UTENTI provider contract transactional_query
as projection on ZR_BID_UTENTI
{
    
    key user_id,
    name,
    surname,
    role
}
