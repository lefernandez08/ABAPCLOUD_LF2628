@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZTravel000'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_RCTRAVEL
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_RCTRAVEL
  association [1..1] to ZR_RCTRAVEL as _BaseEntity on $projection.TRAVELUUID = _BaseEntity.TRAVELUUID
{
  key TravelUUID,
  TravelID,
  AgencyID,
  CustomerID,
  BeginDate,
  EndDate,
  @Semantics: {
    Amount.Currencycode: 'CurrencyCode'
  }
  BookingFee,
  @Semantics: {
    Amount.Currencycode: 'CurrencyCode'
  }
  TotalPrice,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  CurrencyCode,
  Description,
  OverallStatus,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
