@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student interface view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Zi_student500 as select from zcim_student_500
composition[0..*] of Zi_result_ac500 as _result 
association[0..*] to Zi_gendar_5000nv as _GENDER 
on $projection.Gender = _GENDER.value
{
    key id as Id,
    firstname as Firstname,
    lastname as Lastname,
    age as Age,
    course as Course,
    courseduration as Courseduration,
    status as Status,
    gender as Gender,
    dob as Dob,
    _GENDER,
    _GENDER.Description as genderdesc,
    _result ,
    lastchangedt as lastchangedt
    
  
}
