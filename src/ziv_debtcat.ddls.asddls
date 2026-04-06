@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Interface View of Debt Cat'

@Metadata.ignorePropagatedAnnotations: true

define root view entity ZIV_DEBTCAT
  as select from ZCO_DEBTCAT

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

      // TODO: Semantics.systemDate.createdAt: true
      Crtdate,
      // TODO: Semantics.systemTime.createdAt: true
      Crttime,
      Crtprog,

      @Semantics.user.createdBy: true
      Crtuser,

      // TODO: Semantics.systemDate.lastChangedAt: true
      Chgdate,
      // TODO: Semantics.systemTime.lastChangedAt: true
      Chgtime,
      Chgprog,

      @Semantics.user.lastChangedBy: true
      Chguser,
      
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt
}
