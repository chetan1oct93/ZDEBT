@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Consumption View of Debt Cat'

@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZCV_DEBTCAT
  provider contract transactional_query
  as projection on ZIV_DEBTCAT

{
  key CoMgmtId,
  key ProcYrmnth,

      DebtorCat,
      DRating,
      DelayRating,
      MthsDelay,
      BankrFlag,
      ShopOpen1Flag,
      Commnt,
      BpUpdStus,
      Crtdate,
      Crttime,
      Crtprog,
      Crtuser,
      Chgdate,
      Chgtime,
      Chgprog,
      Chguser,
      
      LocalLastChangedAt
}
