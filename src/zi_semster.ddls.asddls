@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Semster'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zi_semster as select from  DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name:'ZCIM_R_SEMESTER5')
{
    key domain_name,
    key value_position,
    @Semantics.language: true
    key language,
    value_low  as Value,
   @Semantics.text: true
    text as Description
}
