@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view per zbid_utenti'
define root view entity ZR_BID_UTENTI as select from zbid_utenti
{
   key user_id,
   name,
   surname,
   role
}
