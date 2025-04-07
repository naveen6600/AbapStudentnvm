@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'esult500'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_result500 as projection on Zi_result_ac500
{
    key Id,
    key Course,
    key Semester,
    Semresult,
    Course_desc,
    Semester_result,
    Semester_Current,
   
    /* Associations */
    _student : redirected to parent Zc_student5000 
}
