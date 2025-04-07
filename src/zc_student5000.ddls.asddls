@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student projectioon view'
@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
define root view entity Zc_student5000 as projection on Zi_student500 as student
{
    @EndUserText.label: 'Student ID'
    key Id,
    @EndUserText.label: 'First Name'
    Firstname,
    @EndUserText.label: 'Last Name'
    Lastname,
    @EndUserText.label: 'Age'
    Age,
    @EndUserText.label: 'Course'
    Course,
    @EndUserText.label: 'Course Duration'
    Courseduration,
    @EndUserText.label: 'Status'
    Status,
    @EndUserText.label: 'Gender'
    Gender,
    genderdesc ,
    @EndUserText.label: 'Date Of Birth'
    Dob,
    _result :redirected to composition child ZC_result500 
    
}

