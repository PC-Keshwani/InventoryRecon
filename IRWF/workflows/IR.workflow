{
	"contents": {
		"ca9ba9d1-dd74-445a-9dca-eb584351f00e": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "ir",
			"subject": "IR",
			"name": "IR",
			"documentation": "Inventroy Recon wf",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"5b00ef60-2171-4404-8ba3-461de6f691a7": {
					"name": "GETOnPremMat"
				},
				"d7ab136c-a6ae-44af-8b95-11cfa380e52c": {
					"name": "Initialize"
				},
				"d7beb52f-51cc-44c6-a691-62d5c570cc1a": {
					"name": "sapMatUpl"
				},
				"9514ee6e-2a7c-40ab-b5ab-7234c296adc1": {
					"name": "test"
				},
				"bb079d0a-a49e-4e4b-8d38-a2d895f6b41f": {
					"name": "POSTSAPMAT"
				},
				"2970035a-0547-4b05-841b-57e57f2f5527": {
					"name": "batchcall"
				},
				"70aa2365-e7de-4363-a845-b8c298069ed1": {
					"name": "recordstatus"
				},
				"fc881994-35f1-4c6f-8450-a6a21cfe6a9f": {
					"name": "Recordstatus"
				},
				"5222c63d-f6cb-4343-91a0-9a2d0c2f2396": {
					"name": "Reconciliation"
				},
				"77f0b452-1f23-40fe-94ad-f7977bd8af32": {
					"name": "Reconstatus"
				},
				"341a7239-2448-49fd-adec-2552d29785c3": {
					"name": "ReconCompl"
				},
				"daca48d1-de3c-464a-a776-6ab3269b9af0": {
					"name": "Reconfailed"
				}
			},
			"sequenceFlows": {
				"bc48336b-f711-4b07-9111-1df0a84cea2d": {
					"name": "SequenceFlow3"
				},
				"433501c0-ed46-4e7c-9f0e-4c7ce7b87703": {
					"name": "SequenceFlow4"
				},
				"924be1c7-ac82-4816-aa8f-74e613028711": {
					"name": "SequenceFlow5"
				},
				"d1c3b9f5-9779-4f2e-bcc3-59d41e134426": {
					"name": "SequenceFlow9"
				},
				"2f96de41-0a1a-44f4-9557-dda1faf95155": {
					"name": "SequenceFlow10"
				},
				"bcfaf031-850f-4945-ac03-9f74fc924a78": {
					"name": "SequenceFlow11"
				},
				"204b015f-0be2-4e94-a2af-520995cc5e67": {
					"name": "SequenceFlow12"
				},
				"db08e0bf-5881-4602-abee-516725aecb6a": {
					"name": "SequenceFlow14"
				},
				"2f6f50bc-680b-45aa-b8a0-0e6ba41bb12d": {
					"name": "SequenceFlow16"
				},
				"34def353-9661-42f3-bce0-99f3cfa13800": {
					"name": "SequenceFlow17"
				},
				"2b36b2de-4a8f-49ff-b194-da99b519f070": {
					"name": "Success"
				},
				"280309b8-827e-4550-aec3-d76df2896baa": {
					"name": "SequenceFlow21"
				},
				"db46e8a2-4cfc-45bd-8c52-d8424c848c9a": {
					"name": "failed"
				},
				"5bf14ad9-28bc-4b2f-a7e2-74083d2904bb": {
					"name": "SequenceFlow23"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"5b00ef60-2171-4404-8ba3-461de6f691a7": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "S4HonPremise",
			"destinationSource": "consumer",
			"path": "/sap/opu/odata/sap/API_MATERIAL_STOCK_SRV/A_MatlStkInAcctMod",
			"httpMethod": "GET",
			"responseVariable": "${context.sapmat.Response}",
			"id": "servicetask1",
			"name": "GETOnPremMat",
			"documentation": "Read on Premise Material stock"
		},
		"d7ab136c-a6ae-44af-8b95-11cfa380e52c": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/IR/Initial.js",
			"id": "scripttask2",
			"name": "Initialize",
			"documentation": "Initialize"
		},
		"d7beb52f-51cc-44c6-a691-62d5c570cc1a": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/IR/sapmatupl.js",
			"id": "scripttask3",
			"name": "sapMatUpl",
			"documentation": "SAP Material to be uploaded"
		},
		"9514ee6e-2a7c-40ab-b5ab-7234c296adc1": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/IR/test.js",
			"id": "scripttask4",
			"name": "test",
			"documentation": "test"
		},
		"bb079d0a-a49e-4e4b-8d38-a2d895f6b41f": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "InventoryRecon",
			"destinationSource": "consumer",
			"path": "$batch",
			"httpMethod": "POST",
			"requestVariable": "${context.sapbatch.Request}",
			"responseVariable": "${context.sapbatchResponse}",
			"id": "servicetask3",
			"name": "POSTSAPMAT",
			"documentation": "Post SAP Material"
		},
		"2970035a-0547-4b05-841b-57e57f2f5527": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/IR/batchcall.js",
			"id": "scripttask5",
			"name": "batchcall",
			"documentation": "create batch call for post"
		},
		"70aa2365-e7de-4363-a845-b8c298069ed1": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/IR/countstatus.js",
			"id": "scripttask6",
			"name": "recordstatus",
			"documentation": "Count record status."
		},
		"fc881994-35f1-4c6f-8450-a6a21cfe6a9f": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "Recordstatus",
			"documentation": "Email record status",
			"mailDefinitionRef": "b7ad93c5-1eda-4434-a6bd-e3e445c655a0"
		},
		"5222c63d-f6cb-4343-91a0-9a2d0c2f2396": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "InventoryRecon",
			"destinationSource": "consumer",
			"path": "reconci()",
			"httpMethod": "GET",
			"responseVariable": "${context.recon}",
			"id": "servicetask4",
			"name": "Reconciliation",
			"documentation": "Reconciliation"
		},
		"bc48336b-f711-4b07-9111-1df0a84cea2d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "d7ab136c-a6ae-44af-8b95-11cfa380e52c"
		},
		"433501c0-ed46-4e7c-9f0e-4c7ce7b87703": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "d7ab136c-a6ae-44af-8b95-11cfa380e52c",
			"targetRef": "5b00ef60-2171-4404-8ba3-461de6f691a7"
		},
		"924be1c7-ac82-4816-aa8f-74e613028711": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "5b00ef60-2171-4404-8ba3-461de6f691a7",
			"targetRef": "d7beb52f-51cc-44c6-a691-62d5c570cc1a"
		},
		"d1c3b9f5-9779-4f2e-bcc3-59d41e134426": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "9514ee6e-2a7c-40ab-b5ab-7234c296adc1",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"2f96de41-0a1a-44f4-9557-dda1faf95155": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "d7beb52f-51cc-44c6-a691-62d5c570cc1a",
			"targetRef": "2970035a-0547-4b05-841b-57e57f2f5527"
		},
		"bcfaf031-850f-4945-ac03-9f74fc924a78": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "bb079d0a-a49e-4e4b-8d38-a2d895f6b41f",
			"targetRef": "70aa2365-e7de-4363-a845-b8c298069ed1"
		},
		"204b015f-0be2-4e94-a2af-520995cc5e67": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "2970035a-0547-4b05-841b-57e57f2f5527",
			"targetRef": "bb079d0a-a49e-4e4b-8d38-a2d895f6b41f"
		},
		"db08e0bf-5881-4602-abee-516725aecb6a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "70aa2365-e7de-4363-a845-b8c298069ed1",
			"targetRef": "fc881994-35f1-4c6f-8450-a6a21cfe6a9f"
		},
		"2f6f50bc-680b-45aa-b8a0-0e6ba41bb12d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "fc881994-35f1-4c6f-8450-a6a21cfe6a9f",
			"targetRef": "5222c63d-f6cb-4343-91a0-9a2d0c2f2396"
		},
		"34def353-9661-42f3-bce0-99f3cfa13800": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "5222c63d-f6cb-4343-91a0-9a2d0c2f2396",
			"targetRef": "77f0b452-1f23-40fe-94ad-f7977bd8af32"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"2d4e854e-8408-4df1-91ae-61ac06ce4df0": {},
				"4bf95d35-9773-4ed9-8337-6ffa531e0017": {},
				"bca880cf-5eb0-458b-ad5f-f6611b9a9d9a": {},
				"146c6cbc-679f-474c-b006-566ae6936d89": {},
				"3a398487-815c-4c07-bf48-d65e24c915a3": {},
				"1791f22f-0075-4967-8cbf-9fdf9c887f24": {},
				"b5435b1c-93f9-4502-86e4-6b354db4c628": {},
				"258332fa-edad-4d6a-9dd5-3828b69f02ea": {},
				"ae446520-bb1e-417e-bdee-75699697d121": {},
				"e271bfb6-c105-419c-a43a-84a4b5e9357e": {},
				"46ace5ed-f5b5-49ff-8775-f8fa1b720b71": {},
				"db877c53-9b9c-4b6f-94a9-8714c1963568": {},
				"258a744f-08af-4a63-a5c8-55286855ad12": {},
				"d9645738-5184-4e2d-bdea-ec59418fe564": {},
				"2b1d09eb-7389-4370-ba06-fde1fba341b6": {},
				"1697c15b-246e-4b35-a676-081c8c1f8ed5": {},
				"a78db9eb-eb48-4249-ac36-f6b5baf82320": {},
				"f586ebcf-638d-45b8-b98a-387bc289f3c2": {},
				"a0bdb7fc-4a77-459b-ace1-f5461216dc58": {},
				"3d61782c-c196-493a-b541-37295cd0db03": {},
				"367737dc-fa0f-4744-8b0b-d78369d64dc4": {},
				"117dbaf3-30d7-40fe-a5d3-ba9d921ac142": {},
				"effb3d32-fc13-40dc-8fa8-033264aa2335": {},
				"e60ae7ea-298a-46cc-bd5b-116a19252460": {},
				"0aef108c-2f7b-4a16-a35b-409bcdc9d78f": {},
				"59c31754-385a-4b8d-887b-78694d0beae3": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 121,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 119.5,
			"y": 1325.9999976158142,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"2d4e854e-8408-4df1-91ae-61ac06ce4df0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 94,
			"y": 204,
			"width": 86,
			"height": 60,
			"object": "5b00ef60-2171-4404-8ba3-461de6f691a7"
		},
		"4bf95d35-9773-4ed9-8337-6ffa531e0017": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 101,
			"y": 94,
			"width": 72,
			"height": 60,
			"object": "d7ab136c-a6ae-44af-8b95-11cfa380e52c"
		},
		"bca880cf-5eb0-458b-ad5f-f6611b9a9d9a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,44 137,94",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "4bf95d35-9773-4ed9-8337-6ffa531e0017",
			"object": "bc48336b-f711-4b07-9111-1df0a84cea2d"
		},
		"146c6cbc-679f-474c-b006-566ae6936d89": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,154 137,204",
			"sourceSymbol": "4bf95d35-9773-4ed9-8337-6ffa531e0017",
			"targetSymbol": "2d4e854e-8408-4df1-91ae-61ac06ce4df0",
			"object": "433501c0-ed46-4e7c-9f0e-4c7ce7b87703"
		},
		"3a398487-815c-4c07-bf48-d65e24c915a3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,264 137,314",
			"sourceSymbol": "2d4e854e-8408-4df1-91ae-61ac06ce4df0",
			"targetSymbol": "1791f22f-0075-4967-8cbf-9fdf9c887f24",
			"object": "924be1c7-ac82-4816-aa8f-74e613028711"
		},
		"1791f22f-0075-4967-8cbf-9fdf9c887f24": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 87,
			"y": 314,
			"width": 100,
			"height": 60,
			"object": "d7beb52f-51cc-44c6-a691-62d5c570cc1a"
		},
		"b5435b1c-93f9-4502-86e4-6b354db4c628": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 87,
			"y": 1215.9999976158142,
			"width": 100,
			"height": 60,
			"object": "9514ee6e-2a7c-40ab-b5ab-7234c296adc1"
		},
		"258332fa-edad-4d6a-9dd5-3828b69f02ea": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,1275.9999976158142 137,1325.9999976158142",
			"sourceSymbol": "b5435b1c-93f9-4502-86e4-6b354db4c628",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "d1c3b9f5-9779-4f2e-bcc3-59d41e134426"
		},
		"ae446520-bb1e-417e-bdee-75699697d121": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 87,
			"y": 534,
			"width": 100,
			"height": 60,
			"object": "bb079d0a-a49e-4e4b-8d38-a2d895f6b41f"
		},
		"e271bfb6-c105-419c-a43a-84a4b5e9357e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,374 137,424",
			"sourceSymbol": "1791f22f-0075-4967-8cbf-9fdf9c887f24",
			"targetSymbol": "db877c53-9b9c-4b6f-94a9-8714c1963568",
			"object": "2f96de41-0a1a-44f4-9557-dda1faf95155"
		},
		"46ace5ed-f5b5-49ff-8775-f8fa1b720b71": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,594 137,644",
			"sourceSymbol": "ae446520-bb1e-417e-bdee-75699697d121",
			"targetSymbol": "d9645738-5184-4e2d-bdea-ec59418fe564",
			"object": "bcfaf031-850f-4945-ac03-9f74fc924a78"
		},
		"db877c53-9b9c-4b6f-94a9-8714c1963568": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 87,
			"y": 424,
			"width": 100,
			"height": 60,
			"object": "2970035a-0547-4b05-841b-57e57f2f5527"
		},
		"258a744f-08af-4a63-a5c8-55286855ad12": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,484 137,534",
			"sourceSymbol": "db877c53-9b9c-4b6f-94a9-8714c1963568",
			"targetSymbol": "ae446520-bb1e-417e-bdee-75699697d121",
			"object": "204b015f-0be2-4e94-a2af-520995cc5e67"
		},
		"d9645738-5184-4e2d-bdea-ec59418fe564": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 87,
			"y": 644,
			"width": 100,
			"height": 60,
			"object": "70aa2365-e7de-4363-a845-b8c298069ed1"
		},
		"2b1d09eb-7389-4370-ba06-fde1fba341b6": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 87,
			"y": 754,
			"width": 100,
			"height": 60,
			"object": "fc881994-35f1-4c6f-8450-a6a21cfe6a9f"
		},
		"1697c15b-246e-4b35-a676-081c8c1f8ed5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,704 137,754",
			"sourceSymbol": "d9645738-5184-4e2d-bdea-ec59418fe564",
			"targetSymbol": "2b1d09eb-7389-4370-ba06-fde1fba341b6",
			"object": "db08e0bf-5881-4602-abee-516725aecb6a"
		},
		"a78db9eb-eb48-4249-ac36-f6b5baf82320": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 87,
			"y": 864,
			"width": 100,
			"height": 60,
			"object": "5222c63d-f6cb-4343-91a0-9a2d0c2f2396"
		},
		"f586ebcf-638d-45b8-b98a-387bc289f3c2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,814 137,864",
			"sourceSymbol": "2b1d09eb-7389-4370-ba06-fde1fba341b6",
			"targetSymbol": "a78db9eb-eb48-4249-ac36-f6b5baf82320",
			"object": "2f6f50bc-680b-45aa-b8a0-0e6ba41bb12d"
		},
		"a0bdb7fc-4a77-459b-ace1-f5461216dc58": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,924 137,974",
			"sourceSymbol": "a78db9eb-eb48-4249-ac36-f6b5baf82320",
			"targetSymbol": "3d61782c-c196-493a-b541-37295cd0db03",
			"object": "34def353-9661-42f3-bce0-99f3cfa13800"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 3,
			"sequenceflow": 23,
			"startevent": 1,
			"endevent": 1,
			"servicetask": 4,
			"scripttask": 6,
			"mailtask": 3,
			"exclusivegateway": 1
		},
		"b7ad93c5-1eda-4434-a6bd-e3e445c655a0": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "Prashant.keshwani@groupsoftus.com",
			"subject": "SAP Material upload status",
			"text": "Hi,\n\nTotal Material: ${context.totrec}\nSuccess loaded: ${context.succ}\nErrored Records:  ${context.err}",
			"id": "maildefinition1"
		},
		"77f0b452-1f23-40fe-94ad-f7977bd8af32": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Reconstatus",
			"documentation": "Reconciliation status",
			"default": "2b36b2de-4a8f-49ff-b194-da99b519f070"
		},
		"3d61782c-c196-493a-b541-37295cd0db03": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 116,
			"y": 974,
			"object": "77f0b452-1f23-40fe-94ad-f7977bd8af32"
		},
		"341a7239-2448-49fd-adec-2552d29785c3": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask2",
			"name": "ReconCompl",
			"documentation": "Reconciliation Done",
			"mailDefinitionRef": "e62b0547-b0e2-44d2-b2c4-3f4ee6a16f2b"
		},
		"367737dc-fa0f-4744-8b0b-d78369d64dc4": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 12,
			"y": 1085.999998807907,
			"width": 100,
			"height": 60,
			"object": "341a7239-2448-49fd-adec-2552d29785c3"
		},
		"2b36b2de-4a8f-49ff-b194-da99b519f070": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "Success",
			"sourceRef": "77f0b452-1f23-40fe-94ad-f7977bd8af32",
			"targetRef": "341a7239-2448-49fd-adec-2552d29785c3"
		},
		"117dbaf3-30d7-40fe-a5d3-ba9d921ac142": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,1016 137,1050.9999994039536 62,1050.9999994039536 62,1085.999998807907",
			"sourceSymbol": "3d61782c-c196-493a-b541-37295cd0db03",
			"targetSymbol": "367737dc-fa0f-4744-8b0b-d78369d64dc4",
			"object": "2b36b2de-4a8f-49ff-b194-da99b519f070"
		},
		"e62b0547-b0e2-44d2-b2c4-3f4ee6a16f2b": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "Prashant.keshwani@groupsoftus.com",
			"subject": "Reconciliation Complete",
			"text": "Hi,\n\nReconciliation is done. Report is ready.",
			"id": "maildefinition2"
		},
		"280309b8-827e-4550-aec3-d76df2896baa": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "SequenceFlow21",
			"sourceRef": "341a7239-2448-49fd-adec-2552d29785c3",
			"targetRef": "9514ee6e-2a7c-40ab-b5ab-7234c296adc1"
		},
		"effb3d32-fc13-40dc-8fa8-033264aa2335": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,1145.999998807907 62,1180.9999982118607 137,1180.9999982118607 137,1215.9999976158142",
			"sourceSymbol": "367737dc-fa0f-4744-8b0b-d78369d64dc4",
			"targetSymbol": "b5435b1c-93f9-4502-86e4-6b354db4c628",
			"object": "280309b8-827e-4550-aec3-d76df2896baa"
		},
		"daca48d1-de3c-464a-a776-6ab3269b9af0": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask3",
			"name": "Reconfailed",
			"documentation": "Reconciliation failed",
			"mailDefinitionRef": "ef48613c-45dd-40ef-871e-263bb473bdfc"
		},
		"e60ae7ea-298a-46cc-bd5b-116a19252460": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 162,
			"y": 1085.999998807907,
			"width": 100,
			"height": 60,
			"object": "daca48d1-de3c-464a-a776-6ab3269b9af0"
		},
		"ef48613c-45dd-40ef-871e-263bb473bdfc": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "prashant.keshwani@groupsoftus.com",
			"subject": "Reconciliation failed",
			"text": "Hi,\n\nReconciliation failed!!",
			"id": "maildefinition3"
		},
		"db46e8a2-4cfc-45bd-8c52-d8424c848c9a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.recon.value == \"false\"}",
			"id": "sequenceflow22",
			"name": "failed",
			"sourceRef": "77f0b452-1f23-40fe-94ad-f7977bd8af32",
			"targetRef": "daca48d1-de3c-464a-a776-6ab3269b9af0"
		},
		"0aef108c-2f7b-4a16-a35b-409bcdc9d78f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,1016 137,1050.9999994039536 212,1050.9999994039536 212,1085.999998807907",
			"sourceSymbol": "3d61782c-c196-493a-b541-37295cd0db03",
			"targetSymbol": "e60ae7ea-298a-46cc-bd5b-116a19252460",
			"object": "db46e8a2-4cfc-45bd-8c52-d8424c848c9a"
		},
		"5bf14ad9-28bc-4b2f-a7e2-74083d2904bb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow23",
			"name": "SequenceFlow23",
			"sourceRef": "daca48d1-de3c-464a-a776-6ab3269b9af0",
			"targetRef": "9514ee6e-2a7c-40ab-b5ab-7234c296adc1"
		},
		"59c31754-385a-4b8d-887b-78694d0beae3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "212,1145.999998807907 212,1180.9999982118607 137,1180.9999982118607 137,1215.9999976158142",
			"sourceSymbol": "e60ae7ea-298a-46cc-bd5b-116a19252460",
			"targetSymbol": "b5435b1c-93f9-4502-86e4-6b354db4c628",
			"object": "5bf14ad9-28bc-4b2f-a7e2-74083d2904bb"
		}
	}
}