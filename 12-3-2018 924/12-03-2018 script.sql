/****** Object:  StoredProcedure [dbo].[sp_update_ApplicationCategorymaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_ApplicationCategorymaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_ApplicationCategorymaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_Business]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_Business]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_Business]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_BusinessLinemaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_BusinessLinemaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_BusinessLinemaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_BusinessSuffixmaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_BusinessSuffixmaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_BusinessSuffixmaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_Capacitymaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_Capacitymaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_Capacitymaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_ChildIDmaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_ChildIDmaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_ChildIDmaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_countrymaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_countrymaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_countrymaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_DiscretionaryCodemaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_DiscretionaryCodemaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_DiscretionaryCodemaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_FTAApplicationCodemaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_FTAApplicationCodemaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_FTAApplicationCodemaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_FTAApplicationNamemaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_FTAApplicationNamemaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_FTAApplicationNamemaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_FTAStrategyCodemaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_FTAStrategyCodemaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_FTAStrategyCodemaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_FTAStrategyNamemaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_FTAStrategyNamemaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_FTAStrategyNamemaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_ParentIDmaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_ParentIDmaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_ParentIDmaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_regionmaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_regionmaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_regionmaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_Strategytypemaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_Strategytypemaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_Strategytypemaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_update_Venuetypemaster]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_Venuetypemaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_update_Venuetypemaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_updateFTAApplicationMapping]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_updateFTAApplicationMapping]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_updateFTAApplicationMapping]
GO
/****** Object:  StoredProcedure [dbo].[sp_updateuser]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_updateuser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_updateuser]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_Business]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_Business]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_Business]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_BusinessLine]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_BusinessLine]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_BusinessLine]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_BusinessMapping]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_BusinessMapping]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_BusinessMapping]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_BusinessSuffix]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_BusinessSuffix]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_BusinessSuffix]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_Capacity]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_Capacity]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_Capacity]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_ChildID]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_ChildID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_ChildID]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_country]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_country]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_country]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_FTAApplicationName]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_FTAApplicationName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_FTAApplicationName]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_FTAApplicationOwner]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_FTAApplicationOwner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_FTAApplicationOwner]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_FTAStrategyMapping]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_FTAStrategyMapping]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_FTAStrategyMapping]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_FTAStrategyName]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_FTAStrategyName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_FTAStrategyName]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_FTAStrategyOwner]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_FTAStrategyOwner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_FTAStrategyOwner]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_ParentID]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_ParentID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_ParentID]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_region]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_region]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_region]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_strategy_Approval]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_strategy_Approval]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_strategy_Approval]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_Strategytype]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_Strategytype]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_Strategytype]
GO
/****** Object:  StoredProcedure [dbo].[delete_RoleRight]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delete_RoleRight]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delete_RoleRight]
GO
/****** Object:  StoredProcedure [dbo].[delete_userBusinessSector]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delete_userBusinessSector]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delete_userBusinessSector]
GO
/****** Object:  StoredProcedure [dbo].[delete_usercountry]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delete_usercountry]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delete_usercountry]
GO
/****** Object:  StoredProcedure [dbo].[delete_userregion]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delete_userregion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[delete_userregion]
GO
/****** Object:  StoredProcedure [dbo].[Get_StrategyApprovalById]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Get_StrategyApprovalById]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Get_StrategyApprovalById]
GO
/****** Object:  StoredProcedure [dbo].[sp_addbusinessmapping]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_addbusinessmapping]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_addbusinessmapping]
GO
/****** Object:  StoredProcedure [dbo].[sp_addFTAApplicationMapping]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_addFTAApplicationMapping]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_addFTAApplicationMapping]
GO
/****** Object:  StoredProcedure [dbo].[sp_addFTAStrategyMapping]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_addFTAStrategyMapping]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_addFTAStrategyMapping]
GO
/****** Object:  StoredProcedure [dbo].[sp_addReportApplicationMapping]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_addReportApplicationMapping]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_addReportApplicationMapping]
GO
/****** Object:  StoredProcedure [dbo].[sp_adduser1]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_adduser1]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_adduser1]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_ApplicationCategory]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_ApplicationCategory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_ApplicationCategory]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallBusiness]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallBusiness]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallBusiness]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallBusinessLine]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallBusinessLine]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallBusinessLine]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallBusinessSuffix]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallBusinessSuffix]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallBusinessSuffix]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallCapacity]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallCapacity]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallCapacity]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallChildID]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallChildID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallChildID]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallcountry]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallcountry]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallcountry]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallDiscretionaryCode]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallDiscretionaryCode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallDiscretionaryCode]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallFTAApplicationCode]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallFTAApplicationCode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallFTAApplicationCode]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallFTAApplicationName]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallFTAApplicationName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallFTAApplicationName]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallFTAApplicationOwner]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallFTAApplicationOwner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallFTAApplicationOwner]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallFTAStrategyCode]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallFTAStrategyCode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallFTAStrategyCode]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallFTAStrategyName]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallFTAStrategyName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallFTAStrategyName]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallFTAStrategyOwner]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallFTAStrategyOwner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallFTAStrategyOwner]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallParentID]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallParentID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallParentID]
GO
/****** Object:  StoredProcedure [dbo].[sp_getAllThirdPartyAppType]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getAllThirdPartyAppType]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getAllThirdPartyAppType]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallVenuetype]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallVenuetype]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallVenuetype]
GO
/****** Object:  StoredProcedure [dbo].[sp_getbusinessmapping]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getbusinessmapping]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getbusinessmapping]
GO
/****** Object:  StoredProcedure [dbo].[sp_getbusinessmappingbyId]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getbusinessmappingbyId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getbusinessmappingbyId]
GO
/****** Object:  StoredProcedure [dbo].[sp_getFTAApplicationMapping]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getFTAApplicationMapping]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getFTAApplicationMapping]
GO
/****** Object:  StoredProcedure [dbo].[sp_getFTAApplicationMappingbyId]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getFTAApplicationMappingbyId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getFTAApplicationMappingbyId]
GO
/****** Object:  StoredProcedure [dbo].[sp_getFTAStrategyMapping]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getFTAStrategyMapping]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getFTAStrategyMapping]
GO
/****** Object:  StoredProcedure [dbo].[sp_getFTAStrategyMappingbyId]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getFTAStrategyMappingbyId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getFTAStrategyMappingbyId]
GO
/****** Object:  StoredProcedure [dbo].[sp_getmenuforuser]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getmenuforuser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getmenuforuser]
GO
/****** Object:  StoredProcedure [dbo].[sp_getReportApplicationMapping]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getReportApplicationMapping]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getReportApplicationMapping]
GO
/****** Object:  StoredProcedure [dbo].[sp_getReportApplicationMappingFilter]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getReportApplicationMappingFilter]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getReportApplicationMappingFilter]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetRightForUser]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetRightForUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_GetRightForUser]
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetRights]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sp_GetRights]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Sp_GetRights]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetRoleRights]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetRoleRights]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_GetRoleRights]
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetRoles]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sp_GetRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Sp_GetRoles]
GO
/****** Object:  StoredProcedure [dbo].[Sp_getRolesbyuserassigned]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sp_getRolesbyuserassigned]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Sp_getRolesbyuserassigned]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetuserBusinessSector]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetuserBusinessSector]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_GetuserBusinessSector]
GO
/****** Object:  StoredProcedure [dbo].[SP_Getusercountry]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Getusercountry]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Getusercountry]
GO
/****** Object:  StoredProcedure [dbo].[SP_Getuserregion]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Getuserregion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Getuserregion]
GO
/****** Object:  StoredProcedure [dbo].[sp_getusers]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getusers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getusers]
GO
/****** Object:  StoredProcedure [dbo].[sp_getusersbycondition]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getusersbycondition]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getusersbycondition]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_ApplicationCategory]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_ApplicationCategory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_ApplicationCategory]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Business]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Business]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_Business]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_BusinessLine]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_BusinessLine]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_BusinessLine]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_BusinessSuffix]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_BusinessSuffix]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_BusinessSuffix]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Capacity]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Capacity]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_Capacity]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_ChildID]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_ChildID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_ChildID]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Country]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Country]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_Country]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_DiscretionaryCode]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_DiscretionaryCode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_DiscretionaryCode]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_FTAApplicationCode]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_FTAApplicationCode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_FTAApplicationCode]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_FTAApplicationName]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_FTAApplicationName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_FTAApplicationName]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_FTAStrategyCode]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_FTAStrategyCode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_FTAStrategyCode]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_FTAStrategyName]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_FTAStrategyName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_FTAStrategyName]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_ParentID]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_ParentID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_ParentID]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Region]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Region]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_Region]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_role]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_role]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_role]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_roleright]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_roleright]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_roleright]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Strategy]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Strategy]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_Strategy]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_strategy_Approval]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_strategy_Approval]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_strategy_Approval]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Strategytype]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Strategytype]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_Strategytype]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_strategyVersionLog]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_strategyVersionLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_strategyVersionLog]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_userBusinessSector]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_userBusinessSector]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_userBusinessSector]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_usercountry]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_usercountry]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_usercountry]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_userregion]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_userregion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_userregion]
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Venuetype]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Venuetype]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_insert_Venuetype]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_Venuetype]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_Venuetype]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_Venuetype]
GO
/****** Object:  StoredProcedure [dbo].[sp_deleteFTAApplicationMapping]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_deleteFTAApplicationMapping]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_deleteFTAApplicationMapping]
GO
/****** Object:  StoredProcedure [dbo].[sp_deleteReportApplicationMapping]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_deleteReportApplicationMapping]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_deleteReportApplicationMapping]
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteRole]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DeleteRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DeleteRole]
GO
/****** Object:  StoredProcedure [dbo].[sp_get_strategyVersionLog]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_get_strategyVersionLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_get_strategyVersionLog]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallApplicationCategory]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallApplicationCategory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallApplicationCategory]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallregion]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallregion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallregion]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllStrategy]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetAllStrategy]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_GetAllStrategy]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllStrategybyId]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetAllStrategybyId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_GetAllStrategybyId]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallStrategyStatus]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallStrategyStatus]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallStrategyStatus]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallStrategytype]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallStrategytype]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallStrategytype]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallSystemFlow]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallSystemFlow]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallSystemFlow]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallApplicationMaster]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallApplicationMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallApplicationMaster]
GO
/****** Object:  StoredProcedure [dbo].[SP_StrategyReport]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_StrategyReport]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_StrategyReport]
GO
/****** Object:  StoredProcedure [dbo].[sp_getallProduct]    Script Date: 03/12/2018 21:06:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallProduct]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_getallProduct]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_ApplicationMaster]    Script Date: 03/12/2018 21:05:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_ApplicationMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_ApplicationMaster]
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_SystemFlow]    Script Date: 03/12/2018 21:05:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_SystemFlow]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_delete_SystemFlow]
GO
/****** Object:  Table [dbo].[tbl_strategy]    Script Date: 03/12/2018 21:06:05 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__RefNu__3F115E1A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__RefNu__3F115E1A]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__FTAAp__40058253]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__FTAAp__40058253]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__FTASt__40F9A68C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__FTASt__40F9A68C]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Discr__41EDCAC5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Discr__41EDCAC5]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Busin__42E1EEFE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Busin__42E1EEFE]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__FTASh__43D61337]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__FTASh__43D61337]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Paren__44CA3770]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Paren__44CA3770]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Child__45BE5BA9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Child__45BE5BA9]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Busin__46B27FE2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Busin__46B27FE2]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Regio__47A6A41B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Regio__47A6A41B]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__FTAAp__498EEC8D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__FTAAp__498EEC8D]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Count__4A8310C6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Count__4A8310C6]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Count__4B7734FF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Count__4B7734FF]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__FTAAp__4C6B5938]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__FTAAp__4C6B5938]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__FTATh__4D5F7D71]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__FTATh__4D5F7D71]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__FTASt__4E53A1AA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__FTASt__4E53A1AA]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__FTASt__4F47C5E3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__FTASt__4F47C5E3]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Appli__51300E55]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Appli__51300E55]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Prior__5224328E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Prior__5224328E]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Strat__531856C7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Strat__531856C7]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Prior__540C7B00]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Prior__540C7B00]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Venue__55009F39]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Venue__55009F39]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Capac__55F4C372]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Capac__55F4C372]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__GoLiv__56E8E7AB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__GoLiv__56E8E7AB]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Third__57DD0BE4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Third__57DD0BE4]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Busin__58D1301D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Busin__58D1301D]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__FTAAp__59C55456]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__FTAAp__59C55456]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__FTASt__5AB9788F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__FTASt__5AB9788F]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Busin__5BAD9CC8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Busin__5BAD9CC8]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__DeCom__5CA1C101]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__DeCom__5CA1C101]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Versi__607251E5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Versi__607251E5]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__SignO__6166761E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__SignO__6166761E]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__SignO__625A9A57]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__SignO__625A9A57]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Signo__634EBE90]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Signo__634EBE90]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__IsAct__6442E2C9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__IsAct__6442E2C9]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Creat__65370702]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Creat__65370702]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Creat__662B2B3B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Creat__662B2B3B]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__LastM__671F4F74]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__LastM__671F4F74]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__LastM__681373AD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__LastM__681373AD]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strate__Res1__690797E6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strate__Res1__690797E6]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strate__Res2__69FBBC1F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strate__Res2__69FBBC1F]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strate__Res3__6AEFE058]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strate__Res3__6AEFE058]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strate__Res4__6BE40491]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strate__Res4__6BE40491]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strate__Res5__6CD828CA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strate__Res5__6CD828CA]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strate__Res6__6DCC4D03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strate__Res6__6DCC4D03]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strate__Res7__6EC0713C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strate__Res7__6EC0713C]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strate__Res8__6FB49575]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strate__Res8__6FB49575]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strate__Res9__70A8B9AE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strate__Res9__70A8B9AE]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_strat__Res10__719CDDE7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_strategy] DROP CONSTRAINT [DF__tbl_strat__Res10__719CDDE7]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_strategy]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_strategy]
GO
/****** Object:  Table [dbo].[tbl_strategy]    Script Date: 03/12/2018 21:06:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_strategy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_strategy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RefNumber] [varchar](50) NULL CONSTRAINT [DF__tbl_strat__RefNu__3F115E1A]  DEFAULT (NULL),
	[FTAApplicationCodeId] [int] NULL CONSTRAINT [DF__tbl_strat__FTAAp__40058253]  DEFAULT (NULL),
	[FTAStrategyCodeId] [int] NULL CONSTRAINT [DF__tbl_strat__FTASt__40F9A68C]  DEFAULT (NULL),
	[DiscretionaryCodeId] [int] NULL CONSTRAINT [DF__tbl_strat__Discr__41EDCAC5]  DEFAULT (NULL),
	[BusinessSuffixId] [int] NULL CONSTRAINT [DF__tbl_strat__Busin__42E1EEFE]  DEFAULT (NULL),
	[FTAShortCodeId] [varchar](50) NULL CONSTRAINT [DF__tbl_strat__FTASh__43D61337]  DEFAULT (NULL),
	[ParentId] [int] NULL CONSTRAINT [DF__tbl_strat__Paren__44CA3770]  DEFAULT (NULL),
	[ChildId] [int] NULL CONSTRAINT [DF__tbl_strat__Child__45BE5BA9]  DEFAULT (NULL),
	[BusinessLineId] [int] NULL CONSTRAINT [DF__tbl_strat__Busin__46B27FE2]  DEFAULT (NULL),
	[RegionId] [int] NULL CONSTRAINT [DF__tbl_strat__Regio__47A6A41B]  DEFAULT (NULL),
	[FTAApplicationNameId] [int] NULL CONSTRAINT [DF__tbl_strat__FTAAp__498EEC8D]  DEFAULT (NULL),
	[CountryIdList] [varchar](100) NULL CONSTRAINT [DF__tbl_strat__Count__4A8310C6]  DEFAULT (NULL),
	[CountryNameList] [varchar](500) NULL CONSTRAINT [DF__tbl_strat__Count__4B7734FF]  DEFAULT (NULL),
	[FTAApplicationOwnerId] [varchar](50) NULL CONSTRAINT [DF__tbl_strat__FTAAp__4C6B5938]  DEFAULT (NULL),
	[AdditionalShortcode] [varchar](250) NULL CONSTRAINT [DF__tbl_strat__FTATh__4D5F7D71]  DEFAULT (NULL),
	[FTAStrategyNameId] [int] NULL CONSTRAINT [DF__tbl_strat__FTASt__4E53A1AA]  DEFAULT (NULL),
	[FTAStrategyOwnerId] [varchar](50) NULL CONSTRAINT [DF__tbl_strat__FTASt__4F47C5E3]  DEFAULT (NULL),
	[ApplicationCategoryId] [int] NULL CONSTRAINT [DF__tbl_strat__Appli__51300E55]  DEFAULT (NULL),
	[Priority] [int] NULL CONSTRAINT [DF__tbl_strat__Prior__5224328E]  DEFAULT (NULL),
	[StrategyTypeId] [int] NULL CONSTRAINT [DF__tbl_strat__Strat__531856C7]  DEFAULT (NULL),
	[PriorityScore] [int] NULL CONSTRAINT [DF__tbl_strat__Prior__540C7B00]  DEFAULT (NULL),
	[VenueTypeId] [int] NULL CONSTRAINT [DF__tbl_strat__Venue__55009F39]  DEFAULT (NULL),
	[CapacityId] [int] NULL CONSTRAINT [DF__tbl_strat__Capac__55F4C372]  DEFAULT (NULL),
	[GoLiveDate] [date] NULL CONSTRAINT [DF__tbl_strat__GoLiv__56E8E7AB]  DEFAULT (NULL),
	[ThirdPartyAppId] [int] NULL CONSTRAINT [DF__tbl_strat__Third__57DD0BE4]  DEFAULT (NULL),
	[BusinessId] [int] NULL CONSTRAINT [DF__tbl_strat__Busin__58D1301D]  DEFAULT (NULL),
	[FTAApplicationMappingId] [int] NULL CONSTRAINT [DF__tbl_strat__FTAAp__59C55456]  DEFAULT (NULL),
	[FTAStrategyMappingId] [int] NULL CONSTRAINT [DF__tbl_strat__FTASt__5AB9788F]  DEFAULT (NULL),
	[BusinessMappingId] [int] NULL CONSTRAINT [DF__tbl_strat__Busin__5BAD9CC8]  DEFAULT (NULL),
	[DeComissionedDate] [date] NULL CONSTRAINT [DF__tbl_strat__DeCom__5CA1C101]  DEFAULT (NULL),
	[Description] [varchar](max) NULL,
	[Version] [int] NOT NULL CONSTRAINT [DF__tbl_strat__Versi__607251E5]  DEFAULT ('1'),
	[SeniorManagementFunction] [varchar](1500) NULL,
	[LTALongCode] [varchar](1500) NULL,
	[SignOff] [varchar](10) NULL CONSTRAINT [DF__tbl_strat__SignO__6166761E]  DEFAULT (NULL),
	[SignOffDate] [datetime2](0) NULL CONSTRAINT [DF__tbl_strat__SignO__625A9A57]  DEFAULT (NULL),
	[SignoffBy] [varchar](100) NULL CONSTRAINT [DF__tbl_strat__Signo__634EBE90]  DEFAULT (NULL),
	[StatusId] [varchar](50) NULL,
	[IsActive] [varchar](1) NULL CONSTRAINT [DF__tbl_strat__IsAct__6442E2C9]  DEFAULT (NULL),
	[CreatedDate] [datetime2](0) NULL CONSTRAINT [DF__tbl_strat__Creat__65370702]  DEFAULT (NULL),
	[CreatedBy] [varchar](100) NULL CONSTRAINT [DF__tbl_strat__Creat__662B2B3B]  DEFAULT (NULL),
	[LastModifiedDate] [datetime2](0) NULL CONSTRAINT [DF__tbl_strat__LastM__671F4F74]  DEFAULT (NULL),
	[LastModifiedBy] [varchar](100) NULL CONSTRAINT [DF__tbl_strat__LastM__681373AD]  DEFAULT (NULL),
	[Res1] [varchar](250) NULL CONSTRAINT [DF__tbl_strate__Res1__690797E6]  DEFAULT (NULL),
	[Res2] [varchar](250) NULL CONSTRAINT [DF__tbl_strate__Res2__69FBBC1F]  DEFAULT (NULL),
	[Res3] [varchar](250) NULL CONSTRAINT [DF__tbl_strate__Res3__6AEFE058]  DEFAULT (NULL),
	[Res4] [varchar](250) NULL CONSTRAINT [DF__tbl_strate__Res4__6BE40491]  DEFAULT (NULL),
	[Res5] [varchar](250) NULL CONSTRAINT [DF__tbl_strate__Res5__6CD828CA]  DEFAULT (NULL),
	[Res6] [varchar](250) NULL CONSTRAINT [DF__tbl_strate__Res6__6DCC4D03]  DEFAULT (NULL),
	[Res7] [varchar](250) NULL CONSTRAINT [DF__tbl_strate__Res7__6EC0713C]  DEFAULT (NULL),
	[Res8] [varchar](250) NULL CONSTRAINT [DF__tbl_strate__Res8__6FB49575]  DEFAULT (NULL),
	[Res9] [varchar](250) NULL CONSTRAINT [DF__tbl_strate__Res9__70A8B9AE]  DEFAULT (NULL),
	[Res10] [varchar](250) NULL CONSTRAINT [DF__tbl_strat__Res10__719CDDE7]  DEFAULT (NULL),
 CONSTRAINT [PK__tbl_stra__3214EC070C9A4464] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_SystemFlow]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_SystemFlow]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_SystemFlow](
 @i_id INT

)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_SystemFlow_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_ApplicationMaster]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_ApplicationMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_ApplicationMaster](
 @i_id INT

)
AS
BEGIN
delete from tbl_ApplicationMaster where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallProduct]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallProduct]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getallProduct
CREATE  PROCEDURE [dbo].[sp_getallProduct](
 @i_Id VARCHAR(50)

)
AS
BEGIN
SET NOCOUNT ON;

if(@i_Id !='''') begin

select * from tbl_ProductTypemaster where Id=@i_id;
end
else begin
select * from tbl_ProductTypemaster;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_StrategyReport]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_StrategyReport]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_StrategyReport](
 @i_FTAApplicationCode VARCHAR(50)=null,
 @i_FTAStrategyCode VARCHAR(50)=null,
 @i_BusinessLine VARCHAR(50)=null,
 @i_Region VARCHAR(50)=null,
 @i_Country VARCHAR(50)=null,
 @i_FTAApplicationOwner VARCHAR(50)=null,
 @i_ApplicationCategory VARCHAR(50)=null,
 @i_VenueType VARCHAR(50)=null,
 @i_FTAApplicationNameId VARCHAR(50)=null,
 @i_ParentID VARCHAR(50)=null,
 @i_ChildID VARCHAR(50)=null,
 @i_ThirdPartyAppId VARCHAR(50)=null,
 @i_userid VARCHAR(250)
)
AS
BEGIN
declare @Sql nvarchar(max);
declare @dynamicsql nvarchar(max);
declare @countryfilerSql nvarchar(max);
set @countryfilerSql='''';
if(@i_Country !='''' and @i_Country is not null )
set @countryfilerSql='' and c.id in (''+@i_Country+'')''

SET @sql=''select S.Id,S.RefNumber,FTAApplicationCodeId,FTAAC.FTAApplicationCode,FTAShortCodeId,FTAStrategyCodeId,FTASC.FTAStrategyCode,DiscretionaryCodeId,
DM.Discretionarycode,BusinessSuffixId,BSFM.BusinessSuffix,FTAStrategyCode,S.ParentId,PM.ParentId as ParentIdValue,S.ChildId,cM.ChildID as ChildIdValue,BusinessLineId,
BSL.BusinessLine,RegionId,R.RegionName,FTAApplicationNameId,APN.FTAApplicationName,FTAStrategyOwnerId,ApplicationCategoryId,ACM.ApplicationCategory,
StrategyTypeId,STM.StrategyType,VenueTypeId,VTM.VenueType,CapacityId,CPM.Capacity,CreatedBy,CreatedDate,Description,S.IsActive,LastModifiedBy,LastModifiedDate,Version,FTAStrategyNameId,FTASN.FTAStrategyName,S.FTAApplicationOwnerId,
S.Priority,S.PriorityScore,case SignOff  WHEN ''''True'''' THEN ''''Attested'''' else ''''Pending'''' end as SignOff
,SignOffDate,SignoffBy,LastModifiedDate ,LastModifiedBy,ThirdPartyAppId,TM.ThirdPartyAppName,
BusinessId,BM.business,FTAApplicationMappingId,FTAStrategyMappingId,BusinessMappingId,
S.DecomissionedDate,GoLiveDate,
S.StatusId,Ss.StatusName,AdditionalShortCode,
CountryIdList=STUFF  
(  
    (  
      SELECT DISTINCT '''', ''''+ CAST( C.id AS VARCHAR(MAX))  
      FROM tbl_country_master C,tbl_CountryStrategyMapping e   
      WHERE C.iD=e.CountryId and e.StrategyId=s.Id'' +@countryfilerSql+''
      FOR XMl PATH('''''''')  
    ),1,1,''''''''  
)  ,
CountryNameList=STUFF  
(  
    (  
      SELECT DISTINCT '''', ''''+ CAST( C.CountryName AS VARCHAR(MAX))  
      FROM tbl_country_master C,tbl_CountryStrategyMapping e   
      WHERE C.iD=e.CountryId and e.StrategyId=s.Id '' +@countryfilerSql+''
      FOR XMl PATH('''''''')  
    ),1,1,''''''''  
)  ,


SeniorManagementFunction,LTALongCode from tbl_strategy S 
join tbl_ftaapplicationcode_master FTAAC On S.FTAApplicationCodeId = FTAAC.Id 
join tbl_ftastrategycode_master FTASC on S.FTAStrategyCodeId = FTASC.Id 
JOin tbl_discretionarycode_master DM on s.DiscretionaryCodeId = DM.Id 
JOin tbl_businesssuffix_master BSFM on s.BusinessSuffixId = BSFM.Id 
JOIN tbl_parentid_master PM on s.ParentId = PM.Id 
join tbl_childid_master CM on S.ChildId = CM.Id 
JOIn tbl_businessline_master BSL on BusinessLineId = BSL.Id  
JOIN tbl_region_master R on S.RegionId = R.id 
JOIN tbl_ftaapplicationname_master APN on S.FTAApplicationNameId = APN.Id 
JOIN tbl_applicationcategory_master ACM on S.ApplicationCategoryId = ACM.Id 
JOIN tbl_ftastrategyname_master FTASN on S.FTAStrategyNameId = FTASN.Id 
JOIN tbl_strategytype_master STM on S.StrategyTypeId = STM.Id 
JOIN tbl_venuetype_master VTM on S.VenueTypeId = VTM.Id 
JOIN tbl_thirdpartyapplication TM on S.ThirdPartyAppId = TM.Id JOIN tbl_business_master BM on S.BusinessId = BM.Id 
JOIN tbl_capacity_master CPM on S.CapacityId = CPM.Id 
JOIN tbl_StrategyStatus ss on ss.Id=s.StatusId
right JOIN (SELECT  MAX(Id) as Id FROM tbl_strategy GROUP BY REfnumber) t2  ON S.ID = t2.Id where BusinessLineId in( select b.Id from tbl_userBusinessSectormapping bs join tbl_businessLine_master b  on bs.BusinessSectorId =b.Id where Userid=''''''+@i_userid+'''''')
 and RegionId in( select r.Id from tbl_userregionmapping rm join tbl_region_master r on rm.RegionId = r.Id where CountryIdList != null and  Userid=''''''+@i_userid+'''''')
  '';

SET @dynamicsql='''';
if (@i_FTAApplicationCode != '''' and @i_FTAApplicationCode is not null) begin
SET @dynamicsql=@dynamicsql+'' and FTAApplicationCodeId =''+@i_FTAApplicationCode;
end 


if (@i_FTAStrategyCode IS NOT NULL and @i_FTAStrategyCode != '''') begin

SET @dynamicsql=@dynamicsql+''  and FTAStrategyCodeId =''+@i_FTAStrategyCode;
end 

if (@i_BusinessLine != '''') begin
	
SET  @dynamicsql=@dynamicsql+''  and BusinessLineId =''+@i_BusinessLine;
end 


if (@i_Region != '''') begin
	
SET  @dynamicsql=@dynamicsql+''  and RegionId =''+@i_Region;
end 

--if (@i_Country != '''') begin
	
--SET  @dynamicsql=@dynamicsql+''  and CountryIdList Like ''''%''+@i_Country+''%'''''';
--end 


if (@i_FTAApplicationOwner != '''') begin

SET  @dynamicsql=@dynamicsql+'' and FTAApplicationOwnerId =''''''+@i_FTAApplicationOwner+ char(39);
end 


if (@i_ApplicationCategory IS NOT NULL and @i_ApplicationCategory != '''') begin
	
SET  @dynamicsql=@dynamicsql+''  and ApplicationCategoryId=''+@i_ApplicationCategory;
end 


if (@i_FTAApplicationCode != '''') begin

	

SET  @dynamicsql=@dynamicsql+''  and FTAApplicationCodeId=''+@i_FTAApplicationCode;
end 



if (@i_FTAApplicationNameId IS NOT NULL and @i_FTAApplicationNameId != '''') begin
	
SET  @dynamicsql=@dynamicsql+''  and FTAApplicationNameId=''+@i_FTAApplicationNameId;
end 




if (@i_ParentID IS NOT NULL and @i_ParentID != '''') begin
	
SET  @dynamicsql=@dynamicsql+''  and PM.ID=''+@i_ParentID;
end 



if (@i_ChildID IS NOT NULL and @i_ChildID != '''') begin
	
SET  @dynamicsql=@dynamicsql+''  and CM.ID=''+@i_ChildID;
end 

if (@i_ThirdPartyAppId IS NOT NULL and @i_ThirdPartyAppId != '''') begin

SET  @dynamicsql=@dynamicsql+''  and S.ThirdPartyAppId=''+@i_ThirdPartyAppId;
end 


	
if (@i_VenueType != '''') begin
	

SET  @dynamicsql=@dynamicsql+''  and VenueTypeId=''+@i_VenueType;
end 
	

	SET  @sql=@sql +@dynamicsql;

	
print(@sql)
EXECUTE (@sql);

END;







' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallApplicationMaster]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallApplicationMaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[sp_getallApplicationMaster](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;
if(@i_Id !='''') begin

select * from tbl_ApplicationMaster where Id=@i_id;
end
else begin
select * from tbl_ApplicationMaster;
end 
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallSystemFlow]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallSystemFlow]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getallSystemFlow
CREATE  PROCEDURE [dbo].[sp_getallSystemFlow](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_SystemFlow_master where Id=@i_id;
end
else begin
select * from tbl_SystemFlow_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallStrategytype]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallStrategytype]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getallStrategytype
CREATE  PROCEDURE [dbo].[sp_getallStrategytype](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_Strategytype_master where Id=@i_id;
end
else begin
select * from tbl_Strategytype_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallStrategyStatus]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallStrategyStatus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getallVenuetype
create PROCEDURE [dbo].[sp_getallStrategyStatus](
 @i_Id VARCHAR(50)
)
AS
BEGIN
if(@i_Id !='''') begin
select * from tbl_StrategyStatus where Id=@i_id;
end
else begin
select * from tbl_StrategyStatus;
end 
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllStrategybyId]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetAllStrategybyId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SP_GetAllStrategybyId](
@i_RefNumber varchar(100)
)
AS
BEGIN

select S.Id,S.RefNumber,FTAApplicationCodeId,FTAAC.FTAApplicationCode,FTAShortCodeId,CountryNameList,FTAStrategyCodeId,FTASC.FTAStrategyCode,DiscretionaryCodeId,DM.Discretionarycode,BusinessSuffixId,BSFM.BusinessSuffix,
FTAStrategyCode,S.ParentId,PM.ParentId as ParentIdValue,S.ChildId,cM.ChildID as ChildIdValue,BusinessLineId,BSL.BusinessLine,RegionId,R.RegionName,FTAApplicationNameId,APN.FTAApplicationName,FTAApplicationOwnerId,ApplicationCategoryId,
ACM.ApplicationCategory,StrategyTypeId,STM.StrategyType,VenueTypeId,VTM.VenueType,CapacityId,CPM.Capacity,CreatedBy,CreatedDate,Description,S.IsActive,LastModifiedBy,LastModifiedDate,Version,FTAStrategyNameId,FTASN.FTAStrategyName,
S.FTAStrategyOwnerId,S.Priority,S.PriorityScore, SignOff,SignOffDate,SignoffBy,LastModifiedDate ,LastModifiedBy,ThirdPartyAppId,TM.ThirdPartyAppName,BusinessId,BM.business,FTAApplicationMappingId,FTAStrategyMappingId,BusinessMappingId,
S.StatusId,Ss.StatusName,AdditionalShortCode,
CountryIdList=STUFF  
(  
    (  
      SELECT DISTINCT '', ''+ CAST( C.id AS VARCHAR(MAX))  
      FROM tbl_country_master C,tbl_CountryStrategyMapping e   
      WHERE C.iD=e.CountryId and e.StrategyId=s.Id   
      FOR XMl PATH('''')  
    ),1,1,''''  
)  ,
CountryName=STUFF  
(  
    (  
      SELECT DISTINCT '', ''+ CAST( C.CountryName AS VARCHAR(MAX))  
      FROM tbl_country_master C,tbl_CountryStrategyMapping e   
      WHERE C.iD=e.CountryId and e.StrategyId=s.Id   
      FOR XMl PATH('''')  
    ),1,1,''''  
)  ,
  
convert(NVARCHAR, S.DecomissionedDate, 103) DecomissionedDate,convert(NVARCHAR, S.GoLiveDate, 103) GoLiveDate,SeniorManagementFunction,LTALongCode from tbl_strategy S join tbl_ftaapplicationcode_master FTAAC On S.FTAApplicationCodeId = FTAAC.Id 
join tbl_ftastrategycode_master FTASC on S.FTAStrategyCodeId = FTASC.Id JOin tbl_discretionarycode_master DM on s.DiscretionaryCodeId = DM.Id JOin tbl_businesssuffix_master BSFM on s.BusinessSuffixId = BSFM.Id 
JOIN tbl_parentid_master PM on s.ParentId = PM.Id join tbl_childid_master CM on S.ChildId = CM.Id JOIn tbl_businessline_master BSL on BusinessLineId = BSL.Id  JOIN tbl_region_master R on S.RegionId = R.id JOIN 
tbl_ftaapplicationname_master APN on S.FTAApplicationNameId = APN.Id JOIN tbl_applicationcategory_master ACM on S.ApplicationCategoryId = ACM.Id JOIN tbl_ftastrategyname_master FTASN on S.FTAStrategyNameId = FTASN.Id JOIN tbl_strategytype_master STM on S.StrategyTypeId = STM.Id JOIN tbl_venuetype_master 
VTM on S.VenueTypeId = VTM.Id JOIN tbl_thirdpartyapplication TM on S.ThirdPartyAppId = TM.Id JOIN tbl_business_master BM on S.BusinessId = BM.Id JOIN tbl_capacity_master CPM on S.CapacityId = CPM.Id 

JOIN tbl_StrategyStatus ss on ss.Id=s.StatusId
right JOIN (SELECT  MAX(Id) as Id FROM tbl_strategy GROUP BY REfnumber) t2  
ON S.ID = t2.Id WHERE s.id is not null and S.Id = @i_RefNumber 
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllStrategy]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetAllStrategy]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[SP_GetAllStrategy]
(
 @i_userid VARCHAR(250)


)
AS
BEGIN
;With CompleteResult as(

select S.Id,S.RefNumber,FTAApplicationCodeId,FTAAC.FTAApplicationCode,FTAShortCodeId,CountryNameList,
CountryIdList=STUFF  
(  
    (  
      SELECT DISTINCT '', ''+ CAST( C.id AS VARCHAR(MAX))  
      FROM tbl_country_master C,tbl_CountryStrategyMapping e   
      WHERE C.iD=e.CountryId and e.StrategyId=s.Id   
      FOR XMl PATH('''')  
    ),1,1,''''  
)  ,
CountryName=STUFF  
(  
    (  
      SELECT DISTINCT '', ''+ CAST( C.CountryName AS VARCHAR(MAX))  
      FROM tbl_country_master C,tbl_CountryStrategyMapping e   
      WHERE C.iD=e.CountryId and e.StrategyId=s.Id   
      FOR XMl PATH('''')  
    ),1,1,''''  
)  ,
    
FTAStrategyCodeId,FTASC.FTAStrategyCode,DiscretionaryCodeId,DM.Discretionarycode,BusinessSuffixId,BSFM.BusinessSuffix,S.ParentId,PM.ParentId as ParentIdValue,S.ChildId,cM.ChildID as ChildIdValue,BusinessLineId,BSL.BusinessLine,RegionId,R.RegionName,FTAApplicationNameId,APN.FTAApplicationName,FTAApplicationOwnerId,ApplicationCategoryId,
ACM.ApplicationCategory,StrategyTypeId,STM.StrategyType,VenueTypeId,VTM.VenueType,CapacityId,CPM.Capacity,CreatedBy,CreatedDate,Description,S.IsActive,LastModifiedBy,LastModifiedDate,Version,FTAStrategyNameId,FTASN.FTAStrategyName,
S.FTAStrategyOwnerId,S.Priority,S.PriorityScore, SignOff,SignOffDate,SignoffBy,ThirdPartyAppId,TM.ThirdPartyAppName,BusinessId,BM.business,FTAApplicationMappingId,FTAStrategyMappingId,BusinessMappingId,
S.StatusId,Ss.StatusName,AdditionalShortCode,
convert(NVARCHAR, S.DecomissionedDate, 103) DecomissionedDate,convert(NVARCHAR, S.GoLiveDate, 103) GoLiveDate,SeniorManagementFunction,LTALongCode from tbl_strategy S join tbl_ftaapplicationcode_master FTAAC On S.FTAApplicationCodeId = FTAAC.Id 
join tbl_ftastrategycode_master FTASC on S.FTAStrategyCodeId = FTASC.Id JOin tbl_discretionarycode_master DM on s.DiscretionaryCodeId = DM.Id JOin tbl_businesssuffix_master BSFM on s.BusinessSuffixId = BSFM.Id 
JOIN tbl_parentid_master PM on s.ParentId = PM.Id join tbl_childid_master CM on S.ChildId = CM.Id JOIn tbl_businessline_master BSL on BusinessLineId = BSL.Id  JOIN tbl_region_master R on S.RegionId = R.id JOIN 
tbl_ftaapplicationname_master APN on S.FTAApplicationNameId = APN.Id JOIN tbl_applicationcategory_master ACM on S.ApplicationCategoryId = ACM.Id JOIN tbl_ftastrategyname_master FTASN on S.FTAStrategyNameId = FTASN.Id JOIN tbl_strategytype_master STM on S.StrategyTypeId = STM.Id JOIN tbl_venuetype_master 
VTM on S.VenueTypeId = VTM.Id JOIN tbl_thirdpartyapplication TM on S.ThirdPartyAppId = TM.Id JOIN tbl_business_master BM on S.BusinessId = BM.Id JOIN tbl_capacity_master CPM on S.CapacityId = CPM.Id 


JOIN tbl_StrategyStatus ss on ss.Id=s.StatusId
right JOIN (SELECT  MAX(Id) as Id FROM tbl_strategy GROUP BY REfnumber) t2  
ON S.ID = t2.Id where  s.id is not null 
)


select * from CompleteResult
 where BusinessLineId in( select b.Id from tbl_userBusinessSectormapping bs join tbl_businessLine_master b  on bs.BusinessSectorId =b.Id where Userid=@i_userid)
 and RegionId in( select r.Id from tbl_userregionmapping rm join tbl_region_master r on rm.RegionId = r.Id where  Userid=@i_userid)
 
 END;' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallregion]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallregion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getallregion
CREATE  PROCEDURE [dbo].[sp_getallregion](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;

if(@i_Id !='''') begin

select * from tbl_region_master where Id=@i_id;
end
else begin
select * from tbl_region_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallApplicationCategory]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallApplicationCategory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[sp_getallApplicationCategory](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') 
begin
select * from tbl_ApplicationCategory_master where Id=@i_id;
end
else begin
select * from tbl_ApplicationCategory_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_get_strategyVersionLog]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_get_strategyVersionLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_get_strategyVersionLog
CREATE  PROCEDURE [dbo].[sp_get_strategyVersionLog](
 @i_id VARCHAR(50)

)
AS
BEGIN
SET NOCOUNT ON;

select * from tbl_strategyversionlog where RefNumber=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteRole]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DeleteRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_DeleteRole](
 @i_id INT
)
AS
BEGIN
SET NOCOUNT ON;

delete from tbl_role_master where id=@i_id;

END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_deleteReportApplicationMapping]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_deleteReportApplicationMapping]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_deleteFTAApplicationMapping
CREATE  PROCEDURE [dbo].[sp_deleteReportApplicationMapping](
 @i_id VARCHAR(50),
 @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN
SET NOCOUNT ON;

 
delete from tbl_reportapplicationmapping where id =@i_id;
DELETE FROM tbl_CountryReportMapping WHERE ReportId =@i_id;
set @i_OutParam =''success'';

END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_deleteFTAApplicationMapping]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_deleteFTAApplicationMapping]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_deleteFTAApplicationMapping
CREATE  PROCEDURE [dbo].[sp_deleteFTAApplicationMapping](
 @i_id VARCHAR(50),
 @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN
SET NOCOUNT ON;
declare @Shortcode varchar(150);
 IF exists (SELECT FTAShortCodeId FROM tbl_strategy  WHERE FTAApplicationMappingId=@i_id and IsActive=''Y'') 
 begin
 SELECT @Shortcode=FTAShortCodeId FROM tbl_strategy  WHERE FTAApplicationMappingId=@i_id and IsActive=''Y'';
 set @i_OutParam =''Mapping associated to strategy FTA short code'' +@Shortcode;
 end
 else 
 begin

delete from tbl_FTAapplicationmapping where id =@i_id;
set @i_OutParam =''success'';
end;

END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_Venuetype]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_Venuetype]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_Venuetype](
 @i_id INT

)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_Venuetype_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Venuetype]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Venuetype]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_insert_Venuetype](
	@i_Venuetype VARCHAR(50),
	@i_Venuetypecode VARCHAR(50),
  @i_OutParam VARCHAR(50) OUT


)as
BEGIN
if exists (select ID from tbl_venuetype_master where VenueType =@i_Venuetype)
begin
set @i_OutParam =''Venue Type already exists'';
end
else
begin
insert into tbl_Venuetype_master (Venuetype,VenueTypecode) values(@i_Venuetype,@i_Venuetypecode);
set @i_OutParam =''success'';
END
end

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_userregion]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_userregion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[sp_insert_userregion](
	@i_userid VARCHAR(250),
	@i_RegionId VARCHAR(250)
)as
BEGIN
insert into tbl_userregionmapping (Userid,RegionId) values(@i_userid,@i_RegionId);
END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_usercountry]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_usercountry]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_insert_usercountry](
	@i_userid VARCHAR(250),
	@i_CountryId VARCHAR(250)
)as
BEGIN
insert into tbl_usercountrymapping (Userid,CountryId) values(@i_userid,@i_CountryId);
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_userBusinessSector]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_userBusinessSector]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_insert_userBusinessSector](
	@i_userid VARCHAR(250),
	@i_BusinessSectorId VARCHAR(250)
)as
BEGIN
insert into tbl_userBusinessSectormapping (Userid,BusinessSectorId) values(@i_userid,@i_BusinessSectorId);
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_strategyVersionLog]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_strategyVersionLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_insert_strategyVersionLog](
	@i_RefNumber VARCHAR(50),
	@i_Version VARCHAR(50),
	@i_ChangeDesc VARCHAR(2000),
	@i_Createdby VARCHAR(500)
)
as
BEGIN

insert into tbl_strategyVersionLog (RefNumber,Version,ChangeDesc,Createdby) values(@i_RefNumber,@i_Version,@i_ChangeDesc,@i_Createdby);

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Strategytype]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Strategytype]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_insert_Strategytype](
	@i_Strategytype VARCHAR(50),
		@i_Strategytypecode VARCHAR(50),
  @i_OutParam VARCHAR(50) OUT

)as
BEGIN


IF exists (SELECT * FROM tbl_Strategytype_master  WHERE Strategytype=@i_Strategytype) 
set @i_OutParam =''Strategy Type already exists'';
 else
 begin

insert into tbl_Strategytype_master (Strategytype,StrategyTypecode) values(@i_Strategytype,@i_Strategytypecode);
set @i_OutParam =''success'';

end
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_strategy_Approval]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_strategy_Approval]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_insert_strategy_Approval](
	@i_RefNumber VARCHAR(50),
	@i_Version VARCHAR(50),
	@i_systemfile VARCHAR(500)
,
	@i_OrignalFile VARCHAR(500),
	@i_status VARCHAR(5)
,
	@I_uploadedby VARCHAR(500)

)
as
BEGIN

INSERT INTO tbl_StrategyApproval (RefNumber, Version,Approver,Comments,Status,Uploadedby) VALUES (@i_RefNumber, @i_Version,@i_systemfile,@i_OrignalFile,@i_status,@I_uploadedby);

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Strategy]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Strategy]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_insert_Strategy](
 @i_RefNumber VARCHAR(50),
 @i_RegionId VARCHAR(50),
 @i_Description VARCHAR(500)=null,
 @i_FTAApplicationCodeId VARCHAR(50),
 @i_BusinessSuffixId VARCHAR(50),
 @i_ChildID VARCHAR(50),
 @i_FTAStrategyNameId VARCHAR(50),
 @i_StrategytypeId VARCHAR(50)=null,
 @i_GOLiveDate VARCHAR(50)=null,
 @i_FTAStrategyCodeId VARCHAR(50),
 @i_FTAShortCode VARCHAR(50),
 @i_BusinessLineId VARCHAR(50),
 @i_FTAApplicationNameId VARCHAR(50),
 @i_FTAStrategyOwnerId VARCHAR(50),
 @i_ApplicationCategoryId VARCHAR(50),
 @i_DecommissionedDate VARCHAR(50)=null,
 @i_DiscretionaryCodeId VARCHAR(50),
 @i_ParentID VARCHAR(50),
 @i_FTAApplicationOwnerId VARCHAR(50),
 @i_PriorityScore VARCHAR(50),
 @i_Priority VARCHAR(50),
 @i_CapacityId VARCHAR(50),
 @i_VenueTypeId VARCHAR(50),
 @i_Version VARCHAR(50),
 @i_ThirdPartyAppId VARCHAR(50)  ,
 @i_BusinessId VARCHAR(50),
 @i_FTAApplicationMappingId VARCHAR(50)    ,
 @i_FTAStrategyMappingId VARCHAR(50) ,
 @i_BusinessMappingId VARCHAR(50),
 @i_SeniorManagementFunction VARCHAR(1500),
 @i_LTALongCode VARCHAR(1500),
 @i_SignOff VARCHAR(50) =null ,
 @i_CountryIdList VARCHAR(100)  ,
 @i_CountryNameList VARCHAR(500),
 @i_StatusId VARCHAR(50),
 @i_CreatedBy VARCHAR(500)=null,
 @i_AdditionalShortCode VARCHAR(500)=null,
 @i_OutParam VARCHAR(500) OUTPUT
)
AS
BEGIN
 IF exists (SELECT Id FROM tbl_strategy  WHERE FTAShortCodeId=@i_FTAShortCode and Version=@i_Version) 
 begin
 set @i_OutParam =''Strategy Short code already exists'';
 end
 Else IF exists (SELECT Id FROM tbl_strategy  WHERE FTAShortCodeId=@i_LTALongCode and Version=@i_Version) 
 begin
 set @i_OutParam =''Strategy Long code already exists'';
 end
 else begin
 begin
 
 update tbl_strategy set isactive =''N'' where FTAShortCodeId =@i_FTAShortCode;
 insert into tbl_strategy(RefNumber, RegionId,  Description,   FTAApplicationCodeId,        BusinessSuffixId,        ChildID,
        FTAStrategyNameId,StrategytypeId,GOLiveDate,FTAStrategyCodeId,FTAShortCodeId,
        BusinessLineId,FTAApplicationNameId,FTAStrategyOwnerId,ApplicationCategoryId,VenuetypeId,
        DeComissionedDate,DiscretionaryCodeId,ParentID,FTAApplicationOwnerId,PriorityScore,Priority,
        CapacityId,CountryIdList,CountryNameList,IsActive,Version,ThirdPartyAppId,BusinessId,FTAApplicationMappingId,
		  FTAStrategyMappingId,BusinessMappingId,SignOff,CreatedBy,LTALongCode,SeniorManagementFunction,StatusId
		  ,AdditionalShortCode) values(@i_RefNumber,
 @i_RegionId,@i_Description,@i_FTAApplicationCodeId,@i_BusinessSuffixId,@i_ChildID,@i_FTAStrategyNameId,@i_StrategytypeId,
@i_GOLiveDate,@i_FTAStrategyCodeId,@i_FTAShortCode,@i_BusinessLineId,@i_FTAApplicationNameId,@i_FTAStrategyOwnerId,
@i_ApplicationCategoryId,@i_VenueTypeId,@i_DecommissionedDate,@i_DiscretionaryCodeId,@i_ParentID,@i_FTAApplicationOwnerId,@i_PriorityScore,
@i_Priority,@i_CapacityId,@i_CountryIdList,@i_CountryNameList, ''Y'',@i_Version,@i_ThirdPartyAppId,@i_BusinessId,@i_FTAApplicationMappingId,@i_FTAStrategyMappingId,@i_BusinessMappingId,
@i_SignOff,@i_CreatedBy,@i_LTALongCode,@i_SeniorManagementFunction,@i_StatusId,@i_AdditionalShortCode);


insert into dbo.tbl_CountryStrategyMapping (StrategyId,CountryId) select @@IDENTITY,Item from SplitString(@i_CountryIdList,'','') 

set @i_OutParam =''success'';
end;
ENd 
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_roleright]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_roleright]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_insert_roleright](
	@i_RoleId INT,
	@i_RightId INT

)as
BEGIN
insert into tbl_roleright_mapping (RoleId,RightId) values(@i_RoleId,@i_RightId);
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_role]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_role]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_insert_role](
 @i_role VARCHAR(50),
 @param_auto_id INT OUT
)
AS
BEGIN
insert into tbl_role_master (RoleName) values(@i_role);
  set  @param_auto_id = @@IDENTITY ;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Region]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Region]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_insert_Region](
 @i_RegionName VARCHAR(50),
  @i_OutParam VARCHAR(50) OUT



)
AS
BEGIN


IF exists (SELECT * FROM tbl_region_master  WHERE regionname=@i_RegionName) 
set @i_OutParam =''Region Name already exists'';
 else
 begin


insert into tbl_region_master (regionname) values(@i_RegionName);
set @i_OutParam =''success'';
END;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_ParentID]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_ParentID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_insert_ParentID](
	@i_ParentID VARCHAR(50),
  @i_OutParam VARCHAR(50) OUT

)
as
BEGIN


IF exists (SELECT * FROM tbl_ParentID_master  WHERE ParentID=@i_ParentID) 
set @i_OutParam =''Parent ID already exists'';
 else
 begin


insert into tbl_ParentID_master (ParentID) values(@i_ParentID);
set @i_OutParam =''success'';
END
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_FTAStrategyName]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_FTAStrategyName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_insert_FTAStrategyName](
	@i_FTAStrategyName VARCHAR(50),
  @i_OutParam VARCHAR(50) OUT



)
as
BEGIN


IF exists (SELECT * FROM tbl_FTAStrategyName_master  WHERE FTAStrategyName=@i_FTAStrategyName) 
set @i_OutParam =''FTA Strategy Name already exists'';
 else
 begin
insert into tbl_FTAStrategyName_master (FTAStrategyName) values(@i_FTAStrategyName);
set @i_OutParam =''success'';
end
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_FTAStrategyCode]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_FTAStrategyCode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_insert_FTAStrategyCode](
 @i_FTAStrategyCode VARCHAR(50)

,
  @i_OutParam VARCHAR(50) OUT

)
AS
BEGIN


IF exists (SELECT * FROM tbl_FTAStrategyCode_master  WHERE FTAStrategyCode=@i_FTAStrategyCode) 
set @i_OutParam =''FTA Strategy code already exists'';
 else
 begin
insert into tbl_FTAStrategyCode_master (FTAStrategyCode) values(@i_FTAStrategyCode);
set @i_OutParam =''success'';
end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_FTAApplicationName]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_FTAApplicationName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- Dumping structure for procedure achiv1.sp_insert_FTAApplicationName
CREATE  PROCEDURE [dbo].[sp_insert_FTAApplicationName](
 @i_FTAApplicationName VARCHAR(50)

,
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN


IF exists (SELECT * FROM tbl_FTAApplicationName_master  WHERE FTAApplicationName=@i_FTAApplicationName) 
 set @i_OutParam =''FTA Application Name already exists'';
 else
 begin
insert into tbl_FTAApplicationName_master (FTAApplicationName) values(@i_FTAApplicationName);
set @i_OutParam =''success'';
end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_FTAApplicationCode]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_FTAApplicationCode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE  PROCEDURE [dbo].[sp_insert_FTAApplicationCode](
 @i_FTAApplicationCode VARCHAR(50)

,
  @i_OutParam VARCHAR(50) OUT

)
AS
BEGIN

IF exists (SELECT * FROM tbl_FTAApplicationCode_master  WHERE FTAApplicationCode=@i_FTAApplicationCode) 
set @i_OutParam =''FTA Application code already exists'';
 else
 begin
insert into tbl_FTAApplicationCode_master (FTAApplicationCode) values(@i_FTAApplicationCode);
set @i_OutParam =''success'';
end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_DiscretionaryCode]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_DiscretionaryCode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_insert_DiscretionaryCode](
 @i_DiscretionaryCode VARCHAR(50)

,
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN
IF exists (SELECT * FROM tbl_DiscretionaryCode_master WHERE DiscretionaryCode=@i_DiscretionaryCode) 
set @i_OutParam =''Discretionary code already exists'';
 else
 begin

insert into tbl_DiscretionaryCode_master (DiscretionaryCode) values(@i_DiscretionaryCode);
set @i_OutParam =''success'';
end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Country]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Country]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_insert_Country](
	@i_CountryName VARCHAR(50)
,
  @i_OutParam VARCHAR(50) OUT
)
as
BEGIN

IF exists (SELECT * FROM tbl_country_master WHERE Countryname=@i_CountryName) 
set @i_OutParam =''Country Name already exists'';
 else
 begin

insert into tbl_country_master (Countryname) values(@i_CountryName);
set @i_OutParam =''success'';
end
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_ChildID]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_ChildID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_insert_ChildID](
 @i_ChildID VARCHAR(50)

,
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN
SET NOCOUNT ON;


IF exists (SELECT * FROM tbl_ChildID_master WHERE ChildID=@i_ChildID) 
 set @i_OutParam =''Child ID already exists'';
 else
 begin

insert into tbl_ChildID_master (ChildID) values(@i_ChildID);
set @i_OutParam =''success'';
END



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Capacity]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Capacity]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_insert_Capacity](
	@i_Capacity VARCHAR(50),
	@i_Capacitycode VARCHAR(50),
	
  @i_OutParam VARCHAR(50) OUT
)as
BEGIN

IF exists (SELECT * FROM tbl_Capacity_master WHERE Capacity=@i_Capacity) 
set @i_OutParam =''Capacity already exists'';
 else
 begin
insert into tbl_Capacity_master (Capacity,Capacitycode) values(@i_Capacity,@i_Capacitycode);
set @i_OutParam =''success'';
END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_BusinessSuffix]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_BusinessSuffix]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_insert_BusinessSuffix](
 @i_BusinessSuffix VARCHAR(50)
,
  @i_OutParam VARCHAR(50) OUT

)
AS
BEGIN


if exists (select ID from tbl_BusinessSuffix_master where BusinessSuffix =@i_BusinessSuffix)
BEGIN 
set @i_OutParam =''Business Suffix already exists'';
END
ELSE
BEGIN

insert into tbl_BusinessSuffix_master (BusinessSuffix) values(@i_BusinessSuffix);
set @i_OutParam =''success'';
END
end


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_BusinessLine]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_BusinessLine]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_insert_BusinessLine](
 @i_BusinessLine VARCHAR(50)
,
  @i_OutParam VARCHAR(50) OUT

)
AS
BEGIN

IF exists (SELECT * FROM tbl_BusinessLine_master WHERE BusinessLine=@i_BusinessLine) 
set @i_OutParam =''Business Line already exists'';

 else
 begin
insert into tbl_BusinessLine_master (BusinessLine) values(@i_BusinessLine);
set @i_OutParam =''success'';
end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_Business]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_Business]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_insert_Business](
 @i_Business VARCHAR(50),
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN

IF exists (SELECT * FROM tbl_Business_master WHERE Business=@i_Business) 
 set @i_OutParam =''Business already exists'';
 else
 begin
insert into tbl_Business_master (Business) values(@i_Business);
set @i_OutParam =''success'';
end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_ApplicationCategory]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_insert_ApplicationCategory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_insert_ApplicationCategory](
   @i_ApplicationCategory VARCHAR(50),
  @i_OutParam VARCHAR(50) OUT
)
as
BEGIN
 IF exists (SELECT id FROM tbl_ApplicationCategory_master WHERE ApplicationCategory=@i_ApplicationCategory) 
 set @i_OutParam =''Application Category already exists'';
 else
 begin

insert into tbl_ApplicationCategory_master (ApplicationCategory) values(@i_ApplicationCategory);
set @i_OutParam =''success'';

end
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getusersbycondition]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getusersbycondition]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getusersbycondition
CREATE  PROCEDURE [dbo].[sp_getusersbycondition](
 @i_regionId VARCHAR(50),
 @i_businesssectorId VARCHAR(50)

)
AS
BEGIN
SET NOCOUNT ON;
select u.Id,u.Userid,u.UserName,u.EmailId,u.RegionId,r.RegionName,u.BusinessSectorId,
b.BusinessLine,u.RoleId,rm.RoleName,u.Status from tbl_user_master u 
Join tbl_userbusinesssectormapping ubu on ubu.userid=u.Userid
Join tbl_userregionmapping ur on ur.userid=u.Userid
join tbl_businessline_master b on ubu.BusinessSectorId=b.Id 
join tbl_region_master r  on ur.RegionId=r.Id join tbl_role_master rm on u.RoleId=rm.Id  
where ur.RegionId=@i_regionId and ubu.BusinessSectorId=@i_businesssectorId and U.userid!=''NA'';

END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getusers]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getusers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_getusers](
 @i_userid VARCHAR(50)
)
AS
BEGIN
if(@i_userid ='''') begin
select u.Id,u.Userid,u.UserName,u.EmailId,u.RoleId,rm.RoleName,u.Status,u.Password,u.IsADUser from tbl_user_master u join tbl_role_master rm on u.RoleId=rm.Id where u.Status !=''NA'';

end
else if(@i_userid =''NA'') begin
select u.Id,u.Userid,u.UserName,u.EmailId,u.RoleId,rm.RoleName,u.Status,u.Password,u.IsADUser from tbl_user_master u join tbl_role_master rm on u.RoleId=rm.Id;
end
else begin
select u.Id,u.Userid,u.UserName,u.EmailId,u.RoleId,rm.RoleName,u.Status,u.Password,u.IsADUser from tbl_user_master u 
join tbl_role_master rm on u.RoleId=rm.Id  where u.userid=@i_userid and u.Status !=''NA'';
end 


END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Getuserregion]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Getuserregion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.SP_Getuserregion
CREATE  PROCEDURE [dbo].[SP_Getuserregion](
 @i_userid VARCHAR(250)
)
AS
BEGIN
SET NOCOUNT ON;
select r.Id,r.RegionName from tbl_userregionmapping rm join tbl_region_master r on rm.RegionId = r.Id where Userid=@i_userid;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Getusercountry]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Getusercountry]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.SP_Getusercountry
CREATE  PROCEDURE [dbo].[SP_Getusercountry](
 @i_userid VARCHAR(250)
)
AS
BEGIN
SET NOCOUNT ON;
select c.id,c.CountryName from tbl_usercountrymapping uc join tbl_country_master c on uc.CountryId = c.id where Userid=@i_userid;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetuserBusinessSector]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetuserBusinessSector]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.SP_GetuserBusinessSector
CREATE  PROCEDURE [dbo].[SP_GetuserBusinessSector](
 @i_userid VARCHAR(250)


)
AS
BEGIN
SET NOCOUNT ON;
select b.Id,b.BusinessLine from tbl_userBusinessSectormapping bs join tbl_businessLine_master b  on bs.BusinessSectorId =b.Id where Userid=@i_userid;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_getRolesbyuserassigned]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sp_getRolesbyuserassigned]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.Sp_getRolesbyuserassigned
CREATE  PROCEDURE [dbo].[Sp_getRolesbyuserassigned](
 @i_roleid VARCHAR(50)

)
AS
BEGIN
select u.Userid,u.UserName,u.EmailId,u.RegionId,r.RegionName,u.CountryId,c.CountryName,u.BusinessSectorId,b.Name,u.RoleId,rm.RoleName,u.Status from tbl_user_master u join tbl_businesssector b on u.BusinessSectorId=b.Id join tbl_region_master r  on u.RegionId=r.Id join tbl_country_master c  on u.CountryId=c.id join tbl_role_master rm on u.RoleId=rm.Id
where u.RoleId=@i_roleid;

END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetRoles]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sp_GetRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.Sp_GetRoles
CREATE  PROCEDURE [dbo].[Sp_GetRoles](
 @i_roleId VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;

if(@i_roleId !='''') begin
select * from tbl_Role_Master where Id=@i_roleId;
end
else begin
select * from tbl_Role_Master ;
End 

END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetRoleRights]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetRoleRights]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.SP_GetRoleRights
CREATE  PROCEDURE [dbo].[SP_GetRoleRights](
 @i_roleId INT
)
AS
BEGIN
SET NOCOUNT ON;
select * from tbl_roleright_mapping where roleId=@i_roleId;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetRights]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sp_GetRights]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.Sp_GetRights
CREATE  PROCEDURE [dbo].[Sp_GetRights](
 @i_roleid VARCHAR(50)



)
AS
BEGIN
SET NOCOUNT ON;

if(@i_roleid!='''') begin
Select * from tbl_right_master where RightId=@i_roleid  and Isactive=''Y'';
end
else begin
Select * from tbl_right_master where  Isactive=''Y'';
end 
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetRightForUser]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetRightForUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.SP_GetRightForUser
CREATE  PROCEDURE [dbo].[SP_GetRightForUser](
 @i_userid VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;

select distinct RightName, Path from TBL_RIGHT_MASTER RM inner join TBL_ROLERIGHT_MAPPING RR on
 RM.RightID=RR.RightID inner join TBL_USER_MASTER UM on RR.RoleID=UM.RoleId where UM.Userid = @i_userid;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getReportApplicationMappingFilter]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getReportApplicationMappingFilter]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_getReportApplicationMappingFilter](
	@i_Id VARCHAR(50)=null
)
as
BEGIN
 select FAM.Id, FAM.FTAApplicationNameId,FANM.FTAApplicationName,FAM.FTAApplicationCodeId,
 FACM.FTAApplicationCode,
 FAM.ChildId,CM.ChildID as ChildIDValue, FAM.ThirdPartyAppId,TM.ThirdPartyAppName,
 FAM.ParentID as ParentIDValue,PM.ParentId, FAM.ApplicationOwnerId ,FAM.ApplicationCategoryId,
 AM.ApplicationCategory,
 FAM.BusinessLineId,BM.BusinessLine
 ,FAM.RegionId,R.RegionName,
 --FAM.CountryId,C.CountryName,

 CountryId=STUFF  
(  
    (  
      SELECT DISTINCT '', ''+ CAST( C.id AS VARCHAR(MAX))  
      FROM tbl_country_master C,tbl_CountryReportMapping e   
      WHERE C.iD=e.CountryId and e.ReportId=FAM.Id   
      FOR XMl PATH('''')  
    ),1,1,''''  
)  ,
CountryName=STUFF  
(  
    (  
      SELECT DISTINCT '', ''+ CAST( C.CountryName AS VARCHAR(MAX))  
      FROM tbl_country_master C,tbl_CountryReportMapping e   
      WHERE C.iD=e.CountryId and e.ReportId=FAM.Id   
      FOR XMl PATH('''')  
    ),1,1,''''  
)  
  from tbl_reportapplicationmapping FAM 
 join tbl_ftaapplicationname_master FANM on FAM.FTAApplicationNameId=FANM.Id
 join tbl_ftaapplicationcode_master FACM on FAM.FTAApplicationCodeId=FACM.Id
 join tbl_childid_master CM on FAM.ChildId=CM.Id
 join tbl_thirdpartyapplication TM on FAM.ThirdPartyAppId=TM.Id
 join tbl_user_master UM on UM.Userid=FAM.ApplicationOwnerId
 join tbl_parentId_master PM on PM.Id=FAM.ParentId
 join tbl_applicationcategory_Master AM on AM.Id =FAM.ApplicationCategoryId
 join tbl_businessline_master BM on bm.Id=FAM.BusinessLineId
 JOIN tbl_region_master R on R.Id=FAM.RegionId


 where FAM.FTAApplicationNameId=@i_id;
end

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getReportApplicationMapping]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getReportApplicationMapping]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_getReportApplicationMapping](
	@i_Id VARCHAR(50)=null
)
as
BEGIN
if(@i_Id !='''') 
 select FAM.Id, FAM.FTAApplicationNameId,FANM.FTAApplicationName,FAM.FTAApplicationCodeId,FACM.FTAApplicationCode,
 FAM.ChildId,CM.ChildID as ChildIDValue, FAM.ThirdPartyAppId,TM.ThirdPartyAppName,
 FAM.ParentID as ParentIDValue,PM.ParentId, FAM.ApplicationOwnerId ,FAM.ApplicationCategoryId,AM.ApplicationCategory 
 ,FAM.BusinessLineId,BM.BusinessLine
  from tbl_reportapplicationmapping FAM 
 join tbl_ftaapplicationname_master FANM on FAM.FTAApplicationNameId=FANM.Id
 join tbl_ftaapplicationcode_master FACM on FAM.FTAApplicationCodeId=FACM.Id
 join tbl_childid_master CM on FAM.ChildId=CM.Id
 join tbl_thirdpartyapplication TM on FAM.ThirdPartyAppId=TM.Id
 join tbl_user_master UM on UM.Userid=FAM.ApplicationOwnerId
 join tbl_parentId_master PM on PM.Id=FAM.ParentId
 join tbl_applicationcategory_Master AM on AM.Id =FAM.ApplicationCategoryId
 join tbl_businessline_master BM on bm.Id=FAM.BusinessLineId
 JOIN tbl_CountryReportMapping CR on CR.ReportId=FAM.Id
 where FAM.Id=@i_id;
else
 select FAM.Id, FAM.FTAApplicationNameId,FANM.FTAApplicationName,FAM.FTAApplicationCodeId,
 FACM.FTAApplicationCode,
 FAM.ChildId,CM.ChildID as ChildIDValue, FAM.ThirdPartyAppId,TM.ThirdPartyAppName,
  FAM.ParentID as ParentIDValue,PM.ParentId, FAM.ApplicationOwnerId ,FAM.ApplicationCategoryId,
  AM.ApplicationCategory,
  FAM.BusinessLineId,BM.BusinessLine
  ,FAM.RegionId,R.RegionName,CountryId=STUFF
  (  
    (  
      SELECT DISTINCT '', ''+ CAST( C.iD AS VARCHAR(MAX))  
      FROM tbl_country_master C,tbl_CountryReportMapping e   
      WHERE C.iD=e.CountryId and e.ReportId=FAM.Id   
      FOR XMl PATH('''')  
    ),1,1,''''  
)  
  
  ,
  CountryName=STUFF  
(  
    (  
      SELECT DISTINCT '', ''+ CAST( C.CountryName AS VARCHAR(MAX))  
      FROM tbl_country_master C,tbl_CountryReportMapping e   
      WHERE C.iD=e.CountryId and e.ReportId=FAM.Id   
      FOR XMl PATH('''')  
    ),1,1,''''  
)  
  
  from tbl_reportapplicationmapping FAM
 join tbl_ftaapplicationname_master FANM on FAM.FTAApplicationNameId=FANM.Id
 join tbl_ftaapplicationcode_master FACM on FAM.FTAApplicationCodeId=FACM.Id
 join tbl_childid_master CM on FAM.ChildId=CM.Id
 join tbl_thirdpartyapplication TM on FAM.ThirdPartyAppId=TM.Id
  join tbl_user_master UM on UM.Userid=FAM.ApplicationOwnerId
 join tbl_parentId_master PM on PM.Id=FAM.ParentId
 join tbl_applicationcategory_Master AM on AM.Id =FAM.ApplicationCategoryId
 join tbl_businessline_master BM on bm.Id=FAM.BusinessLineId
 JOIN tbl_region_master R on R.Id=FAM.RegionId

end

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getmenuforuser]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getmenuforuser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getmenuforuser
CREATE  PROCEDURE [dbo].[sp_getmenuforuser](
 @i_UserId VARCHAR(50)


)
AS
BEGIN
SET NOCOUNT ON;
select distinct MenuName, Path, RM.RightID, RM.ShowMenu, RM.Icon from TBL_RIGHT_MASTER RM inner join TBL_ROLERIGHT_MAPPING RR on RM.RightID=RR.RightID inner join TBL_USER_MASTER UM on RR.RoleID=UM.RoleId where UM.Userid = @i_UserId and RM.IsActive=''Y'' order by RM.RightID;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getFTAStrategyMappingbyId]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getFTAStrategyMappingbyId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getFTAStrategyMappingbyId
CREATE  PROCEDURE [dbo].[sp_getFTAStrategyMappingbyId](
 @i_Id INT

)
AS
BEGIN
SET NOCOUNT ON;
select FSM.Id, FSM.FTAStrategyNameId, FSN.FTAStrategyName, FSM.FTAStrategyCodeId,FSC.FTAStrategyCode from tbl_ftastrategynamemapping FSM join tbl_ftastrategyname_master FSN on FSM.FTAStrategyNameId=FSN.Id
JOIN tbl_ftastrategycode_master FSC on  FSM.FTAStrategyCodeId = FSC.Id
 where FSM.FTAStrategyNameId=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getFTAStrategyMapping]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getFTAStrategyMapping]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getFTAStrategyMapping
CREATE  PROCEDURE [dbo].[sp_getFTAStrategyMapping](
 @i_id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;
if(@i_Id !='''') begin
select FSM.Id, FSM.FTAStrategyNameId, FSN.FTAStrategyName, FSM.FTAStrategyCodeId,FSC.FTAStrategyCode from tbl_ftastrategynamemapping FSM join tbl_ftastrategyname_master FSN on FSM.FTAStrategyNameId=FSN.Id
JOIN tbl_ftastrategycode_master FSC on  FSM.FTAStrategyCodeId = FSC.Id
 where FSM.Id=@i_id;
end
else begin
select FSM.Id, FSM.FTAStrategyNameId, FSN.FTAStrategyName, FSM.FTAStrategyCodeId,FSC.FTAStrategyCode from tbl_ftastrategynamemapping FSM join tbl_ftastrategyname_master FSN on FSM.FTAStrategyNameId=FSN.Id
JOIN tbl_ftastrategycode_master FSC on  FSM.FTAStrategyCodeId = FSC.Id;
end 

END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getFTAApplicationMappingbyId]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getFTAApplicationMappingbyId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getFTAApplicationMappingbyId
CREATE  PROCEDURE [dbo].[sp_getFTAApplicationMappingbyId]
(
 @i_Id INT
)
AS
BEGIN
--if(@i_Id =null)

select FAM.Id, FAM.FTAApplicationNameId,FANM.FTAApplicationName,FAM.FTAApplicationCodeId,FACM.FTAApplicationCode,
 FAM.ChildId,CM.ChildID as ChildIDValue, FAM.ThirdPartyAppId,TM.ThirdPartyAppName, FAM.ParentID as ParentIDValue,PM.ParentId,
  FAM.ApplicationOwnerId ,FAM.ApplicationCategoryId,AM.ApplicationCategory 
  from tbl_ftaapplicationmapping FAM 
 join tbl_ftaapplicationname_master FANM on FAM.FTAApplicationNameId=FANM.Id
 join tbl_ftaapplicationcode_master FACM on FAM.FTAApplicationCodeId=FACM.Id
 join tbl_childid_master CM on FAM.ChildId=CM.Id
 join tbl_thirdpartyapplication TM on FAM.ThirdPartyAppId=TM.Id
 join tbl_user_master UM on UM.Userid=FAM.ApplicationOwnerId
 join tbl_parentId_master PM on PM.Id=FAM.ParentId
 join tbl_applicationcategory_Master AM on AM.Id =FAM.ApplicationCategoryId
 where FAM.FTAApplicationNameId=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getFTAApplicationMapping]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getFTAApplicationMapping]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_getFTAApplicationMapping](
	@i_Id VARCHAR(50)=null
)
as
BEGIN
if(@i_Id !='''') 
 select FAM.Id, FAM.FTAApplicationNameId,FANM.FTAApplicationName,FAM.FTAApplicationCodeId,FACM.FTAApplicationCode,
 FAM.ChildId,CM.ChildID as ChildIDValue, FAM.ThirdPartyAppId,TM.ThirdPartyAppName,
 FAM.ParentID as ParentIDValue,PM.ParentId, FAM.ApplicationOwnerId ,FAM.ApplicationCategoryId,AM.ApplicationCategory 
  from tbl_ftaapplicationmapping FAM 
 join tbl_ftaapplicationname_master FANM on FAM.FTAApplicationNameId=FANM.Id
 join tbl_ftaapplicationcode_master FACM on FAM.FTAApplicationCodeId=FACM.Id
 join tbl_childid_master CM on FAM.ChildId=CM.Id
 join tbl_thirdpartyapplication TM on FAM.ThirdPartyAppId=TM.Id
 join tbl_user_master UM on UM.Userid=FAM.ApplicationOwnerId
 join tbl_parentId_master PM on PM.Id=FAM.ParentId
 join tbl_applicationcategory_Master AM on AM.Id =FAM.ApplicationCategoryId
 where FAM.Id=@i_id;
else
 select FAM.Id, FAM.FTAApplicationNameId,FANM.FTAApplicationName,FAM.FTAApplicationCodeId,FACM.FTAApplicationCode,
 FAM.ChildId,CM.ChildID as ChildIDValue, FAM.ThirdPartyAppId,TM.ThirdPartyAppName,
  FAM.ParentID as ParentIDValue,PM.ParentId, FAM.ApplicationOwnerId ,FAM.ApplicationCategoryId,AM.ApplicationCategory
  from tbl_ftaapplicationmapping FAM 
 join tbl_ftaapplicationname_master FANM on FAM.FTAApplicationNameId=FANM.Id
 join tbl_ftaapplicationcode_master FACM on FAM.FTAApplicationCodeId=FACM.Id
 join tbl_childid_master CM on FAM.ChildId=CM.Id
 join tbl_thirdpartyapplication TM on FAM.ThirdPartyAppId=TM.Id
  join tbl_user_master UM on UM.Userid=FAM.ApplicationOwnerId
 join tbl_parentId_master PM on PM.Id=FAM.ParentId
 join tbl_applicationcategory_Master AM on AM.Id =FAM.ApplicationCategoryId;
end

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getbusinessmappingbyId]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getbusinessmappingbyId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getbusinessmappingbyId
CREATE  PROCEDURE [dbo].[sp_getbusinessmappingbyId](
 @i_Id INT

)
AS
BEGIN
SET NOCOUNT ON;
select bm.Id, bm.BusinessId,b.business,bm.BusinessSuffixId,bs.BusinessSuffix from tbl_businessmapping bm join tbl_business_master b on bm.BusinessId =b.Id
 join tbl_businesssuffix_master bs on bm.BusinessSuffixId =bs.Id
 where bm.BusinessId=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getbusinessmapping]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getbusinessmapping]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getbusinessmapping
CREATE  PROCEDURE [dbo].[sp_getbusinessmapping](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;
if(@i_Id !='''') begin
 select bm.Id, bm.BusinessId,b.business,bm.BusinessSuffixId,bs.BusinessSuffix from tbl_businessmapping bm join tbl_business_master b on bm.BusinessId =b.Id
 join tbl_businesssuffix_master bs on bm.BusinessSuffixId =bs.Id
 where bm.Id=@i_id;
end
else begin
 select bm.Id, bm.BusinessId,b.business,bm.BusinessSuffixId,bs.BusinessSuffix from tbl_businessmapping bm join tbl_business_master b on bm.BusinessId =b.Id
 join tbl_businesssuffix_master bs on bm.BusinessSuffixId =bs.Id;
end 
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallVenuetype]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallVenuetype]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getallVenuetype
CREATE  PROCEDURE [dbo].[sp_getallVenuetype](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_Venuetype_master where Id=@i_id;
end
else begin
select * from tbl_Venuetype_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getAllThirdPartyAppType]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getAllThirdPartyAppType]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getAllThirdPartyAppType
CREATE  PROCEDURE [dbo].[sp_getAllThirdPartyAppType](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;
select * from tbl_thirdpartyapplication;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallParentID]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallParentID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getallParentID
CREATE  PROCEDURE [dbo].[sp_getallParentID](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_ParentID_master where Id=@i_id;
end
else begin
select * from tbl_ParentID_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallFTAStrategyOwner]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallFTAStrategyOwner]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getallFTAStrategyOwner
CREATE  PROCEDURE [dbo].[sp_getallFTAStrategyOwner](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_FTAStrategyOwner_master where Id=@i_id;
end
else begin
select * from tbl_FTAStrategyOwner_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallFTAStrategyName]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallFTAStrategyName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getallDiscretionaryCode
-- Dumping structure for procedure achiv1.sp_getallFTAApplicationCode

-- Dumping structure for procedure achiv1.sp_getallFTAApplicationName

-- Dumping structure for procedure achiv1.sp_getallFTAApplicationOwner

-- Dumping structure for procedure achiv1.sp_getallFTAStrategyCode
-- Dumping structure for procedure achiv1.sp_getallFTAStrategyName
CREATE  PROCEDURE [dbo].[sp_getallFTAStrategyName](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_FTAStrategyName_master where Id=@i_id;
end
else begin
select * from tbl_FTAStrategyName_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallFTAStrategyCode]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallFTAStrategyCode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_getallFTAStrategyCode](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_FTAStrategyCode_master where Id=@i_id;
end
else begin
select * from tbl_FTAStrategyCode_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallFTAApplicationOwner]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallFTAApplicationOwner]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_getallFTAApplicationOwner](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_FTAApplicationOwner_master where Id=@i_id;
end
else begin
select * from tbl_FTAApplicationOwner_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallFTAApplicationName]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallFTAApplicationName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_getallFTAApplicationName](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_FTAApplicationName_master where Id=@i_id;
end
else begin
select * from tbl_FTAApplicationName_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallFTAApplicationCode]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallFTAApplicationCode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_getallFTAApplicationCode](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_FTAApplicationCode_master where Id=@i_id;
end
else begin
select * from tbl_FTAApplicationCode_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallDiscretionaryCode]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallDiscretionaryCode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_getallDiscretionaryCode](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_DiscretionaryCode_master where Id=@i_id;
end
else begin
select * from tbl_DiscretionaryCode_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallcountry]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallcountry]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_getallcountry
CREATE  PROCEDURE [dbo].[sp_getallcountry](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_country_master where Id=@i_id;
end
else begin
select * from tbl_country_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallChildID]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallChildID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

---- Dumping structure for procedure achiv1.SP_AddRole
--CREATE  PROCEDURE SP_AddRole
--AS
--BEGIN
--SET NOCOUNT ON;

--END;
--GO


-- Dumping structure for procedure achiv1.SP_DeleteRole

-- Dumping structure for procedure achiv1.sp_delete_ApplicationCategory
-- Dumping structure for procedure achiv1.sp_delete_ApplicationMaster

-- Dumping structure for procedure achiv1.sp_delete_Business


-- Dumping structure for procedure achiv1.sp_delete_BusinessLine


-- Dumping structure for procedure achiv1.sp_delete_BusinessMapping

-- Dumping structure for procedure achiv1.sp_delete_BusinessSuffix

-- Dumping structure for procedure achiv1.sp_delete_Capacity

-- Dumping structure for procedure achiv1.sp_delete_ChildID
-- Dumping structure for procedure achiv1.sp_delete_country

-- Dumping structure for procedure achiv1.sp_delete_FTAApplicationName
-- Dumping structure for procedure achiv1.sp_delete_FTAApplicationOwner
-- Dumping structure for procedure achiv1.sp_delete_FTAStrategyMapping

-- Dumping structure for procedure achiv1.sp_delete_FTAStrategyName

-- Dumping structure for procedure achiv1.sp_delete_FTAStrategyOwner

-- Dumping structure for procedure achiv1.sp_delete_ParentID
-- Dumping structure for procedure achiv1.sp_delete_ProductType

-- Dumping structure for procedure achiv1.sp_delete_region
-- Dumping structure for procedure achiv1.sp_delete_Strategytype

-- Dumping structure for procedure achiv1.sp_delete_strategy_Approval

-- Dumping structure for procedure achiv1.sp_delete_SystemFlow

-- Dumping structure for procedure achiv1.sp_delete_Venuetype
-- Dumping structure for procedure achiv1.sp_getallApplicationCategory
-- Dumping structure for procedure achiv1.sp_getallApplicationMaster

-- Dumping structure for procedure achiv1.sp_getallBusiness


-- Dumping structure for procedure achiv1.sp_getallBusinessLine
-- Dumping structure for procedure achiv1.sp_getallBusinessSuffix

-- Dumping structure for procedure achiv1.sp_getallCapacity
-- Dumping structure for procedure achiv1.sp_getallChildID
CREATE  PROCEDURE [dbo].[sp_getallChildID](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_ChildID_master where Id=@i_id;
end
else begin
select * from tbl_ChildID_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallCapacity]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallCapacity]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_getallCapacity](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_Capacity_master where Id=@i_id;
end
else begin
select * from tbl_Capacity_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallBusinessSuffix]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallBusinessSuffix]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_getallBusinessSuffix](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_BusinessSuffix_master where Id=@i_id;
end
else begin
select * from tbl_BusinessSuffix_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallBusinessLine]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallBusinessLine]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_getallBusinessLine](
 @i_Id VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_BusinessLine_master where Id=@i_id;
end
else begin
select * from tbl_BusinessLine_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getallBusiness]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_getallBusiness]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_getallBusiness](
 @i_Id VARCHAR(50)

)
AS
BEGIN
SET NOCOUNT ON;


if(@i_Id !='''') begin

select * from tbl_Business_master where Id=@i_id;
end
else begin
select * from tbl_Business_master;
end 



END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_ApplicationCategory]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_ApplicationCategory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_ApplicationCategory](
 @i_id INT
)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_ApplicationCategory_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_adduser1]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_adduser1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create PROCEDURE [dbo].[sp_adduser1](
 @userid VARCHAR(50),
 @username VARCHAR(50),
 @emailid VARCHAR(50),
 @Roleid VARCHAR(50),
@password NVARCHAR(max),
 @IsADUser VARCHAR(50)
)
AS
BEGIN

insert into tbl_user_master (Userid,UserName,EmailId,RoleId,Status,password,IsADUser) values(@userid,@username,@emailid,@Roleid,''Active'',@password,@IsADUser);
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_addReportApplicationMapping]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_addReportApplicationMapping]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[sp_addReportApplicationMapping](
 @i_FTAApplicationNameId VARCHAR(50),
 @i_FTAApplicationCodeId VARCHAR(50),
 @i_ChildId VARCHAR(50),
 @i_ThirdPartyAppId VARCHAR(50),
 @i_ParentID VARCHAR(50),
 @i_ApplicationOwnerId VARCHAR(500),
 @i_ApplicationCategoryId VARCHAR(50),
 @i_CountryId VARCHAR(50),
 @i_RegionId VARCHAR(50),
 @i_BusinessLineId VARCHAR(50),
 @i_OutParam VARCHAR(50) Output
 )
AS
BEGIN
SET NOCOUNT ON;

 --IF  exists (SELECT * FROM tbl_reportapplicationmapping WHERE FTAApplicationNameId=@i_FTAApplicationNameId and FTAApplicationCodeId=@i_FTAApplicationCodeId and ChildId=@i_ChildId and ThirdPartyAppId=@i_ThirdPartyAppId and ParentID=@i_ParentID and ApplicationOwnerId=@i_ApplicationOwnerId and ApplicationCategoryId=@i_ApplicationCategoryId and RegionId=@i_RegionId and CountryId=@i_CountryId and BusinessLineId=@i_BusinessLineId) 
 --set @i_OutParam =''Report Application Mapping already exists'';
 --else 
 --begin

  
insert into tbl_reportapplicationmapping(FTAApplicationNameId,FTAApplicationCodeId,ChildId,ThirdPartyAppId,ParentID,ApplicationOwnerId,ApplicationCategoryId,RegionId,CountryId,BusinessLineId) 
values (@i_FTAApplicationNameId,@i_FTAApplicationCodeId,@i_ChildId,@i_ThirdPartyAppId,@i_ParentID,@i_ApplicationOwnerId,@i_ApplicationCategoryId,@i_RegionId,0 ,@i_BusinessLineId);

insert into tbl_CountryReportMapping (ReportId,CountryId) select @@IDENTITY,Item from SplitString(@i_CountryId,'','') 
set @i_OutParam =''success'';
--ENd;


END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_addFTAStrategyMapping]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_addFTAStrategyMapping]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_addFTAStrategyMapping
CREATE  PROCEDURE [dbo].[sp_addFTAStrategyMapping](
 @i_FTAStrategyNameId INT,
 @i_FTAStrategyCodeId INT,
 @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN

 IF exists(SELECT * FROM tbl_ftastrategynamemapping  WHERE FTAStrategyNameId=@i_FTAStrategyNameId) 
 set @i_OutParam =''Mapping already exists'';
 else 
 begin
insert into tbl_ftastrategynamemapping(FTAStrategyNameId,FTAStrategyCodeId) values (@i_FTAStrategyNameId,@i_FTAStrategyCodeId);
set @i_OutParam =''success'';
ENd 


END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_addFTAApplicationMapping]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_addFTAApplicationMapping]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_addFTAApplicationMapping
CREATE  PROCEDURE [dbo].[sp_addFTAApplicationMapping](
 @i_FTAApplicationNameId VARCHAR(50),
 @i_FTAApplicationCodeId VARCHAR(50),
 @i_ChildId VARCHAR(50),
 @i_ThirdPartyAppId VARCHAR(50),
 @i_ParentID VARCHAR(50),
 @i_ApplicationOwnerId VARCHAR(500),
 @i_ApplicationCategoryId VARCHAR(50),
 @i_OutParam VARCHAR(50) Output
 )
AS
BEGIN
SET NOCOUNT ON;

 IF  exists (SELECT * FROM tbl_FTAApplicationmapping  WHERE FTAApplicationNameId=@i_FTAApplicationNameId) 
 set @i_OutParam =''FTA Application Mapping already exists'';
 else 
 begin
 

insert into tbl_FTAApplicationmapping(FTAApplicationNameId,FTAApplicationCodeId,ChildId,ThirdPartyAppId,ParentID,ApplicationOwnerId,ApplicationCategoryId) 
values (@i_FTAApplicationNameId,@i_FTAApplicationCodeId,@i_ChildId,@i_ThirdPartyAppId,@i_ParentID,@i_ApplicationOwnerId,@i_ApplicationCategoryId);

set @i_OutParam =''success'';
ENd;


END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_addbusinessmapping]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_addbusinessmapping]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_addbusinessmapping](
 @i_businesssuffixid INT,
 @i_businessid INT,
 @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN

 IF exists (SELECT * FROM tbl_businessmapping  WHERE BusinessId=@i_BusinessId) 
 set @i_OutParam =''Business Mapping already exists'';
 else
 begin
insert into tbl_businessmapping(BusinessId,BusinessSuffixId) values (@i_businessid,@i_businesssuffixid);
set @i_OutParam =''success'';
end;


END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Get_StrategyApprovalById]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Get_StrategyApprovalById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Get_StrategyApprovalById](
 @i_RefNumber VARCHAR(50),
 @i_Version INT
)
AS
BEGIN
SET NOCOUNT ON;
Select Id,Approver,RefNumber,Version,Comments,Status,ApprovedDate,CreatedDate,Uploadedby from tbl_strategyApproval 
where RefNumber=@i_RefNumber and Version=@i_Version;
/*union
 Select 
Id,Approver,RefNumber,Version,Comments,Status,ApprovedDate,CreatedDate
 from tbl_approvaltransfer  where RefNumber=i_RefNumber and Version=i_Version and IsActive=''Y'';
*/
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[delete_userregion]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delete_userregion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delete_userregion](
 @i_userid VARCHAR(250)
)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_userregionmapping where Userid=@i_userid;

END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[delete_usercountry]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delete_usercountry]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delete_usercountry](
 @i_userid VARCHAR(250)
)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_usercountrymapping where Userid=@i_userid;

END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[delete_userBusinessSector]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delete_userBusinessSector]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delete_userBusinessSector](
 @i_userid VARCHAR(250)
)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_userBusinessSectormapping where Userid=@i_userid;

END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[delete_RoleRight]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delete_RoleRight]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[delete_RoleRight](
 @i_roleid INT
)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_roleright_mapping where RoleID=@i_roleid;

END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_Strategytype]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_Strategytype]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_Strategytype](
 @i_id INT

)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_Strategytype_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_strategy_Approval]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_strategy_Approval]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_strategy_Approval](
 @i_RefNumber VARCHAR(50),
 @i_Version VARCHAR(50),
 @i_Approver VARCHAR(50)


)
AS
BEGIN
SET NOCOUNT ON;

update tbl_StrategyApproval set IsActive=''N'' where RefNumber=@i_RefNumber and Version=@i_Version  and Approver=@i_Approver;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_region]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_region]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_region](
 @i_id INT

)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_region_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_ParentID]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_ParentID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_ParentID](
 @i_id INT

)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_ParentID_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_FTAStrategyOwner]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_FTAStrategyOwner]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_FTAStrategyOwner](
 @i_id INT

)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_FTAStrategyOwner_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_FTAStrategyName]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_FTAStrategyName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_FTAStrategyName](
 @i_id INT

)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_FTAStrategyName_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_FTAStrategyMapping]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_FTAStrategyMapping]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_FTAStrategyMapping](
 @i_id VARCHAR(50)
,
 @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN
declare @Shortcode varchar(150);
 if exists (SELECT count(*) FROM tbl_strategy  WHERE FTAStrategyMappingId=@i_id and IsActive=''Y'') 
  begin
 SELECT @Shortcode=FTAShortCodeId FROM tbl_strategy  WHERE FTAStrategyMappingId=@i_id and IsActive=''Y''
 set @i_OutParam =''Mapping associated to strategy'';
 end
 else 
 begin

delete from tbl_ftastrategynamemapping where id =@i_id;
 set @i_OutParam =''success'';
end;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_FTAApplicationOwner]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_FTAApplicationOwner]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_FTAApplicationOwner](
 @i_id INT

)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_FTAApplicationOwner_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_FTAApplicationName]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_FTAApplicationName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_FTAApplicationName](
 @i_id INT

)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_FTAApplicationName_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_country]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_country]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_country](
 @i_id INT

)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_country_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_ChildID]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_ChildID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_ChildID](
 @i_id INT

)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_ChildID_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_Capacity]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_Capacity]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_Capacity](
 @i_id INT

)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_Capacity_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_BusinessSuffix]    Script Date: 03/12/2018 21:05:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_BusinessSuffix]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_BusinessSuffix](
 @i_id INT

)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_BusinessSuffix_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_BusinessMapping]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_BusinessMapping]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_delete_BusinessMapping](
 @i_id INT
,
 @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN
SET NOCOUNT ON;
declare @Shortcode varchar(150);
 IF exists (SELECT FTAShortCodeId FROM tbl_strategy  WHERE BusinessMappingId=@i_id AND IsActive=''Y'') 
 begin
 SELECT @Shortcode=FTAShortCodeId FROM tbl_strategy  WHERE BusinessMappingId=@i_id AND IsActive=''Y''
 set @i_OutParam =''Mapping associated to strategy'';
 end
 else 
 begin
delete from tbl_businessmapping where id =@i_id;
set @i_OutParam =''success'';
end;


END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_BusinessLine]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_BusinessLine]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_BusinessLine](
 @i_id INT
)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_BusinessLine_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_Business]    Script Date: 03/12/2018 21:05:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_delete_Business]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_delete_Business](
 @i_id INT
)
AS
BEGIN
SET NOCOUNT ON;
delete from tbl_Business_master where id=@i_id;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_updateuser]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_updateuser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_updateuser
CREATE  PROCEDURE [dbo].[sp_updateuser](
 @i_userid VARCHAR(50),
 @i_username VARCHAR(50),
 @i_emailid VARCHAR(50),
 @i_Roleid VARCHAR(50),
 @i_status VARCHAR(50)

)
AS
BEGIN
SET NOCOUNT ON;

update tbl_user_master set UserName=@i_username,EmailId=@i_emailid,RoleId=@i_Roleid,Status=@i_status 
where Userid=@i_userid;

END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_updateFTAApplicationMapping]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_updateFTAApplicationMapping]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create  PROCEDURE [dbo].[sp_updateFTAApplicationMapping](
 @i_ID int,
 @i_FTAApplicationNameId VARCHAR(50),
 @i_FTAApplicationCodeId VARCHAR(50),
 @i_ChildId VARCHAR(50),
 @i_ThirdPartyAppId VARCHAR(50),
 @i_ParentID VARCHAR(50),
 @i_ApplicationOwnerId VARCHAR(500),
 @i_ApplicationCategoryId VARCHAR(50),
 @i_OutParam VARCHAR(50) Output
 )
AS
BEGIN

 update tbl_FTAApplicationmapping  set ApplicationOwnerId=@i_ApplicationOwnerId  where Id=@i_id; 

set @i_OutParam =''success'';
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_Venuetypemaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_Venuetypemaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE  PROCEDURE [dbo].[sp_update_Venuetypemaster](
 @i_id INT,
 @i_Venuetype VARCHAR(50),
 @i_Venuetypecode VARCHAR(50),
  @i_OutParam VARCHAR(50) OUT

)
AS
BEGIN
IF exists (SELECT id FROM tbl_Venuetype_master WHERE Venuetype=@i_Venuetype  and Id!=@i_id) 
 set @i_OutParam =''Venue Type already exists''; 
 else
 begin
update tbl_Venuetype_master set Venuetype=@i_Venuetype,VenueTypecode=@i_Venuetypecode  where id=@i_id;
set @i_OutParam =''success'';

end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_Strategytypemaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_Strategytypemaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_update_Strategytypemaster
CREATE  PROCEDURE [dbo].[sp_update_Strategytypemaster](
 @i_id INT,
 @i_Strategytype VARCHAR(50),
 @i_Strategytypecode VARCHAR(50),
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN

IF exists (SELECT * FROM tbl_Strategytype_master WHERE StrategyType=@i_Strategytype and Id!=@i_id) 
 set @i_OutParam =''Strategy Type already exists''; 
 else
 begin
update tbl_Strategytype_master set StrategyType=@i_Strategytype,StrategyTypecode=@i_Strategytypecode where id=@i_id;
set @i_OutParam =''success'';

end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_regionmaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_regionmaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_update_regionmaster
CREATE  PROCEDURE [dbo].[sp_update_regionmaster](
 @i_id INT,
 @i_regionname VARCHAR(50),
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN

IF exists (SELECT * FROM tbl_region_master WHERE regionname=@i_regionname  and Id!=@i_id) 
 set @i_OutParam =''Region Name already exists''; 
 
 else
 begin
update tbl_region_master set regionname=@i_regionname where id=@i_id;
set @i_OutParam =''success'';

end

END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_ParentIDmaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_ParentIDmaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_update_ParentIDmaster
CREATE  PROCEDURE [dbo].[sp_update_ParentIDmaster](
 @i_id INT,
 @i_ParentID VARCHAR(50)
,
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN

IF exists (SELECT * FROM tbl_ParentID_master WHERE ParentID=@i_ParentID and Id!=@i_id) 
 set @i_OutParam =''Parent ID already exists''; 
 
 else
 begin

update tbl_ParentID_master set ParentID =@i_ParentID where id=@i_id;
set @i_OutParam =''success'';
end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_FTAStrategyNamemaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_FTAStrategyNamemaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_update_FTAStrategyNamemaster
CREATE  PROCEDURE [dbo].[sp_update_FTAStrategyNamemaster](
 @i_id INT,
 @i_FTAStrategyName VARCHAR(50),
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN

IF exists (SELECT * FROM tbl_FTAStrategyName_master WHERE FTAStrategyName=@i_FTAStrategyName  and id !=@i_id)
set @i_OutParam =''FTA Strategy Name already exists'';
 else
 begin
update tbl_FTAStrategyName_master set FTAStrategyName=@i_FTAStrategyName where id=@i_id;
set @i_OutParam =''success'';

end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_FTAStrategyCodemaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_FTAStrategyCodemaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_update_FTAStrategyCodemaster
CREATE  PROCEDURE [dbo].[sp_update_FTAStrategyCodemaster](
 @i_id INT,
 @i_FTAStrategyCode VARCHAR(50)
,
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN

IF exists (SELECT * FROM tbl_FTAStrategyCode_master WHERE FTAStrategyCode=@i_FTAStrategyCode and id !=@i_id)
set @i_OutParam =''FTA Strategy Code already exists'';
 
 else
 begin

update tbl_FTAStrategyCode_master set FTAStrategyCode=@i_FTAStrategyCode where id=@i_id;
set @i_OutParam =''success'';

end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_FTAApplicationNamemaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_FTAApplicationNamemaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE  PROCEDURE [dbo].[sp_update_FTAApplicationNamemaster](
 @i_id INT,
 @i_FTAApplicationName VARCHAR(50)
,
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN

IF exists (SELECT * FROM tbl_FTAApplicationName_master WHERE FTAApplicationName=@i_FTAApplicationName and id !=@i_id)
set @i_OutParam =''FTA Application Name already exists'';
 
 else
 begin

update tbl_FTAApplicationName_master set FTAApplicationName=@i_FTAApplicationName where id=@i_id;
set @i_OutParam =''success'';

end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_FTAApplicationCodemaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_FTAApplicationCodemaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_update_FTAApplicationCodemaster
CREATE  PROCEDURE [dbo].[sp_update_FTAApplicationCodemaster](
 @i_id INT,
 @i_FTAApplicationCode VARCHAR(50)
,
  @i_OutParam VARCHAR(50) OUT

)
AS
BEGIN


IF exists (SELECT * FROM tbl_FTAApplicationCode_master WHERE FTAApplicationCode=@i_FTAApplicationCode   and id !=@i_id)
set @i_OutParam =''FTA Application Code already exists'';

 else
 begin
update tbl_FTAApplicationCode_master set FTAApplicationCode=@i_FTAApplicationCode where id=@i_id;
set @i_OutParam =''success'';

end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_DiscretionaryCodemaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_DiscretionaryCodemaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE  PROCEDURE [dbo].[sp_update_DiscretionaryCodemaster](
 @i_id INT,
 @i_DiscretionaryCode VARCHAR(50)
,
  @i_OutParam VARCHAR(50) OUT

)
AS
BEGIN


IF exists (SELECT * FROM tbl_DiscretionaryCode_master WHERE DiscretionaryCode=@i_DiscretionaryCode and id !=@i_id)
set @i_OutParam =''Discretionary Code already exists'';
 else
 begin
update tbl_DiscretionaryCode_master set DiscretionaryCode=@i_DiscretionaryCode where id=@i_id;
set @i_OutParam =''success'';
end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_countrymaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_countrymaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE  PROCEDURE [dbo].[sp_update_countrymaster](
 @i_id INT,
 @i_countryname VARCHAR(50),
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN

IF exists (SELECT * FROM tbl_country_master WHERE countryname=@i_countryname and Id!=@i_id) 
 set @i_OutParam =''Country name already exists''; 
 else
 begin
 
update tbl_country_master set countryname=@i_countryname where id=@i_id;
set @i_OutParam =''success'';
end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_ChildIDmaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_ChildIDmaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_update_ChildIDmaster
CREATE  PROCEDURE [dbo].[sp_update_ChildIDmaster](
 @i_id INT,
 @i_ChildID VARCHAR(50),
  @i_OutParam VARCHAR(50) OUT

)
AS
BEGIN

IF exists (SELECT * FROM tbl_ChildID_master  WHERE ChildID=@i_ChildID and Id!=@i_id) 
 set @i_OutParam =''Child ID already exists'';
 else
 begin
update tbl_ChildID_master set ChildID =@i_ChildID where id=@i_id;
set @i_OutParam =''success'';
end;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_Capacitymaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_Capacitymaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_update_Capacitymaster
CREATE  PROCEDURE [dbo].[sp_update_Capacitymaster](
 @i_id INT,
 @i_Capacity VARCHAR(50),
 @i_Capacitycode VARCHAR(50),
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN

IF exists (SELECT * FROM tbl_Capacity_master  WHERE Capacity=@i_Capacity and Id !=@i_id) 
set @i_OutParam =''Capacity already exists'';
 else
 begin

update tbl_Capacity_master set Capacity =@i_Capacity,Capacitycode=@i_Capacitycode  where id=@i_id;
set @i_OutParam =''success'';
END;

END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_BusinessSuffixmaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_BusinessSuffixmaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_update_BusinessSuffixmaster
CREATE  PROCEDURE [dbo].[sp_update_BusinessSuffixmaster](
 @i_id INT,
 @i_BusinessSuffix VARCHAR(50)
,
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN



IF exists (SELECT * FROM tbl_BusinessSuffix_master  WHERE BusinessSuffix=@i_BusinessSuffix and Id!=@i_id) 
 set @i_OutParam =''Business Suffix already exists'';
 else
 begin
update tbl_BusinessSuffix_master set BusinessSuffix =@i_BusinessSuffix where id=@i_id;
set @i_OutParam =''success'';
end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_BusinessLinemaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_BusinessLinemaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_update_BusinessLinemaster
CREATE  PROCEDURE [dbo].[sp_update_BusinessLinemaster](
 @i_id INT,
 @i_BusinessLine VARCHAR(50)
,
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN


IF exists (SELECT * FROM tbl_BusinessLine_master  WHERE BusinessLine=@i_BusinessLine and Id!=@i_id)
set @i_OutParam =''Business Line already exists'';
 else
 begin

update tbl_BusinessLine_master set BusinessLine=@i_BusinessLine  where id=@i_id;
set @i_OutParam =''success'';
end
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_Business]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_Business]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- Dumping structure for procedure achiv1.sp_update_Business
CREATE  PROCEDURE [dbo].[sp_update_Business](
 @i_id INT,
 @i_Business VARCHAR(50)

,
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN


IF exists (SELECT  id from tbl_Business_master  WHERE Business=@i_Business and Id !=@i_id) 
 set @i_OutParam =''Business already exists'';
 else
 begin
update tbl_Business_master set Business =@i_Business  where id=@i_id;
set @i_OutParam =''success'';
end;
END;


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_ApplicationCategorymaster]    Script Date: 03/12/2018 21:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_update_ApplicationCategorymaster]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE  PROCEDURE [dbo].[sp_update_ApplicationCategorymaster](
 @i_id INT,
 @i_ApplicationCategory VARCHAR(50)

,
  @i_OutParam VARCHAR(50) OUT
)
AS
BEGIN

if exists(select id from tbl_applicationcategory_master where ApplicationCategory=@i_ApplicationCategory and id !=@i_id)
set @i_OutParam =''Application Category already exists'';
else
begin
update tbl_ApplicationCategory_master set ApplicationCategory=@i_ApplicationCategory where id=@i_id;
set @i_OutParam =''success'';
end
END;



' 
END
GO
