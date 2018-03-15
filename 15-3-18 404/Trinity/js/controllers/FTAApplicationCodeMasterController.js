﻿ReportApp.controller('LTAApplicationCodeMasterController', ['$scope', '$rootScope', '$timeout', 'ApiCall', 'UserFactory', 'reportFactory', 'toaster', '$compile', 'DTOptionsBuilder', 'DTColumnBuilder', function ($scope, $rootScope, $timeout, ApiCall, UserFactory, reportFactory, toaster, $compile, DTOptionsBuilder, DTColumnBuilder) {
    $scope.data = [];
    $scope.showAddwindow = false;
    $scope.dtOptions = DTOptionsBuilder.fromSource()
        .withPaginationType('full_numbers').withOption('createdRow', createdRow);
    $scope.dtColumns = [
        DTColumnBuilder.newColumn('Id').withTitle('ID').notVisible(),
        DTColumnBuilder.newColumn('LTAApplicationCode').withTitle('LTA Application Code'),
        DTColumnBuilder.newColumn('Id').withTitle('Actions').notSortable()
            .renderWith(actionsHtml)
    ];
    function createdRow(row, data, dataIndex) {
        // Recompiling so we can bind Angular directive to the DT
        $compile(angular.element(row).contents())($scope);
    }



    function actionsHtml(data, type, full, meta) {
        $scope.data = data;
        return '<a  ng-click="GetLTAApplicationCodeMasterById(' + data + ')"><img src="images/edit.png"></a> ';
        //+'<button class="btn btn-danger" ng-click="delete(' + data + ')" )"="">' +
        //'   <i class="fa fa-trash-o"></i>' +
        //'</button>';
    }

    $scope.editMode = false;
    $scope.IsReadOnly = false;
    $scope.Showadd = function () {
        $scope.showAddwindow = true;
    }


    $scope.GetAllLTAApplicationCodeMaster = function () {
        ApiCall.MakeApiCall("GetAllLTAApplicationCode?LTAApplicationCodeId=", 'GET', '').success(function (data) {
            $scope.data = data;
            $scope.dtOptions.data = $scope.data
        }).error(function (error) {
            $scope.Error = error;
        })
    };


    $scope.add = function (LTAApplicationCodeMaster) {
        if (LTAApplicationCodeMaster != null) {
            if (LTAApplicationCodeMaster.LTAApplicationCode.trim() != "") {
                ApiCall.MakeApiCall("AddLTAApplicationCode", 'POST', LTAApplicationCodeMaster).success(function (data) {
                    if (data.Error != undefined) {
                        toaster.pop('error', "Error", data.Error, null);
                    } else {
                        if (data == "success") {
                            $scope.LTAApplicationCodeMaster = null;
                        $scope.GetAllLTAApplicationCodeMaster();
                        $scope.editMode = false;

                        $scope.showAddwindow = false;
                        toaster.pop('success', "Success", 'LTA Application Code added successfully', null);}
                else
                            toaster.pop('warning', "Warning", data, null);
                    
                    }
                }).error(function (data) {
                    $scope.error = "An Error has occured while Adding LTA Application Code  ! " + data.ExceptionMessage;
                });
            }
            else {
                toaster.pop('warning', "Warning", 'Please enter LTA Application Code', null);
            }
        }
        else {
            toaster.pop('warning', "Warning", 'Please enter LTA Application Code', null);
        }

    };

    $scope.GetLTAApplicationCodeMasterById = function (LTAApplicationCodeMasterId) {
        ApiCall.MakeApiCall("GetAllLTAApplicationCode?LTAApplicationCodeId=" + LTAApplicationCodeMasterId, 'GET', '').success(function (data) {
            $scope.editMode = true;
            $scope.showAddwindow = true;
            $scope.LTAApplicationCodeMaster = data[0];
        }).error(function (data) {
            $scope.error = "An Error has occured while Adding LTA Application Code! " + data.ExceptionMessage;
        });
    };


    $scope.delete = function () {
        ApiCall.MakeApiCall("DeleteLTAApplicationCode?LTAApplicationCodeId=" + $scope.LTAApplicationCodeMasterId, 'GET', '').success(function (data) {
            $scope.LTAApplicationCodeMaster = null;
            $scope.editMode = false;
            $scope.GetAllLTAApplicationCodeMaster();
            $('#confirmModal').modal('hide');
            $scope.showAddwindow = false;
            toaster.pop('success', "Success", 'LTA Application Code deleted successfully', null);
        }).error(function (data) {
            $scope.error = "An Error has occured while deleting user! " + data.ExceptionMessage;
        });
    };

    $scope.Confirmcancel = function () {
        $('#confirmModal').modal('show');
    }

    $scope.UpdateLTAApplicationCodeMaster = function (model) {
        if (model != null) {
            if (model.LTAApplicationCode.trim() != "") {
                ApiCall.MakeApiCall("ModifyLTAApplicationCode", 'POST', model).success(function (data) {if (data == "success") {
                    $scope.editMode = false;
                    $scope.LTAApplicationCodeMaster = null;
                    $scope.GetAllLTAApplicationCodeMaster();
                    $scope.showAddwindow = false;
                    toaster.pop('success', "Success", 'LTA Application Code updated successfully', null);}
                else
                            toaster.pop('warning', "Warning", data, null);
                    
                }).error(function (data) {
                    $scope.error = "An Error has occured while Adding LTA Application Code ! " + data.ExceptionMessage;
                });
            }
            else {
                toaster.pop('warning', "Warning", 'Please enter LTA Application Code', null);
            }
        }
        else {
            toaster.pop('warning', "Warning", 'Please enter LTA Application Code', null);
        }
    };



    $scope.showconfirm = function (data) {
        $scope.LTAApplicationCodeMasterId = data;
        $('#confirmModal').modal('show');
    };

    $scope.cancel = function () {
        $scope.LTAApplicationCodeMaster = null;
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
                        if (value.RightName == 'LTAApplicationCode Write') {
                            isRead = false;
                        }
                    })
                    if (!isRead) {
                        $scope.IsReadOnly = false;
                    }
                    $scope.GetAllLTAApplicationCodeMaster();
                }).error(function (error) {
                    console.log('Error when getting rights list: ' + error);
                });
            }

        });
    };
    $scope.GetRightsList();

}]);