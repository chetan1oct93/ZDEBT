@AbapCatalog.viewEnhancementCategory: [ #NONE ]

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Composite View of DEBTCATG'

@Metadata.ignorePropagatedAnnotations: true

@VDM.viewType: #COMPOSITE

define view entity ZCO_DEBTCAT
  as select from ZIV_DEBTCAT_BASIC

//    inner join   I_BusinessPartner
//      on  ZIV_DEBTCAT_BASIC.CoMgmtId                = I_BusinessPartner.BusinessPartner
//      and I_BusinessPartner.BusinessPartnerGrouping = 'Z010'
//
//    inner join   I_Address_2
//      on I_BusinessPartner.IndependentAddressID = I_Address_2.AddressID
{
  key ZIV_DEBTCAT_BASIC.CoMgmtId,
  key ZIV_DEBTCAT_BASIC.ProcYrmnth,

      ZIV_DEBTCAT_BASIC.DebtorCat,
      ZIV_DEBTCAT_BASIC.DRating,
      ZIV_DEBTCAT_BASIC.DelayRating,
      ZIV_DEBTCAT_BASIC.MthsDelay,
      ZIV_DEBTCAT_BASIC.BankrFlag,
      ZIV_DEBTCAT_BASIC.ShopOpen1Flag,
      ZIV_DEBTCAT_BASIC.Commnt,
      ZIV_DEBTCAT_BASIC.BpUpdStus,
      ZIV_DEBTCAT_BASIC.Crtdate,
      ZIV_DEBTCAT_BASIC.Crttime,
      ZIV_DEBTCAT_BASIC.Crtprog,
      ZIV_DEBTCAT_BASIC.Crtuser,
      ZIV_DEBTCAT_BASIC.Chgdate,
      ZIV_DEBTCAT_BASIC.Chgtime,
      ZIV_DEBTCAT_BASIC.Chgprog,
      ZIV_DEBTCAT_BASIC.Chguser,
      ZIV_DEBTCAT_BASIC.LocalLastChangedAt
}
