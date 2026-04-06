@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Basic View of DEBTCATG'

@Metadata.ignorePropagatedAnnotations: true

@VDM.viewType: #BASIC

define view entity ZIV_DEBTCAT_BASIC
  as select from ztcd_debtcatg

{
  key co_mgmt_id      as CoMgmtId,
  key proc_yrmnth     as ProcYrmnth,

      debtor_cat      as DebtorCat,
      d_rating        as DRating,
      delay_rating    as DelayRating,
      mths_delay      as MthsDelay,
      bankr_flag      as BankrFlag,
      shop_open1_flag as ShopOpen1Flag,
      commnt          as Commnt,
      bp_upd_stus     as BpUpdStus,
      crtdate         as Crtdate,
      crttime         as Crttime,
      crtprog         as Crtprog,

      @Semantics.user.createdBy: true
      crtuser         as Crtuser,

      chgdate         as Chgdate,
      chgtime         as Chgtime,
      chgprog         as Chgprog,

      @Semantics.user.lastChangedBy: true
      chguser         as Chguser,
      
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at as LocalLastChangedAt
}
