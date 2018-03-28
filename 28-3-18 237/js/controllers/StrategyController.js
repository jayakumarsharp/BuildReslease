﻿ReportApp.controller('StrategyController', ['$scope', '$rootScope', 'StrategyService', '$timeout', 'ApiCall', 'UserFactory', 'reportFactory', 'toaster', '$compile', 'DTOptionsBuilder', 'DTColumnBuilder', '$q', 'apiService', 'Upload', '$sce', '_', function ($scope, $rootScope, StrategyService, $timeout, ApiCall, UserFactory, reportFactory, toaster, $compile, DTOptionsBuilder, DTColumnBuilder, $q, apiService, Upload, $sce, _) {
    $scope.data = [];
    $scope.IsModelAlgopage = true;
    $scope.errorinfo = '';
    $scope.Strategydata = [];
    $scope.editMode = false;
    $scope.showaction = false;

    $scope.IsReadOnly = true;
    $scope.currency = {};
    $scope.ApprovalCheck = { ShowSignOff: false, IsApprove: false };
    $scope.Permissions = { isWrite: false, isRead: false };
    $scope.selectModel = {
        Country: {}, Region: {}, LTAApplicationCode: {}, BusinessSuffix: {}, ChildID: {}, LTAStrategyName: {}, Strategytype: {}, GOLiveDate: '', LTAStrategyCode: {}, LTAShortCode: {}, BusinessLine: {}, LTAApplicationName: {}, LTAStrategyOwner: {}, ApplicationCategory: {}, Venuetype: {}, DecomissionedDate: {}, DiscretionaryCode: {}, ParentID: {}, LTAApplicationOwner: {}, PriorityScore: '', Priority: '', Capacity: {},
    };
    $scope.pageList = [{ Page: true, IsValid: false }, { Page: false, IsValid: false }, { Page: false, IsValid: false }];
    $scope.dtOptions = DTOptionsBuilder.fromSource()
        .withPaginationType('full_numbers').withOption('createdRow', createdRow)
        .withOption('rowCallback', rowCallback).withOption('scrollX', true);
    //.withButtons( ['excel', 'pdf']);
    $scope.dtColumns = [
        //DTColumnBuilder.newColumn(null).withTitle('S.No.').renderWith(renderRetreadNo),
        DTColumnBuilder.newColumn('LTAShortCode').withTitle('LTA Short Code').renderWith(shortcodelink),
        DTColumnBuilder.newColumn('BusinessLine').withTitle('Business Line'),
        DTColumnBuilder.newColumn('LTAApplicationName').withTitle('LTA Application Name'),
        DTColumnBuilder.newColumn('LTAStrategyName').withTitle('LTA Strategy Name'),
        DTColumnBuilder.newColumn('RegionName').withTitle('Region'),
        DTColumnBuilder.newColumn('LTAStrategyOwner').withTitle('LTA Strategy Owner'),
        DTColumnBuilder.newColumn('ApplicationCategory').withTitle('Category'),
        DTColumnBuilder.newColumn('Priority').withTitle('Priority'),
        DTColumnBuilder.newColumn('Attest').withTitle('Attest').renderWith(actionsStatus),
        DTColumnBuilder.newColumn('Status').withTitle('Status'),
        DTColumnBuilder.newColumn('Id').withTitle('Actions').notSortable()
            .renderWith(actionsHtml)
    ];
    function renderRetreadNo(data, type, full, meta) {
        return meta.row + 1;
    }
    function actionsStatus(data, type, full, meta) {
        if (data == "True")
            return '<a  class="dta-act">Attested</a>';
        else {
            return '<a  class="test2 dta-act-not">Pending</a>';
        }
    }

    function shortcodelink(data, type, full, meta) {
        return '<a class="test3" style="    text-decoration: underline;">' + data + '</a>';
    }

    $scope.Confirmcancel = function () {

        $('#confirmModal').modal('show');
    }


    function createdRow(row, data, dataIndex) {
        $compile(angular.element(row).contents())($scope);
    }
    //<a class="test3"><img style="width:20px;height:20px;" src="images/viewicon.png"></a>
    function actionsHtml(data, type, full, meta) {
        if ($scope.Permissions.IsWrite || $scope.ApprovalCheck.IsApprove)
            return '<a class="test"><img style="height:20px;width:20px" src="images/edit.png"></a> &nbsp;<a class="test1"><img style="width:20px;height:20px;" src="images/eyeicon.png"></a> &nbsp;';
        else
            return '<a  class="test1"><img style="width:24px;height:24px;" src="images/eyeicon.png"></a>';
    }

    function rowCallback(nRow, aData, iDisplayIndex, iDisplayIndexFull) {
        $('.test', nRow).unbind('click');
        $('.test', nRow).bind('click', function () {
            $scope.$apply(function () {
                $scope.GetCurrencyConversionForId(aData.Id, aData.Version, aData.RefNumber, true);
            });
        });
        $('.test1', nRow).unbind('click');
        $('.test1', nRow).bind('click', function () {
            $scope.$apply(function () {
                $scope.GetChangeLog(aData.RefNumber, aData.Version);
            });
        });
        $('.test2', nRow).unbind('click');
        $('.test2', nRow).bind('click', function () {
            $scope.$apply(function () {
                $scope.GetCurrencyConversionForId(aData.Id, aData.Version, aData.RefNumber, false);
            });
        });

        $('.test3', nRow).unbind('click');
        $('.test3', nRow).bind('click', function () {
            $scope.$apply(function () {
                $scope.GetViewdata(aData.Id, aData.Version, aData.RefNumber, false);
            });
        });

        return nRow;
    }

    $scope.activateTab = function (tabid) {
        for (var i = 0; i < $scope.pageList.length; i++) {
            $scope.pageList[i].Page = false;
        }
        $scope.pageList[tabid].Page = true;
        $scope.pageList[tabid].IsValid = true;
    }

    function getallgriddata() {
        StrategyService.GetAllCurrencyConversion().success(function (data) {
            $scope.data = data;
            $scope.dtOptions.data = $scope.data;
        });
    }


    $scope.getallalgodata = function () {
        var userid = $scope.userId;
        StrategyService.ShowLoader();
        getallgriddata();
        var URl = 'Main/';
        //let GetAllCountry = apiService.GetAllCountry();
        let GetAllLTAApplicationCode = apiService.GetAllLTAApplicationCode();
        let GetAllThirdPartyAppList = apiService.GetAllThirdPartyAppList();
        let GetAllBusiness = apiService.GetAllBusiness();
        let GetAllLTAStrategyCode = apiService.GetAllLTAStrategyCode();
        let GetAllDiscretionaryCode = apiService.GetAllDiscretionaryCode();
        let GetAllBusinessSuffix = apiService.GetAllBusinessSuffix();
        let GetAllParentID = apiService.GetAllParentID();
        let GetAllChildID = apiService.GetAllChildID();
        //let GetAllBusinessLine = apiService.GetAllBusinessLine()
        let GetAllApplicationCategory = apiService.GetAllApplicationCategory()
        let GetAllLTAApplicationName = apiService.GetAllLTAApplicationName()
        let GetAllLTAStrategyName = apiService.GetAllLTAStrategyName()
        let GetAllVenuetype = apiService.GetAllVenuetype();
        let GetAllStrategytype = apiService.GetAllStrategytype();
        let GetAllCapacity = apiService.GetAllCapacity();
        //let GetAllRegion = apiService.GetAllRegion();
        let GetUsers = UserFactory.GetUser('NA');
        let GetAllStatusType = apiService.GetAllStatusType();
        let GetAllBusinessLine = apiService.GetBusinessMapping(userid)
        let GetAllRegion = apiService.GetuserRegionMapping(userid);
        let GetAllCountry = apiService.GetAllCountry(); //apiService.GetusercountryMapping(userid);
        $q.all([
            //GetAllCountry,
            GetAllLTAApplicationCode,
            GetAllThirdPartyAppList,
            GetAllBusiness,
            GetAllLTAStrategyCode,
            GetAllDiscretionaryCode,
            GetAllBusinessSuffix,
            GetAllParentID,
            GetAllChildID,
            //GetAllBusinessLine,
            GetAllApplicationCategory,
            GetAllLTAApplicationName,
            GetAllLTAStrategyName,
            GetAllVenuetype,
            GetAllStrategytype,
            GetAllCapacity,
            //GetAllRegion,
            GetUsers,
            GetAllStatusType,
            GetAllBusinessLine,
            GetAllRegion,
            GetAllCountry,
        ]).then(function (resp) {
            //$scope.CountryMasterList = resp[0].data;
            $scope.LTAApplicationCodeList = resp[0].data;
            $scope.ThirdPartyList = resp[1].data;
            $scope.BusinessList = resp[2].data;
            $scope.LTAStrategyCodeList = resp[3].data;
            $scope.DiscretionaryCodeList = resp[4].data;
            $scope.BusinessSuffixList = resp[5].data;
            $scope.ParentIDList = resp[6].data;
            $scope.ChildIDList = resp[7].data;
            //$scope.BusinessLineList = resp[8].data;
            $scope.ApplicationCategoryList = resp[8].data;
            $scope.LTAApplicationNameList = resp[9].data;
            $scope.LTAStrategyNameList = resp[10].data;
            $scope.VenuetypeList = resp[11].data;
            $scope.StrategytypeList = resp[12].data;
            $scope.CapacityList = resp[13].data;
            //$scope.RegionMasterList = resp[16].data;
            $scope.LTAApplicationOwnerList = resp[14].data;
            $scope.StrategyStatusType = resp[15].data;
            $scope.BusinessLineList = resp[16].data;
            $scope.RegionMasterList = resp[17].data;
            $scope.CountryMasterList = resp[18].data;
            binddata($scope.CountryMasterList);

            StrategyService.HideLoader();
        });
    };

    $scope.showadd = function () {
        StrategyService.ShowLoader();
        $scope.showaction = true;
        $timeout(function () {
            $scope.errorinfo = '';
            $scope.StrategyActive = false;
            $scope.IsSignOff = false;
        }, 100);
        $scope.editMode = false;
        $scope.ApprovalCheck.ShowSignOff = false;
        $scope.selectModel = { Application: "", Country: "", ProductType: "", BusinessSector: "", Region: "" };
        $scope.activateTab(0);
        $('#currencyModel').modal('show');
        $timeout(function () {
            StrategyService.HideLoader();
        }, 500)
    };
    $scope.Export = function () {



        ApiCall.MakeApiCall("ExportStrategyReport", 'GET', null).success(function (data) {
            if (data.Error != undefined) {
                toaster.pop('error', "Error", data.Error, null);
            } else {
                if (data != 'No Records') {
                    var url = BaseURL + 'Main/DownLoadReportFile?FileName=' + data + '&Page=StrategyReport';
                    $scope.downloadurl = url;
                    setTimeout(function () {
                        $('#downloadpdf')[0].click();
                    }, 1000);
                    //StrategyService.DownLoadReportFile(data);
                }
                //$scope.dtOptions.data = $scope.data;
                StrategyService.HideLoader();
            }
        }).error(function (data) {
            $scope.error = "An Error has occured while Adding Capacity ! " + data.ExceptionMessage;
        });


    };
    $scope.InsertStrategy = function () {

        StrategyService.ShowLoader();
        var idlist = '';
        var CountryNames = '';
        for (var i = 0; i < $scope.multiselect.selected.length; i++) {
            if (i == $scope.multiselect.selected.length - 1) {
                idlist += $scope.multiselect.selected[i].id;
                CountryNames += $scope.multiselect.selected[i].name;
            }
            else {
                idlist += $scope.multiselect.selected[i].id + ',';
                CountryNames += $scope.multiselect.selected[i].name + ',';
            }
        }
        var currency = {
            CountryId: idlist,
            CountryNameList: CountryNames,
            //Country: JSON.stringify($scope.multiselect.selected),
            Region: $scope.selectModel.Region.Id
            , LTAApplicationCodeId: $scope.selectModel.LTAApplicationCode.Id, BusinessSuffixId: $scope.selectModel.BusinessSuffix.Id
            , ChildID: $scope.selectModel.ChildID.Id, LTAStrategyNameId: $scope.selectModel.LTAStrategyName.Id
            , StrategytypeId: $scope.selectModel.Strategytype.Id, GOLiveDate: $scope.selectModel.GOLiveDate
            , LTAStrategyCodeId: $scope.selectModel.LTAStrategyCode.Id, LTAShortCode: $scope.selectModel.LTAShortCode
            , BusinessLineId: $scope.selectModel.BusinessLine.Id, LTAApplicationNameId: $scope.selectModel.LTAApplicationName.Id
            , LTAStrategyOwnerId: $scope.selectModel.LTAStrategyOwner.userId, ApplicationCategoryId: $scope.selectModel.ApplicationCategory.Id, VenuetypeId: $scope.selectModel.Venuetype.Id
            , DecomissionedDate: $scope.selectModel.DecomissionedDate, DiscretionaryCodeId: $scope.selectModel.DiscretionaryCode.Id
            , ParentID: $scope.selectModel.ParentID.Id, LTAApplicationOwnerId: $scope.selectModel.LTAApplicationOwner//.userId
            , PriorityScore: $scope.selectModel.PriorityScore
            , Priority: $scope.selectModel.Priority
            , CapacityId: $scope.selectModel.Capacity.Id
            , BusinessId: $scope.selectModel.Business.Id
            , ThirdPartyAppId: $scope.selectModel.ThirdPartyApp.Id
            , LTAApplicationMappingId: $scope.selectModel.LTAApplicationMappingId
            , LTAStrategyMappingId: $scope.selectModel.LTAStrategyMappingId
            , BusinessMappingId: $scope.selectModel.BusinessMappingId
            , Description: $scope.selectModel.Description
            , Attest: $scope.selectModel.Attest,
            LTALongCode: $scope.selectModel.LTALongCode,
            SeniorManagementFunction: $scope.selectModel.SeniorManagementFunction,
            StatusId: $scope.selectModel.Status.Id,
            AdditionalShortCode: $scope.selectModel.AdditionalShortCode,
        };
        if (currency != null) {
            if ($scope.selectModel.Systemflowfile) {
                currency.Systemflowfile = $scope.selectModel.Systemflowfile[0].name;
                currency.Systemflowfilelist = $scope.selectModel.Systemflowfile;
            }
            if ($scope.selectModel.Decommissionedfile) {
                currency.Decommissionedfile = $scope.selectModel.Decommissionedfile[0].name;
                currency.Decommissionedfilelist = $scope.selectModel.Decommissionedfile;
            }
            Upload.upload({
                url: 'Main/InsertStrategy',
                data: currency
            }).then(function (data) {
                StrategyService.HideLoader();
                if (data.data == 'success') {
                    toaster.pop('success', "Success", "LTA Strategy Inventory added successfully", null);
                    $scope.showaction = false;
                }
                else
                    toaster.pop('warning', "Warning", data.data, null);
                getallgriddata();
            }, function (resp) { //catch error
                console.log('Error status: ' + resp.status);
                $window.alert('Error status: ' + resp.status);
            }, function (evt) {
                console.log(evt);
                var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
                console.log('progress: ' + progressPercentage + '% ' + evt.config.data.name);
                $scope.progress = 'progress: ' + progressPercentage + '% '; // capture upload progress
            });
        }
    };

    $scope.Availableusers = [];
    $scope.setsignoff = function () {
        if ($scope.selectModel.Attest == 'True')
            $scope.selectModel.Attest = 'False'
        else
            $scope.selectModel.Attest = 'True'
    }

    $scope.GetCurrencyConversionForId = function (id, Version, RefNumber, actiontype) {
        //$scope.showaction = true;
        $scope.editMode = true;

        $scope.activateTab(0);
        $scope.ApprovalCheck.ShowSignOff = false;
        StrategyService.ShowLoader();
        binddata($scope.CountryMasterList);
        StrategyService.GetDatabyId(id).success(function (data) {
            $scope.selectModel = data[0];
            $scope.selectModel.GOLiveDate = $scope.selectModel.GOLiveDate;
            $scope.selectModel.DecomissionedDate = $scope.selectModel.DecomissionedDate;
            //$scope.selectModel.GOLiveDate = moment($scope.selectModel.GOLiveDate.split(' ')[0], 'DD/MM/YYYY').format('MM/DD/YYYY');
            //$scope.selectModel.DecomissionedDate = moment($scope.selectModel.DecomissionedDate.split(' ')[0], 'DD/MM/YYYY').format('MM/DD/YYYY');
            $scope.Prevvalue = angular.copy($scope.selectModel)
            // $scope.multiselect.selected = JSON.parse($scope.selectModel.Country);
            //$scope.selectModel.Country = getdynamicobject($scope.selectModel.Country, "CountryMasterList")
            $scope.selectModel.Region = getdynamicobject($scope.selectModel.Region, "RegionMasterList")
            $scope.selectModel.LTAApplicationCode = getdynamicobject($scope.selectModel.LTAApplicationCodeId, "LTAApplicationCodeList")
            $scope.selectModel.LTAStrategyCode = getdynamicobject($scope.selectModel.LTAStrategyCodeId, "LTAStrategyCodeList")
            $scope.selectModel.DiscretionaryCode = getdynamicobject($scope.selectModel.DiscretionaryCodeId, "DiscretionaryCodeList")
            $scope.selectModel.ParentID = getdynamicobject($scope.selectModel.ParentID, "ParentIDList")
            $scope.selectModel.BusinessSuffix = getdynamicobject($scope.selectModel.BusinessSuffixId, "BusinessSuffixList");
            $scope.selectModel.BusinessLine = getdynamicobject($scope.selectModel.BusinessLineId, "BusinessLineList");
            $scope.selectModel.LTAApplicationName = getdynamicobject($scope.selectModel.LTAApplicationNameId, "LTAApplicationNameList")
            $scope.selectModel.LTAStrategyName = getdynamicobject($scope.selectModel.LTAStrategyNameId, "LTAStrategyNameList")
            $scope.selectModel.ApplicationCategory = getdynamicobject($scope.selectModel.ApplicationCategoryId, "ApplicationCategoryList")
            $scope.selectModel.Strategytype = getdynamicobject($scope.selectModel.StrategytypeId, "StrategytypeList")
            $scope.selectModel.Venuetype = getdynamicobject($scope.selectModel.VenueTypeId, "VenuetypeList")
            $scope.selectModel.Capacity = getdynamicobject($scope.selectModel.CapacityId, "CapacityList")
            $scope.selectModel.ChildID = getdynamicobject($scope.selectModel.ChildID, "ChildIDList");
            $scope.selectModel.ThirdPartyApp = getdynamicobject($scope.selectModel.ThirdPartyAppId, "ThirdPartyList");
            $scope.selectModel.Business = getdynamicobject($scope.selectModel.BusinessId, "BusinessList");
            $scope.selectModel.Status = getdynamicobject($scope.selectModel.StatusId, "StrategyStatusType");

            $scope.selectModel.Description = $scope.selectModel.Description;
            $scope.selectModel.LTAApplicationOwner = $scope.selectModel.LTAApplicationOwner; //getdynamicobjectuserfilter($scope.selectModel.LTAApplicationOwner, "LTAApplicationOwnerList");
            $scope.userfilter(true);
            $scope.activateTab(0);
            for (var i = 0; i < $scope.pageList.length; i++) {
                $scope.pageList[i].IsValid = true;
            }
            //assignUsers();

            assignCountry($scope.selectModel.CountryId.split(','));
            binddata($scope.CountryMasterList);
            if (actiontype) {
                $scope.showaction = true;
                $scope.AllowSignOff = false;
            }
            else {
                if ($scope.ApprovalCheck.IsApprove || $scope.userId.toLowerCase() == $scope.selectModel.LTAStrategyOwnerId.toLowerCase()) {
                    $('#confirm').modal('show');
                }
                $scope.showaction = false;
                $scope.AllowSignOff = true;
            }


            $timeout(function () {
                StrategyService.HideLoader();
            }, 500);
        }).error(function (data) {
            $scope.error = "An Error has occured while Adding user! " + data.ExceptionMessage;
        });

        StrategyService.GetStrategyApprovalById(RefNumber, Version).success(function (data) {
            $scope.UploadedSList = [];
            $scope.UploadedDList = [];
            if (data.length > 0) {
                for (var i = 0; i < data.length; i++) {
                    if (data[i].Status == "S")
                        $scope.UploadedSList.push(data[i]);
                    else
                        $scope.UploadedDList.push(data[i]);
                }
            }
        });


    };


    $scope.GetViewdata = function (id, Version, RefNumber, actiontype) {
        $scope.showaction = false;
        $('#showreadonly').modal('show')
        $scope.ApprovalCheck.ShowSignOff = false;
        StrategyService.ShowLoader();
        binddata($scope.CountryMasterList);
        StrategyService.GetDatabyId(id).success(function (data) {
            $scope.selectModel = data[0];
            $scope.selectModel.GOLiveDate = $scope.selectModel.GOLiveDate;
            $scope.selectModel.DecomissionedDate = $scope.selectModel.DecomissionedDate;
            $scope.selectModel.Region = getdynamicobject($scope.selectModel.Region, "RegionMasterList")
            $scope.selectModel.LTAApplicationCode = getdynamicobject($scope.selectModel.LTAApplicationCodeId, "LTAApplicationCodeList")
            $scope.selectModel.LTAStrategyCode = getdynamicobject($scope.selectModel.LTAStrategyCodeId, "LTAStrategyCodeList")
            $scope.selectModel.DiscretionaryCode = getdynamicobject($scope.selectModel.DiscretionaryCodeId, "DiscretionaryCodeList")
            $scope.selectModel.ParentID = getdynamicobject($scope.selectModel.ParentID, "ParentIDList")
            $scope.selectModel.BusinessSuffix = getdynamicobject($scope.selectModel.BusinessSuffixId, "BusinessSuffixList");
            $scope.selectModel.BusinessLine = getdynamicobject($scope.selectModel.BusinessLineId, "BusinessLineList");
            $scope.selectModel.LTAApplicationName = getdynamicobject($scope.selectModel.LTAApplicationNameId, "LTAApplicationNameList")
            $scope.selectModel.LTAStrategyName = getdynamicobject($scope.selectModel.LTAStrategyNameId, "LTAStrategyNameList")
            $scope.selectModel.ApplicationCategory = getdynamicobject($scope.selectModel.ApplicationCategoryId, "ApplicationCategoryList")
            $scope.selectModel.Strategytype = getdynamicobject($scope.selectModel.StrategytypeId, "StrategytypeList")
            $scope.selectModel.Venuetype = getdynamicobject($scope.selectModel.VenueTypeId, "VenuetypeList")
            $scope.selectModel.Capacity = getdynamicobject($scope.selectModel.CapacityId, "CapacityList")
            $scope.selectModel.ChildID = getdynamicobject($scope.selectModel.ChildID, "ChildIDList");
            $scope.selectModel.ThirdPartyApp = getdynamicobject($scope.selectModel.ThirdPartyAppId, "ThirdPartyList");
            $scope.selectModel.Business = getdynamicobject($scope.selectModel.BusinessId, "BusinessList");
            $scope.selectModel.Status = getdynamicobject($scope.selectModel.StatusId, "StrategyStatusType");
            $scope.selectModel.Description = $scope.selectModel.Description;
            $scope.selectModel.LTAApplicationOwner = $scope.selectModel.LTAApplicationOwner; //getdynamicobjectuserfilter($scope.selectModel.LTAApplicationOwner, "LTAApplicationOwnerList");
            $scope.userfilter(true);
            assignCountry($scope.selectModel.CountryId.split(','));
            binddata($scope.CountryMasterList);

        }).error(function (data) {
            $scope.error = "An Error has occured while Adding user! " + data.ExceptionMessage;
        });

        StrategyService.GetStrategyApprovalById(RefNumber, Version).success(function (data) {
            $scope.UploadedSList = [];
            $scope.UploadedDList = [];
            if (data.length > 0) {
                for (var i = 0; i < data.length; i++) {
                    if (data[i].Status == "S")
                        $scope.UploadedSList.push(data[i]);
                    else
                        $scope.UploadedDList.push(data[i]);
                }
            }
        });

        $timeout(function () {
            StrategyService.HideLoader();
        }, 500)
    };

    $scope.openpopup = function (type) {
        $('#viewFiles').modal('show');
    }

    var getdynamicobject = function (userId, type) {
        for (var i = 0; i < $scope[type].length; i++) {
            if ($scope[type][i].Id == userId) {
                return $scope[type][i];
            }
        }
    };
    var getdynamicobjectuserfilter = function (userId, type) {
        for (var i = 0; i < $scope[type].length; i++) {
            if ($scope[type][i].userId == userId) {
                return $scope[type][i];
            }
        }
    };

    $scope.GetChangeLog = function (id, Version) {
        $scope.ViewData = [];
        $scope.ViewListdata = false;
        $('#viewApprovals').modal('show');
        ApiCall.MakeApiCall("GetStrategyVersionLog?Id=" + id, 'GET', '').success(function (data) {
            $scope.Listdata = data;
            $scope.ViewListdata = true;
        }).error(function (error) {
            $scope.Error = error;
        })
    };

    $scope.DownlaodFile = function (id, ref) {
        StrategyService.DownLoadFile(id, ref).success(function (data) { });
    }

    $scope.UpdateStrategy = function (model) {
        StrategyService.ShowLoader();
        var idlist = '';
        var CountryNames = '';
        for (var i = 0; i < $scope.multiselect.selected.length; i++) {
            if (i == $scope.multiselect.selected.length - 1) {
                idlist += $scope.multiselect.selected[i].id;
                CountryNames += $scope.multiselect.selected[i].name;
            }
            else {
                idlist += $scope.multiselect.selected[i].id + ',';
                CountryNames += $scope.multiselect.selected[i].name + ',';
            }
        }
        var model = {
            Page: "S",
            CountryId: idlist,
            CountryNameList: CountryNames,
            //Country: JSON.stringify($scope.multiselect.selected),
            Region: $scope.selectModel.Region.Id, LTAApplicationCodeId: $scope.selectModel.LTAApplicationCode.Id,
            LTAApplicationCode: $scope.selectModel.LTAApplicationCode.LTAApplicationCode, BusinessSuffixId: $scope.selectModel.BusinessSuffix.Id,
            BusinessSuffix: $scope.selectModel.BusinessSuffix.BusinessSuffix, ChildID: $scope.selectModel.ChildID.Id,
            ChildIDValue: $scope.selectModel.ChildID.ChildID, LTAStrategyNameId: $scope.selectModel.LTAStrategyName.Id,
            LTAStrategyName: $scope.selectModel.LTAStrategyName.LTAStrategyName, StrategytypeId: $scope.selectModel.Strategytype.Id,
            Strategytype: $scope.selectModel.Strategytype.Strategytype, GOLiveDate: $scope.selectModel.GOLiveDate,
            LTAStrategyCodeId: $scope.selectModel.LTAStrategyCode.Id, LTAStrategyCode: $scope.selectModel.LTAStrategyCode.LTAStrategyCode,
            LTAShortCode: $scope.selectModel.LTAShortCode, BusinessLineId: $scope.selectModel.BusinessLine.Id,
            BusinessLine: $scope.selectModel.BusinessLine.BusinessLine, LTAApplicationNameId: $scope.selectModel.LTAApplicationName.Id,
            LTAApplicationName: $scope.selectModel.LTAApplicationName.LTAApplicationName, LTAStrategyOwnerId: $scope.selectModel.LTAStrategyOwner.userId,
            ApplicationCategoryId: $scope.selectModel.ApplicationCategory.Id, ApplicationCategory: $scope.selectModel.ApplicationCategory.ApplicationCategory,
            VenuetypeId: $scope.selectModel.Venuetype.Id, Venuetype: $scope.selectModel.Venuetype.Venuetype,
            DecomissionedDate: $scope.selectModel.DecomissionedDate, DiscretionaryCodeId: $scope.selectModel.DiscretionaryCode.Id,
            DiscretionaryCode: $scope.selectModel.DiscretionaryCode.DiscretionaryCode, ParentID: $scope.selectModel.ParentID.Id,
            ParentIDValue: $scope.selectModel.ParentID.ParentID, LTAApplicationOwnerId: $scope.selectModel.LTAApplicationOwner,
            PriorityScore: $scope.selectModel.PriorityScore, Priority: $scope.selectModel.Priority,
            CapacityId: $scope.selectModel.Capacity.Id, Capacity: $scope.selectModel.Capacity.Capacity,
            BusinessId: $scope.selectModel.Business.Id, Business: $scope.selectModel.Business.Business,
            ThirdPartyAppId: $scope.selectModel.ThirdPartyApp.Id, ThirdPartyValue: $scope.selectModel.ThirdPartyApp.Value,
            LTAApplicationMappingId: $scope.selectModel.LTAApplicationMappingId, LTAStrategyMappingId: $scope.selectModel.LTAStrategyMappingId,
            BusinessMappingId: $scope.selectModel.BusinessMappingId, Description: $scope.selectModel.Description,
            Attest: $scope.selectModel.Attest,
            LTAStrategyOwner: $scope.selectModel.LTAStrategyOwner.userId,
            LTAApplicationOwner: $scope.selectModel.LTAApplicationOwner,
            SeniorManagementFunction: $scope.selectModel.SeniorManagementFunction,
            LTALongCode: $scope.selectModel.LTALongCode,
            StatusId: $scope.selectModel.Status.Id,
            Status: $scope.selectModel.Status.StatusName,
            AdditionalShortCode: $scope.selectModel.AdditionalShortCode,
        };
        if ($scope.AllowSignOff)
            model.Attest = 'True';
        var array = [];
        array.push(model);
        array.push($scope.Prevvalue);

        StrategyService.UpdateStrategy(array).success(function (data) {
            $scope.showaction = false;
            $scope.editMode = false;
            toaster.pop('success', "Success", "LTA Strategy Inventory updated successfully", null);
            $('#confirm').modal('hide');
            model.RefNumber = $scope.Prevvalue.RefNumber;
            if (data == "") {
                model.Version = $scope.Prevvalue.Version;
            }
            else if (data == "success")
                model.Version = parseInt($scope.Prevvalue.Version) + 1;

            var hasfile = false;
            if ($scope.selectModel.Systemflowfile) {
                hasfile = true;
                model.Systemflowfilelist = $scope.selectModel.Systemflowfile;
            }
            if ($scope.selectModel.Decommissionedfile) {
                hasfile = true;
                model.Decommissionedfilelist = $scope.selectModel.Decommissionedfile;
            }
            if (hasfile) {
                Upload.upload({
                    url: 'Main/UpdateStrategyFile', //webAPI exposed to upload the file
                    data: model,
                }).then(function (resp) { //upload function returns a promise

                }, function (resp) { //catch error
                    console.log('Error status: ' + resp.status);
                    $window.alert('Error status: ' + resp.status);
                }, function (evt) {
                    console.log(evt);
                    var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
                    console.log('progress: ' + progressPercentage + '% ' + evt.config.data.name);
                    $scope.progress = 'progress: ' + progressPercentage + '% '; // capture upload progress
                });

            }
            StrategyService.HideLoader();
            $scope.getallalgodata()
            getallgriddata();

        }).error(function (data) {
            $scope.error = "An Error has occured while Adding user! " + data.ExceptionMessage;
        });
    };

    $scope.showconfirm = function (data) {
        $scope.Id = data;

        $('#confirmModal').modal('show');
    };

    $scope.cancel = function () {
        cleardata();

        binddata($scope.CountryMasterList);
        $scope.showaction = false;
        $('#confirmModal').modal('hide');
    };
    function cleardata() {
        $scope.currency = {};
        $scope.selectModel = { Application: {}, Country: {}, ProductType: {}, BusinessSector: {}, Region: {} };
        $scope.UploadedSList = [];
        $scope.UploadedDList = [];
        $scope.multiselect.selected = [];
        $scope.multiselect.options = [];
    }
    $scope.checksignoff = function () {
        if ($scope.selectModel.LTAStrategyOwner.UserName) {
            if ($scope.userId.toLowerCase() == $scope.selectModel.LTAStrategyOwner.UserName.toLowerCase())
                $scope.ApprovalCheck.ShowSignOff = true;
        }
    }
    $scope.userfilter = function (state) {
        try {
            var Region = $scope.selectModel.Region.Id;
            var BusinessLine = $scope.selectModel.BusinessLine.Id;
            if (Region != "" && BusinessLine != "" && BusinessLine != undefined && Region != undefined) {
                ApiCall.MakeApiCall("GetUserbyFilter?RegionId=" + Region + "&BusinessLineId=" + BusinessLine, 'GET', '').success(function (data) {
                    $scope.LTAStrategyOwnerList = data;
                    if (state) {
                        $scope.selectModel.LTAStrategyOwner = getdynamicobjectuserfilter($scope.selectModel.LTAStrategyOwnerId, "LTAStrategyOwnerList")
                    }
                }).error(function (error) {
                    $scope.Error = error;
                })
            }
            else {
                $scope.LTAStrategyOwnerList = [];
            }
        }
        catch (e) {
        }
    }
    $scope.userfilter1 = function () {
        if ($scope.selectModel.LTAStrategyCode.LTAStrategyCode && $scope.selectModel.LTAApplicationCode.LTAApplicationCode && $scope.selectModel.DiscretionaryCode.DiscretionaryCode && $scope.selectModel.BusinessSuffix.BusinessSuffix) {
            $scope.selectModel.LTAShortCode = $scope.selectModel.LTAStrategyCode.LTAStrategyCode + $scope.selectModel.LTAApplicationCode.LTAApplicationCode + $scope.selectModel.DiscretionaryCode.DiscretionaryCode + $scope.selectModel.BusinessSuffix.BusinessSuffix;
        }
        else
            $scope.selectModel.LTAShortCode = '';
    }

    $scope.userfilter2 = function () {
        if ($scope.selectModel.Strategytype && $scope.selectModel.Venuetype && $scope.selectModel.Capacity) {
            $scope.selectModel.PriorityScore = parseInt($scope.selectModel.Strategytype.Strategytypecode) + parseInt($scope.selectModel.Venuetype.Venuetypecode) + parseInt($scope.selectModel.Capacity.Capacitycode);
        }
        else {
            $scope.selectModel.PriorityScore = '';
            $scope.selectModel.Priority = '';
        }
        if (!isNaN($scope.selectModel.PriorityScore)) {
            var priorityvalue = parseInt($scope.selectModel.PriorityScore)
            if (priorityvalue >= 10 && priorityvalue <= 10)
                $scope.selectModel.Priority = 1;
            if (priorityvalue >= 6 && priorityvalue <= 9)
                $scope.selectModel.Priority = 2;
            if (priorityvalue <= 5)
                $scope.selectModel.Priority = 3;
        }
    }

    $scope.userfilter3 = function () {
        try {
            var Business = $scope.selectModel.LTAApplicationName;

            if (Business != "" && Business != undefined) {
                ApiCall.MakeApiCall("GetAllLTAApplicationMappingbyId?Id=" + Business.Id, 'GET', '').success(function (data) {
                    if (data.length > 0) {
                        $scope.selectModel.LTAApplicationMappingId = data[0].Id;
                        $scope.selectModel.LTAApplicationCode = getdynamicobject(data[0].LTAApplicationCodeId, "LTAApplicationCodeList")
                        $scope.selectModel.LTAApplicationName = getdynamicobject(data[0].LTAApplicationNameId, "LTAApplicationNameList")
                        $scope.selectModel.ChildID = getdynamicobject(data[0].ChildId, "ChildIDList")
                        $scope.selectModel.ThirdPartyApp = getdynamicobject(data[0].ThirdPartyAppId, "ThirdPartyList");
                        $scope.selectModel.ApplicationCategory = getdynamicobject(data[0].ApplicationCategoryId, "ApplicationCategoryList");
                        $scope.selectModel.ParentID = getdynamicobject(data[0].ParentIDValue, "ParentIDList");
                        $scope.selectModel.LTAApplicationOwner = data[0].ApplicationOwnerId;// getdynamicobjectuserfilter(data[0].ApplicationOwnerId, "LTAApplicationOwnerList");
                        $scope.userfilter1();
                    }
                    else {
                        clearfilter3();
                    }
                }).error(function (error) {
                    $scope.Error = error;
                })
            }
            else {
                clearfilter3();
            }
        }
        catch (e) {
        }
    }

    function clearfilter3() {
        $scope.selectModel.LTAApplicationMappingId = 0;
        $scope.selectModel.LTAApplicationCode = {};
        //$scope.selectModel.LTAApplicationName = {};
        $scope.selectModel.ChildID = {};
        $scope.selectModel.ThirdPartyApp = {};
        $scope.selectModel.ApplicationCategory = {};
        $scope.selectModel.ParentID = {};
        $scope.selectModel.ApplicationOwnerId = {};
        $scope.userfilter1();
    }

    $scope.userfilter4 = function () {
        try {
            var Business = $scope.selectModel.LTAStrategyName;
            if (Business != "" && Business != undefined) {
                ApiCall.MakeApiCall("GetAllLTAStrategyMappingbyId?Id=" + Business.Id, 'GET', '').success(function (data) {
                    if (data.length > 0) {
                        $scope.selectModel.LTAStrategyMappingId = data[0].Id;
                        $scope.selectModel.LTAStrategyCode = getdynamicobject(data[0].LTAStrategyCodeId, "LTAStrategyCodeList")
                        $scope.userfilter1();
                    }
                    else {
                        clearfilter4();
                    }

                }).error(function (error) {
                    $scope.Error = error;
                });
            }
            else
                clearfilter4()

        }
        catch (e) {
        }
    }

    function clearfilter4() {
        $scope.selectModel.LTAStrategyCode = {};
        $scope.selectModel.LTAStrategyMappingId = 0;
    }
    $scope.userfilter5 = function () {
        try {
            var Business = $scope.selectModel.Business;
            if (Business != "" && Business != undefined) {
                ApiCall.MakeApiCall("GetAllBusinessMappingbyId?Id=" + Business.Id, 'GET', '').success(function (data) {
                    if (data.length > 0) {
                        $scope.selectModel.BusinessMappingId = data[0].Id;
                        $scope.selectModel.BusinessSuffix = getdynamicobject(data[0].BusinessSuffixId, "BusinessSuffixList");
                        $scope.userfilter1();
                    }
                    else
                        clearfilter5();

                }).error(function (error) {
                    $scope.Error = error;
                })
            }
            else
                clearfilter5();

        }
        catch (e) {
        }
    }

    function clearfilter5() {
        $scope.selectModel.BusinessSuffix = {};
        $scope.selectModel.BusinessMappingId = 0;
        $scope.userfilter1();
    }

    $scope.GetRightsList = function () {
        UserFactory.getloggedusername().success(function (data) {
            $scope.userId = data;
            if (data != '') {
                reportFactory.GetRightsList($scope.userId).success(function (data) {
                    var isRead = true, isWrite = false, isApprove = false;
                    $scope.IsReadOnly = true;
                    $scope.IsWrite = false;
                    $scope.ApprovalCheck.IsApprove = false;
                    angular.forEach(data, function (value, key) {
                        if (value.RightName == 'LTA Read Only') {
                            isRead = false;
                        }
                        if (value.RightName == 'LTA Write Access') {
                            isWrite = true;
                        }
                        if (value.RightName == 'LTA Attestation') {
                            isApprove = true;
                        }
                    })
                    if (!isRead) {
                        $scope.Permissions.IsReadOnly = false;
                    }
                    if (isWrite) {
                        $scope.Permissions.IsWrite = true;
                    }
                    if (isApprove) {
                        $scope.ApprovalCheck.IsApprove = true;
                    }
                    $scope.getallalgodata();
                }).error(function (error) {
                    console.log('Error when getting rights list: ' + error);
                });
            }
        });
    };
    $scope.multiselect = {
        selected: [],
        options: [],
        config: {
            hideOnBlur: false,
            showSelected: false,
            itemTemplate: function (item) {
                return $sce.trustAsHtml(item.name);
            },
            labelTemplate: function (item) {
                return $sce.trustAsHtml(item.name);
            }
        }
    };

    function assignCountry(data) {
        $scope.multiselect.selected = [];

        for (index = 0; index < data.length; index++) {

            for (k = 0; k < $scope.multiselect.options.length; k++) {
                if ($scope.multiselect.options[k].id == data[index].trim()) {
                    $scope.multiselect.selected.push($scope.multiselect.options[k]);
                }
            }
        }

    }

    function binddata(list) {
        $scope.multiselect.options = list.map(function (item) {
            return {
                name: item.CountryName,
                id: item.Id
            };
        });
    }

    $scope.changeDecommisiondate = function (value) {
        $scope.selectModel.DecomissionedDate = value;
    }

    $scope.changeGoLive = function (value) {
        $scope.selectModel.GOLiveDate = value;
    }

    $scope.openpopup = function (type) {
        $scope.Issystemflow = type;
        $('#viewFiles').modal('show');
    }

    $scope.GetRightsList();

    $rootScope.$on('eventName', function (event, args) {
        $scope.showaction = false;

    });
}]);

