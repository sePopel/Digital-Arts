// Written by Mike Clifton

// enable double clicking from the Macintosh Finder or the Windows Explorer
//#target photoshop

// in case we double clicked the file
//app.bringToFront();

// debug level: 0-2 (0:disable, 1:break on error, 2:break at beginning)
// $.level = 0;
// debugger; // launch debugger on next line

///////////////////////////////////////////////////////////////////////////////
// Dispatch
///////////////////////////////////////////////////////////////////////////////


main();



///////////////////////////////////////////////////////////////////////////////
// Functions
///////////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////
// Function: main
// Usage: the core routine for this script
// Input: <none>
// Return: <none>
///////////////////////////////////////////////////////////////////////////////
function main()
{
    if (app.documents.length <= 0)
	{
        alert("You must have a document open to export!");
        return;
    }

	var saveFile = null;
	if (File.fs == "Windows")
		saveFile = File.saveDialog("Save Moho file", "Moho Files: *.anme");
	else
		saveFile = File.saveDialog("Save Moho file", MacAnimeStudioFilter);
	if (saveFile == null)
		return;
	var fileNamePrefix = decodeURI(saveFile.name.substring(0, saveFile.name.indexOf("."))); // filename body part
	var imgFolderName = fileNamePrefix + "_images";
	var imgFolder = new Folder(saveFile.path + "/" + imgFolderName);
	imgFolder.create();

    var exportInfo = new Object();

    initExportInfo(exportInfo);
	exportInfo.destination = imgFolder.fsName; // destination folder
	exportInfo.fileNamePrefix = fileNamePrefix;

//    try
	{
        var docName = app.activeDocument.name;  // save the app.activeDocument name before duplicate.

        var layerCount = app.documents[docName].layers.length;
        var layerSetsCount = app.documents[docName].layerSets.length;

        if ((layerCount <= 1) && (layerSetsCount <= 0))
		{
            alert("You need a document with multiple layers to export!");
        }
		else
		{
            app.activeDocument = app.documents[docName];

			saveFile.open("w:");
			saveFile.writeln("application/x-vnd.lm_mohodoc");
			saveFile.writeln("version 14");
			saveFile.writeln("### Created by the Export Layers To Moho script for Photoshop.");
			saveFile.writeln("");
			saveFile.writeln("### static values");
			var width = app.activeDocument.width;
			width.convert("px");
			var height = app.activeDocument.height;
			height.convert("px");
			saveFile.writeln("dimensions " + width.value + " " + height.value);
			saveFile.writeln("frame_range 1 72");
			saveFile.writeln("fps 24");
			saveFile.writeln("back_color 234 234 234 255");
			saveFile.writeln("");
			saveFile.writeln("layer_type 4");
			saveFile.writeln("{");
			saveFile.writeln("\tname \"" + docName + "\"");
			saveFile.writeln("expanded true");

            var duppedDocument = app.activeDocument.duplicate();
            duppedDocument.activeLayer = duppedDocument.layers[duppedDocument.layers.length - 1]; // for removing
            setInvisibleAllArtLayers(duppedDocument);
            exportChildren(duppedDocument, app.documents[docName], exportInfo, duppedDocument, saveFile, imgFolderName, width.value, height.value);
            duppedDocument.close(SaveOptions.DONOTSAVECHANGES);

			saveFile.writeln("}");
			saveFile.close();
            alert("Export Layers To Moho was successful.");
        }
//    } catch (e) {
//        alert(e);
    }
}

/////////////////////////////////////////////////////////////////////
// Function: MacAnimeStudioFilter
// Input: f, file or folder to check
// Return: true or false, true if file or folder is to be displayed
/////////////////////////////////////////////////////////////////////
function MacAnimeStudioFilter(f)
{
	var animeStudioExtension = ".anme";
	var lCaseName = f.name;
	lCaseName.toLowerCase();
	if (lCaseName.indexOf(animeStudioExtension) == f.name.length - animeStudioExtension.length)
		return true;
	else if (f.type == 'MoHo')
		return true;
	else if (f instanceof Folder)
		return true;
	else
		return false;
}

///////////////////////////////////////////////////////////////////////////////
// Function: initExportInfo
// Usage: create our default parameters
// Input: a new Object
// Return: a new object with params set to default
///////////////////////////////////////////////////////////////////////////////
function initExportInfo(exportInfo)
{
    exportInfo.destination = new String("");
    exportInfo.fileNamePrefix = new String("untitled_");
    exportInfo.visibleOnly = true;
    exportInfo.icc = true;
    exportInfo.pngTransparency = true;
    exportInfo.pngInterlaced = false;
    exportInfo.pngTrim = true;

    try
	{
        exportInfo.destination = Folder(app.activeDocument.fullName.parent).fsName; // destination folder
        var tmp = app.activeDocument.fullName.name;
        exportInfo.fileNamePrefix = decodeURI(tmp.substring(0, tmp.indexOf("."))); // filename body part
    }
	catch(someError)
	{
        exportInfo.destination = new String("");
        exportInfo.fileNamePrefix = app.activeDocument.name; // filename body part
    }
}

///////////////////////////////////////////////////////////////////////////////
// Function: saveFile
// Usage: the worker routine, take our params and save the file accordingly
// Input: reference to the document, the name of the output file,
//        export info object containing more information
// Return: <none>, a file on disk
///////////////////////////////////////////////////////////////////////////////
function saveFile(docRef, fileNameBody, exportInfo)
{
	var id6 = charIDToTypeID( "Expr" );
		var desc3 = new ActionDescriptor();
		var id7 = charIDToTypeID( "Usng" );
			var desc4 = new ActionDescriptor();
			var id8 = charIDToTypeID( "Op  " );
			var id9 = charIDToTypeID( "SWOp" );
			var id10 = charIDToTypeID( "OpSa" );
			desc4.putEnumerated( id8, id9, id10 );
			var id11 = charIDToTypeID( "Fmt " );
			var id12 = charIDToTypeID( "IRFm" );
			var id13 = charIDToTypeID( "PN24" );
			desc4.putEnumerated( id11, id12, id13 );
			var id14 = charIDToTypeID( "Intr" );
			desc4.putBoolean( id14, false );
			var id15 = charIDToTypeID( "Trns" );
			desc4.putBoolean( id15, true );
			var id16 = charIDToTypeID( "Mtt " );
			desc4.putBoolean( id16, true );
			var id17 = charIDToTypeID( "MttR" );
			desc4.putInteger( id17, 255 );
			var id18 = charIDToTypeID( "MttG" );
			desc4.putInteger( id18, 255 );
			var id19 = charIDToTypeID( "MttB" );
			desc4.putInteger( id19, 255 );
			var id20 = charIDToTypeID( "SHTM" );
			desc4.putBoolean( id20, false );
			var id21 = charIDToTypeID( "SImg" );
			desc4.putBoolean( id21, true );
			var id22 = charIDToTypeID( "SSSO" );
			desc4.putBoolean( id22, false );
			var id23 = charIDToTypeID( "SSLt" );
				var list1 = new ActionList();
			desc4.putList( id23, list1 );
			var id24 = charIDToTypeID( "DIDr" );
			desc4.putBoolean( id24, false );
			var id25 = charIDToTypeID( "In  " );
			desc4.putPath( id25, new File( exportInfo.destination + "/" + fileNameBody + ".png") );
		var id26 = stringIDToTypeID( "SaveForWeb" );
		desc3.putObject( id7, id26, desc4 );
	executeAction( id6, desc3, DialogModes.NO );
}

///////////////////////////////////////////////////////////////////////////////
// Function: zeroSuppress
// Usage: return a string padded to digit(s)
// Input: num to convert, digit count needed
// Return: string padded to digit length
///////////////////////////////////////////////////////////////////////////////
function zeroSuppress(num, digit)
{
    var tmp = num.toString();
    while (tmp.length < digit)
	{
		tmp = "0" + tmp;
	}
    return tmp;
}

///////////////////////////////////////////////////////////////////////////////
// Function: setInvisibleAllArtLayers
// Usage: unlock and make invisible all art layers, recursively
// Input: document or layerset
// Return: all art layers are unlocked and invisible
///////////////////////////////////////////////////////////////////////////////
function setInvisibleAllArtLayers(obj)
{
    for (var i = 0; i < obj.artLayers.length; i++)
	{
        obj.artLayers[i].allLocked = false;
        obj.artLayers[i].visible = false;
    }
    for (var i = 0; i < obj.layerSets.length; i++)
	{
        setInvisibleAllArtLayers(obj.layerSets[i]);
    }
}

///////////////////////////////////////////////////////////////////////////////
// Function: removeAllInvisibleArtLayers
// Usage: remove all the invisible art layers, recursively
// Input: document or layer set
// Return: <none>, all layers that were invisible are now gone
///////////////////////////////////////////////////////////////////////////////
function removeAllInvisibleArtLayers(obj)
{
    for (var i = obj.artLayers.length-1; 0 <= i; i--)
	{
        try
		{
            if(!obj.artLayers[i].visible)
			{
				obj.artLayers[i].remove();
			}
        }
        catch (e)
		{
        }
    }
    for (var i = obj.layerSets.length-1; 0 <= i; i--)
	{
        removeAllInvisibleArtLayers(obj.layerSets[i]);
    }
}

///////////////////////////////////////////////////////////////////////////////
// Function: removeAllEmptyLayerSets
// Usage: find all empty layer sets and remove them, recursively
// Input: document or layer set
// Return: empty layer sets are now gone
///////////////////////////////////////////////////////////////////////////////
function removeAllEmptyLayerSets(obj)
{
    var foundEmpty = true;
    for (var i = obj.layerSets.length-1; 0 <= i; i--)
	{
        if (removeAllEmptyLayerSets(obj.layerSets[i]))
		{
            obj.layerSets[i].remove();
        }
		else
		{
            foundEmpty = false;
        }
    }
    if (obj.artLayers.length > 0)
	{
		foundEmpty = false;
	}
    return foundEmpty;
}

///////////////////////////////////////////////////////////////////////////////
// Function: removeAllInvisible
// Usage: return a string padded to digit(s)
// Input: num to convert, digit count needed
// Return: string padded to digit length
///////////////////////////////////////////////////////////////////////////////
function removeAllInvisible(docRef)
{
    removeAllInvisibleArtLayers(docRef);
    removeAllEmptyLayerSets(docRef);
}

///////////////////////////////////////////////////////////////////////////////
// Function: exportChildren
// Usage: find all the children in this document to save
// Input: duplicate document, original document, export info,
//        reference to document, starting file name
// Return: <none>, documents are saved accordingly
///////////////////////////////////////////////////////////////////////////////
function exportChildren(dupObj, orgObj, exportInfo, dupDocRef, file, imgFolderName, docWidth, docHeight)
{
    for (var i = dupObj.layers.length - 1; i >= 0; i--)
	{
        if (exportInfo.visibleOnly)
		{ // visible layer only
            if (!orgObj.layers[i].visible)
				continue;
        }

		if (dupObj.layers[i].typename == "LayerSet")
		{ // recursive call
			var visibleCount = 0;
			var oldVisibleOnly = exportInfo.visibleOnly;

    		for (var j = dupObj.layers[i].layers.length - 1; j >= 0; j--)
    		{
    			if (orgObj.layers[i].layers[j].visible)
    				visibleCount++;
    		}
    		if (visibleCount <= 1 && dupObj.layers[i].layers.length > 1)
    		{
				file.writeln("layer_type 5"); // switch group
				exportInfo.visibleOnly = false;
			}
			else
				file.writeln("layer_type 3"); // regular group
			file.writeln("{");
			file.writeln("\tname \"" + dupObj.layers[i].name + "\"");
			file.writeln("expanded false");
			exportChildren(dupObj.layers[i], orgObj.layers[i], exportInfo, dupDocRef, file, imgFolderName, docWidth, docHeight);
			file.writeln("}");
			exportInfo.visibleOnly = oldVisibleOnly;
		}
		if (dupObj.layers[i].typename != "ArtLayer")
			continue;

        dupObj.layers[i].visible = true;

        var layerName = dupObj.layers[i].name;  // store layer name before change doc
		var layerX = dupObj.layers[i].bounds[0];
		layerX.convert("px");
		var layerY = dupObj.layers[i].bounds[1];
		layerY.convert("px");
        var duppedDocumentTmp = dupDocRef.duplicate();

		// Keep transparency
		// mclifton - I don't think this is really necessary, and it seems to slow things down a lot.
		//removeAllInvisible(duppedDocumentTmp);

		// Trim empty pixels
		app.activeDocument.trim(TrimType.TRANSPARENT);

        var fileNameBody = layerName;
        fileNameBody = fileNameBody.replace(/[:\/\\*\?\"\<\>\| ]/g, "_");  // '/\:*?"<>| ' -> '_'
        if (fileNameBody.length > 120)
			fileNameBody = fileNameBody.substring(0,120);

		var layerWidth = duppedDocumentTmp.width;
		layerWidth.convert("px");
		var layerHeight = duppedDocumentTmp.height;
		layerHeight.convert("px");
        saveFile(duppedDocumentTmp, fileNameBody, exportInfo);
        duppedDocumentTmp.close(SaveOptions.DONOTSAVECHANGES);

        dupObj.layers[i].visible = false;

		file.writeln("layer_type 2");
		file.writeln("{");
		file.writeln("\tname \"" + layerName.replace(/[:\/\\*\?\"\<\>\| ]/g, "") + "\"");
		file.writeln("\timage \"" + imgFolderName + "/" + fileNameBody + ".png\"");
		file.writeln("\tshape " + 2.0 * layerWidth.value / docHeight + " " + 2.0 * layerHeight.value / docHeight);
		file.writeln("\ttranslation");
		file.writeln("\t[");
		file.writeln("\t\tkeys 1");
		var xformX = -docWidth / docHeight + layerWidth.value / docHeight + 2.0 * layerX.value / docHeight;
		var xformY = 1.0 - layerHeight.value / docHeight - 2.0 * layerY.value / docHeight;
		file.writeln("\t\t\t0 1 0.1 0.5 " + xformX + " " + xformY + " 0");
		file.writeln("\t]");
		file.writeln("}");
		file.writeln("");
    }
}
