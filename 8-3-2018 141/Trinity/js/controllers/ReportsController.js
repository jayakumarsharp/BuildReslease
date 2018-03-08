﻿ReportApp.controller('ReportsController', ['$scope', '$rootScope', 'StrategyService', '$timeout', 'ApiCall', 'UserFactory', 'reportFactory', 'toaster', '$compile', 'DTOptionsBuilder', 'DTColumnBuilder', '$q', 'apiService', 'Upload', '$sce', '_', '$window', function ($scope, $rootScope, StrategyService, $timeout, ApiCall, UserFactory, reportFactory, toaster, $compile, DTOptionsBuilder, DTColumnBuilder, $q, apiService, Upload, $sce, _, $window) {
    $scope.data = [];
    $scope.IsModelAlgopage = true;
    $scope.errorinfo = '';
    $scope.Strategydata = [];
    $scope.editMode = false;
    $scope.showfilter = true;
    $scope.IsReadOnly = true;
    $scope.Currency = [];
    $scope.LegalEntity = [];
    $scope.currency = {};

    function reset() {
        $scope.selectModel = {
            Country: {},
            Region: {},
            LTAApplicationCode: {},
            BusinessSuffix: {},
            ChildID: {},
            LTAStrategyName: {},
            Strategytype: {},
            GOLiveDate: '',
            LTAStrategyCode: {},
            LTAShortCode: {},
            BusinessLine: {},
            LTAApplicationName: {},
            ApplicationCategory: {},
            Venuetype: {},
            DecomissionedDate: {},
            DiscretionaryCode: {},
            ParentID: {},
            LTAApplicationOwner: {},
            PriorityScore: '',
            Priority: '',
            Capacity: {},
        };

    }
    $scope.dtOptions = DTOptionsBuilder.fromSource()
        .withPaginationType('full_numbers').withOption('createdRow', createdRow)
        .withOption('rowCallback', rowCallback);
    $scope.dtColumns = [
        //DTColumnBuilder.newColumn('Id').withTitle('ID'),
        DTColumnBuilder.newColumn('LTAShortCode').withTitle('LTA Short Code'),
        DTColumnBuilder.newColumn('BusinessLine').withTitle('Business Line'),
        DTColumnBuilder.newColumn('LTAApplicationName').withTitle('LTA Application Name'),
        DTColumnBuilder.newColumn('LTAStrategyCode').withTitle('LTA Strategy Name'),
        DTColumnBuilder.newColumn('RegionName').withTitle('Region'),
        DTColumnBuilder.newColumn('LTAApplicationOwner').withTitle('LTA Owner'),
        //DTColumnBuilder.newColumn('StrategyStatus').withTitle('Strategy Status'),
        DTColumnBuilder.newColumn('ApplicationCategory').withTitle('Category'),
        DTColumnBuilder.newColumn('Priority').withTitle('Priority'),
        //DTColumnBuilder.newColumn('ParentID').withTitle('Parent CSI ID'),
         DTColumnBuilder.newColumn('Attest').withTitle('Attest').renderWith(actionsStatus),
         //DTColumnBuilder.newColumn('DecomissionedDate').withTitle('Status').renderWith(activeStatus),
          DTColumnBuilder.newColumn('Status').withTitle('Status'),
        //DTColumnBuilder.newColumn('Id').withTitle('Actions').notSortable()
        //    .renderWith(actionsHtml)
    ];

    function actionsStatus(data, type, full, meta) {
        if (data == "Yes")
            return '<a  class="dta-act">Attested</a>';
        else
            return '<a  class="dta-act-not">Pending</a>';
    }

    function activeStatus(data, type, full, meta) {
        var GOLiveDate = moment(full.GOLiveDate, 'MM/DD/YYYY');
        if (full.DecomissionedDate)
            var DecomissionedDate = moment(full.DecomissionedDate, 'MM/DD/YYYY');
        else
            var DecomissionedDate = full.DecomissionedDate;
        var currentdate = moment();
        if (DecomissionedDate != '') {
            if ((currentdate >= GOLiveDate && currentdate <= DecomissionedDate) || (currentdate >= DecomissionedDate && currentdate <= GOLiveDate)) // false
                return '<a  class="dta-act">Active</a>';
            else if (GOLiveDate >= currentdate)//&& DecomissionedDate <= currentdate)
                return '<a  class="dta-sign">PipeLine</a>';
            else if (DecomissionedDate < currentdate)
                return '<a  class="dta-act-not">InActive</a>';
        }
        else {
            if (GOLiveDate < currentdate)
                return '<a  class="dta-act-not">InActive</a>';
            else if (GOLiveDate > currentdate)
                return '<a  class="dta-sign">PipeLine</a>';
            else
                return '<a  class="dta-act-not">InActive</a>';
        }
    }

    $scope.Confirmcancel = function () {
        $('#confirmModal').modal('show');
    }

    function createdRow(row, data, dataIndex) {
        $compile(angular.element(row).contents())($scope);
    }

    function actionsHtml(data, type, full, meta) {
        return '<a  class="test"><img src="images/edit.png"></a> &nbsp;<a  class="test1"><img style="width:24px;height:24px;" src="images/eyeicon.png"></a>';
    }

    function rowCallback(nRow, aData, iDisplayIndex, iDisplayIndexFull) {
        $('.test', nRow).unbind('click');
        $('.test', nRow).bind('click', function () {
            $scope.$apply(function () {
                $scope.GetCurrencyConversionForId(aData.Id, aData.Version, aData.RefNumber);
            });
        });
        $('.test1', nRow).unbind('click');
        $('.test1', nRow).bind('click', function () {
            $scope.$apply(function () {
                $scope.GetCurrencyConversionForIdView(aData.RefNumber, aData.Version);
            });
        });
        return nRow;
    }

    //function Getusermappingdata(userid) {
    //    ApiCall.MakeApiCall("GetusercountryMapping?userId=" + userid, 'GET', '').success(function (data) {
    //        $scope.CountryMasterList = data;
    //        binddata($scope.CountryMasterList);
    //    }).error(function (error) {
    //        $scope.Error = error;
    //    })
    //    ApiCall.MakeApiCall("GetuserRegionMapping?userId=" + userid, 'GET', '').success(function (data) {
    //        $scope.RegionMasterList = data;
    //    }).error(function (error) {
    //        $scope.Error = error;
    //    })
    //    ApiCall.MakeApiCall("GetBusinessMapping?userId=" + userid, 'GET', '').success(function (data) {
    //        $scope.BusinessLineList = data;
    //    }).error(function (error) {
    //        $scope.Error = error;
    //    });
    //}


    $scope.getallalgodata = function (userid) {
        StrategyService.ShowLoader();
        var URl = 'Main/';
        //let GetAllCountry = apiService.GetAllCountry();
        let GetAllLTAApplicationCode = apiService.GetAllLTAApplicationCode()
        let GetAllThirdPartyAppList = apiService.GetAllThirdPartyAppList()
        let GetAllBusiness = apiService.GetAllBusiness()
        let GetAllLTAStrategyCode = apiService.GetAllLTAStrategyCode()
        let GetAllDiscretionaryCode = apiService.GetAllDiscretionaryCode()
        let GetAllBusinessSuffix = apiService.GetAllBusinessSuffix()
        let GetAllParentID = apiService.GetAllParentID()
        let GetAllChildID = apiService.GetAllChildID()
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
        let GetAllCountry = apiService.GetusercountryMapping(userid);
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
            $scope.LTAApplicationCodeList = resp[0].data;
            $scope.ThirdPartyList = resp[1].data;
            $scope.BusinessList = resp[2].data;
            $scope.LTAStrategyCodeList = resp[3].data;
            $scope.DiscretionaryCodeList = resp[4].data;
            $scope.BusinessSuffixList = resp[5].data;
            $scope.ParentIDList = resp[6].data;
            $scope.ChildIDList = resp[7].data;
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

    //$scope.getallalgodata();
    $scope.activateTab = function (tabid) {
        for (var i = 0; i < $scope.pageList.length; i++) {
            $scope.pageList[i].Page = false;
        }
        $scope.pageList[tabid].Page = true;
        $scope.pageList[tabid].IsValid = true;
    }

    $scope.removefilter = function () {
        reset();
    };

    $scope.showfiltercondition = function () {
        $scope.showfilter = true;
    };
    $scope.Export = function () {
        var currency = { Country: '', Region: '', LTAApplicationCode: '', LTAStrategyCode: '', BusinessLine: '', LTAStrategyOwner: '', ApplicationCategory: '', Venuetype: '' };
        //if (!$scope.selectModel || $scope.multiselect.selected.length<=0) {
            StrategyService.ShowLoader();
            //if ($scope.selectModel.Country)
            //    currency.Country = $scope.selectModel.Country.Id
            var idlist = '';
            var CountryNames = '';
            for (var i = 0; i < $scope.multiselect.selected.length; i++) {
                if(i==$scope.multiselect.selected.length-1)
                {
                    idlist += $scope.multiselect.selected[i].id ;
                    CountryNames += $scope.multiselect.selected[i].name;
                }
                else{
                    idlist += $scope.multiselect.selected[i].id + ',';
                    CountryNames += $scope.multiselect.selected[i].name + ',';
                }
            }
            currency.Country = idlist;
            if ($scope.selectModel.Region)
                currency.Region = $scope.selectModel.Region.Id;
            if ($scope.selectModel.LTAApplicationCode)
                currency.LTAApplicationCode = $scope.selectModel.LTAApplicationCode.Id;
            if ($scope.selectModel.LTAStrategyCode)
                currency.LTAStrategyCode = $scope.selectModel.LTAStrategyCode.Id;
            if ($scope.selectModel.BusinessLine)
                currency.BusinessLine = $scope.selectModel.BusinessLine.Id;
            if ($scope.selectModel.LTAStrategyOwner)
                currency.LTAStrategyOwner = $scope.selectModel.LTAStrategyOwner.userId;
            if ($scope.selectModel.ApplicationCategory)
                currency.ApplicationCategory = $scope.selectModel.ApplicationCategory.Id;
            if ($scope.selectModel.Venuetype)
                currency.VenuetypeId = $scope.selectModel.Venuetype.Id;
            if ($scope.selectModel.LTAApplicationName)
                currency.LTAApplicationNameId = $scope.selectModel.LTAApplicationName.Id;
            if ($scope.selectModel.ChildID)
                currency.ChildID = $scope.selectModel.ChildID.Id;
            if ($scope.selectModel.ParentID)
                currency.ParentID = $scope.selectModel.ParentID.Id;


            ApiCall.MakeApiCall("ExportReport", 'POST', currency).success(function (data) {
                if (data.Error != undefined) {
                    toaster.pop('error', "Error", data.Error, null);
                } else {
                    if (data != 'No Records') {
                        var url = BaseURL + 'Main/DownLoadReportFile?FileName=' + data + '&Page=Report';
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
       // }
        //else
          //  toaster.pop('warning', "Warning", 'Please apply report filter condition', null);
    };
    $scope.showreport = function () {
        $scope.showfilter = false;
        debugger;
        //var idlist = '';
        //for (var i = 0; i < $scope.multiselect.selected.length; i++) {
        //    idlist = $scope.multiselect.selected[i].id + ',';
        //}
        var currency = { Country: '', Region: '', LTAApplicationCode: '', LTAStrategyCode: '', BusinessLine: '', LTAStrategyOwner: '', ApplicationCategory: '', Venuetype: '' };
        if ($scope.selectModel) {
            StrategyService.ShowLoader();
            //if ($scope.selectModel.Country)
            //    currency.Country = $scope.selectModel.Country.Id

            var idlist = '';
            var CountryNames = '';
            for (var i = 0; i < $scope.multiselect.selected.length; i++) {
                if(i==$scope.multiselect.selected.length-1)
                {
                    idlist += $scope.multiselect.selected[i].id ;
                    CountryNames += $scope.multiselect.selected[i].name;
                }
                else{
                    idlist += $scope.multiselect.selected[i].id + ',';
                    CountryNames += $scope.multiselect.selected[i].name + ',';
                }
            }
            currency.Country = idlist;
            if ($scope.selectModel.Region)
                currency.Region = $scope.selectModel.Region.Id;
            if ($scope.selectModel.LTAApplicationCode)
                currency.LTAApplicationCode = $scope.selectModel.LTAApplicationCode.Id;
            if ($scope.selectModel.LTAStrategyCode)
                currency.LTAStrategyCode = $scope.selectModel.LTAStrategyCode.Id;
            if ($scope.selectModel.BusinessLine)
                currency.BusinessLine = $scope.selectModel.BusinessLine.Id;
            if ($scope.selectModel.LTAApplicationOwner)
                currency.LTAApplicationOwner = $scope.selectModel.LTAApplicationOwner.userId;
            if ($scope.selectModel.ApplicationCategory)
                currency.ApplicationCategory = $scope.selectModel.ApplicationCategory.Id;
            if ($scope.selectModel.Venuetype)
                currency.VenuetypeId = $scope.selectModel.Venuetype.Id;
            if ($scope.selectModel.LTAApplicationName)
                currency.LTAApplicationNameId = $scope.selectModel.LTAApplicationName.Id;
            if ($scope.selectModel.ChildID)
                currency.ChildID = $scope.selectModel.ChildID.Id;
            if ($scope.selectModel.ParentID)
                currency.ParentID = $scope.selectModel.ParentID.Id;
            if ($scope.selectModel.ThirdPartyApp)
                currency.ThirdPartyAppId = $scope.selectModel.ThirdPartyApp.Id;

            ApiCall.MakeApiCall("GetStrategyReport", 'POST', currency).success(function (data) {
                if (data.Error != undefined) {
                    toaster.pop('error', "Error", data.Error, null);
                } else {
                    $scope.data = data;
                    $scope.dtOptions.data = $scope.data;
                    StrategyService.HideLoader();
                }
            }).error(function (data) {
                $scope.error = "An Error has occured while Adding Capacity ! " + data.ExceptionMessage;
            });
        }
        else
            toaster.pop('warning', "Warning", 'Please apply report filter condition', null);


    };


    $scope.GetCurrencyConversionForId = function (id, Version, RefNumber) {
        $scope.showaction = true;
        $scope.ShowSignOff = false;
        StrategyService.ShowLoader();
        binddata($scope.CountryMasterList);
        StrategyService.GetDatabyId(id).success(function (data) {
            $scope.editMode = true;
            $scope.selectModel = data[0];
            $scope.selectModel.GOLiveDate = $scope.selectModel.GOLiveDate;
            $scope.selectModel.DecomissionedDate = $scope.selectModel.DecomissionedDate;
            //$scope.selectModel.GOLiveDate = moment($scope.selectModel.GOLiveDate.split(' ')[0], 'DD/MM/YYYY').format('MM/DD/YYYY');
            //$scope.selectModel.DecomissionedDate = moment($scope.selectModel.DecomissionedDate.split(' ')[0], 'DD/MM/YYYY').format('MM/DD/YYYY');
            $scope.Prevvalue = angular.copy($scope.selectModel)
            $scope.multiselect.selected = JSON.parse($scope.selectModel.Country);
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
            $scope.selectModel.Description = $scope.selectModel.Description;
            $scope.userfilter(true);
            $scope.activateTab(0);
            for (var i = 0; i < $scope.pageList.length; i++) {
                $scope.pageList[i].IsValid = true;
            }
            assignUsers();
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
    $scope.GetCurrencyConversionForIdView = function (id, Version) {
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


    $scope.showconfirm = function (data) {
        $scope.Id = data;
        $('#confirmModal').modal('show');
    };

    $scope.cancel = function () {
        $scope.currency = {};
        $scope.selectModel = { Application: {}, Country: {}, ProductType: {}, BusinessSector: {}, Region: {} };
        $scope.showaction = false;
        $('#confirmModal').modal('hide');
    };

    $scope.updatecancel = function (data) {
        StrategyService.GetCurrencyConversionbyId(id).success(function (data) {
            $scope.editMode = true;
            $scope.currency = data[0];
            $('#currencyModel').modal('show');

        }).error(function (data) {
            $scope.error = "An Error has occured while Adding user! " + data.ExceptionMessage;
        });

    };

    $scope.userfilter = function (state) {
        try {
            var Region = $scope.selectModel.Region.Id;
            var BusinessLine = $scope.selectModel.BusinessLine.Id;

            if (Region != "" && BusinessLine != "" && BusinessLine != undefined && Region != undefined) {
                ApiCall.MakeApiCall("GetUserbyFilter?RegionId=" + Region + "&BusinessLineId=" + BusinessLine, 'GET', '').success(function (data) {
                    $scope.LTAApplicationOwnerList = data;
                    if (state) {
                        $scope.selectModel.LTAApplicationOwner = getdynamicobjectuserfilter($scope.selectModel.LTAApplicationOwnerId, "LTAApplicationOwnerList")
                    }
                }).error(function (error) {
                    $scope.Error = error;
                })
            }
            else {
                $scope.LTAApplicationOwnerList = [];
            }
        }
        catch (e) {
        }
    }



    $scope.userfilter3 = function () {
        try {
            var Business = $scope.selectModel.LTAApplicationName;

            if (Business != "" && Business != undefined) {
                ApiCall.MakeApiCall("GetAllReportApplicationAutofill?Id=" + Business.Id, 'GET', '').success(function (data) {
                    if (data.length > 0) {
                        debugger
                        $scope.selectModel.LTAApplicationMappingId = data[0].Id;
                        $scope.selectModel.LTAApplicationCode = getdynamicobject(data[0].LTAApplicationCodeId, "LTAApplicationCodeList")
                        $scope.selectModel.LTAApplicationName = getdynamicobject(data[0].LTAApplicationNameId, "LTAApplicationNameList")
                        $scope.selectModel.ChildID = getdynamicobject(data[0].ChildId, "ChildIDList")
                        $scope.selectModel.ThirdPartyApp = getdynamicobject(data[0].ThirdPartyAppId, "ThirdPartyList");
                        $scope.selectModel.ApplicationCategory = getdynamicobject(data[0].ApplicationCategoryId, "ApplicationCategoryList");
                        $scope.selectModel.ParentID = getdynamicobject(data[0].ParentIDValue, "ParentIDList");
                        $scope.selectModel.BusinessLine = getdynamicobject(data[0].BusinessLineId, "BusinessLineList");
                        $scope.selectModel.Region = getdynamicobject(data[0].Region, "RegionMasterList");
                        $scope.selectModel.Country = getdynamicobject(data[0].Country, "CountryMasterList");
                        $scope.selectModel.ThirdPartyApp = getdynamicobject(data[0].ThirdPartyAppId, "ThirdPartyList");
                        var Region = data[0].Region;
                        var BusinessLine = data[0].BusinessLineId;
                        var userid = data[0].ApplicationOwner;
                        binddata($scope.CountryMasterList);

                        assignUsers(data[0].Country.split(','));

                        if (Region != "" && BusinessLine != "" && BusinessLine != undefined && Region != undefined) {
                            ApiCall.MakeApiCall("GetUserbyFilter?RegionId=" + Region + "&BusinessLineId=" + BusinessLine, 'GET', '').success(function (data) {
                                $scope.LTAApplicationOwnerList = data;
                                $scope.selectModel.LTAApplicationOwner = getdynamicobjectuserfilter(userid, "LTAApplicationOwnerList")
                            }).error(function (error) {
                                $scope.Error = error;
                            })
                        }
                        else {
                            $scope.LTAApplicationOwnerList = [];
                        }
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
            $scope.getallalgodata(data);
            if (data != '') {
                reportFactory.GetRightsList($scope.userId).success(function (data) {
                    var isRead = true;
                    $scope.IsReadOnly = true;
                    angular.forEach(data, function (value, key) {
                        if (value.RightName == 'Report') {
                            isRead = false;
                        }
                    })
                    if (!isRead) {
                        $scope.IsReadOnly = false;
                    }
                }).error(function (error) {
                    console.log('Error when getting rights list: ' + error);
                });
            }
        });
    };

    $scope.GetRightsList();

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

    $scope.displayUsers = function () {
        return $scope.multiselect.selected.map(function (each) {
            return each.CountryName;
        }).join(', ');
    };

    function assignUsers(data) {
        $scope.multiselect.selected=[];
        
        for (index = 0; index < data.length; index++) {

            for(k=0;k<$scope.multiselect.options.length;k++)
            {
                if($scope.multiselect.options[k].id==data[index].trim())
                {
                    $scope.multiselect.selected.push($scope.multiselect.options[k]);
                }
            }
        }
        // binddata($scope.CountryMasterList); 
    }
    function binddata(list) {
        $scope.multiselect.selected=[];
        $scope.multiselect.options = list.map(function (item) {
            return {
                name: item.CountryName,
                id: item.Id
            };
        });
    }

}]);



