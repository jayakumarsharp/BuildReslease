﻿ReportApp.controller('LTAApplicationMappingController', ['$scope', '$rootScope', '$timeout', 'ApiCall', 'UserFactory', 'reportFactory', 'toaster', '$compile', 'DTOptionsBuilder', 'DTColumnBuilder', '$q', 'StrategyService', 'apiService', function ($scope, $rootScope, $timeout, ApiCall, UserFactory, reportFactory, toaster, $compile, DTOptionsBuilder, DTColumnBuilder, $q, StrategyService, apiService) {
    $scope.data = [];
    $scope.showAddwindow = false;
    $scope.editMode = false;
    $scope.IsReadOnly = false;
    $scope.dtOptions = DTOptionsBuilder.fromSource()
        .withPaginationType('full_numbers').withOption('createdRow', createdRow)
    .withOption('rowCallback', rowCallback).withOption('scrollX', true);
    $scope.dtColumns = [
        DTColumnBuilder.newColumn('Id').withTitle('ID').notVisible(),
        DTColumnBuilder.newColumn('LTAApplicationName').withTitle('LTA Application Name'),
        DTColumnBuilder.newColumn('LTAApplicationCode').withTitle('LTA AApplication Code'),
        DTColumnBuilder.newColumn('ChildIdValue').withTitle('Child ID'),
        DTColumnBuilder.newColumn('ThirdPartyAppName').withTitle('Third Party'),
        DTColumnBuilder.newColumn('ParentID').withTitle('Parent ID'),
        DTColumnBuilder.newColumn('ApplicationCategory').withTitle('Application Category'),
        DTColumnBuilder.newColumn('ApplicationOwnerId').withTitle('Application Owner'),
        DTColumnBuilder.newColumn('Id').withTitle('Actions').notSortable()
            .renderWith(actionsHtml)
    ];
    function createdRow(row, data, dataIndex) {
        $compile(angular.element(row).contents())($scope);
    }
    function actionsHtml(data, type, full, meta) {
        return '<a    class="test1"><img src="images/edit.png"></a><a  ng-click="delete(' + data + ')"><img src="images/delete.png"></a> ';
    }
    function rowCallback(nRow, aData, iDisplayIndex, iDisplayIndexFull) {
    
        $('.test1', nRow).unbind('click');
        $('.test1', nRow).bind('click', function () {
            $scope.$apply(function () {
                $scope.edit(aData);
            });
        });
    

        return nRow;
    }
    $scope.edit=function(input)
    {
        $scope.editMode=true;
        $scope.showAddwindow = true;
        $scope.Id=  input.Id;
        $scope.selectModel={};
       
        $scope.selectModel.LTAApplicationCode = getdynamicobject(input.LTAApplicationCodeId, "LTAApplicationCodeList")
        $scope.selectModel.LTAApplicationName = getdynamicobject(input.LTAApplicationNameId, "LTAApplicationNameList")
        $scope.selectModel.ChildID = getdynamicobject(input.ChildId, "ChildIDList")
        $scope.selectModel.ThirdPartyApp = getdynamicobject(input.ThirdPartyAppId, "ThirdPartyList");
        $scope.selectModel.ApplicationCategory = getdynamicobject(input.ApplicationCategoryId, "ApplicationCategoryList");
        $scope.selectModel.ParentID = getdynamicobject(input.ParentIDValue, "ParentIDList");
     
        $scope.selectModel.ThirdPartyApp = getdynamicobject(input.ThirdPartyAppId, "ThirdPartyList");
        //var Region =input.Region;
        //var BusinessLine = input.BusinessLineId;
        //var userid =  input.ApplicationOwner;
        //if (Region != "" && BusinessLine != "" && BusinessLine != undefined && Region != undefined) {
        //    ApiCall.MakeApiCall("GetUserbyFilter?RegionId=" + Region + "&BusinessLineId=" + BusinessLine, 'GET', '').success(function (data) {
        //        $scope.LTAApplicationOwnerList = data;
        $scope.selectModel.LTAApplicationOwner =  input.ApplicationOwner;//getdynamicobjectuserfilter(input.ApplicationOwnerId, "LTAApplicationOwnerList")
        //    }).error(function (error) {
        //        $scope.Error = error;
        //    })
        //}
        //else {
        //    $scope.LTAApplicationOwnerList = [];
        //}
       
    }


    $scope.Showadd = function () {
        $scope.editMode=false;  $scope.selectModel={};
       
        $scope.showAddwindow = true;
    }
    
    var getdynamicobjectuserfilter = function (userId, type) {
        for (var i = 0; i < $scope[type].length; i++) {
            if ($scope[type][i].userId == userId) {
                return $scope[type][i];
            }
        }
    };
    var getdynamicobject = function (userId, type) {
        for (var i = 0; i < $scope[type].length; i++) {
            if ($scope[type][i].Id == userId) {
                return $scope[type][i];
            }
        }
    };
    $scope.GetAllLTAApplicationMaster = function () {
        ApiCall.MakeApiCall("GetAllLTAApplicationMapping?LTAApplicationId=", 'GET', '').success(function (data) {
            $scope.data = data;
            $scope.dtOptions.data = $scope.data

        }).error(function (error) {
            $scope.Error = error;
        });
        let GetUsers = UserFactory.GetUser('NA');
        let GetAllLTAApplicationCode = apiService.GetAllLTAApplicationCode()
        let GetAllThirdPartyAppList = apiService.GetAllThirdPartyAppList()
        let GetAllLTAStrategyCode = apiService.GetAllLTAStrategyCode()
        let GetAllParentID = apiService.GetAllParentID()
        let GetAllChildID = apiService.GetAllChildID()
        let GetAllApplicationCategory = apiService.GetAllApplicationCategory()
        let GetAllLTAApplicationName = apiService.GetAllLTAApplicationName()

        $q.all([
                GetAllLTAApplicationCode,
        GetAllThirdPartyAppList,
        GetAllParentID,
        GetAllChildID,
        GetAllApplicationCategory,
        GetAllLTAApplicationName,
        GetUsers
        ]).then(function (resp) {
            $scope.LTAApplicationCodeList = resp[0].data;
            $scope.ThirdPartyList = resp[1].data;
            $scope.ParentIDList = resp[2].data;
            $scope.ChildIDList = resp[3].data;
            $scope.ApplicationCategoryList = resp[4].data;
            $scope.LTAApplicationNameList = resp[5].data;
            $scope.LTAApplicationOwnerList = resp[6].data;
        });
        $timeout(function () {
            StrategyService.HideLoader();
        }, 1000)
    };
    $scope.add = function (LTAApplicationMaster) {
        if (LTAApplicationMaster != null) {
            if (LTAApplicationMaster.LTAApplicationName.LTAApplicationName && LTAApplicationMaster.LTAApplicationCode.LTAApplicationCode && LTAApplicationMaster.ChildID.ChildID && LTAApplicationMaster.ThirdPartyApp.Value) {
                var input = {
                    LTAApplicationNameId: LTAApplicationMaster.LTAApplicationName.Id, LTAApplicationCodeId: LTAApplicationMaster.LTAApplicationCode.Id, ChildID: LTAApplicationMaster.ChildID.Id, ThirdPartyAppId: LTAApplicationMaster.ThirdPartyApp.Id,
                    ParentID: LTAApplicationMaster.ParentID.Id, ApplicationOwnerId: LTAApplicationMaster.LTAApplicationOwner, ApplicationCategoryId: LTAApplicationMaster.ApplicationCategory.Id
                };

                ApiCall.MakeApiCall("AddLTAApplicationMapping", 'POST', input).success(function (data) {
                    if (data.Error != undefined) {
                        toaster.pop('error', "Error", data.Error, null);
                    } else {
                        if (data == "success") {
                            $scope.LTAApplicationMaster = null;
                            $scope.GetAllLTAApplicationMaster();
                            $scope.editMode = false;

                            $scope.showAddwindow = false;
                            toaster.pop('success', "Success", 'LTA Application added successfully', null);
                        }
                        else
                            toaster.pop('warning', "Warning", data, null);
                    }
                }).error(function (data) {
                    $scope.error = "An Error has occured while Adding LTA Application ! " + data.ExceptionMessage;
                });
            }
            else {
                toaster.pop('warning', "Warning", 'Please enter LTA Application', null);
            }
        }
        else {
            toaster.pop('warning', "Warning", 'Please enter LTA Application', null);
        }
    };


    $scope.UpdateLTAApplicationMaster    = function (LTAApplicationMaster) {
        if (LTAApplicationMaster != null) {
            if (LTAApplicationMaster.LTAApplicationName.LTAApplicationName && LTAApplicationMaster.LTAApplicationCode.LTAApplicationCode && LTAApplicationMaster.ChildID.ChildID && LTAApplicationMaster.ThirdPartyApp.Value) {
                var input = {
                    Id: $scope.Id,
                    LTAApplicationNameId: LTAApplicationMaster.LTAApplicationName.Id, LTAApplicationCodeId: LTAApplicationMaster.LTAApplicationCode.Id, ChildID: LTAApplicationMaster.ChildID.Id, ThirdPartyAppId: LTAApplicationMaster.ThirdPartyApp.Id,
                    ParentID: LTAApplicationMaster.ParentID.Id, ApplicationOwnerId: LTAApplicationMaster.LTAApplicationOwner, ApplicationCategoryId: LTAApplicationMaster.ApplicationCategory.Id
                };

                ApiCall.MakeApiCall("UpdateLTAApplicationMapping", 'POST', input).success(function (data) {
                    if (data.Error != undefined) {
                        toaster.pop('error', "Error", data.Error, null);
                    } else {
                        if (data == "success") {
                            $scope.LTAApplicationMaster = null;
                            $scope.GetAllLTAApplicationMaster();
                            $scope.editMode = false;
                            $scope.showAddwindow = false;
                            toaster.pop('success', "Success", 'LTA Application updated successfully', null);
                        }
                        else
                            toaster.pop('warning', "Warning", data, null);
                    }
                }).error(function (data) {
                    $scope.error = "An Error has occured while updating LTA Application ! " + data.ExceptionMessage;
                });
            }
            else {
                toaster.pop('warning', "Warning", 'Please enter LTA Application', null);
            }
        }
        else {
            toaster.pop('warning', "Warning", 'Please enter LTA Application', null);
        }
    };

    $scope.GetLTAApplicationMasterById = function (LTAApplicationMasterId) {
        ApiCall.MakeApiCall("GetAllLTAApplication?LTAApplicationId=" + LTAApplicationMasterId, 'GET', '').success(function (data) {
            $scope.editMode = true;
            $scope.showAddwindow = true;
            $scope.LTAApplicationMaster = data[0];
        }).error(function (data) {
            $scope.error = "An Error has occured while Adding LTA Application! " + data.ExceptionMessage;
        });
    };


    $scope.delete = function (id) {
        ApiCall.MakeApiCall("DeleteLTAApplicationMapping?Id=" + id, 'GET', '').success(function (data) {
            if (data == "success") {
                $scope.LTAApplicationMaster = null;
                $scope.editMode = false;
                $scope.GetAllLTAApplicationMaster();
                $('#confirmModal').modal('hide');
                $scope.showAddwindow = false;
                toaster.pop('success', "Success", 'LTA Application deleted successfully', null);
            }
            else
                toaster.pop('warning', "Warning", data, null);
        }).error(function (data) {
            $scope.error = "An Error has occured while deleting user! " + data.ExceptionMessage;
        });
    };

    $scope.Confirmcancel = function () {
        $('#confirmModal').modal('show');
    }

    $scope.showconfirm = function (data) {
        $scope.LTAApplicationMasterId = data;
        $('#confirmModal').modal('show');
    };

    $scope.cancel = function () {
        $scope.LTAApplicationMaster = null;
        $scope.editMode = false;
        $scope.showAddwindow = false;
        $('#confirmModal').modal('hide');
    };

    $scope.GetRightsList = function () {
        UserFactory.getloggedusername().success(function (data) {
            var userId = data;
            if (data != '') {
                reportFactory.GetRightsList(userId).success(function (data) {
                    var isRead = true;
                    $scope.IsReadOnly = true;
                    angular.forEach(data, function (value, key) {
                        if (value.RightName == 'LTAApplication Write') {
                            isRead = false;
                        }
                    })
                    if (!isRead) {
                        $scope.IsReadOnly = false;
                    }
                    $scope.GetAllLTAApplicationMaster();
                }).error(function (error) {
                    console.log('Error when getting rights list: ' + error);
                });
            }

        });
    };
    $scope.GetRightsList();

}]);