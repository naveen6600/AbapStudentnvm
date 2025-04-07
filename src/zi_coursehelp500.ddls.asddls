@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Course Search Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_Coursehelp500 as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name:'ZCIM_R_COURSE5' )
{
key domain_name,
key value_position,
@Semantics.language: true
key language,
 value_low as Value,
@Semantics.text: true
text as Description
    
}
