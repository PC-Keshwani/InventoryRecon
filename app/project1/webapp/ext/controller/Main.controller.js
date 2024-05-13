sap.ui.define(
    [
        'sap/m/MessageToast',
        'sap/ui/core/mvc/Controller'
    ],
    function (MessageToast, Controller) {
        'use strict';

        return Controller.extend('project1.ext.main.Main', {

            onInit: function () {

            },

            handleUploadComplete: function (oEvent) {
            },

            handleUploadPress: function (e) {
                var xlsFile = this.file;
                var that = this;
                this.fileName = xlsFile.name;
                this.fileType = xlsFile.type;

                var oReader = new FileReader();
                oReader.onload = function (oEvent) {

                    var strCSV = oEvent.target.result;
                    var arrCSV = strCSV.match(/[\w .]+(?=,?)/g);
                    var noOfCols = 2;
                    var headerRow = arrCSV.splice(0, noOfCols);

                    while (arrCSV.length > 0) {
                        var obj = {};
                        var row = arrCSV.splice(0, noOfCols);
                        for (var i = 0; i < row.length; i++) {
                            obj[headerRow[i]] = row[i].trim();
                        }
                        obj.quantity = JSON.parse(obj.quantity);
                        var serviceurl = "/odata/v4/dbservice/";
                        var oModel = new sap.ui.model.odata.ODataModel(serviceurl, {
                            json: true
                        });
                        oModel.create("/sapmatSet", obj, {
                            json: true,
                            success: function () {
                                alert("Uploaded");
                            },
                            error: function () {
                                alert("Uploaded");
                            }
                        })
                    }
                };

                oReader.readAsBinaryString(xlsFile);
            },

            _onFileChange: function (oEvent) {
                this.file = oEvent.getParameters("files").files[0];
            },

            handleUploadPressEcomm: function (e) {
                var xlsFile = this.file;
                var that = this;
                this.fileName = xlsFile.name;
                this.fileType = xlsFile.type;

                var oReader = new FileReader();
                oReader.onload = function (oEvent) {

                    var strCSV = oEvent.target.result;
                    var arrCSV = strCSV.match(/[\w .]+(?=,?)/g);
                    var noOfCols = 2;
                    var headerRow = arrCSV.splice(0, noOfCols);

                    while (arrCSV.length > 0) {
                        var obj = {};
                        var row = arrCSV.splice(0, noOfCols);
                        for (var i = 0; i < row.length; i++) {
                            obj[headerRow[i]] = row[i].trim();
                        }
                        obj.quantity = JSON.parse(obj.quantity);
                        var serviceurl = "/odata/v4/dbservice/";
                        var oModel = new sap.ui.model.odata.ODataModel(serviceurl, {
                            json: true
                        });
                        oModel.create("/ecommatSet", obj, {
                            json: true,
                            success: function () {

                            },
                            error: function () {

                            }
                        })

                        if (arrCSV.length === 0) {
                            // $.ajax({
                            //     url: "https://3a3aac67trial.authentication.us10.hana.ondemand.com/oauth/token",
                            //     method: "GET",
                            //     headers: {
                            //         "X-CSRF-Token": "Fetch"
                            //     },
                            //     success: function (result, xhr, data) {
                                    // var token = data.getResponseHeader("X-CSRF-Token");
                                    // if (token === null) return;
                                    var startContext = {};
                                    var workflowStartPayload = { definitionId: "ir", context: startContext };
                                    $.ajax({
                                        url: "/wf_dest/",
                                        type: "POST",
                                        data: JSON.stringify(workflowStartPayload),
                                        headers: {"Content-type": "application/json"},
                                        async: false,
                                        success: function (data) {
                                            alert("The workflow has successfully started");
                                        },
                                        error: function (data) {
                                            alert("WF Execution failed")
                                        }
                                    });
                    //             }
                    // })
                }
            }
    },

oReader.readAsBinaryString(xlsFile);

            },

handleProcedure: function(e) {

    $.ajax({
        type: "GET",
        async: false,
        url: "https://3a3aac67trial-dev-inventryrecon-srv.cfapps.us10-001.hana.ondemand.com/odata/v4/dbservice/reconci()",
        success: function (data) {
            alert(JSON.stringify(data));
        },
        error: function (xhr, textStatus, errorMessage) {
            alert("Executed Successfully");
        }
    });

    // var serviceurl = "/odata/v4/dbservice/";
    // var oModel =   new sap.ui.model.odata.ODataModel(serviceurl);
    // oModel.callFunction("reconci",  {
    //     method: "GET",
    //     json:true,
    //     success: function(oData, response){
    //     },
    //     error: function() {
    //     }
    // })
},


            /**
             * Called when a controller is instantiated and its View controls (if available) are already created.
             * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
             * @memberOf project1.ext.main.Main
             */


            /**
             * Similar to onAfterRendering, but this hook is invoked before the controller's View is re-rendered
             * (NOT before the first rendering! onInit() is used for that one!).
             * @memberOf project1.ext.main.Main
             */
            //  onBeforeRendering: function() {
            //
            //  },

            /**
             * Called when the View has been rendered (so its HTML is part of the document). Post-rendering manipulations of the HTML could be done here.
             * This hook is the same one that SAPUI5 controls get after being rendered.
             * @memberOf project1.ext.main.Main
             */
            //  onAfterRendering: function() {
            //
            //  },

            /**
             * Called when the Controller is destroyed. Use this one to free resources and finalize activities.
             * @memberOf project1.ext.main.Main
             */
            //  onExit: function() {
            //
            //  }
        });
    }
);
