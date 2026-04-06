@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Value help'

@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

@ObjectModel.resultSet.sizeCategory: #XS
@ObjectModel.usageType: { serviceQuality: #A, sizeCategory: #S, dataClass: #MASTER }

define view entity ZIV_DEBTCAT_VH
  as select from ztvarvc

{
      @UI.hidden: true
  key name       as Name,

      @UI.hidden: true
  key type       as Type,

      @UI.hidden: true
  key numb       as Numb,

      @UI.hidden: true
      sign       as Sign,

      @UI.hidden: true
      opti       as Opti,

      low        as DEBTOR_CAT,

      @UI.hidden: true
      high       as High,

      @UI.hidden: true
      clie_indep as ClieIndep
}

where name = 'DEBTORCATEGORY'
