@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel consumption'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity z_c_travel_ac_lf
  provider contract transactional_query
  as projection on z_i_travel_ac_lf
{
  key TravelUUID,
      TravelID,
      @Consumption.valueHelpDefinition:[{ entity: { name: '/DMO/I_Agency_StdVH' ,
                                                    element: 'AgencyID'},
                                           useForValidation: true }]

      AgencyID,
      CustomerID,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      @Consumption.valueHelpDefinition:[{ entity: { name: 'I_CurrencyStdVH' ,
                                                    element: 'Currency'},
                                           useForValidation: true }]
      CurrencyCode,
      Description,
      OverallStatus,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt
}
