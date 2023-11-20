//Maya ASCII 2020 scene
//Name: camera_rig.ma
//Last modified: Fri, Nov 05, 2021 12:16:49 AM
//Codeset: 1252
requires maya "2020";
requires -nodeType "VRaySettingsNode" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "5";
requires -nodeType "aiOptions" "mtoa" "4.0.2";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "5.00.20 c176659";
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "202002251615-329d215872";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19043)\n";
fileInfo "UUID" "7001AC68-434E-EB3C-4833-25B6DF2C1DEF";
createNode transform -s -n "persp";
	rename -uid "45452809-4271-E883-AC07-EA889F4BA5A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 124.15433352338223 59.134670752094429 51.01610572072353 ;
	setAttr ".r" -type "double3" -24.938352729599838 71.000000000000014 4.8846219108356701e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A6C4A256-4DDF-C39F-02F6-C0AE11E4CF23";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 142.92897827885386;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "8157CC37-46DA-C83C-B69B-B6897AD93DA6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3D5663B5-44E3-435B-EFCE-4CAE515E7FB0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "9D24ABDD-496C-B446-FBCE-969D5C57F4B4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A9FA39D1-460C-40BE-C38D-698D9CC595E3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "18B83BC3-4245-D508-B059-AF83B52E5CBA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8D847747-4411-B141-F966-EB8BE3BEA603";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode dagContainer -n "animBot";
	rename -uid "962CF0F0-4478-2893-61DA-3896171710CC";
	addAttr -ci true -sn "animBot" -ln "animBot" -nn "animBot" -dt "string";
	addAttr -ci true -sn "iconSimpleName" -ln "iconSimpleName" -dt "string";
	addAttr -s false -ci true -sn "tempNodes" -ln "tempNodes" -at "message";
	addAttr -s false -ci true -sn "animBot_Anim_Recovery_Scene_ID" -ln "animBot_Anim_Recovery_Scene_ID" 
		-at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".animBot" -type "string" "2.2.3";
	setAttr ".iconSimpleName" -type "string" "animBot";
createNode dagContainer -n "animBot_Anim_Recovery_Scene_ID" -p "animBot";
	rename -uid "2F2FDC87-4FFF-0573-F210-D9BFBFB4BE8D";
	addAttr -ci true -sn "animBot" -ln "animBot" -nn "animBot" -dt "string";
	addAttr -ci true -sn "iconSimpleName" -ln "iconSimpleName" -dt "string";
	addAttr -ci true -sn "sceneID" -ln "sceneID" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".animBot" -type "string" "2.2.3";
	setAttr ".iconSimpleName" -type "string" "anim_recovery";
	setAttr ".sceneID" -type "string" "1636067618.559000";
createNode transform -n "camera_rig";
	rename -uid "02A73DD5-48D6-4AE7-9D70-E3B78834920A";
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
createNode transform -n "CameraCtrl" -p "camera_rig";
	rename -uid "B4B9B168-42BA-0CB5-D466-7EAED9768EA9";
	addAttr -ci true -sn "Scale" -ln "Scale" -dv 1 -at "double";
	addAttr -ci true -sn "CameraTools" -ln "CameraTools" -min 0 -max 0 -en "__________" 
		-at "enum";
	addAttr -ci true -sn "Cam_Pan" -ln "Cam_Pan" -at "double";
	addAttr -ci true -sn "Cam_Tilt" -ln "Cam_Tilt" -at "double";
	addAttr -ci true -sn "CamRoll" -ln "CamRoll" -at "double";
	addAttr -ci true -sn "CameraRigTools" -ln "CameraRigTools" -min 0 -max 0 -en "__________" 
		-at "enum";
	addAttr -ci true -sn "Orient" -ln "Orient" -at "double";
	addAttr -ci true -sn "Truck_Left_Right" -ln "Truck_Left_Right" -at "double";
	addAttr -ci true -sn "DollyInOut" -ln "DollyInOut" -at "double";
	addAttr -ci true -sn "Crane_Height" -ln "Crane_Height" -at "double";
	addAttr -ci true -sn "Crane_Arm_Distance" -ln "Crane_Arm_Distance" -at "double";
	addAttr -ci true -sn "Boom" -ln "Boom" -at "double";
	addAttr -ci true -sn "AnimationPath" -ln "AnimationPath" -min 0 -max 0 -en "__________" 
		-at "enum";
	addAttr -ci true -sn "UValue" -ln "UValue" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "PathVisibility" -ln "PathVisibility" -min 0 -max 1 -en "Off:On" 
		-at "enum";
	addAttr -ci true -sn "CameraSettings" -ln "CameraSettings" -min 0 -max 0 -en "__________" 
		-at "enum";
	addAttr -ci true -sn "focalLength" -ln "focalLength" -dv 35 -at "double";
	addAttr -ci true -sn "NearClipPlane" -ln "NearClipPlane" -dv 0.1 -at "double";
	addAttr -ci true -sn "FarClipPlane" -ln "FarClipPlane" -dv 10000 -at "double";
	addAttr -ci true -sn "HorizontalFilmAperture" -ln "HorizontalFilmAperture" -dv 1.417 
		-at "double";
	addAttr -ci true -sn "VerticalFilmAperture" -ln "VerticalFilmAperture" -dv 0.945 
		-at "double";
	addAttr -ci true -sn "Shaker" -ln "Shaker" -at "double";
	addAttr -ci true -sn "Frequency" -ln "Frequency" -at "double";
	addAttr -ci true -sn "Amplitude" -ln "Amplitude" -at "double";
	addAttr -ci true -sn "Seed" -ln "Seed" -at "double";
	addAttr -ci true -sn "Aim" -ln "Aim" -min 0 -max 1 -en "Off:On" -at "enum";
	addAttr -ci true -sn "DepthOfField" -ln "DepthOfField" -min 0 -max 1 -en "Off:On" 
		-at "enum";
	addAttr -ci true -sn "FocusDistance" -ln "FocusDistance" -dv 5 -at "double";
	addAttr -ci true -sn "FStop" -ln "FStop" -dv 5.6 -at "double";
	addAttr -ci true -sn "FocusRegionScale" -ln "FocusRegionScale" -dv 1 -at "double";
	addAttr -ci true -sn "Steadicam" -ln "Steadicam" -min 0 -max 1 -en "Off:On" -at "enum";
	setAttr -k off ".v";
	setAttr ".ovc" 17;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.078190153749507108 -0.065505033710596031 0 ;
	setAttr ".sp" -type "double3" -0.078190153749507108 -0.065505033710596031 0 ;
	setAttr -k on ".Scale";
	setAttr -k on ".CameraTools";
	setAttr -k on ".Cam_Pan";
	setAttr -k on ".Cam_Tilt";
	setAttr -k on ".CamRoll";
	setAttr -k on ".CameraRigTools";
	setAttr -k on ".Orient";
	setAttr -k on ".Truck_Left_Right";
	setAttr -k on ".DollyInOut";
	setAttr -k on ".Crane_Height";
	setAttr -k on ".Crane_Arm_Distance";
	setAttr -k on ".Boom";
	setAttr -k on ".AnimationPath";
	setAttr -k on ".UValue";
	setAttr -k on ".PathVisibility";
	setAttr -k on ".CameraSettings";
	setAttr -k on ".focalLength";
	setAttr -k on ".NearClipPlane";
	setAttr -k on ".FarClipPlane";
	setAttr -k on ".HorizontalFilmAperture";
	setAttr -k on ".VerticalFilmAperture";
	setAttr -k on ".Shaker";
	setAttr -k on ".Frequency";
	setAttr -k on ".Amplitude";
	setAttr -k on ".Seed";
	setAttr -k on ".Aim";
	setAttr -k on ".DepthOfField";
	setAttr -k on ".FocusDistance" 10;
	setAttr -k on ".FStop" 5.4;
	setAttr -k on ".FocusRegionScale";
	setAttr -k on ".Steadicam";
createNode nurbsCurve -n "CameraCtrlShape" -p "CameraCtrl";
	rename -uid "2A882605-422C-58C0-5E24-99B47512C29B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		-1.970112683822828 -0.065505033710596017 -5.6757675902199596
		1.8137323763238076 -0.065505033710595989 -5.6757675902199569
		1.8137323763238076 -0.065505033710595989 -1.8919225300733189
		5.5975774364704431 -0.065505033710595961 -1.8919225300733185
		5.5975774364704431 -0.065505033710595961 1.8919225300733185
		1.8137323763238076 -0.065505033710595989 1.8919225300733189
		1.8137323763238076 -0.065505033710595989 5.6757675902199569
		-1.970112683822828 -0.065505033710596017 5.6757675902199596
		-1.970112683822828 -0.065505033710596017 1.89192253007332
		-5.7539577439694671 -0.065505033710596045 1.8919225300733209
		-5.7539577439694671 -0.065505033710596045 -1.8919225300733209
		-1.970112683822828 -0.065505033710596017 -1.89192253007332
		-1.970112683822828 -0.065505033710596017 -5.6757675902199596
		;
createNode transform -n "CamGrp" -p "CameraCtrl";
	rename -uid "9B228A0C-4D84-2B5A-5E9A-E48B08BE81CE";
	addAttr -ci true -k true -sn "blendOrient1" -ln "blendOrient1" -dv 1 -smn 0 -smx 
		1 -at "double";
	setAttr ".it" no;
	setAttr ".smd" 7;
createNode orientConstraint -n "CamGrp_orientConstraint1" -p "CamGrp";
	rename -uid "015C6384-47CB-4FED-07E7-5F903167BB50";
	addAttr -ci true -k true -sn "w0" -ln "CameraCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 89.999999999999972 0 ;
	setAttr -k on ".w0";
createNode transform -n "Cam_MotionGrp" -p "CamGrp";
	rename -uid "9CBA5019-4638-3C64-4A38-9B87180EAC2A";
	setAttr ".it" no;
	setAttr ".smd" 7;
createNode transform -n "OrientCrtl" -p "Cam_MotionGrp";
	rename -uid "7826AB2B-43E7-CE2A-D4C6-6EB3309A5000";
	addAttr -ci true -sn "SteadicamMode" -ln "SteadicamMode" -min 0 -max 1 -en "Off:On" 
		-at "enum";
	addAttr -ci true -sn "Twist" -ln "Twist" -min -100 -max 100 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -0.024300019303545639 -6.162975822039154e-33 -0.027503000000000055 ;
	setAttr ".sp" -type "double3" -0.024300019303545639 -6.162975822039154e-33 -0.027503000000000055 ;
createNode nurbsCurve -n "curveShape3" -p "OrientCrtl";
	rename -uid "9CE17AC4-4E74-376D-B3CF-119342FF4ED1";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-2.6983141346194559 5.1213004719173789e-33 -0.53429301627804549
		-3.9652856430860655 5.1213004719173789e-33 -0.53429301627804549
		-3.9652856430860655 5.1213004719173789e-33 -1.0410795003275903
		-5.232257151552683 5.1213004719173789e-33 -0.027502646777149933
		-3.9652856430860655 5.1213004719173789e-33 0.98607350032758956
		-3.9652856430860655 5.1213004719173789e-33 0.47928701627804471
		-2.6983141346194559 5.1213004719173789e-33 0.47928701627804471
		-2.6983141346194559 5.1213004719173789e-33 -0.53429301627804549
		;
createNode transform -n "Ctrls" -p "OrientCrtl";
	rename -uid "47093629-4F36-B954-A092-56A7269514E5";
createNode transform -n "Arm" -p "Ctrls";
	rename -uid "1ACCF92C-42EC-25EA-7405-CA865512E7DE";
createNode transform -n "armCtrl" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Arm";
	rename -uid "58B9A5A0-49EC-5627-D5AD-DABF018B3E35";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -3.522575145184057 7.5969152677223875 -0.59191825641255091 ;
	setAttr ".sp" -type "double3" -3.522575145184057 7.5969152677223875 -0.59191825641255091 ;
createNode parentConstraint -n "Arm_parentConstraint1" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Arm";
	rename -uid "9B37C010-4A43-A410-FFF6-EBBEB3868E1D";
	addAttr -ci true -k true -sn "w0" -ln "ArmW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.664331500340809 -7.5285755511923842 0 ;
	setAttr -k on ".w0";
createNode transform -n "Boom" -p "Ctrls";
	rename -uid "1A96B3BE-40EB-81B3-90D8-27BBD8DA7061";
createNode transform -n "boomCtrl" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Boom";
	rename -uid "DC8B0727-41CB-44FC-4290-568C0A698A70";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.3385220646978189 4.4653916736067787 1.0901812710792985e-15 ;
	setAttr ".sp" -type "double3" 1.3385220646978189 4.4653916736067787 1.0901812710792985e-15 ;
createNode parentConstraint -n "Boom_parentConstraint1" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Boom";
	rename -uid "A6B15FF8-43AC-3290-FB39-47B02579AB98";
	addAttr -ci true -k true -sn "w0" -ln "BoomW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -3.6429598583969822 0 ;
	setAttr -k on ".w0";
createNode transform -n "Pan" -p "Ctrls";
	rename -uid "D9BB97C8-4E8B-7A82-D3A5-D3B45ACC2A17";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "PanShape" -p "Pan";
	rename -uid "8175D5FC-463E-CAC1-A476-E8ACEE0A21DE";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		0 1.0593901376299992e-16 0.47710690290704422
		0.47710690290704422 1.0593901376299992e-16 0.47710690290704422
		0.95421380581408843 1.0593901376299992e-16 0.47710690290704422
		1.431320708721133 1.0593901376299992e-16 0.47710690290704422
		1.431320708721133 2.1187802752599983e-16 0.95421380581408843
		1.9084276116281771 1.0593901376299992e-16 0.47710690290704422
		2.3855345145352218 0 0
		1.9084276116281771 -1.0593901376299992e-16 -0.47710690290704422
		1.431320708721133 -2.1187802752599983e-16 -0.95421380581408843
		1.431320708721133 -1.0593901376299992e-16 -0.47710690290704422
		0.95421380581408843 -1.0593901376299992e-16 -0.47710690290704422
		0.47710690290704422 -1.0593901376299992e-16 -0.47710690290704422
		0 -1.0593901376299992e-16 -0.47710690290704422
		-0.47710690290704422 -1.0593901376299992e-16 -0.47710690290704422
		-0.95421380581408843 -1.0593901376299992e-16 -0.47710690290704422
		-1.431320708721133 -1.0593901376299992e-16 -0.47710690290704422
		-1.431320708721133 -2.1187802752599983e-16 -0.95421380581408843
		-1.9084276116281771 -1.0593901376299992e-16 -0.47710690290704422
		-2.3855345145352218 0 0
		-1.9084276116281771 1.0593901376299992e-16 0.47710690290704422
		-1.431320708721133 2.1187802752599983e-16 0.95421380581408843
		-1.431320708721133 1.0593901376299992e-16 0.47710690290704422
		-0.95421380581408843 1.0593901376299992e-16 0.47710690290704422
		-0.47710690290704422 1.0593901376299992e-16 0.47710690290704422
		0 1.0593901376299992e-16 0.47710690290704422
		;
createNode transform -n "Truck" -p "Ctrls";
	rename -uid "5F178088-4F95-24CE-0A01-53B2FB64C15B";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "TruckShape" -p "Truck";
	rename -uid "99DF5496-4FFB-2DFB-2552-C8AFBE472B8D";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		0.47710690290704422 1.0593901376299992e-16 1.0593901376299992e-16
		0.47710690290704438 1.0593901376299992e-16 -0.47710690290704416
		0.47710690290704449 1.0593901376299992e-16 -0.95421380581408843
		0.47710690290704466 1.0593901376299992e-16 -1.431320708721133
		0.95421380581408899 2.1187802752599983e-16 -1.4313207087211328
		0.47710690290704472 1.0593901376299992e-16 -1.9084276116281771
		5.2969506881499968e-16 0 -2.3855345145352218
		-0.47710690290704383 -1.0593901376299992e-16 -1.9084276116281771
		-0.95421380581408821 -2.1187802752599983e-16 -1.4313207087211333
		-0.47710690290704394 -1.0593901376299992e-16 -1.431320708721133
		-0.47710690290704411 -1.0593901376299992e-16 -0.95421380581408866
		-0.47710690290704416 -1.0593901376299992e-16 -0.47710690290704438
		-0.47710690290704422 -1.0593901376299992e-16 -1.0593901376299992e-16
		-0.47710690290704438 -1.0593901376299992e-16 0.47710690290704416
		-0.47710690290704449 -1.0593901376299992e-16 0.95421380581408843
		-0.47710690290704466 -1.0593901376299992e-16 1.431320708721133
		-0.95421380581408899 -2.1187802752599983e-16 1.4313207087211328
		-0.47710690290704472 -1.0593901376299992e-16 1.9084276116281771
		-5.2969506881499968e-16 0 2.3855345145352218
		0.47710690290704383 1.0593901376299992e-16 1.9084276116281771
		0.95421380581408821 2.1187802752599983e-16 1.4313207087211333
		0.47710690290704394 1.0593901376299992e-16 1.431320708721133
		0.47710690290704411 1.0593901376299992e-16 0.95421380581408866
		0.47710690290704416 1.0593901376299992e-16 0.47710690290704438
		0.47710690290704422 1.0593901376299992e-16 1.0593901376299992e-16
		;
createNode transform -n "Jib" -p "OrientCrtl";
	rename -uid "780837D5-46D4-8C56-EADC-ABBC673ED9D7";
createNode transform -n "Boom" -p "Jib";
	rename -uid "94C18F03-4569-F8F2-BB4E-A48A1C0A6EC3";
createNode transform -n "Boom" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom";
	rename -uid "2B7FD3EA-4C7F-B79D-4B27-78B5ED9DABA8";
	setAttr ".ove" yes;
	setAttr ".ovc" 2;
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 3.6429598583969822 0 ;
	setAttr ".sp" -type "double3" 0 3.6429598583969822 0 ;
createNode nurbsCurve -n "BoomShape" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom";
	rename -uid "1CE47ECA-4A51-E475-1263-F68CB8347636";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "BoomShape1Orig" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom";
	rename -uid "B310B8FC-4609-4604-2FD3-D3851FFFCE2A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.41758544690464738 7.2923981933614881 0.41758544690464738
		0.41758544690464738 7.2923981933614881 -0.41758544690464738
		-0.41758544690464738 7.2923981933614881 -0.41758544690464738
		-0.41758544690464738 7.2923981933614881 0.41758544690464738
		0.41758544690464738 7.2923981933614881 0.41758544690464738
		1 -0.0064784765675214295 1
		1 -0.0064784765675214295 -1
		0.41758544690464738 7.2923981933614881 -0.41758544690464738
		-0.41758544690464738 7.2923981933614881 -0.41758544690464738
		-1 -0.0064784765675214295 -1
		1 -0.0064784765675214295 -1
		-1 -0.0064784765675214295 -1
		-1 -0.0064784765675214295 1
		-0.41758544690464738 7.2923981933614881 0.41758544690464738
		-1 -0.0064784765675214295 1
		1 -0.0064784765675214295 1
		;
createNode transform -n "base_cluster_bufferGrp" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom";
	rename -uid "7E8BB851-4138-213C-873E-158496A9AC71";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 7.2723065423802273 0 ;
	setAttr ".sp" -type "double3" 0 7.2723065423802273 0 ;
	setAttr ".it" no;
createNode transform -n "base_cluster" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom|base_cluster_bufferGrp";
	rename -uid "6EFB84DD-4FE8-A335-DBE2-269F9F68D6CA";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 7.2167087609956724 0 ;
	setAttr ".sp" -type "double3" 0 7.2167087609956724 0 ;
createNode clusterHandle -n "base_clusterShape" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom|base_cluster_bufferGrp|base_cluster";
	rename -uid "A3939787-49F0-2C3E-ACBB-7DB1B9D5CE5C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "end_cluster_bufferGrp" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom";
	rename -uid "C5F3162B-48FF-4C82-B7BF-4EA744F1B792";
	setAttr ".it" no;
createNode transform -n "end_cluster" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom|end_cluster_bufferGrp";
	rename -uid "6631FA1F-43C1-D6F9-F69D-FC97C8F70463";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -0.12206644048447446 0 ;
createNode clusterHandle -n "end_clusterShape" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom|end_cluster_bufferGrp|end_cluster";
	rename -uid "888DF30C-41FF-B04C-5A1A-85918D5EBD0A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "Arm" -p "Jib";
	rename -uid "F527F533-48C2-50D0-722B-A2BB07E1170A";
	setAttr ".rp" -type "double3" 0 7.5767691632829886 0 ;
	setAttr ".sp" -type "double3" 0 7.5767691632829886 0 ;
createNode transform -n "RotateArm" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm";
	rename -uid "6CC310F5-4880-C941-B03B-EB9AAFF3CDA5";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr -l on -k off ".tx";
	setAttr -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0.47001076004020442 7.6320775493530766 0.00073749486181819699 ;
	setAttr ".sp" -type "double3" 0.47001076004020442 7.6320775493530766 0.00073749486181819699 ;
createNode transform -n "Arm" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm";
	rename -uid "F97CF1CB-49A8-AEF3-795B-86AC6F3E09A0";
	setAttr ".ove" yes;
	setAttr ".ovc" 2;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0.15914631685593728 7.5285755511923727 0.070050951726017274 ;
	setAttr ".sp" -type "double3" 0.15914631685593728 7.5285755511923727 0.070050951726017274 ;
createNode nurbsCurve -n "ArmShape" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm";
	rename -uid "B743A409-4C21-0666-F012-21808710ABC1";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode transform -n "base_cluster_bufferGrp" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm";
	rename -uid "0FEF80D1-46A2-E12B-3D4D-B8877297A1B6";
	setAttr ".rp" -type "double3" 0 7.5542196150100942 0 ;
	setAttr ".sp" -type "double3" 0 7.5542196150100942 0 ;
	setAttr ".it" no;
createNode transform -n "base_cluster" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|base_cluster_bufferGrp";
	rename -uid "AB843048-4BFD-8B07-CB19-9F994A5B7DC2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -0.24463470755871872 0 ;
	setAttr ".rp" -type "double3" 0 8.1262136051524614 0 ;
	setAttr ".sp" -type "double3" 0 8.1262136051524614 0 ;
createNode clusterHandle -n "base_clusterShape" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|base_cluster_bufferGrp|base_cluster";
	rename -uid "54B1EC3E-4B3B-6FDF-228E-0DB175F8F1A3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode nurbsCurve -n "ArmShapeOrig" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm";
	rename -uid "DD2581A8-47C9-0C48-7163-E49B2E78607A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-3.8928683249569072 8.3253945813346775 0.17960700321056261
		-3.8928683249569072 8.3253945813346775 -0.17960700321056261
		-3.8928683249569072 7.8575910077332418 -0.17960700321056261
		-3.8928683249569072 7.8575910077332418 0.17960700321056261
		-3.8928683249569072 8.3253945813346775 0.17960700321056261
		0.38955843603041518 8.4145684089138015 0.43010838749745656
		0.38955843603041518 8.4145684089138015 -0.43010838749745656
		-3.8928683249569072 8.3253945813346775 -0.17960700321056261
		-3.8928683249569072 7.8575910077332418 -0.17960700321056261
		0.38955843603041507 7.8452398262054386 -0.43010838749745656
		0.38955843603041518 8.4145684089138015 -0.43010838749745656
		0.38955843603041507 7.8452398262054386 -0.43010838749745656
		0.38955843603041507 7.8452398262054386 0.43010838749745656
		-3.8928683249569072 7.8575910077332418 0.17960700321056261
		0.38955843603041507 7.8452398262054386 0.43010838749745656
		0.38955843603041518 8.4145684089138015 0.43010838749745656
		;
createNode transform -n "end_cluster_bufferGrp" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm";
	rename -uid "A4D5D3D9-42E2-768F-4ECA-4FA5E9526C66";
	setAttr ".rp" -type "double3" -3.4688046649466511 7.52697399721729 0 ;
	setAttr ".sp" -type "double3" -3.4688046649466511 7.52697399721729 0 ;
createNode transform -n "end_cluster" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp";
	rename -uid "6A1C8C2F-46BE-65AF-C67B-3BAEA184520D";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -1.3503549606744307 7.8047892455448338 0 ;
	setAttr ".sp" -type "double3" -1.3503549606744307 7.8047892455448338 0 ;
	setAttr ".it" no;
createNode clusterHandle -n "end_clusterShape" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp|end_cluster";
	rename -uid "261349B0-4BEE-3ADE-1D73-3DB6727C955D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode parentConstraint -n "end_cluster_bufferGrp_parentConstraint1" -p "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp";
	rename -uid "C9E8DFF7-4C54-49A6-534B-EFB10E118CF5";
	addAttr -ci true -k true -sn "w0" -ln "armCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7051478693162321 -0.069941270505096576 0.59191825641255091 ;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 8.8817841970012523e-16 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Cam_MotionGrp_orientConstraint1" -p "Cam_MotionGrp";
	rename -uid "707E7BD0-4243-F55D-97EE-418ED38A2481";
	addAttr -ci true -k true -sn "w0" -ln "CamGrpW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 89.999999999999972 0 ;
	setAttr ".rsrr" -type "double3" 0 -68.899124783275923 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Cam_MotionGrp_scaleConstraint1" -p "Cam_MotionGrp";
	rename -uid "90B7B22B-44D2-E62E-BAA0-089C2501405B";
	addAttr -ci true -k true -sn "w0" -ln "CameraCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "SliderGrp" -p "CameraCtrl";
	rename -uid "DFC33EC4-4CBF-47CF-41E3-7C9D7DA6A168";
	setAttr ".t" -type "double3" -4.6360900280522417 -0.065505033710596017 0 ;
createNode transform -n "Trail_Ctrls" -p "SliderGrp";
	rename -uid "BFFC3892-4198-DB56-80F0-A0A0D635BA6C";
	setAttr ".t" -type "double3" 1.5240900280522416 0 0 ;
createNode transform -n "First_clusterCtrl" -p "Trail_Ctrls";
	rename -uid "4A632FD5-4AF4-588F-2B67-30BF2D223C6E";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.8179099522314228 -3.5527136788005009e-15 5.5511151231257827e-17 ;
	setAttr ".sp" -type "double3" 7.8179099522314228 -3.5527136788005009e-15 5.5511151231257827e-17 ;
createNode nurbsCurve -n "First_clusterCtrlShape" -p "First_clusterCtrl";
	rename -uid "BBCDD7C1-49BD-A214-C855-F5AD5DA5A478";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.8179099522314228 0.3869602738652243 -0.38696027386522719
		7.8179099522314228 -3.536376179756834e-15 -0.54724446739981181
		7.8179099522314228 -0.38696027386523085 -0.38696027386522747
		7.8179099522314228 -0.54724446739981536 -1.5857775567687201e-16
		7.8179099522314228 -0.38696027386523102 0.3869602738652273
		7.8179099522314228 -3.6388375675655755e-15 0.54724446739981192
		7.8179099522314228 0.38696027386522369 0.38696027386522747
		7.8179099522314228 0.54724446739980825 2.9392607096908283e-16
		7.8179099522314228 0.3869602738652243 -0.38696027386522719
		7.8179099522314228 -3.536376179756834e-15 -0.54724446739981181
		7.8179099522314228 -0.38696027386523085 -0.38696027386522747
		;
createNode transform -n "Second_clusterCtrl" -p "Trail_Ctrls";
	rename -uid "AA5CB230-494A-4D16-46C0-0C88BADAB3F2";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 10.943816290992316 -3.5527136788005009e-15 5.5511151231257827e-17 ;
	setAttr ".sp" -type "double3" 10.943816290992316 -3.5527136788005009e-15 5.5511151231257827e-17 ;
createNode nurbsCurve -n "Second_clusterCtrlShape" -p "Second_clusterCtrl";
	rename -uid "C5587667-42CA-46BB-206A-4DB1C64589E8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.943816290992316 0.3869602738652243 -0.38696027386522719
		10.943816290992316 -3.536376179756834e-15 -0.54724446739981181
		10.943816290992316 -0.38696027386523085 -0.38696027386522747
		10.943816290992316 -0.54724446739981536 -1.5857775567687201e-16
		10.943816290992316 -0.38696027386523102 0.3869602738652273
		10.943816290992316 -3.6388375675655755e-15 0.54724446739981192
		10.943816290992316 0.38696027386522369 0.38696027386522747
		10.943816290992316 0.54724446739980825 2.9392607096908283e-16
		10.943816290992316 0.3869602738652243 -0.38696027386522719
		10.943816290992316 -3.536376179756834e-15 -0.54724446739981181
		10.943816290992316 -0.38696027386523085 -0.38696027386522747
		;
createNode transform -n "Third_clusterCtrl" -p "Trail_Ctrls";
	rename -uid "CC462C15-4648-6FE0-2A45-B1B10A4BDA72";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 14.12592003345709 -3.5527136788005009e-15 5.5511151231257827e-17 ;
	setAttr ".sp" -type "double3" 14.12592003345709 -3.5527136788005009e-15 5.5511151231257827e-17 ;
createNode nurbsCurve -n "Third_clusterCtrlShape" -p "Third_clusterCtrl";
	rename -uid "0B3617CD-4FBB-60FE-F50D-E29E59010D6D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		14.12592003345709 0.3869602738652243 -0.38696027386522719
		14.12592003345709 -3.536376179756834e-15 -0.54724446739981181
		14.12592003345709 -0.38696027386523085 -0.38696027386522747
		14.12592003345709 -0.54724446739981536 -1.5857775567687201e-16
		14.12592003345709 -0.38696027386523102 0.3869602738652273
		14.12592003345709 -3.6388375675655755e-15 0.54724446739981192
		14.12592003345709 0.38696027386522369 0.38696027386522747
		14.12592003345709 0.54724446739980825 2.9392607096908283e-16
		14.12592003345709 0.3869602738652243 -0.38696027386522719
		14.12592003345709 -3.536376179756834e-15 -0.54724446739981181
		14.12592003345709 -0.38696027386523085 -0.38696027386522747
		;
createNode transform -n "Fourth_clusterCtrl" -p "Trail_Ctrls";
	rename -uid "F11CBB01-48D3-5C0A-6732-79A72C4CCD34";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 16.209363621669517 -3.5527136788005009e-15 5.5511151231257827e-17 ;
	setAttr ".sp" -type "double3" 16.209363621669517 -3.5527136788005009e-15 5.5511151231257827e-17 ;
createNode nurbsCurve -n "Fourth_clusterCtrlShape" -p "Fourth_clusterCtrl";
	rename -uid "9CB31A58-4BEA-4902-DC6D-6F9B8B6AD4C4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		16.209363621669517 0.3869602738652243 -0.38696027386522719
		16.209363621669517 -3.536376179756834e-15 -0.54724446739981181
		16.209363621669517 -0.38696027386523085 -0.38696027386522747
		16.209363621669517 -0.54724446739981536 -1.5857775567687201e-16
		16.209363621669517 -0.38696027386523102 0.3869602738652273
		16.209363621669517 -3.6388375675655755e-15 0.54724446739981192
		16.209363621669517 0.38696027386522369 0.38696027386522747
		16.209363621669517 0.54724446739980825 2.9392607096908283e-16
		16.209363621669517 0.3869602738652243 -0.38696027386522719
		16.209363621669517 -3.536376179756834e-15 -0.54724446739981181
		16.209363621669517 -0.38696027386523085 -0.38696027386522747
		;
createNode transform -n "End_clusterCtrl" -p "Trail_Ctrls";
	rename -uid "8C014206-40E8-8C34-0C29-6AB0C8F26AAC";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 17.240754905534978 -3.5527136788005009e-15 1.1102230246251563e-16 ;
	setAttr ".sp" -type "double3" 17.240754905534978 -3.5527136788005009e-15 1.1102230246251563e-16 ;
createNode nurbsCurve -n "End_clusterCtrlShape" -p "End_clusterCtrl";
	rename -uid "2E2A864F-417F-6A48-5E07-2CB206509657";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.5955104258362862 0 0 1.5955104258362862 
		0 0 1.5955104258362862 0 0 1.5955104258362862 0 0 1.5955104258362862 0 0 1.5955104258362862 
		0 0 1.5955104258362862 0 0 1.5955104258362862 0 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "Trail" -p "SliderGrp";
	rename -uid "25E0A2E4-4CF1-AB31-08C4-53A683E52614";
	setAttr ".rp" -type "double3" 9.4670740534306468 0.00055855602597354448 0 ;
	setAttr ".sp" -type "double3" 9.4670740534306468 0.00055855602597354448 0 ;
	setAttr ".it" no;
createNode nurbsCurve -n "TrailShape" -p "Trail";
	rename -uid "969C320B-48F2-0F29-0A8D-468E0EAF6F11";
	setAttr -k off ".v";
	setAttr -s 16 ".iog[0].og";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode transform -n "orientationMarker1" -p "TrailShape";
	rename -uid "F8800D26-4A0A-4DFD-5FD0-82A7A7A5A71D";
createNode orientationMarker -n "orientationMarkerShape1" -p "orientationMarker1";
	rename -uid "64288B17-4D96-1928-F5A0-7FAAE1799EF2";
	setAttr -k off ".v";
	setAttr ".uwo" yes;
	setAttr ".t" 1;
createNode nurbsCurve -n "TrailShapeOrig" -p "Trail";
	rename -uid "5977E974-44D2-807D-6D5E-DAAC2B9A9B73";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		2.9896042269208181 0.00055855602601884158 0
		4.0691825313390702 0.00055855602602683518 0
		6.2283391401756951 0.00055855602601706522 0
		9.4670740534310021 0.00055855602591226017 0
		12.705808966685368 0.00055855602603571697 0
		14.86496557552209 0.00055855602597709719 0
		15.944543879940476 0.0005585560259397937 0
		;
createNode transform -n "cameraCtrlGrp" -p "CameraCtrl";
	rename -uid "4B2C2B1B-45DF-61F5-E2CA-BB8044B8E175";
	setAttr ".t" -type "double3" -3.1472670786712307 0.00010355338209411258 8.2099146271569416e-05 ;
	setAttr ".r" -type "double3" -0.00078327030570912693 0.13337778894233246 -0.33646987051165211 ;
	setAttr ".rp" -type "double3" 0 6.0055223519448333 0 ;
	setAttr ".rpt" -type "double3" 0.035267078671230447 -0.00010355338209480617 -8.2099146271569443e-05 ;
	setAttr ".sp" -type "double3" 0 6.0055223519448333 0 ;
createNode transform -n "grp_camera_crane" -p "cameraCtrlGrp";
	rename -uid "3E140973-451A-3AC5-BC02-B3A20897A450";
	addAttr -ci true -sn "companyName" -ln "companyName" -dt "string";
	addAttr -ci true -sn "projectName" -ln "projectName" -dt "string";
	addAttr -ci true -sn "artist" -ln "artist" -dt "string";
	addAttr -ci true -sn "shot" -ln "shot" -dt "string";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -1.1102230246251563e-16 -0.27570005603095615 -0.6583940005266542 ;
	setAttr ".rpt" -type "double3" -0.65676182702534902 -0.0038616263467650602 0.65686131222568778 ;
	setAttr ".sp" -type "double3" -1.1102230246251563e-16 -0.27570005603095615 -0.6583940005266542 ;
	setAttr ".it" no;
	setAttr -k on ".companyName" -type "string" "Class of 2014";
	setAttr -k on ".projectName" -type "string" "Project Name";
	setAttr -k on ".artist" -type "string" "Your Name";
	setAttr -k on ".shot" -type "string" "###_##";
createNode nurbsCurve -n "grp_camera_craneShape" -p "grp_camera_crane";
	rename -uid "1A5E4FB4-46C9-F491-A6C4-41B2DB333B2F";
	addAttr -ci true -sn "LODVis" -ln "LODVis" -min 0 -max 1 -at "long";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 40 0 no 3
		41 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40
		41
		-0.22321273079942075 0.53130812201652966 1.0080500157509502
		-0.22321273079942075 0.7556584824064978 0.98133127841242462
		-0.22321273079942075 0.98234289031015054 0.89134919064141149
		-0.22321273079942075 1.2106735819683123 0.75674529227649745
		-0.44642546159884405 1.2116188633725018 0.7311238478200548
		1.5082115353483705e-15 1.6686216400566318 0.45266273120863865
		0.44642546159884766 1.2116188633725018 0.7311238478200548
		0.22321273079942489 1.2106735819683123 0.75674529227649745
		0.22321273079942489 0.98234289031015054 0.89134919064141149
		0.22321273079942489 0.7556584824064978 0.98133127841242462
		0.22321273079942489 0.53130812201652966 1.0080500157509502
		0.44642546159884766 0.5325975274301552 0.97310123855019692
		0.66963819239827083 0.53622096740068392 0.8748894621049158
		0.89285092319769277 0.54149067978853727 0.73205618235520098
		0.89285092319769277 0.76549691940826514 0.71466468996399701
		1.3392763847965352 0.33025584217547332 0.4032843357720659
		0.89285092319769277 -0.12674695880262166 0.68174611086090864
		0.89285092319769277 0.095368740683094103 0.71559689280365713
		0.66963819239827083 0.090099028295240455 0.85843017255337284
		0.44642546159884766 0.086475588324711597 0.9566419489986534
		0.22321273079942489 0.085186182911086414 0.99159072619940591
		0.22321273079942489 -0.13658539580438869 0.9484126993093358
		0.22321273079942489 -0.35602292700617905 0.84197132198677804
		0.22321273079942489 -0.57381417445346139 0.69090813407032003
		0.44642546159884766 -0.57286889304927224 0.66528668961387893
		1.5082115353483705e-15 -1.0081099945760277 0.35390699389937463
		-0.44642546159884405 -0.57286889304927224 0.66528668961387893
		-0.22321273079942075 -0.57381417445346139 0.69090813407032003
		-0.22321273079942075 -0.35602292700617905 0.84197132198677804
		-0.22321273079942075 -0.13658539580438869 0.9484126993093358
		-0.22321273079942075 0.085186182911086414 0.99159072619940591
		-0.44642546159884405 0.086475588324711597 0.9566419489986534
		-0.66963819239826605 0.090099028295240455 0.85843017255337284
		-0.89285092319769044 0.095368740683094103 0.71559689280365713
		-0.89285092319769044 -0.12674695880262166 0.68174611086090864
		-1.3392763847965354 0.33025584217547332 0.4032843357720659
		-0.89285092319769044 0.76549691940826514 0.71466468996399701
		-0.89285092319769044 0.54149067978853727 0.73205618235520098
		-0.66963819239826605 0.53622096740068392 0.8748894621049158
		-0.44642546159884405 0.5325975274301552 0.97310123855019692
		-0.22321273079942075 0.53130812201652966 1.0080500157509502
		;
	setAttr -k on ".LODVis";
createNode transform -n "camera_settings" -p "grp_camera_crane";
	rename -uid "EAD344FF-4EA0-CE30-A9C8-38A9E26AF833";
	addAttr -ci true -sn "focalLength" -ln "focalLength" -dv 35 -min 1 -max 100 -at "double";
	addAttr -ci true -sn "nearClipPlane" -ln "nearClipPlane" -dv 0.1 -min 0.1 -at "double";
	addAttr -ci true -sn "farClipPlane" -ln "farClipPlane" -dv 10000 -min 0.1 -at "double";
	addAttr -ci true -sn "HorizontalFilmAperture" -ln "HorizontalFilmAperture" -dv 1.417 
		-at "double";
	addAttr -ci true -sn "VerticalFilmAperture" -ln "VerticalFilmAperture" -dv 0.945 
		-at "double";
	addAttr -ci true -sn "FStop" -ln "FStop" -dv 5.6 -at "double";
	addAttr -ci true -sn "Aim_Values" -ln "Aim_Values" -min 0 -max 1 -at "long";
	addAttr -ci true -sn "Shaker" -ln "Shaker" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Frequency" -ln "Frequency" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Amplitude" -ln "Amplitude" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Seed" -ln "Seed" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Aim" -ln "Aim" -min 0 -max 1 -en "Off:On" -at "enum";
	addAttr -ci true -sn "SteadicamMode" -ln "SteadicamMode" -min 0 -max 1 -en "Off:On" 
		-at "enum";
	addAttr -ci true -sn "Twist" -ln "Twist" -min -100 -max 100 -at "long";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".tx";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.013114545319449888 -0.39351077411470081 0.61817804309038515 ;
	setAttr ".rpt" -type "double3" -1.1102230246251563e-16 0 -1.0769163338864018e-14 ;
	setAttr ".sp" -type "double3" -0.013114545319449888 -0.39351077411470081 0.61817804309038515 ;
	setAttr ".it" no;
	setAttr -k on ".focalLength";
	setAttr -k on ".nearClipPlane";
	setAttr -k on ".farClipPlane";
	setAttr -k on ".HorizontalFilmAperture";
	setAttr -k on ".VerticalFilmAperture";
	setAttr -k on ".FStop";
	setAttr -k on ".Shaker";
	setAttr -k on ".Frequency";
	setAttr -k on ".Amplitude";
	setAttr -k on ".Seed";
	setAttr -k on ".Aim";
	setAttr -k on ".SteadicamMode";
	setAttr -k on ".Twist";
createNode parentConstraint -n "Attributes_parentConstraint1" -p "camera_settings";
	rename -uid "CCB6E030-4B21-2D6C-7A1E-58BCB8EB9EDB";
	addAttr -ci true -k true -sn "w0" -ln "camera1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.013114545319449944 -0.39220702307730138 
		0.29386183817307104 ;
	setAttr ".tg[0].tor" -type "double3" -0.48460309137853008 0 0 ;
	setAttr ".lr" -type "double3" 7.3788868609953592e-13 180 0 ;
	setAttr ".rst" -type "double3" -5.5511151231257827e-17 4.6350851481183781 2.2204460492503131e-16 ;
	setAttr ".rsrr" -type "double3" -9.9392333795734879e-16 0 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "camera_settings_scaleConstraint1" -p "camera_settings";
	rename -uid "A8044BDB-451E-352F-01B5-3D947460A2C0";
	addAttr -ci true -k true -sn "w0" -ln "camera_animW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "camerOrientZeroGrp" -p "grp_camera_crane";
	rename -uid "F7D17388-4819-B7E9-3DA7-AFB4130D0B13";
createNode transform -n "cameraOrientGrp" -p "camerOrientZeroGrp";
	rename -uid "232F1FA4-4F6D-0E97-DD8A-20915BD7499F";
	setAttr ".t" -type "double3" 1.3877787807814457e-17 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode lookAt -n "renderCam_group" -p "cameraOrientGrp";
	rename -uid "52C866B2-4F3E-3A04-8A6C-29B2B1A5D2DE";
	addAttr -ci true -sn "Shaker" -ln "Shaker" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Frequency" -ln "Frequency" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Amplitude" -ln "Amplitude" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Seed" -ln "Seed" -min 0 -max 10 -at "double";
	setAttr ".t" -type "double3" 6.9388939039072284e-17 0.26581416466655128 -1.3788540603544734 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".db" 5.0001788463369294;
	setAttr ".dc" no;
	setAttr -k on ".Shaker";
	setAttr -k on ".Frequency";
	setAttr -k on ".Amplitude";
	setAttr -k on ".Seed";
createNode transform -n "crane_cam" -p "renderCam_group";
	rename -uid "D5F01B88-4A74-7DDF-D7A7-23A1EBEBD421";
	setAttr ".ove" yes;
	setAttr ".ovc" 1;
	setAttr ".lodv" no;
	setAttr ".t" -type "double3" 0 -0.042290605993633434 0 ;
createNode transform -n "drv_aim_control" -p "renderCam_group";
	rename -uid "6677E07C-4ED0-A29C-307F-39B8C20D2741";
createNode transform -n "aim_control" -p "drv_aim_control";
	rename -uid "9105966F-439C-5492-A5EE-6CAB6225E9EA";
	setAttr ".t" -type "double3" 1.3877787807814457e-17 0 0 ;
createNode transform -n "renderCam_aim" -p "aim_control";
	rename -uid "EC0BBD35-431A-B566-65CD-00837FEEA675";
	setAttr ".t" -type "double3" 1.3877787807814457e-17 0 0 ;
	setAttr ".rp" -type "double3" 1.3877787807814457e-17 8.8817841970012523e-16 -5 ;
	setAttr ".sp" -type "double3" 1.3877787807814457e-17 8.8817841970012523e-16 -5 ;
	setAttr ".drp" yes;
createNode locator -n "renderCam_aimShape" -p "renderCam_aim";
	rename -uid "26821D84-4BB6-6A4C-A70A-3A86A78E8537";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 0 -5 ;
	setAttr ".los" -type "double3" 0.59999999999999987 0.59999999999999987 0.59999999999999987 ;
createNode orientConstraint -n "cameraOrientGrp_orientConstraint1" -p "cameraOrientGrp";
	rename -uid "48DEEE0E-4A91-43CD-1CF7-9BBFDB7ABA83";
	addAttr -ci true -k true -sn "w0" -ln "OrientCrtlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -0.00078327030569069907 -179.86662221105766 0.33646987051693744 ;
	setAttr ".o" -type "double3" 0 90 0 ;
	setAttr ".rsrr" -type "double3" 68.375918902799626 -89.638058839245261 -68.376310540798244 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "camera_anim_parentConstraint1" -p "grp_camera_crane";
	rename -uid "6540B668-49F9-2FD0-D5A2-0B80A74308B1";
	addAttr -ci true -k true -sn "w0" -ln "end_cluster_bufferGrpW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.54903534519087915 -1.959481905030882 0.083322600365304367 ;
	setAttr ".tg[0].tor" -type "double3" 1.0673943982639133e-14 89.866619911177082 0.33646895883627492 ;
	setAttr ".lr" -type "double3" -0.33646987051693744 179.86662221105763 -0.00078327030569069907 ;
	setAttr ".rst" -type "double3" -0.18147254015222691 5.781548740853534 0.082018005374825842 ;
	setAttr ".rsrr" -type "double3" 0 89.866619911177082 0.33646895883627514 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "camera_anim_scaleConstraint1" -p "grp_camera_crane";
	rename -uid "DD05B266-4D2C-53EB-CA4A-D4BC5E9B996D";
	addAttr -ci true -k true -sn "w0" -ln "CameraCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Clusters" -p "camera_rig";
	rename -uid "E12B045F-41F0-94A3-858A-AD97F44A103A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.112 0 0 ;
createNode transform -n "cluster5Handle" -p "Clusters";
	rename -uid "89C1F09C-4DAF-5545-9C6F-2988D6F41860";
	setAttr ".rp" -type "double3" 2.9896042269208181 0.00055855602601884158 0 ;
	setAttr ".sp" -type "double3" 2.9896042269208181 0.00055855602601884158 0 ;
createNode clusterHandle -n "cluster5HandleShape" -p "cluster5Handle";
	rename -uid "6532B493-483D-5F7A-EAFE-96914B954313";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 2.9896042269208181 0.00055855602601884158 0 ;
createNode pointConstraint -n "cluster5Handle_pointConstraint1" -p "cluster5Handle";
	rename -uid "17FDBC4B-4967-C70E-62FD-49B4B67DDDE3";
	addAttr -ci true -k true -sn "w0" -ln "CameraCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.044205619329674928 -0.066063589736614872 0 ;
	setAttr -k on ".w0";
createNode transform -n "cluster6Handle" -p "Clusters";
	rename -uid "73BA6F96-4D81-577E-29F2-EEA21C03E26C";
	setAttr ".rp" -type "double3" 4.0691825313390702 0.00055855602602683518 0 ;
	setAttr ".sp" -type "double3" 4.0691825313390702 0.00055855602602683518 0 ;
createNode clusterHandle -n "cluster6HandleShape" -p "cluster6Handle";
	rename -uid "BF029D3E-41A0-4FC7-81A1-09891FAB21CA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 4.0691825313390702 0.00055855602602683518 0 ;
createNode pointConstraint -n "cluster6Handle_pointConstraint1" -p "cluster6Handle";
	rename -uid "8BDB2793-4281-C820-E4E1-FA93622B0F24";
	addAttr -ci true -k true -sn "w0" -ln "CameraCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1.0353726850885772 -0.066063589736622866 0 ;
	setAttr -k on ".w0";
createNode transform -n "cluster7Handle" -p "Clusters";
	rename -uid "BE7CBB81-4A1F-C049-C6D5-A8A9AB638C84";
	setAttr ".rp" -type "double3" 6.2283391401756951 0.00055855602601706522 0 ;
	setAttr ".sp" -type "double3" 6.2283391401756951 0.00055855602601706522 0 ;
createNode clusterHandle -n "cluster7HandleShape" -p "cluster7Handle";
	rename -uid "5E9A9D32-4BBB-02D2-A32E-51949C7F3A64";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 6.2283391401756951 0.00055855602601706522 0 ;
createNode parentConstraint -n "cluster7Handle_parentConstraint1" -p "cluster7Handle";
	rename -uid "7E524049-4842-AA29-317D-99807ECBE972";
	addAttr -ci true -k true -sn "w0" -ln "First_clusterCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.0059396137805620697 0.066063589736616551 
		0 ;
	setAttr -k on ".w0";
createNode transform -n "cluster8Handle" -p "Clusters";
	rename -uid "89E3CFCB-46F9-BB86-0FAE-79BF3B0511B3";
	setAttr ".rp" -type "double3" 9.4670740534310021 0.00055855602591226017 0 ;
	setAttr ".sp" -type "double3" 9.4670740534310021 0.00055855602591226017 0 ;
createNode clusterHandle -n "cluster8HandleShape" -p "cluster8Handle";
	rename -uid "8E20EAED-461A-F0B8-DC6E-1881497EC81C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 9.4670740534310021 0.00055855602591226017 0 ;
createNode parentConstraint -n "cluster8Handle_parentConstraint1" -p "cluster8Handle";
	rename -uid "0944E16A-46CC-8E9F-1AA3-32AA56A5BB0C";
	addAttr -ci true -k true -sn "w0" -ln "Second_clusterCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.11876818827497536 0.066063589736511746 0 ;
	setAttr -k on ".w0";
createNode transform -n "cluster9Handle" -p "Clusters";
	rename -uid "4405D086-486C-3203-A846-B29DF8F1618B";
	setAttr ".rp" -type "double3" 12.705808966685368 0.00055855602603571697 0 ;
	setAttr ".sp" -type "double3" 12.705808966685368 0.00055855602603571697 0 ;
createNode clusterHandle -n "cluster9HandleShape" -p "cluster9Handle";
	rename -uid "9C90CEBA-4EB3-B992-BE58-99BA2529148C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 12.705808966685368 0.00055855602603571697 0 ;
createNode parentConstraint -n "cluster9Handle_parentConstraint1" -p "cluster9Handle";
	rename -uid "3E82E6C7-4EFF-8795-C9F2-A1825A97E87E";
	addAttr -ci true -k true -sn "w0" -ln "Third_clusterCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.17539935906456705 0.066063589736635203 0 ;
	setAttr -k on ".w0";
createNode transform -n "cluster10Handle" -p "Clusters";
	rename -uid "ED9A6050-4BD5-C63E-2749-E0B6C7EC8D6C";
	setAttr ".rp" -type "double3" 14.86496557552209 0.00055855602597709719 0 ;
	setAttr ".sp" -type "double3" 14.86496557552209 0.00055855602597709719 0 ;
createNode clusterHandle -n "cluster10HandleShape" -p "cluster10Handle";
	rename -uid "553D6B2B-4AC8-E2F3-F434-B6B7BE8BEC9A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 14.86496557552209 0.00055855602597709719 0 ;
createNode parentConstraint -n "cluster10Handle_parentConstraint1" -p "cluster10Handle";
	rename -uid "9806CC0D-4AE8-6217-CF20-AAAC5678D2AC";
	addAttr -ci true -k true -sn "w0" -ln "Fourth_clusterCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.25111237968885369 0.066063589736576583 0 ;
	setAttr -k on ".w0";
createNode transform -n "cluster11Handle" -p "Clusters";
	rename -uid "270E394A-417D-5E4D-4B4A-AEAE45050129";
	setAttr ".rp" -type "double3" 15.944543879940476 0.0005585560259397937 0 ;
	setAttr ".sp" -type "double3" 15.944543879940476 0.0005585560259397937 0 ;
createNode clusterHandle -n "cluster11HandleShape" -p "cluster11Handle";
	rename -uid "6E828AEC-4D1E-D5FE-0A38-D69BF607ACD6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 15.944543879940476 0.0005585560259397937 0 ;
createNode parentConstraint -n "cluster11Handle_parentConstraint1" -p "cluster11Handle";
	rename -uid "E812A88D-4CF4-3463-6A4D-A3828B2BF9A4";
	addAttr -ci true -k true -sn "w0" -ln "End_clusterCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.29929940024178592 0.06606358973653928 0 ;
	setAttr -k on ".w0";
createNode transform -n "Steadicam" -p "camera_rig";
	rename -uid "2D4E9904-43BB-CB57-8AE8-30B11FA89BDD";
createNode transform -n "grp_rendercam_steadicam" -p "Steadicam";
	rename -uid "F537DD61-4CA5-1257-60D3-E4A3400E959B";
	setAttr ".rp" -type "double3" -4.8087759839683315 6.2155781680427165 0.084855288666270512 ;
	setAttr ".sp" -type "double3" -4.8087759839683315 6.2155781680427165 0.084855288666270512 ;
createNode transform -n "shotcam" -p "grp_rendercam_steadicam";
	rename -uid "16B67572-4C79-D3D8-2113-90AFE75E34B1";
	setAttr ".t" -type "double3" -4.8087759839683315 6.2155781680427182 0.084855288666270567 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 2.7755575615628914e-17 0 0 ;
	setAttr ".sp" -type "double3" 2.7755575615628914e-17 0 0 ;
createNode camera -n "shotcamShape" -p "shotcam";
	rename -uid "F30BCDFC-469F-7D11-A543-41997A401DAD";
	addAttr -ci true -k true -sn "oCt" -ln "octCamType" -nn "Octane camera type" -min 
		0 -max 2 -en "Thin lens:Panoramic:Baking" -at "enum";
	addAttr -ci true -k true -sn "oBrt" -ln "octBokehRot" -nn "Bokeh rotation" -min 
		0 -max 1 -at "float";
	addAttr -ci true -k true -sn "oBrn" -ln "octBokehRound" -nn "Bokeh roundedness" 
		-dv 1 -min 0 -max 1 -at "float";
	addAttr -ci true -k true -sn "oBsc" -ln "octBokehSideCnt" -nn "Bokeh side count" 
		-dv 6 -min 3 -max 100 -smn 3 -smx 12 -at "long";
	addAttr -ci true -k true -sn "oMsmp" -ln "octMaxSamples" -nn "Max. samples override" 
		-min 0 -max 64000 -at "long";
	addAttr -ci true -k true -sn "mbsm" -ln "octMBtimeSamples" -nn "MB time samples override" 
		-min 0 -max 100 -at "long";
	addAttr -ci true -k true -sn "oUpF" -ln "octUsePickFocus" -nn "Use Pick Focus region" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "oAp" -ln "octAperture" -nn "Aperture" -dv 1 -min 0 
		-max 100 -at "float";
	addAttr -ci true -k true -sn "oApE" -ln "octApertureEdge" -nn "Aperture Edge" -dv 
		1 -min 1 -max 3 -at "float";
	addAttr -ci true -k true -sn "oDs" -ln "octDistortion" -nn "Distortion" -min 0 -max 
		1 -at "float";
	addAttr -ci true -k true -sn "oPc" -ln "octPerspCorr" -nn "Persp. correction" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "oSt" -ln "octStereo" -nn "Stereo" -dv 1 -min 1 -max 
		2 -en "off-axis=1:parallel" -at "enum";
	addAttr -ci true -k true -sn "oStO" -ln "octStereoOut" -nn "Stereo output" -min 
		0 -max 5 -en "Disabled:Left:Right:Side-by-Side:Anaglyphic:Over-under" -at "enum";
	addAttr -ci true -k true -sn "oStD" -ln "octStereoDist" -nn "Stereo distance" -dv 
		0.064999997615814209 -min 0 -at "float";
	addAttr -ci true -k true -sn "oSDFo" -ln "octStereoDistFo" -nn "Stereo dist. falloff" 
		-dv 1 -min 0.0010000000474974513 -max 1 -at "float";
	addAttr -ci true -uac -k true -sn "oLF" -ln "octLeftFilter" -nn "Left Filter" -at "float3" 
		-nc 3;
	addAttr -ci true -k true -sn "oLFr" -ln "octLeftFilterR" -dv 1 -at "float" -p "octLeftFilter";
	addAttr -ci true -k true -sn "oLFg" -ln "octLeftFilterG" -at "float" -p "octLeftFilter";
	addAttr -ci true -k true -sn "oLFb" -ln "octLeftFilterB" -dv 0.81199997663497925 
		-at "float" -p "octLeftFilter";
	addAttr -ci true -uac -k true -sn "oRF" -ln "octRightFilter" -nn "Right Filter" 
		-at "float3" -nc 3;
	addAttr -ci true -k true -sn "oRFr" -ln "octRightFilterR" -at "float" -p "octRightFilter";
	addAttr -ci true -k true -sn "oRFg" -ln "octRightFilterG" -dv 1 -at "float" -p "octRightFilter";
	addAttr -ci true -k true -sn "oRFb" -ln "octRightFilterB" -dv 0.18799999356269836 
		-at "float" -p "octRightFilter";
	addAttr -ci true -k true -sn "oswey" -ln "octSwapEyes" -nn "Persp. correction" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "octLensShift" -ln "octLensShift" -nn "Lens Shift" 
		-at "float2" -nc 2;
	addAttr -ci true -k true -sn "oLShX" -ln "octLensShiftX" -min -4 -max 4 -at "float" 
		-p "octLensShift";
	addAttr -ci true -k true -sn "oLShY" -ln "octLensShiftY" -min -4 -max 4 -at "float" 
		-p "octLensShift";
	addAttr -ci true -k true -sn "oFD" -ln "octFocalDepth" -nn "Focal Depth" -dv 100 
		-min 0.0010000000474974513 -max 100000 -at "float";
	addAttr -ci true -k true -sn "oNcD" -ln "octNearClipDepth" -nn "Near clip Depth" 
		-dv 0.0099999997764825821 -min 1.0000000116860974e-07 -max 1000000 -at "float";
	addAttr -ci true -k true -sn "oAF" -ln "octAutoFocus" -nn "Auto Focus" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "oPa" -ln "octPixelAspect" -nn "Pixel aspect ratio" -dv 1 -min 
		0.10000000149011612 -max 10 -at "float";
	addAttr -ci true -sn "oAa" -ln "octApertureAspect" -nn "Aperture aspect ratio" -dv 
		1 -min 0.10000000149011612 -max 10 -at "float";
	addAttr -ci true -k true -sn "oPt" -ln "octPanType" -nn "Panoramic type" -min 0 
		-max 8 -en "Spherical:Cylindrical:Cube map:Cube map (+X):Cube map (-X):Cube map (+Y):Cube map (-Y):Cube map (+Z):Cube map (-Z)" 
		-at "enum";
	addAttr -ci true -k true -sn "oFx" -ln "octFovX" -nn "FOV X" -dv 360 -min 1 -max 
		360 -at "float";
	addAttr -ci true -k true -sn "oFy" -ln "octFovY" -nn "FOV Y" -dv 180 -min 1 -max 
		180 -at "float";
	addAttr -ci true -k true -sn "oKur" -ln "octKeepUpright" -nn "Keep upright" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "oBoL" -ln "octBlackoutLat" -nn "Pano blackout latitude" 
		-dv 90 -min 1 -max 90 -at "float";
	addAttr -ci true -k true -sn "oBGrId" -ln "octBakGroupId" -nn "Baking group ID" 
		-dv 1 -min 1 -max 65535 -at "long";
	addAttr -ci true -k true -sn "oUvS" -ln "octUVset" -nn "UV set" -dv 1 -min 1 -max 
		3 -at "long";
	addAttr -ci true -k true -sn "oRBak" -ln "octRevBaking" -nn "Revert baking" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "oPad" -ln "octPadding" -nn "Padding size" -dv 4 -min 
		0 -max 16 -at "long";
	addAttr -ci true -k true -sn "oTol" -ln "octTolerance" -nn "Edge noise tolerance" 
		-dv 0.5 -min 0 -max 1 -at "float";
	addAttr -ci true -k true -sn "oBubm" -ln "octBakUvBoxMin" -nn "UV box min." -at "float2" 
		-nc 2;
	addAttr -ci true -k true -sn "oBubm0" -ln "octBakUvBoxMin0" -at "float" -p "octBakUvBoxMin";
	addAttr -ci true -k true -sn "oBubm1" -ln "octBakUvBoxMin1" -at "float" -p "octBakUvBoxMin";
	addAttr -ci true -k true -sn "oBubs" -ln "octBakUvBoxSize" -nn "UV box size" -at "float2" 
		-nc 2;
	addAttr -ci true -k true -sn "oBubs0" -ln "octBakUvBoxSize0" -dv 1 -at "float" -p "octBakUvBoxSize";
	addAttr -ci true -k true -sn "oBubs1" -ln "octBakUvBoxSize1" -dv 1 -at "float" -p "octBakUvBoxSize";
	addAttr -ci true -k true -sn "oubps" -ln "octUseBakPosition" -nn "Use baking position" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "oBFcul" -ln "octCamBfCulling" -nn "Backface culling" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "oEx" -ln "octExposure" -nn "Exposure" -dv 1 -min 0.0010000000474974513 
		-max 4096 -at "float";
	addAttr -ci true -k true -sn "oGm" -ln "octGamma" -nn "Gamma" -dv 1 -min 0.10000000149011612 
		-max 32 -at "float";
	addAttr -ci true -k true -sn "oRs" -ln "octResponse" -nn "Response" -dv 105 -min 
		99 -max 400 -en "Agfa|Agfacolor Futura 100CD=99:Agfa|Agfacolor Futura 200CD:Agfa|Agfacolor Futura 400CD:Agfa|Agfacolor Futura II 100CD:Agfa|Agfacolor Futura II 200CD:Agfa|Agfacolor Futura II 400CD:Agfa|Agfacolor HDC 100 plusCD:Agfa|Agfacolor HDC 200 plusCD:Agfa|Agfacolor HDC 400 plusCD:Agfa|Agfacolor Optima II 100CD:Agfa|Agfacolor Optima II 200CD:Agfa|Agfacolor ultra 050 CD:Agfa|Agfacolor Vista 100CD:Agfa|Agfacolor_Vista 200CD:Agfa|Agfacolor Vista 400CD:Agfa|Agfacolor Vista 800CD:Agfa|Agfachrome CT precisa 100CD:Agfa|Agfachrome CT precisa 200CD:Agfa|Agfachrome RSX2 050CD:Agfa|Agfachrome RSX2 100CD:Agfa|Agfachrome RSX2 200CD:Kodak|Advantix 100CD=201:Kodak|Advantix 200CD:Kodak|Advantix 400CD:Kodak|Gold 100CD:Kodak|Gold 200CD:Kodak|Max Zoom_800CD:Kodak|Portra 100TCD:Kodak|Portra 160NCCD:Kodak|Portra 160VCCD:Kodak|Portra 800CD:Kodak|Portra 400VCCD:Kodak|Portra 400NCCD:Kodak|Ektachrome 100 plusCD:Kodak|Ektachrome 320TCD:Kodak|Ektachrome 400XCD:Kodak|Ektachrome 64CD:Kodak|Ektachrome 64TCD:Kodak|Ektachrome E100SCD:Kodak|Ektachrome 100CD:Kodak|Kodachrome 200CD:Kodak|Kodachrome 25:Kodak|Kodachrome 64CD:Misc.|F125CD=301:Misc.|F250CD:Misc.|F400CD:Misc.|FCICD:Misc.|dscS315_1:Misc.|dscS315_2:Misc.|dscS315_3:Misc.|dscS315_4:Misc.|dscS315_5:Misc.|dscS315_6:Misc.|FP2900Z:Linear/Off=400" 
		-at "enum";
	addAttr -ci true -k true -sn "oVg" -ln "octVignetting" -nn "Vignetting" -dv 0.30000001192092896 
		-min 0 -max 1 -at "float";
	addAttr -ci true -k true -sn "oStr" -ln "octSaturation" -nn "Saturation" -dv 1 -min 
		0 -max 4 -at "float";
	addAttr -ci true -k true -sn "oHp" -ln "octHotPixelRemoval" -nn "Hot pixel removal" 
		-dv 1 -min 0 -max 1 -at "float";
	addAttr -ci true -k true -sn "oPmA" -ln "octPremultipliedAlpha" -nn "Premultiplied alpha" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "oMDS" -ln "octMinDisplaySamples" -nn "Min display samples" 
		-dv 1 -min 1 -max 32 -at "long";
	addAttr -ci true -k true -sn "oDth" -ln "octDithering" -nn "Dithering" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -k true -sn "oWs" -ln "octWhiteSaturation" -nn "White saturation" 
		-min 0 -max 1 -at "float";
	addAttr -ci true -uac -k true -sn "oWB" -ln "octWhiteBalance" -nn "White balance" 
		-at "float3" -nc 3;
	addAttr -ci true -k true -sn "oWBr" -ln "octWhiteBalanceR" -dv 1 -at "float" -p "octWhiteBalance";
	addAttr -ci true -k true -sn "oWBg" -ln "octWhiteBalanceG" -dv 1 -at "float" -p "octWhiteBalance";
	addAttr -ci true -k true -sn "oWBb" -ln "octWhiteBalanceB" -dv 1 -at "float" -p "octWhiteBalance";
	addAttr -ci true -k true -sn "oPpE" -ln "octCamPPenabled" -nn "Enabled" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -k true -sn "oPpBp" -ln "octCamPPbloomPower" -nn "Bloom power" 
		-dv 1 -min 0.0010000000474974513 -max 100000 -smx 20 -at "float";
	addAttr -ci true -k true -sn "oPpGp" -ln "octCamPPglarePower" -nn "Glare power" 
		-dv 0.10000000149011612 -min 0.0010000000474974513 -max 100000 -smx 20 -at "float";
	addAttr -ci true -k true -sn "oPpGrc" -ln "octCamPPglareRayCnt" -nn "Glare ray count" 
		-dv 3 -min 1 -max 8 -at "long";
	addAttr -ci true -k true -sn "oPpGa" -ln "octCamPPglareAngle" -nn "Glare angle" 
		-dv 15 -min -90 -max 90 -at "float";
	addAttr -ci true -k true -sn "oPpGb" -ln "octCamPPglareBlur" -nn "Glare blur" -dv 
		0.0010000000474974513 -min 0.0010000000474974513 -max 0.20000000298023224 -at "float";
	addAttr -ci true -k true -sn "oPpSi" -ln "octCamPPspInt" -nn "Spectral Intensity" 
		-min 0 -max 1 -at "float";
	addAttr -ci true -k true -sn "oPpSs" -ln "octCamPPspSh" -nn "Spectral Shift" -dv 
		2 -min 0 -max 6 -at "float";
	addAttr -ci true -k true -sn "ohlc" -ln "octHLcomp" -nn "Highlight compression" 
		-min 0 -max 1 -at "float";
	addAttr -ci true -k true -sn "oNrsp" -ln "octNeutralResp" -nn "Neutral response" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "oMtmi" -ln "octMaxTonemapInt" -nn "Max. tonemap interval" 
		-dv 20 -min 1 -max 120 -at "long";
	addAttr -ci true -k true -sn "oDpal" -ln "octDisPartAlpha" -nn "Disable partial alpha" 
		-min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".rnd" no;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".fd" 10;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dgo" 0.97000002861022949;
	setAttr ".dr" yes;
	setAttr ".dsa" yes;
	setAttr ".dgc" -type "float3" 0 0 0 ;
	setAttr ".ai_translator" -type "string" "perspective";
createNode parentConstraint -n "grp_rendercam_steadicam_parentConstraint1" -p "grp_rendercam_steadicam";
	rename -uid "9077CBB2-4699-06B5-F486-AF827E7EB359";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "c_steadicamW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 2.2204460492503131e-16 8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" -89.515396908620687 -3.2302508483613843e-15 
		-1.4124500153760508e-30 ;
	setAttr ".lr" -type "double3" 0.4846030913792847 89.999999999999986 0 ;
	setAttr ".rst" -type "double3" 0.055213054395247596 -0.21050586851645736 -2.7755575615628914e-17 ;
	setAttr ".rsrr" -type "double3" 0.48460309137928925 90 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "grp_steadicam_scaleConstraint1" -p "Steadicam";
	rename -uid "2FE02CE7-4157-2BB7-DC23-AD943E8D44A5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "CameraCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "grp_c_steadicam" -p "Steadicam";
	rename -uid "E88F8834-4CCF-5BA5-3B81-A5AB36E9DAB1";
createNode transform -n "grp_drv_steadicam" -p "grp_c_steadicam";
	rename -uid "58F39DFF-4996-5B29-0601-9E912F9AFDBE";
	setAttr ".r" -type "double3" 2.2263882770244621e-14 -9.5416640443905456e-15 -2.2263882770244621e-14 ;
createNode transform -n "c_steadicam" -p "grp_drv_steadicam";
	rename -uid "81A879B0-47A3-220F-0986-85BC21F4E07F";
createNode nurbsCurve -n "c_steadicamShape" -p "c_steadicam";
	rename -uid "87477A53-4500-3E81-741A-F7A5601A11E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".cc" -type "nurbsCurve" 
		1 32 0 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		2.1645877558142467e-17 1.7949687322099153 -1.001567000000001
		-0.33663800000000016 2.1228547322099152 -0.75117500000000093
		-0.095983500000000138 2.1228547322099152 -0.75117500000000093
		-0.095983500000000138 2.2954267322099153 -0.50078300000000087
		-0.095983500000000138 2.3989697322099151 -0.098765600000000134
		-0.50078300000000009 2.2954267322099153 -0.098765600000000134
		-0.75117500000000015 2.1228547322099152 -0.098765600000000134
		-0.75117500000000015 2.1228547322099152 -0.33663800000000088
		-1.0015670000000001 1.7949687322099153 -1.6627151933683379e-16
		-0.75117500000000015 2.1228547322099152 0.3366379999999991
		-0.75117500000000015 2.1228547322099152 0.098765599999999856
		-0.50078300000000009 2.2954267322099153 0.098765599999999856
		-0.095983500000000138 2.3989697322099151 0.098765599999999856
		-0.095983500000000138 2.2954267322099153 0.50078299999999909
		-0.095983500000000138 2.1228547322099152 0.75117499999999915
		-0.33663800000000016 2.1228547322099152 0.75117499999999915
		2.1645877558142467e-17 1.7949687322099153 1.0015669999999992
		0.33663799999999983 2.1228547322099152 0.75117499999999915
		0.095983499999999861 2.1228547322099152 0.75117499999999915
		0.095983499999999861 2.2954267322099153 0.50078299999999909
		0.095983499999999861 2.3989697322099151 0.098765599999999856
		0.50078299999999987 2.2954267322099153 0.098765599999999856
		0.75117499999999993 2.1228547322099152 0.098765599999999856
		0.75117499999999993 2.1228547322099152 0.3366379999999991
		1.0015670000000001 1.7949687322099153 -1.6627151933683379e-16
		0.75117499999999993 2.1228547322099152 -0.33663800000000088
		0.75117499999999993 2.1228547322099152 -0.098765600000000134
		0.50078299999999987 2.2954267322099153 -0.098765600000000134
		0.095983499999999861 2.3989697322099151 -0.098765600000000134
		0.095983499999999861 2.2954267322099153 -0.50078300000000087
		0.095983499999999861 2.1228547322099152 -0.75117500000000093
		0.33663799999999983 2.1228547322099152 -0.75117500000000093
		2.1645877558142467e-17 1.7949687322099153 -1.001567000000001
		;
createNode parentConstraint -n "grp_c_steadicam_parentConstraint1" -p "grp_c_steadicam";
	rename -uid "AE544D3E-4B60-AAFA-B826-8498A3FDAD38";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "renderCamW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.3877787807814457e-17 0 8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 89.515396908620687 6.3877823936055923e-15 3.126639809898141e-15 ;
	setAttr ".lr" -type "double3" 89.999999999999972 89.999999999999972 0 ;
	setAttr ".rst" -type "double3" -4.753562929573083 6.00507229952626 0.08485528866627047 ;
	setAttr ".rsrr" -type "double3" 89.999999999999972 90 0 ;
	setAttr -k on ".w0";
createNode dagContainer -n "camera_rig_animBot";
	rename -uid "35E1C8A7-4AC7-3D71-390D-C3B3D546B4F1";
	addAttr -ci true -sn "animBot" -ln "animBot" -nn "animBot" -dt "string";
	addAttr -ci true -sn "iconSimpleName" -ln "iconSimpleName" -dt "string";
	addAttr -s false -ci true -sn "tempNodes" -ln "tempNodes" -at "message";
	addAttr -s false -ci true -sn "animBot_Anim_Recovery_Scene_ID" -ln "animBot_Anim_Recovery_Scene_ID" 
		-at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".animBot" -type "string" "2.2.3";
	setAttr ".iconSimpleName" -type "string" "animBot";
createNode dagContainer -n "camera_rig_animBot_Anim_Recovery_Scene_ID" -p "camera_rig_animBot";
	rename -uid "FB5826FA-47FC-58FD-E5A1-CEB52B347D1D";
	addAttr -ci true -sn "animBot" -ln "animBot" -nn "animBot" -dt "string";
	addAttr -ci true -sn "iconSimpleName" -ln "iconSimpleName" -dt "string";
	addAttr -ci true -sn "sceneID" -ln "sceneID" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".animBot" -type "string" "2.2.3";
	setAttr ".iconSimpleName" -type "string" "anim_recovery";
	setAttr ".sceneID" -type "string" "1636062808.835000";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D589A15F-4EFB-717E-F4EE-5B8642389309";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "6D1EF547-48A7-A6A5-8805-909A7E60BF21";
	setAttr ".gi" yes;
	setAttr ".rfc" yes;
	setAttr ".pe" 2;
	setAttr ".se" 3;
	setAttr ".cmph" 60;
	setAttr ".cfile" -type "string" "";
	setAttr ".cfile2" -type "string" "";
	setAttr ".casf" -type "string" "";
	setAttr ".casf2" -type "string" "";
	setAttr ".st" 3;
	setAttr ".msr" 6;
	setAttr ".aaft" 3;
	setAttr ".aafs" 2;
	setAttr ".dma" 24;
	setAttr ".dam" 1;
	setAttr ".pt" 0.0099999997764825821;
	setAttr ".pmt" 0;
	setAttr ".sd" 1000;
	setAttr ".ss" 0.01;
	setAttr ".pfts" 20;
	setAttr ".ufg" yes;
	setAttr ".fnm" -type "string" "";
	setAttr ".lcfnm" -type "string" "";
	setAttr ".asf" -type "string" "";
	setAttr ".lcasf" -type "string" "";
	setAttr ".urtrshd" yes;
	setAttr ".rtrshd" 2;
	setAttr ".lightCacheType" 1;
	setAttr ".ifile" -type "string" "";
	setAttr ".ifile2" -type "string" "";
	setAttr ".iasf" -type "string" "";
	setAttr ".iasf2" -type "string" "";
	setAttr ".pmfile" -type "string" "";
	setAttr ".pmfile2" -type "string" "";
	setAttr ".pmasf" -type "string" "";
	setAttr ".pmasf2" -type "string" "";
	setAttr ".dmcstd" yes;
	setAttr ".dmculs" no;
	setAttr ".dmcsat" 0.004999999888241291;
	setAttr ".cmtp" 6;
	setAttr ".cmao" 2;
	setAttr ".cg" 2.2000000476837158;
	setAttr ".mtah" yes;
	setAttr ".rgbcs" -1;
	setAttr ".suv" 0;
	setAttr ".srflc" 1;
	setAttr ".srdml" 0;
	setAttr ".seu" yes;
	setAttr ".gormio" yes;
	setAttr ".gocle" yes;
	setAttr ".gopl" 2;
	setAttr ".wi" 960;
	setAttr ".he" 540;
	setAttr ".aspr" 1.7777780294418335;
	setAttr ".productionGPUResizeTextures" 0;
	setAttr ".autolt" 0;
	setAttr ".jpegq" 100;
	setAttr ".vfbOn" yes;
	setAttr ".mSceneName" -type "string" "I:/Unterrichte/CameraAnimation/camera_rig.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0D22EF3E-478A-A1B9-3E2F-1CB4CE6F9285";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D3E64E1B-42A4-DA00-D61F-31AA28613B05";
createNode displayLayerManager -n "layerManager";
	rename -uid "8969795A-486A-C65F-A830-F3AD49EE4501";
createNode displayLayer -n "defaultLayer";
	rename -uid "6953D0DB-43A2-9A5C-4790-6FA309AB1229";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "AB09E919-4A65-7009-7FE7-CD8D63946AAE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "AEA91B8A-46C4-8544-D675-B99835218744";
	setAttr ".g" yes;
createNode hyperLayout -n "hyperLayout1";
	rename -uid "B9DB40F3-4E3F-7F47-D5B0-E29C71F2B005";
	setAttr ".ihi" 0;
createNode addDoubleLinear -n "addDoubleLinear1";
	rename -uid "8C7C359E-488A-3A87-7DE9-67A7E07F6CF0";
createNode motionPath -n "motionPath2";
	rename -uid "9EA4146B-405B-27C7-1FD0-FBAD7CE94D87";
	setAttr ".if" yes;
	setAttr ".fa" 2;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode animCurveTA -n "motionPath2_frontTwist";
	rename -uid "A3F4F3D5-466F-C264-36E6-C5A729F472C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "motionPath2_upTwist";
	rename -uid "8E388FDE-47BA-5722-9E7F-FBB47AAB1219";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "motionPath2_sideTwist";
	rename -uid "96FE3299-4C28-0512-DFD3-33A34526326A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode addDoubleLinear -n "addDoubleLinear2";
	rename -uid "71C173A5-4553-FFAB-189A-3A9B76377127";
createNode addDoubleLinear -n "addDoubleLinear3";
	rename -uid "464FD2D6-45A0-4C52-311E-91A4BF64DAB4";
createNode unitConversion -n "unitConversion5";
	rename -uid "5A0A90C5-4E08-85AD-C24B-5B8F46D564F1";
	setAttr ".cf" -0.017;
createNode cluster -n "end_clusterCluster";
	rename -uid "5F83814F-42C5-75D7-975E-23A7AC8F8BE0";
	setAttr ".gm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster1Set";
	rename -uid "87431AF8-481C-A0FF-966C-9BA7EC6D15FE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId3";
	rename -uid "8BCE7F98-4607-8ED6-2CAC-728F195707CB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "64333FE7-45B9-F28E-7834-47AC37F8BCE3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "cv[5:6]" "cv[9:12]" "cv[14:15]";
createNode cluster -n "base_clusterCluster";
	rename -uid "19B5FEB6-45CF-AEE1-98BB-5EB1265755D7";
	setAttr ".gm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster2Set";
	rename -uid "026C1E98-4EDF-7390-7098-A393C85E9566";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId1";
	rename -uid "AF9EF007-4D7A-7E3C-4CC2-80BB7DE28C0B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "8DF113A4-4394-C7CE-5606-6B8F8E751EF1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "cv[0:4]" "cv[7:8]" "cv[13]";
createNode tweak -n "tweak1";
	rename -uid "1A472265-4DC5-5116-6BED-CDB443B0008D";
createNode objectSet -n "tweakSet1";
	rename -uid "3B4AA5DC-427C-2A85-262B-9A90A7E03C4D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "91977FED-467B-D174-3E7B-DCBB6301EE17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "019E445A-4EF1-F9B5-C802-37863B9A8FBC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion6";
	rename -uid "2FDE2D37-4C9D-FFD4-B326-B59B4ADC933D";
	setAttr ".cf" -0.018;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "9C5E2542-483C-9984-3860-008F0C45697A";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.27654171174868303 0 1;
createNode cluster -n "end_clusterCluster1";
	rename -uid "57051244-4FA4-225B-055F-24AC70DD3F68";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster4Set";
	rename -uid "F2FB3866-447F-9EA8-B8EF-C280D2246C7C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	rename -uid "976D973A-4B71-3D59-BF87-BCB8DCF239F0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "E20AE6C3-4083-DFAA-6EF1-78AB02AD45EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "cv[0:4]" "cv[7:8]" "cv[13]";
createNode cluster -n "base_clusterCluster1";
	rename -uid "22DDA507-46E8-5886-0E29-F09D10FC6C58";
	setAttr ".gm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster3Set";
	rename -uid "A70D648F-4BD7-64C4-267A-81A8037D5408";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "1BC55C55-46F1-257A-1CE1-AF81D9792E66";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "721F2E7B-4DEE-0CE0-D1F6-579F4B1CE629";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "cv[5:6]" "cv[9:12]" "cv[14:15]";
createNode tweak -n "tweak2";
	rename -uid "62830026-46E4-9371-CAF1-81AE75D83D7E";
createNode objectSet -n "tweakSet2";
	rename -uid "0A445678-41E6-5DE1-2A15-52B5F8EB87B6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId5";
	rename -uid "42FDE399-4EF5-30E9-D70F-3CA45018F051";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "64D2A584-47AB-7408-DF32-E1914899BCA8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "end_cluster_bufferGrp_parentConstraint1_armCtrlW0";
	rename -uid "0CA073D8-4EB3-7656-8983-CFADB3B58633";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode transformGeometry -n "transformGeometry13";
	rename -uid "DF3DBFF9-4359-B1A1-D14A-CAACFA7AF854";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0 0
		 0 0 1 0 15.645244479698691 -3.4739421294502221e-15 0 1;
createNode makeNurbCircle -n "makeNurbCircle13";
	rename -uid "4C9A3A73-481D-6AD0-1DE9-5083C18B500F";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 0.0001;
createNode cluster -n "cluster11";
	rename -uid "420A417F-42E1-E09E-F3F1-108808F0E6F7";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster11Set";
	rename -uid "2AAC0753-4E69-A17E-107A-9FB541D84C1C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster11GroupId";
	rename -uid "25CB899F-4B00-DDD9-648E-76879A738F0A";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster11GroupParts";
	rename -uid "36155896-45E4-719A-49CF-1F90FF212661";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[6]";
createNode cluster -n "cluster10";
	rename -uid "0D965494-4CD5-26D5-3D80-8A91B51ABD5F";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster10Set";
	rename -uid "EAA923BD-458C-CDBA-4E59-11BECFB1D7F1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster10GroupId";
	rename -uid "9000521F-421C-A483-8EC4-87BFAD878ACB";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster10GroupParts";
	rename -uid "99006DB6-440D-F561-8AE8-329EF5C00972";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[5]";
createNode cluster -n "cluster9";
	rename -uid "7C0A0FFA-430B-29A0-53B7-2AB837AE0D8E";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster9Set";
	rename -uid "53D0F6A8-4333-3C07-18B6-0EBCF72EA242";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster9GroupId";
	rename -uid "4F617DAE-4329-BC23-4688-D5B446AB51C0";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster9GroupParts";
	rename -uid "F958B33C-4864-4D25-67A4-A98D07BD2AD4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[4]";
createNode cluster -n "cluster8";
	rename -uid "93336841-414D-E0F2-33FD-F5A8C5F7D84D";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster8Set";
	rename -uid "F9F12C5D-4F6A-28E6-03EA-5DB54060BD27";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster8GroupId";
	rename -uid "12AE7C3F-4049-0879-A79E-4DA3670C3AEF";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster8GroupParts";
	rename -uid "A2E39333-4976-C31F-861A-46862D3E0F0F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[3]";
createNode cluster -n "cluster7";
	rename -uid "8C236EE7-4616-EEDA-1DDD-2EB270F807B0";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster7Set";
	rename -uid "D0901DD2-4F9A-31CC-A932-1BB17AEA6561";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster7GroupId";
	rename -uid "C75FA642-48A9-E6FE-5E59-FCBE344BD5A1";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster7GroupParts";
	rename -uid "3C164B87-4FC8-C728-7EDB-AEBF5F4E0427";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[2]";
createNode cluster -n "cluster6";
	rename -uid "0C01DAB3-402A-809E-2BDA-158F365056F8";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster6Set";
	rename -uid "8645E35F-46FA-FADB-6E76-DF9B8F6FD2E2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster6GroupId";
	rename -uid "DC49C8D2-4042-57CD-1429-90AC77AA7B65";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster6GroupParts";
	rename -uid "EB33DAEB-40E0-7E3D-9234-968EE1BE4A93";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1]";
createNode cluster -n "cluster5";
	rename -uid "78A10F8E-4751-63FB-6F23-D69F60E0F2A2";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster5Set";
	rename -uid "A1A13BE5-43D2-27B1-A8A5-BDB29EB192F6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster5GroupId";
	rename -uid "E7CEE7D3-419B-C2A8-2112-3A86392094DF";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster5GroupParts";
	rename -uid "94B2FD85-42A0-8D8C-8E82-628E6EDA0A3D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0]";
createNode tweak -n "tweak3";
	rename -uid "8AF6FC80-4D57-1315-92D1-BDBC03B2DCF2";
createNode objectSet -n "tweakSet3";
	rename -uid "AF4EA7DD-467D-382A-DFAB-4B8A0E6144EA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	rename -uid "DCD16A37-421F-0B08-09A1-DDA0C79DABD1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "4075BEA3-4BE0-7A2C-5737-21A778949340";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "camera_animShape_LODVis";
	rename -uid "CDD7E96F-4A3A-F504-36FB-1E8E8FA638CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode animCurveUA -n "camerOrientZeroGrp_rotateY";
	rename -uid "FA80A17E-491A-105E-962F-88BA3977FD59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 90;
createNode unitConversion -n "unitConversion4";
	rename -uid "0AAAA924-4662-F579-E1BC-66BD9C0A261B";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion1";
	rename -uid "82839373-4950-FAEB-2797-A5BA67954500";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "camShaker";
	rename -uid "51DFFE93-4DF3-A047-67A2-A69089FA105B";
	setAttr -k on ".nds";
	setAttr -s 3 ".in";
	setAttr -s 3 ".in";
	setAttr -s 3 ".out";
	setAttr ".ixp" -type "string" "float $mult = .I[0];\nfloat $amp = .I[1];\nfloat $freq = .I[2];\nfloat $seed = 2;\n\nvector $noise = <<(frame * ($freq * .1) + $seed), (frame * ($freq * .1) + $seed), (frame * ($freq * .1) + $seed)>>;\nvector $cameraShake = (dnoise($noise) * $amp * .05) * $mult;\n\n.O[0] = $cameraShake.x;\n.O[1] = $cameraShake.y;\n.O[2] = $cameraShake.z;";
createNode unitConversion -n "unitConversion2";
	rename -uid "BD4BFA7D-4EEB-51BF-6AE0-DE95ECFE2D5C";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion3";
	rename -uid "D6A05F34-4A26-5362-EB42-5E85D242B180";
	setAttr ".cf" 0.017453292519943295;
createNode animCurveUU -n "cameraOrientGrp_orientConstraint1_OrientCrtlW0";
	rename -uid "6FC9AE85-465A-D8E4-7A69-47AD569D86B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "EDCE5EE3-4A69-7AAF-17B1-EC9CD5475B34";
	setAttr ".version" -type "string" "2.1.0.1";
createNode animCurveUU -n "Jib_visibility";
	rename -uid "1BC39C12-4CF6-F370-BB98-02AB650BDAEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode animCurveUU -n "Ctrls_visibility";
	rename -uid "4546C9AD-4504-FECE-97DF-54B6DDBD9930";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode animCurveUU -n "grp_c_steadicam_visibility";
	rename -uid "2C1D5F97-4497-5E85-7B65-95AFFA3D373A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode unitConversion -n "unitConversion12";
	rename -uid "F0652715-4946-16F8-28EC-58A75CAAF177";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion13";
	rename -uid "CBF65EDB-4BCD-85A1-A65A-2A8F36959C7A";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion14";
	rename -uid "8F87F417-47FE-3590-0941-9A8FB240C3D1";
	setAttr ".i" 0;
	setAttr ".cf" 0.017453292519943295;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "61CDB829-48C3-9DE7-31DD-8FB7AB2D43D6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"perPolygonSort\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2756\n            -height 1002\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"perPolygonSort\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2756\\n    -height 1002\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"perPolygonSort\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2756\\n    -height 1002\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "69D1A12D-4619-A4C5-8268-098E76B93D10";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "B9D46ADB-4B66-5B96-9E76-619E12D142D8";
	setAttr ".i2" -type "float3" -1 -1 1 ;
createNode hyperLayout -n "camera_rig_hyperLayout1";
	rename -uid "9B85579B-4E9F-7B32-68AC-A9B7715ADAF6";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "Truck_MDI";
	rename -uid "5655911D-4621-3757-3AC4-D6AB4F77141F";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "31A0A3EC-4AFD-18D6-C503-C6B186DEE26A";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 788.79830634012342 -290.66518046256135 ;
	setAttr ".tgi[0].vh" -type "double2" 1663.0369974342398 500.25978530492398 ;
	setAttr -s 5 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1145.381103515625;
	setAttr ".tgi[0].ni[0].y" 413.613525390625;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" 1170;
	setAttr ".tgi[0].ni[1].y" -262.85714721679688;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1432.6878662109375;
	setAttr ".tgi[0].ni[2].y" 313.19979858398438;
	setAttr ".tgi[0].ni[2].nvs" 18306;
	setAttr ".tgi[0].ni[3].x" 1170;
	setAttr ".tgi[0].ni[3].y" -132.85714721679688;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 862.85711669921875;
	setAttr ".tgi[0].ni[4].y" 1155.7142333984375;
	setAttr ".tgi[0].ni[4].nvs" 18306;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av ".unw" 1;
	setAttr -k on ".etw";
	setAttr -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off ".ctrs" 256;
	setAttr -av -k off ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr "hyperLayout1.msg" "animBot.hl";
connectAttr "animBot_Anim_Recovery_Scene_ID.msg" "animBot.animBot_Anim_Recovery_Scene_ID"
		;
connectAttr "CameraCtrl.Scale" "CameraCtrl.sx" -l on;
connectAttr "CameraCtrl.Scale" "CameraCtrl.sy" -l on;
connectAttr "CameraCtrl.Scale" "CameraCtrl.sz" -l on;
connectAttr "CamGrp_orientConstraint1.crx" "CamGrp.rx";
connectAttr "CamGrp_orientConstraint1.cry" "CamGrp.ry";
connectAttr "CamGrp_orientConstraint1.crz" "CamGrp.rz";
connectAttr "CamGrp.ro" "CamGrp_orientConstraint1.cro";
connectAttr "CamGrp.pim" "CamGrp_orientConstraint1.cpim";
connectAttr "CameraCtrl.r" "CamGrp_orientConstraint1.tg[0].tr";
connectAttr "CameraCtrl.ro" "CamGrp_orientConstraint1.tg[0].tro";
connectAttr "CameraCtrl.pm" "CamGrp_orientConstraint1.tg[0].tpm";
connectAttr "CamGrp_orientConstraint1.w0" "CamGrp_orientConstraint1.tg[0].tw";
connectAttr "addDoubleLinear1.o" "Cam_MotionGrp.tx";
connectAttr "addDoubleLinear2.o" "Cam_MotionGrp.ty";
connectAttr "addDoubleLinear3.o" "Cam_MotionGrp.tz";
connectAttr "motionPath2.msg" "Cam_MotionGrp.sml";
connectAttr "motionPath2.ro" "Cam_MotionGrp.ro";
connectAttr "Cam_MotionGrp_orientConstraint1.crx" "Cam_MotionGrp.rx";
connectAttr "Cam_MotionGrp_orientConstraint1.cry" "Cam_MotionGrp.ry";
connectAttr "Cam_MotionGrp_orientConstraint1.crz" "Cam_MotionGrp.rz";
connectAttr "Cam_MotionGrp_scaleConstraint1.csx" "Cam_MotionGrp.sx";
connectAttr "Cam_MotionGrp_scaleConstraint1.csy" "Cam_MotionGrp.sy";
connectAttr "Cam_MotionGrp_scaleConstraint1.csz" "Cam_MotionGrp.sz";
connectAttr "unitConversion5.o" "OrientCrtl.ry";
connectAttr "camera_settings.SteadicamMode" "OrientCrtl.SteadicamMode";
connectAttr "camera_settings.Twist" "OrientCrtl.Twist";
connectAttr "Ctrls_visibility.o" "Ctrls.v";
connectAttr "Arm_parentConstraint1.cty" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Arm.ty"
		;
connectAttr "Arm_parentConstraint1.ctz" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Arm.tz"
		;
connectAttr "Arm_parentConstraint1.ctx" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Arm.tx"
		;
connectAttr "Arm_parentConstraint1.crx" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Arm.rx"
		;
connectAttr "Arm_parentConstraint1.cry" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Arm.ry"
		;
connectAttr "Arm_parentConstraint1.crz" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Arm.rz"
		;
connectAttr "multiplyDivide1.oy" "armCtrl.tx";
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Arm.ro" "Arm_parentConstraint1.cro"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Arm.pim" "Arm_parentConstraint1.cpim"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Arm.rp" "Arm_parentConstraint1.crp"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Arm.rpt" "Arm_parentConstraint1.crt"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm.t" "Arm_parentConstraint1.tg[0].tt"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm.rp" "Arm_parentConstraint1.tg[0].trp"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm.rpt" "Arm_parentConstraint1.tg[0].trt"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm.r" "Arm_parentConstraint1.tg[0].tr"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm.ro" "Arm_parentConstraint1.tg[0].tro"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm.s" "Arm_parentConstraint1.tg[0].ts"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm.pm" "Arm_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_parentConstraint1.w0" "Arm_parentConstraint1.tg[0].tw";
connectAttr "Boom_parentConstraint1.ctx" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Boom.tx"
		;
connectAttr "Boom_parentConstraint1.cty" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Boom.ty"
		;
connectAttr "Boom_parentConstraint1.ctz" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Boom.tz"
		;
connectAttr "Boom_parentConstraint1.crx" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Boom.rx"
		;
connectAttr "Boom_parentConstraint1.cry" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Boom.ry"
		;
connectAttr "Boom_parentConstraint1.crz" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Boom.rz"
		;
connectAttr "CameraCtrl.Crane_Height" "boomCtrl.ty";
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Boom.ro" "Boom_parentConstraint1.cro"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Boom.pim" "Boom_parentConstraint1.cpim"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Boom.rp" "Boom_parentConstraint1.crp"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Ctrls|Boom.rpt" "Boom_parentConstraint1.crt"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom.t" "Boom_parentConstraint1.tg[0].tt"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom.rp" "Boom_parentConstraint1.tg[0].trp"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom.rpt" "Boom_parentConstraint1.tg[0].trt"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom.r" "Boom_parentConstraint1.tg[0].tr"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom.ro" "Boom_parentConstraint1.tg[0].tro"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom.s" "Boom_parentConstraint1.tg[0].ts"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom.pm" "Boom_parentConstraint1.tg[0].tpm"
		;
connectAttr "Boom_parentConstraint1.w0" "Boom_parentConstraint1.tg[0].tw";
connectAttr "multiplyDivide1.ox" "Pan.tx";
connectAttr "Truck_MDI.ox" "Truck.tz";
connectAttr "Truck.tz" "Jib.tz";
connectAttr "Pan.tx" "Jib.tx";
connectAttr "Jib_visibility.o" "Jib.v";
connectAttr "end_clusterCluster.og[2]" "BoomShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "BoomShape.twl";
connectAttr "groupId1.id" "BoomShape.iog.og[20].gid";
connectAttr "cluster2Set.mwc" "BoomShape.iog.og[20].gco";
connectAttr "groupId2.id" "BoomShape.iog.og[21].gid";
connectAttr "tweakSet1.mwc" "BoomShape.iog.og[21].gco";
connectAttr "groupId3.id" "BoomShape.iog.og[22].gid";
connectAttr "cluster1Set.mwc" "BoomShape.iog.og[22].gco";
connectAttr "boomCtrl.t" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom|base_cluster_bufferGrp.t"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom.t" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm.t"
		;
connectAttr "boomCtrl.ty" "RotateArm.ty";
connectAttr "unitConversion6.o" "RotateArm.rz";
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom.ty" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm.tx"
		;
connectAttr "boomCtrl.ty" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm.ty"
		;
connectAttr "RotateArm.rz" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm.rz"
		;
connectAttr "transformGeometry1.og" "ArmShape.cr";
connectAttr "tweak2.pl[0].cp[0]" "ArmShape.twl";
connectAttr "groupId4.id" "ArmShape.iog.og[6].gid";
connectAttr "cluster3Set.mwc" "ArmShape.iog.og[6].gco";
connectAttr "groupId5.id" "ArmShape.iog.og[7].gid";
connectAttr "tweakSet2.mwc" "ArmShape.iog.og[7].gco";
connectAttr "groupId6.id" "ArmShape.iog.og[9].gid";
connectAttr "cluster4Set.mwc" "ArmShape.iog.og[9].gco";
connectAttr "end_cluster_bufferGrp_parentConstraint1.ctx" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp.tx"
		;
connectAttr "armCtrl.t" "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp|end_cluster.t"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp.ro" "end_cluster_bufferGrp_parentConstraint1.cro"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp.pim" "end_cluster_bufferGrp_parentConstraint1.cpim"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp.rp" "end_cluster_bufferGrp_parentConstraint1.crp"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp.rpt" "end_cluster_bufferGrp_parentConstraint1.crt"
		;
connectAttr "armCtrl.t" "end_cluster_bufferGrp_parentConstraint1.tg[0].tt";
connectAttr "armCtrl.rp" "end_cluster_bufferGrp_parentConstraint1.tg[0].trp";
connectAttr "armCtrl.rpt" "end_cluster_bufferGrp_parentConstraint1.tg[0].trt";
connectAttr "armCtrl.r" "end_cluster_bufferGrp_parentConstraint1.tg[0].tr";
connectAttr "armCtrl.ro" "end_cluster_bufferGrp_parentConstraint1.tg[0].tro";
connectAttr "armCtrl.s" "end_cluster_bufferGrp_parentConstraint1.tg[0].ts";
connectAttr "armCtrl.pm" "end_cluster_bufferGrp_parentConstraint1.tg[0].tpm";
connectAttr "end_cluster_bufferGrp_parentConstraint1.w0" "end_cluster_bufferGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "end_cluster_bufferGrp_parentConstraint1_armCtrlW0.o" "end_cluster_bufferGrp_parentConstraint1.w0"
		;
connectAttr "Cam_MotionGrp.ro" "Cam_MotionGrp_orientConstraint1.cro";
connectAttr "Cam_MotionGrp.pim" "Cam_MotionGrp_orientConstraint1.cpim";
connectAttr "CamGrp.r" "Cam_MotionGrp_orientConstraint1.tg[0].tr";
connectAttr "CamGrp.ro" "Cam_MotionGrp_orientConstraint1.tg[0].tro";
connectAttr "CamGrp.pm" "Cam_MotionGrp_orientConstraint1.tg[0].tpm";
connectAttr "Cam_MotionGrp_orientConstraint1.w0" "Cam_MotionGrp_orientConstraint1.tg[0].tw"
		;
connectAttr "Cam_MotionGrp.pim" "Cam_MotionGrp_scaleConstraint1.cpim";
connectAttr "CameraCtrl.s" "Cam_MotionGrp_scaleConstraint1.tg[0].ts";
connectAttr "CameraCtrl.pm" "Cam_MotionGrp_scaleConstraint1.tg[0].tpm";
connectAttr "Cam_MotionGrp_scaleConstraint1.w0" "Cam_MotionGrp_scaleConstraint1.tg[0].tw"
		;
connectAttr "CameraCtrl.PathVisibility" "SliderGrp.v";
connectAttr "transformGeometry13.og" "End_clusterCtrlShape.cr";
connectAttr "cluster11.og[0]" "TrailShape.cr";
connectAttr "tweak3.pl[0].cp[0]" "TrailShape.twl";
connectAttr "cluster5GroupId.id" "TrailShape.iog.og[0].gid";
connectAttr "cluster5Set.mwc" "TrailShape.iog.og[0].gco";
connectAttr "groupId8.id" "TrailShape.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "TrailShape.iog.og[1].gco";
connectAttr "cluster6GroupId.id" "TrailShape.iog.og[2].gid";
connectAttr "cluster6Set.mwc" "TrailShape.iog.og[2].gco";
connectAttr "cluster7GroupId.id" "TrailShape.iog.og[3].gid";
connectAttr "cluster7Set.mwc" "TrailShape.iog.og[3].gco";
connectAttr "cluster8GroupId.id" "TrailShape.iog.og[4].gid";
connectAttr "cluster8Set.mwc" "TrailShape.iog.og[4].gco";
connectAttr "cluster9GroupId.id" "TrailShape.iog.og[5].gid";
connectAttr "cluster9Set.mwc" "TrailShape.iog.og[5].gco";
connectAttr "cluster10GroupId.id" "TrailShape.iog.og[6].gid";
connectAttr "cluster10Set.mwc" "TrailShape.iog.og[6].gco";
connectAttr "cluster11GroupId.id" "TrailShape.iog.og[7].gid";
connectAttr "cluster11Set.mwc" "TrailShape.iog.og[7].gco";
connectAttr "camera_anim_scaleConstraint1.csx" "grp_camera_crane.sx" -l on;
connectAttr "camera_anim_scaleConstraint1.csy" "grp_camera_crane.sy" -l on;
connectAttr "camera_anim_scaleConstraint1.csz" "grp_camera_crane.sz" -l on;
connectAttr "camera_anim_parentConstraint1.ctx" "grp_camera_crane.tx";
connectAttr "camera_anim_parentConstraint1.cty" "grp_camera_crane.ty";
connectAttr "camera_anim_parentConstraint1.ctz" "grp_camera_crane.tz";
connectAttr "camera_anim_parentConstraint1.crx" "grp_camera_crane.rx";
connectAttr "camera_anim_parentConstraint1.cry" "grp_camera_crane.ry";
connectAttr "camera_anim_parentConstraint1.crz" "grp_camera_crane.rz";
connectAttr "camera_animShape_LODVis.o" "grp_camera_craneShape.LODVis";
connectAttr "grp_camera_craneShape.LODVis" "grp_camera_craneShape.lodv";
connectAttr "Attributes_parentConstraint1.cty" "camera_settings.ty" -l on;
connectAttr "Attributes_parentConstraint1.ctz" "camera_settings.tz" -l on;
connectAttr "Attributes_parentConstraint1.ctx" "camera_settings.tx" -l on;
connectAttr "Attributes_parentConstraint1.crx" "camera_settings.rx" -l on;
connectAttr "Attributes_parentConstraint1.cry" "camera_settings.ry" -l on;
connectAttr "Attributes_parentConstraint1.crz" "camera_settings.rz" -l on;
connectAttr "camera_settings_scaleConstraint1.csx" "camera_settings.sx" -l on;
connectAttr "camera_settings_scaleConstraint1.csy" "camera_settings.sy" -l on;
connectAttr "camera_settings_scaleConstraint1.csz" "camera_settings.sz" -l on;
connectAttr "CameraCtrl.focalLength" "camera_settings.focalLength";
connectAttr "CameraCtrl.NearClipPlane" "camera_settings.nearClipPlane";
connectAttr "CameraCtrl.FarClipPlane" "camera_settings.farClipPlane";
connectAttr "CameraCtrl.HorizontalFilmAperture" "camera_settings.HorizontalFilmAperture"
		;
connectAttr "CameraCtrl.VerticalFilmAperture" "camera_settings.VerticalFilmAperture"
		;
connectAttr "CameraCtrl.FStop" "camera_settings.FStop";
connectAttr "CameraCtrl.Shaker" "camera_settings.Shaker";
connectAttr "CameraCtrl.Frequency" "camera_settings.Frequency";
connectAttr "CameraCtrl.Amplitude" "camera_settings.Amplitude";
connectAttr "CameraCtrl.Seed" "camera_settings.Seed";
connectAttr "CameraCtrl.Aim" "camera_settings.Aim";
connectAttr "CameraCtrl.CamRoll" "camera_settings.Twist";
connectAttr "camera_settings.Aim" "camera_settings.Aim_Values";
connectAttr "camera_settings.ro" "Attributes_parentConstraint1.cro";
connectAttr "camera_settings.pim" "Attributes_parentConstraint1.cpim";
connectAttr "camera_settings.rp" "Attributes_parentConstraint1.crp";
connectAttr "camera_settings.rpt" "Attributes_parentConstraint1.crt";
connectAttr "crane_cam.t" "Attributes_parentConstraint1.tg[0].tt";
connectAttr "crane_cam.rp" "Attributes_parentConstraint1.tg[0].trp";
connectAttr "crane_cam.rpt" "Attributes_parentConstraint1.tg[0].trt";
connectAttr "crane_cam.r" "Attributes_parentConstraint1.tg[0].tr";
connectAttr "crane_cam.ro" "Attributes_parentConstraint1.tg[0].tro";
connectAttr "crane_cam.s" "Attributes_parentConstraint1.tg[0].ts";
connectAttr "crane_cam.pm" "Attributes_parentConstraint1.tg[0].tpm";
connectAttr "Attributes_parentConstraint1.w0" "Attributes_parentConstraint1.tg[0].tw"
		;
connectAttr "camera_settings.pim" "camera_settings_scaleConstraint1.cpim";
connectAttr "grp_camera_crane.s" "camera_settings_scaleConstraint1.tg[0].ts";
connectAttr "grp_camera_crane.pm" "camera_settings_scaleConstraint1.tg[0].tpm";
connectAttr "camera_settings_scaleConstraint1.w0" "camera_settings_scaleConstraint1.tg[0].tw"
		;
connectAttr "camerOrientZeroGrp_rotateY.o" "camerOrientZeroGrp.ry";
connectAttr "cameraOrientGrp_orientConstraint1.crx" "cameraOrientGrp.rx";
connectAttr "cameraOrientGrp_orientConstraint1.cry" "cameraOrientGrp.ry";
connectAttr "cameraOrientGrp_orientConstraint1.crz" "cameraOrientGrp.rz";
connectAttr "camera_settings.Shaker" "renderCam_group.Shaker";
connectAttr "camera_settings.Frequency" "renderCam_group.Frequency";
connectAttr "camera_settings.Amplitude" "renderCam_group.Amplitude";
connectAttr "camera_settings.Seed" "renderCam_group.Seed";
connectAttr "unitConversion4.o" "renderCam_group.tws";
connectAttr "renderCam_aim.tx" "renderCam_group.tg[0].ttx";
connectAttr "renderCam_aim.ty" "renderCam_group.tg[0].tty";
connectAttr "renderCam_aim.tz" "renderCam_group.tg[0].ttz";
connectAttr "renderCam_aim.rp" "renderCam_group.tg[0].trp";
connectAttr "renderCam_aim.rpt" "renderCam_group.tg[0].trt";
connectAttr "renderCam_aim.pm" "renderCam_group.tg[0].tpm";
connectAttr "crane_cam.pim" "renderCam_group.cpim";
connectAttr "crane_cam.t" "renderCam_group.ct";
connectAttr "crane_cam.rp" "renderCam_group.crp";
connectAttr "crane_cam.rpt" "renderCam_group.crt";
connectAttr "unitConversion1.o" "renderCam_group.rx";
connectAttr "unitConversion2.o" "renderCam_group.ry";
connectAttr "unitConversion3.o" "renderCam_group.rz";
connectAttr "renderCam_group.crx" "crane_cam.rx";
connectAttr "renderCam_group.cry" "crane_cam.ry";
connectAttr "renderCam_group.crz" "crane_cam.rz";
connectAttr "unitConversion12.o" "aim_control.rx";
connectAttr "unitConversion13.o" "aim_control.ry";
connectAttr "unitConversion14.o" "aim_control.rz";
connectAttr "camera_settings.Aim_Values" "renderCam_aim.v";
connectAttr "cameraOrientGrp.ro" "cameraOrientGrp_orientConstraint1.cro";
connectAttr "cameraOrientGrp.pim" "cameraOrientGrp_orientConstraint1.cpim";
connectAttr "OrientCrtl.r" "cameraOrientGrp_orientConstraint1.tg[0].tr";
connectAttr "OrientCrtl.ro" "cameraOrientGrp_orientConstraint1.tg[0].tro";
connectAttr "OrientCrtl.pm" "cameraOrientGrp_orientConstraint1.tg[0].tpm";
connectAttr "cameraOrientGrp_orientConstraint1.w0" "cameraOrientGrp_orientConstraint1.tg[0].tw"
		;
connectAttr "cameraOrientGrp_orientConstraint1_OrientCrtlW0.o" "cameraOrientGrp_orientConstraint1.w0"
		;
connectAttr "grp_camera_crane.ro" "camera_anim_parentConstraint1.cro";
connectAttr "grp_camera_crane.pim" "camera_anim_parentConstraint1.cpim";
connectAttr "grp_camera_crane.rp" "camera_anim_parentConstraint1.crp";
connectAttr "grp_camera_crane.rpt" "camera_anim_parentConstraint1.crt";
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp.t" "camera_anim_parentConstraint1.tg[0].tt"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp.rp" "camera_anim_parentConstraint1.tg[0].trp"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp.rpt" "camera_anim_parentConstraint1.tg[0].trt"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp.r" "camera_anim_parentConstraint1.tg[0].tr"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp.ro" "camera_anim_parentConstraint1.tg[0].tro"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp.s" "camera_anim_parentConstraint1.tg[0].ts"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp.pm" "camera_anim_parentConstraint1.tg[0].tpm"
		;
connectAttr "camera_anim_parentConstraint1.w0" "camera_anim_parentConstraint1.tg[0].tw"
		;
connectAttr "grp_camera_crane.pim" "camera_anim_scaleConstraint1.cpim";
connectAttr "CameraCtrl.s" "camera_anim_scaleConstraint1.tg[0].ts";
connectAttr "CameraCtrl.pm" "camera_anim_scaleConstraint1.tg[0].tpm";
connectAttr "camera_anim_scaleConstraint1.w0" "camera_anim_scaleConstraint1.tg[0].tw"
		;
connectAttr "cluster5Handle_pointConstraint1.ctx" "cluster5Handle.tx";
connectAttr "cluster5Handle_pointConstraint1.cty" "cluster5Handle.ty";
connectAttr "cluster5Handle_pointConstraint1.ctz" "cluster5Handle.tz";
connectAttr "cluster5Handle.pim" "cluster5Handle_pointConstraint1.cpim";
connectAttr "cluster5Handle.rp" "cluster5Handle_pointConstraint1.crp";
connectAttr "cluster5Handle.rpt" "cluster5Handle_pointConstraint1.crt";
connectAttr "CameraCtrl.t" "cluster5Handle_pointConstraint1.tg[0].tt";
connectAttr "CameraCtrl.rp" "cluster5Handle_pointConstraint1.tg[0].trp";
connectAttr "CameraCtrl.rpt" "cluster5Handle_pointConstraint1.tg[0].trt";
connectAttr "CameraCtrl.pm" "cluster5Handle_pointConstraint1.tg[0].tpm";
connectAttr "cluster5Handle_pointConstraint1.w0" "cluster5Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "cluster6Handle_pointConstraint1.ctx" "cluster6Handle.tx";
connectAttr "cluster6Handle_pointConstraint1.cty" "cluster6Handle.ty";
connectAttr "cluster6Handle_pointConstraint1.ctz" "cluster6Handle.tz";
connectAttr "cluster6Handle.pim" "cluster6Handle_pointConstraint1.cpim";
connectAttr "cluster6Handle.rp" "cluster6Handle_pointConstraint1.crp";
connectAttr "cluster6Handle.rpt" "cluster6Handle_pointConstraint1.crt";
connectAttr "CameraCtrl.t" "cluster6Handle_pointConstraint1.tg[0].tt";
connectAttr "CameraCtrl.rp" "cluster6Handle_pointConstraint1.tg[0].trp";
connectAttr "CameraCtrl.rpt" "cluster6Handle_pointConstraint1.tg[0].trt";
connectAttr "CameraCtrl.pm" "cluster6Handle_pointConstraint1.tg[0].tpm";
connectAttr "cluster6Handle_pointConstraint1.w0" "cluster6Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "cluster7Handle_parentConstraint1.ctx" "cluster7Handle.tx";
connectAttr "cluster7Handle_parentConstraint1.cty" "cluster7Handle.ty";
connectAttr "cluster7Handle_parentConstraint1.ctz" "cluster7Handle.tz";
connectAttr "cluster7Handle_parentConstraint1.crx" "cluster7Handle.rx";
connectAttr "cluster7Handle_parentConstraint1.cry" "cluster7Handle.ry";
connectAttr "cluster7Handle_parentConstraint1.crz" "cluster7Handle.rz";
connectAttr "cluster7Handle.ro" "cluster7Handle_parentConstraint1.cro";
connectAttr "cluster7Handle.pim" "cluster7Handle_parentConstraint1.cpim";
connectAttr "cluster7Handle.rp" "cluster7Handle_parentConstraint1.crp";
connectAttr "cluster7Handle.rpt" "cluster7Handle_parentConstraint1.crt";
connectAttr "First_clusterCtrl.t" "cluster7Handle_parentConstraint1.tg[0].tt";
connectAttr "First_clusterCtrl.rp" "cluster7Handle_parentConstraint1.tg[0].trp";
connectAttr "First_clusterCtrl.rpt" "cluster7Handle_parentConstraint1.tg[0].trt"
		;
connectAttr "First_clusterCtrl.r" "cluster7Handle_parentConstraint1.tg[0].tr";
connectAttr "First_clusterCtrl.ro" "cluster7Handle_parentConstraint1.tg[0].tro";
connectAttr "First_clusterCtrl.s" "cluster7Handle_parentConstraint1.tg[0].ts";
connectAttr "First_clusterCtrl.pm" "cluster7Handle_parentConstraint1.tg[0].tpm";
connectAttr "cluster7Handle_parentConstraint1.w0" "cluster7Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster8Handle_parentConstraint1.ctx" "cluster8Handle.tx";
connectAttr "cluster8Handle_parentConstraint1.cty" "cluster8Handle.ty";
connectAttr "cluster8Handle_parentConstraint1.ctz" "cluster8Handle.tz";
connectAttr "cluster8Handle_parentConstraint1.crx" "cluster8Handle.rx";
connectAttr "cluster8Handle_parentConstraint1.cry" "cluster8Handle.ry";
connectAttr "cluster8Handle_parentConstraint1.crz" "cluster8Handle.rz";
connectAttr "cluster8Handle.ro" "cluster8Handle_parentConstraint1.cro";
connectAttr "cluster8Handle.pim" "cluster8Handle_parentConstraint1.cpim";
connectAttr "cluster8Handle.rp" "cluster8Handle_parentConstraint1.crp";
connectAttr "cluster8Handle.rpt" "cluster8Handle_parentConstraint1.crt";
connectAttr "Second_clusterCtrl.t" "cluster8Handle_parentConstraint1.tg[0].tt";
connectAttr "Second_clusterCtrl.rp" "cluster8Handle_parentConstraint1.tg[0].trp"
		;
connectAttr "Second_clusterCtrl.rpt" "cluster8Handle_parentConstraint1.tg[0].trt"
		;
connectAttr "Second_clusterCtrl.r" "cluster8Handle_parentConstraint1.tg[0].tr";
connectAttr "Second_clusterCtrl.ro" "cluster8Handle_parentConstraint1.tg[0].tro"
		;
connectAttr "Second_clusterCtrl.s" "cluster8Handle_parentConstraint1.tg[0].ts";
connectAttr "Second_clusterCtrl.pm" "cluster8Handle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster8Handle_parentConstraint1.w0" "cluster8Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster9Handle_parentConstraint1.ctx" "cluster9Handle.tx";
connectAttr "cluster9Handle_parentConstraint1.cty" "cluster9Handle.ty";
connectAttr "cluster9Handle_parentConstraint1.ctz" "cluster9Handle.tz";
connectAttr "cluster9Handle_parentConstraint1.crx" "cluster9Handle.rx";
connectAttr "cluster9Handle_parentConstraint1.cry" "cluster9Handle.ry";
connectAttr "cluster9Handle_parentConstraint1.crz" "cluster9Handle.rz";
connectAttr "cluster9Handle.ro" "cluster9Handle_parentConstraint1.cro";
connectAttr "cluster9Handle.pim" "cluster9Handle_parentConstraint1.cpim";
connectAttr "cluster9Handle.rp" "cluster9Handle_parentConstraint1.crp";
connectAttr "cluster9Handle.rpt" "cluster9Handle_parentConstraint1.crt";
connectAttr "Third_clusterCtrl.t" "cluster9Handle_parentConstraint1.tg[0].tt";
connectAttr "Third_clusterCtrl.rp" "cluster9Handle_parentConstraint1.tg[0].trp";
connectAttr "Third_clusterCtrl.rpt" "cluster9Handle_parentConstraint1.tg[0].trt"
		;
connectAttr "Third_clusterCtrl.r" "cluster9Handle_parentConstraint1.tg[0].tr";
connectAttr "Third_clusterCtrl.ro" "cluster9Handle_parentConstraint1.tg[0].tro";
connectAttr "Third_clusterCtrl.s" "cluster9Handle_parentConstraint1.tg[0].ts";
connectAttr "Third_clusterCtrl.pm" "cluster9Handle_parentConstraint1.tg[0].tpm";
connectAttr "cluster9Handle_parentConstraint1.w0" "cluster9Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster10Handle_parentConstraint1.ctx" "cluster10Handle.tx";
connectAttr "cluster10Handle_parentConstraint1.cty" "cluster10Handle.ty";
connectAttr "cluster10Handle_parentConstraint1.ctz" "cluster10Handle.tz";
connectAttr "cluster10Handle_parentConstraint1.crx" "cluster10Handle.rx";
connectAttr "cluster10Handle_parentConstraint1.cry" "cluster10Handle.ry";
connectAttr "cluster10Handle_parentConstraint1.crz" "cluster10Handle.rz";
connectAttr "cluster10Handle.ro" "cluster10Handle_parentConstraint1.cro";
connectAttr "cluster10Handle.pim" "cluster10Handle_parentConstraint1.cpim";
connectAttr "cluster10Handle.rp" "cluster10Handle_parentConstraint1.crp";
connectAttr "cluster10Handle.rpt" "cluster10Handle_parentConstraint1.crt";
connectAttr "Fourth_clusterCtrl.t" "cluster10Handle_parentConstraint1.tg[0].tt";
connectAttr "Fourth_clusterCtrl.rp" "cluster10Handle_parentConstraint1.tg[0].trp"
		;
connectAttr "Fourth_clusterCtrl.rpt" "cluster10Handle_parentConstraint1.tg[0].trt"
		;
connectAttr "Fourth_clusterCtrl.r" "cluster10Handle_parentConstraint1.tg[0].tr";
connectAttr "Fourth_clusterCtrl.ro" "cluster10Handle_parentConstraint1.tg[0].tro"
		;
connectAttr "Fourth_clusterCtrl.s" "cluster10Handle_parentConstraint1.tg[0].ts";
connectAttr "Fourth_clusterCtrl.pm" "cluster10Handle_parentConstraint1.tg[0].tpm"
		;
connectAttr "cluster10Handle_parentConstraint1.w0" "cluster10Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster11Handle_parentConstraint1.ctx" "cluster11Handle.tx";
connectAttr "cluster11Handle_parentConstraint1.cty" "cluster11Handle.ty";
connectAttr "cluster11Handle_parentConstraint1.ctz" "cluster11Handle.tz";
connectAttr "cluster11Handle_parentConstraint1.crx" "cluster11Handle.rx";
connectAttr "cluster11Handle_parentConstraint1.cry" "cluster11Handle.ry";
connectAttr "cluster11Handle_parentConstraint1.crz" "cluster11Handle.rz";
connectAttr "cluster11Handle.ro" "cluster11Handle_parentConstraint1.cro";
connectAttr "cluster11Handle.pim" "cluster11Handle_parentConstraint1.cpim";
connectAttr "cluster11Handle.rp" "cluster11Handle_parentConstraint1.crp";
connectAttr "cluster11Handle.rpt" "cluster11Handle_parentConstraint1.crt";
connectAttr "End_clusterCtrl.t" "cluster11Handle_parentConstraint1.tg[0].tt";
connectAttr "End_clusterCtrl.rp" "cluster11Handle_parentConstraint1.tg[0].trp";
connectAttr "End_clusterCtrl.rpt" "cluster11Handle_parentConstraint1.tg[0].trt";
connectAttr "End_clusterCtrl.r" "cluster11Handle_parentConstraint1.tg[0].tr";
connectAttr "End_clusterCtrl.ro" "cluster11Handle_parentConstraint1.tg[0].tro";
connectAttr "End_clusterCtrl.s" "cluster11Handle_parentConstraint1.tg[0].ts";
connectAttr "End_clusterCtrl.pm" "cluster11Handle_parentConstraint1.tg[0].tpm";
connectAttr "cluster11Handle_parentConstraint1.w0" "cluster11Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "grp_steadicam_scaleConstraint1.csx" "Steadicam.sx";
connectAttr "grp_steadicam_scaleConstraint1.csy" "Steadicam.sy";
connectAttr "grp_steadicam_scaleConstraint1.csz" "Steadicam.sz";
connectAttr "grp_rendercam_steadicam_parentConstraint1.ctx" "grp_rendercam_steadicam.tx"
		;
connectAttr "grp_rendercam_steadicam_parentConstraint1.cty" "grp_rendercam_steadicam.ty"
		;
connectAttr "grp_rendercam_steadicam_parentConstraint1.ctz" "grp_rendercam_steadicam.tz"
		;
connectAttr "grp_rendercam_steadicam_parentConstraint1.crx" "grp_rendercam_steadicam.rx"
		;
connectAttr "grp_rendercam_steadicam_parentConstraint1.cry" "grp_rendercam_steadicam.ry"
		;
connectAttr "grp_rendercam_steadicam_parentConstraint1.crz" "grp_rendercam_steadicam.rz"
		;
connectAttr "CameraCtrl.NearClipPlane" "shotcamShape.ncp";
connectAttr "CameraCtrl.focalLength" "shotcamShape.fl";
connectAttr "CameraCtrl.DepthOfField" "shotcamShape.dof";
connectAttr "CameraCtrl.FarClipPlane" "shotcamShape.fcp";
connectAttr "CameraCtrl.FocusDistance" "shotcamShape.fd";
connectAttr "CameraCtrl.FocusRegionScale" "shotcamShape.frs";
connectAttr "CameraCtrl.FStop" "shotcamShape.fs";
connectAttr "CameraCtrl.HorizontalFilmAperture" "shotcamShape.hfa";
connectAttr "CameraCtrl.VerticalFilmAperture" "shotcamShape.vfa";
connectAttr "grp_rendercam_steadicam.ro" "grp_rendercam_steadicam_parentConstraint1.cro"
		;
connectAttr "grp_rendercam_steadicam.pim" "grp_rendercam_steadicam_parentConstraint1.cpim"
		;
connectAttr "grp_rendercam_steadicam.rp" "grp_rendercam_steadicam_parentConstraint1.crp"
		;
connectAttr "grp_rendercam_steadicam.rpt" "grp_rendercam_steadicam_parentConstraint1.crt"
		;
connectAttr "c_steadicam.t" "grp_rendercam_steadicam_parentConstraint1.tg[0].tt"
		;
connectAttr "c_steadicam.rp" "grp_rendercam_steadicam_parentConstraint1.tg[0].trp"
		;
connectAttr "c_steadicam.rpt" "grp_rendercam_steadicam_parentConstraint1.tg[0].trt"
		;
connectAttr "c_steadicam.r" "grp_rendercam_steadicam_parentConstraint1.tg[0].tr"
		;
connectAttr "c_steadicam.ro" "grp_rendercam_steadicam_parentConstraint1.tg[0].tro"
		;
connectAttr "c_steadicam.s" "grp_rendercam_steadicam_parentConstraint1.tg[0].ts"
		;
connectAttr "c_steadicam.pm" "grp_rendercam_steadicam_parentConstraint1.tg[0].tpm"
		;
connectAttr "grp_rendercam_steadicam_parentConstraint1.w0" "grp_rendercam_steadicam_parentConstraint1.tg[0].tw"
		;
connectAttr "Steadicam.pim" "grp_steadicam_scaleConstraint1.cpim";
connectAttr "CameraCtrl.s" "grp_steadicam_scaleConstraint1.tg[0].ts";
connectAttr "CameraCtrl.pm" "grp_steadicam_scaleConstraint1.tg[0].tpm";
connectAttr "grp_steadicam_scaleConstraint1.w0" "grp_steadicam_scaleConstraint1.tg[0].tw"
		;
connectAttr "grp_c_steadicam_parentConstraint1.ctx" "grp_c_steadicam.tx";
connectAttr "grp_c_steadicam_parentConstraint1.cty" "grp_c_steadicam.ty";
connectAttr "grp_c_steadicam_parentConstraint1.ctz" "grp_c_steadicam.tz";
connectAttr "grp_c_steadicam_parentConstraint1.crx" "grp_c_steadicam.rx";
connectAttr "grp_c_steadicam_parentConstraint1.cry" "grp_c_steadicam.ry";
connectAttr "grp_c_steadicam_parentConstraint1.crz" "grp_c_steadicam.rz";
connectAttr "grp_c_steadicam_visibility.o" "grp_c_steadicam.v";
connectAttr "grp_c_steadicam.ro" "grp_c_steadicam_parentConstraint1.cro";
connectAttr "grp_c_steadicam.pim" "grp_c_steadicam_parentConstraint1.cpim";
connectAttr "grp_c_steadicam.rp" "grp_c_steadicam_parentConstraint1.crp";
connectAttr "grp_c_steadicam.rpt" "grp_c_steadicam_parentConstraint1.crt";
connectAttr "crane_cam.t" "grp_c_steadicam_parentConstraint1.tg[0].tt";
connectAttr "crane_cam.rp" "grp_c_steadicam_parentConstraint1.tg[0].trp";
connectAttr "crane_cam.rpt" "grp_c_steadicam_parentConstraint1.tg[0].trt";
connectAttr "crane_cam.r" "grp_c_steadicam_parentConstraint1.tg[0].tr";
connectAttr "crane_cam.ro" "grp_c_steadicam_parentConstraint1.tg[0].tro";
connectAttr "crane_cam.s" "grp_c_steadicam_parentConstraint1.tg[0].ts";
connectAttr "crane_cam.pm" "grp_c_steadicam_parentConstraint1.tg[0].tpm";
connectAttr "grp_c_steadicam_parentConstraint1.w0" "grp_c_steadicam_parentConstraint1.tg[0].tw"
		;
connectAttr "camera_rig_hyperLayout1.msg" "camera_rig_animBot.hl";
connectAttr "camera_rig_animBot_Anim_Recovery_Scene_ID.msg" "camera_rig_animBot.animBot_Anim_Recovery_Scene_ID"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "animBot_Anim_Recovery_Scene_ID.msg" "hyperLayout1.hyp[0].dn";
connectAttr "Cam_MotionGrp.tmrx" "addDoubleLinear1.i1";
connectAttr "motionPath2.xc" "addDoubleLinear1.i2";
connectAttr "CameraCtrl.UValue" "motionPath2.u";
connectAttr "TrailShape.ws" "motionPath2.gp";
connectAttr "motionPath2_frontTwist.o" "motionPath2.ft";
connectAttr "orientationMarkerShape1.t" "motionPath2.omt[2]";
connectAttr "motionPath2_upTwist.o" "motionPath2.ut";
connectAttr "motionPath2_sideTwist.o" "motionPath2.st";
connectAttr "Cam_MotionGrp.tmry" "addDoubleLinear2.i1";
connectAttr "motionPath2.yc" "addDoubleLinear2.i2";
connectAttr "Cam_MotionGrp.tmrz" "addDoubleLinear3.i1";
connectAttr "motionPath2.zc" "addDoubleLinear3.i2";
connectAttr "CameraCtrl.Orient" "unitConversion5.i";
connectAttr "groupParts3.og" "end_clusterCluster.ip[2].ig";
connectAttr "groupId3.id" "end_clusterCluster.ip[2].gi";
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom|end_cluster_bufferGrp|end_cluster.wm" "end_clusterCluster.ma"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom|end_cluster_bufferGrp|end_cluster|end_clusterShape.x" "end_clusterCluster.x"
		;
connectAttr "end_clusterCluster.msg" "cluster1Set.ub[0]";
connectAttr "groupId3.msg" "cluster1Set.gn" -na;
connectAttr "BoomShape.iog.og[22]" "cluster1Set.dsm" -na;
connectAttr "base_clusterCluster.og[1]" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupParts1.og" "base_clusterCluster.ip[1].ig";
connectAttr "groupId1.id" "base_clusterCluster.ip[1].gi";
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom|base_cluster_bufferGrp|base_cluster.wm" "base_clusterCluster.ma"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Boom|Boom|base_cluster_bufferGrp|base_cluster|base_clusterShape.x" "base_clusterCluster.x"
		;
connectAttr "base_clusterCluster.msg" "cluster2Set.ub[0]";
connectAttr "groupId1.msg" "cluster2Set.gn" -na;
connectAttr "BoomShape.iog.og[20]" "cluster2Set.dsm" -na;
connectAttr "tweak1.og[0]" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "BoomShape.iog.og[21]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "BoomShape1Orig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "CameraCtrl.Boom" "unitConversion6.i";
connectAttr "end_clusterCluster1.og[0]" "transformGeometry1.ig";
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp|end_cluster.wm" "end_clusterCluster1.ma"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|end_cluster_bufferGrp|end_cluster|end_clusterShape.x" "end_clusterCluster1.x"
		;
connectAttr "groupParts6.og" "end_clusterCluster1.ip[0].ig";
connectAttr "groupId6.id" "end_clusterCluster1.ip[0].gi";
connectAttr "end_clusterCluster1.msg" "cluster4Set.ub[0]";
connectAttr "groupId6.msg" "cluster4Set.gn" -na;
connectAttr "ArmShape.iog.og[9]" "cluster4Set.dsm" -na;
connectAttr "base_clusterCluster1.og[3]" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "groupParts4.og" "base_clusterCluster1.ip[3].ig";
connectAttr "groupId4.id" "base_clusterCluster1.ip[3].gi";
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|base_cluster_bufferGrp|base_cluster.wm" "base_clusterCluster1.ma"
		;
connectAttr "|camera_rig|CameraCtrl|CamGrp|Cam_MotionGrp|OrientCrtl|Jib|Arm|Arm|base_cluster_bufferGrp|base_cluster|base_clusterShape.x" "base_clusterCluster1.x"
		;
connectAttr "base_clusterCluster1.msg" "cluster3Set.ub[0]";
connectAttr "groupId4.msg" "cluster3Set.gn" -na;
connectAttr "ArmShape.iog.og[6]" "cluster3Set.dsm" -na;
connectAttr "tweak2.og[0]" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "groupParts5.og" "tweak2.ip[0].ig";
connectAttr "groupId5.id" "tweak2.ip[0].gi";
connectAttr "groupId5.msg" "tweakSet2.gn" -na;
connectAttr "ArmShape.iog.og[7]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "ArmShapeOrig.ws" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "OrientCrtl.SteadicamMode" "end_cluster_bufferGrp_parentConstraint1_armCtrlW0.i"
		;
connectAttr "makeNurbCircle13.oc" "transformGeometry13.ig";
connectAttr "cluster11GroupParts.og" "cluster11.ip[0].ig";
connectAttr "cluster11GroupId.id" "cluster11.ip[0].gi";
connectAttr "cluster11Handle.wm" "cluster11.ma";
connectAttr "cluster11HandleShape.x" "cluster11.x";
connectAttr "cluster11GroupId.msg" "cluster11Set.gn" -na;
connectAttr "TrailShape.iog.og[7]" "cluster11Set.dsm" -na;
connectAttr "cluster11.msg" "cluster11Set.ub[0]";
connectAttr "cluster10.og[0]" "cluster11GroupParts.ig";
connectAttr "cluster11GroupId.id" "cluster11GroupParts.gi";
connectAttr "cluster10GroupParts.og" "cluster10.ip[0].ig";
connectAttr "cluster10GroupId.id" "cluster10.ip[0].gi";
connectAttr "cluster10Handle.wm" "cluster10.ma";
connectAttr "cluster10HandleShape.x" "cluster10.x";
connectAttr "cluster10GroupId.msg" "cluster10Set.gn" -na;
connectAttr "TrailShape.iog.og[6]" "cluster10Set.dsm" -na;
connectAttr "cluster10.msg" "cluster10Set.ub[0]";
connectAttr "cluster9.og[0]" "cluster10GroupParts.ig";
connectAttr "cluster10GroupId.id" "cluster10GroupParts.gi";
connectAttr "cluster9GroupParts.og" "cluster9.ip[0].ig";
connectAttr "cluster9GroupId.id" "cluster9.ip[0].gi";
connectAttr "cluster9Handle.wm" "cluster9.ma";
connectAttr "cluster9HandleShape.x" "cluster9.x";
connectAttr "cluster9GroupId.msg" "cluster9Set.gn" -na;
connectAttr "TrailShape.iog.og[5]" "cluster9Set.dsm" -na;
connectAttr "cluster9.msg" "cluster9Set.ub[0]";
connectAttr "cluster8.og[0]" "cluster9GroupParts.ig";
connectAttr "cluster9GroupId.id" "cluster9GroupParts.gi";
connectAttr "cluster8GroupParts.og" "cluster8.ip[0].ig";
connectAttr "cluster8GroupId.id" "cluster8.ip[0].gi";
connectAttr "cluster8Handle.wm" "cluster8.ma";
connectAttr "cluster8HandleShape.x" "cluster8.x";
connectAttr "cluster8GroupId.msg" "cluster8Set.gn" -na;
connectAttr "TrailShape.iog.og[4]" "cluster8Set.dsm" -na;
connectAttr "cluster8.msg" "cluster8Set.ub[0]";
connectAttr "cluster7.og[0]" "cluster8GroupParts.ig";
connectAttr "cluster8GroupId.id" "cluster8GroupParts.gi";
connectAttr "cluster7GroupParts.og" "cluster7.ip[0].ig";
connectAttr "cluster7GroupId.id" "cluster7.ip[0].gi";
connectAttr "cluster7Handle.wm" "cluster7.ma";
connectAttr "cluster7HandleShape.x" "cluster7.x";
connectAttr "cluster7GroupId.msg" "cluster7Set.gn" -na;
connectAttr "TrailShape.iog.og[3]" "cluster7Set.dsm" -na;
connectAttr "cluster7.msg" "cluster7Set.ub[0]";
connectAttr "cluster6.og[0]" "cluster7GroupParts.ig";
connectAttr "cluster7GroupId.id" "cluster7GroupParts.gi";
connectAttr "cluster6GroupParts.og" "cluster6.ip[0].ig";
connectAttr "cluster6GroupId.id" "cluster6.ip[0].gi";
connectAttr "cluster6Handle.wm" "cluster6.ma";
connectAttr "cluster6HandleShape.x" "cluster6.x";
connectAttr "cluster6GroupId.msg" "cluster6Set.gn" -na;
connectAttr "TrailShape.iog.og[2]" "cluster6Set.dsm" -na;
connectAttr "cluster6.msg" "cluster6Set.ub[0]";
connectAttr "cluster5.og[0]" "cluster6GroupParts.ig";
connectAttr "cluster6GroupId.id" "cluster6GroupParts.gi";
connectAttr "cluster5GroupParts.og" "cluster5.ip[0].ig";
connectAttr "cluster5GroupId.id" "cluster5.ip[0].gi";
connectAttr "cluster5Handle.wm" "cluster5.ma";
connectAttr "cluster5HandleShape.x" "cluster5.x";
connectAttr "cluster5GroupId.msg" "cluster5Set.gn" -na;
connectAttr "TrailShape.iog.og[0]" "cluster5Set.dsm" -na;
connectAttr "cluster5.msg" "cluster5Set.ub[0]";
connectAttr "tweak3.og[0]" "cluster5GroupParts.ig";
connectAttr "cluster5GroupId.id" "cluster5GroupParts.gi";
connectAttr "groupParts8.og" "tweak3.ip[0].ig";
connectAttr "groupId8.id" "tweak3.ip[0].gi";
connectAttr "groupId8.msg" "tweakSet3.gn" -na;
connectAttr "TrailShape.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "TrailShapeOrig.ws" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "OrientCrtl.SteadicamMode" "camera_animShape_LODVis.i";
connectAttr "OrientCrtl.SteadicamMode" "camerOrientZeroGrp_rotateY.i";
connectAttr "OrientCrtl.Twist" "unitConversion4.i";
connectAttr "camShaker.out[0]" "unitConversion1.i";
connectAttr ":time1.o" "camShaker.tim";
connectAttr "renderCam_group.Shaker" "camShaker.in[0]";
connectAttr "renderCam_group.Amplitude" "camShaker.in[1]";
connectAttr "renderCam_group.Frequency" "camShaker.in[2]";
connectAttr "camShaker.out[1]" "unitConversion2.i";
connectAttr "camShaker.out[2]" "unitConversion3.i";
connectAttr "OrientCrtl.SteadicamMode" "cameraOrientGrp_orientConstraint1_OrientCrtlW0.i"
		;
connectAttr "CameraCtrl.Steadicam" "Jib_visibility.i";
connectAttr "CameraCtrl.Steadicam" "Ctrls_visibility.i";
connectAttr "CameraCtrl.Steadicam" "grp_c_steadicam_visibility.i";
connectAttr "CameraCtrl.Cam_Tilt" "unitConversion12.i";
connectAttr "CameraCtrl.Cam_Pan" "unitConversion13.i";
connectAttr "CameraCtrl.DollyInOut" "multiplyDivide1.i1x";
connectAttr "CameraCtrl.Crane_Arm_Distance" "multiplyDivide1.i1y";
connectAttr "camera_rig_animBot_Anim_Recovery_Scene_ID.msg" "camera_rig_hyperLayout1.hyp[0].dn"
		;
connectAttr "CameraCtrl.Truck_Left_Right" "Truck_MDI.i1x";
connectAttr "Truck_MDI.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "CameraCtrlShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "Truck.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "TruckShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "CameraCtrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Truck_MDI.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of camera_rig.ma
