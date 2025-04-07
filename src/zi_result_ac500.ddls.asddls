@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Academic result'
@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zi_result_ac500 as select from zcim_result500
association to parent Zi_student500 as _student on $projection.Id = _student.Id
association[0..1] to ZI_Coursehelp500 as _course on $projection.Course = _course.Value
association[0..1] to Zi_semster as _Semster on $projection.Semester = _Semster.Value
association[0..1] to Zi_semester_result500 as _semres on $projection.Semresult = _semres.Value

{
    key id as Id,
    key course as Course,
    key semester as Semester,
    semresult as Semresult,
    _student ,
    _course.Description as Course_desc,
    _semres.Description as Semester_result,
    _Semster.Description as Semester_Current
}
