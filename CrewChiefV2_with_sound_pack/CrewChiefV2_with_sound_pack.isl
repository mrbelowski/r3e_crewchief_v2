<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<?xml-stylesheet type="text/xsl" href="is.xsl" ?>
<!DOCTYPE msi [
   <!ELEMENT msi   (summary,table*)>
   <!ATTLIST msi version    CDATA #REQUIRED>
   <!ATTLIST msi xmlns:dt   CDATA #IMPLIED
                 codepage   CDATA #IMPLIED
                 compression (MSZIP|LZX|none) "LZX">
   
   <!ELEMENT summary       (codepage?,title?,subject?,author?,keywords?,comments?,
                            template,lastauthor?,revnumber,lastprinted?,
                            createdtm?,lastsavedtm?,pagecount,wordcount,
                            charcount?,appname?,security?)>
                            
   <!ELEMENT codepage      (#PCDATA)>
   <!ELEMENT title         (#PCDATA)>
   <!ELEMENT subject       (#PCDATA)>
   <!ELEMENT author        (#PCDATA)>
   <!ELEMENT keywords      (#PCDATA)>
   <!ELEMENT comments      (#PCDATA)>
   <!ELEMENT template      (#PCDATA)>
   <!ELEMENT lastauthor    (#PCDATA)>
   <!ELEMENT revnumber     (#PCDATA)>
   <!ELEMENT lastprinted   (#PCDATA)>
   <!ELEMENT createdtm     (#PCDATA)>
   <!ELEMENT lastsavedtm   (#PCDATA)>
   <!ELEMENT pagecount     (#PCDATA)>
   <!ELEMENT wordcount     (#PCDATA)>
   <!ELEMENT charcount     (#PCDATA)>
   <!ELEMENT appname       (#PCDATA)>
   <!ELEMENT security      (#PCDATA)>                            
                                
   <!ELEMENT table         (col+,row*)>
   <!ATTLIST table
                name        CDATA #REQUIRED>

   <!ELEMENT col           (#PCDATA)>
   <!ATTLIST col
                 key       (yes|no) #IMPLIED
                 def       CDATA #IMPLIED>
                 
   <!ELEMENT row            (td+)>
   
   <!ELEMENT td             (#PCDATA)>
   <!ATTLIST td
                 href       CDATA #IMPLIED
                 dt:dt     (string|bin.base64) #IMPLIED
                 md5        CDATA #IMPLIED>
]>
<msi version="2.0" xmlns:dt="urn:schemas-microsoft-com:datatypes" codepage="65001">
	
	<summary>
		<codepage>1252</codepage>
		<title>Installation Database</title>
		<subject></subject>
		<author>##ID_STRING2##</author>
		<keywords>Installer,MSI,Database</keywords>
		<comments>Contact:  Your local administrator</comments>
		<template>Intel;1033</template>
		<lastauthor>Administrator</lastauthor>
		<revnumber>{996AF410-D2B7-49F6-9BE3-9244AE091D5D}</revnumber>
		<lastprinted/>
		<createdtm>06/21/1999 14:00</createdtm>
		<lastsavedtm>07/14/2000 17:50</lastsavedtm>
		<pagecount>200</pagecount>
		<wordcount>0</wordcount>
		<charcount/>
		<appname>InstallShield Express</appname>
		<security>1</security>
	</summary>
	
	<table name="ActionText">
		<col key="yes" def="s72">Action</col>
		<col def="L64">Description</col>
		<col def="L128">Template</col>
		<row><td>Advertise</td><td>##IDS_ACTIONTEXT_Advertising##</td><td/></row>
		<row><td>AllocateRegistrySpace</td><td>##IDS_ACTIONTEXT_AllocatingRegistry##</td><td>##IDS_ACTIONTEXT_FreeSpace##</td></row>
		<row><td>AppSearch</td><td>##IDS_ACTIONTEXT_SearchInstalled##</td><td>##IDS_ACTIONTEXT_PropertySignature##</td></row>
		<row><td>BindImage</td><td>##IDS_ACTIONTEXT_BindingExes##</td><td>##IDS_ACTIONTEXT_File##</td></row>
		<row><td>CCPSearch</td><td>##IDS_ACTIONTEXT_UnregisterModules##</td><td/></row>
		<row><td>CostFinalize</td><td>##IDS_ACTIONTEXT_ComputingSpace3##</td><td/></row>
		<row><td>CostInitialize</td><td>##IDS_ACTIONTEXT_ComputingSpace##</td><td/></row>
		<row><td>CreateFolders</td><td>##IDS_ACTIONTEXT_CreatingFolders##</td><td>##IDS_ACTIONTEXT_Folder##</td></row>
		<row><td>CreateShortcuts</td><td>##IDS_ACTIONTEXT_CreatingShortcuts##</td><td>##IDS_ACTIONTEXT_Shortcut##</td></row>
		<row><td>DeleteServices</td><td>##IDS_ACTIONTEXT_DeletingServices##</td><td>##IDS_ACTIONTEXT_Service##</td></row>
		<row><td>DuplicateFiles</td><td>##IDS_ACTIONTEXT_CreatingDuplicate##</td><td>##IDS_ACTIONTEXT_FileDirectorySize##</td></row>
		<row><td>FileCost</td><td>##IDS_ACTIONTEXT_ComputingSpace2##</td><td/></row>
		<row><td>FindRelatedProducts</td><td>##IDS_ACTIONTEXT_SearchForRelated##</td><td>##IDS_ACTIONTEXT_FoundApp##</td></row>
		<row><td>GenerateScript</td><td>##IDS_ACTIONTEXT_GeneratingScript##</td><td>##IDS_ACTIONTEXT_1##</td></row>
		<row><td>ISLockPermissionsCost</td><td>##IDS_ACTIONTEXT_ISLockPermissionsCost##</td><td/></row>
		<row><td>ISLockPermissionsInstall</td><td>##IDS_ACTIONTEXT_ISLockPermissionsInstall##</td><td/></row>
		<row><td>InstallAdminPackage</td><td>##IDS_ACTIONTEXT_CopyingNetworkFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize##</td></row>
		<row><td>InstallFiles</td><td>##IDS_ACTIONTEXT_CopyingNewFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize2##</td></row>
		<row><td>InstallODBC</td><td>##IDS_ACTIONTEXT_InstallODBC##</td><td/></row>
		<row><td>InstallSFPCatalogFile</td><td>##IDS_ACTIONTEXT_InstallingSystemCatalog##</td><td>##IDS_ACTIONTEXT_FileDependencies##</td></row>
		<row><td>InstallServices</td><td>##IDS_ACTIONTEXT_InstallServices##</td><td>##IDS_ACTIONTEXT_Service2##</td></row>
		<row><td>InstallValidate</td><td>##IDS_ACTIONTEXT_Validating##</td><td/></row>
		<row><td>LaunchConditions</td><td>##IDS_ACTIONTEXT_EvaluateLaunchConditions##</td><td/></row>
		<row><td>MigrateFeatureStates</td><td>##IDS_ACTIONTEXT_MigratingFeatureStates##</td><td>##IDS_ACTIONTEXT_Application##</td></row>
		<row><td>MoveFiles</td><td>##IDS_ACTIONTEXT_MovingFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize3##</td></row>
		<row><td>PatchFiles</td><td>##IDS_ACTIONTEXT_PatchingFiles##</td><td>##IDS_ACTIONTEXT_FileDirSize4##</td></row>
		<row><td>ProcessComponents</td><td>##IDS_ACTIONTEXT_UpdateComponentRegistration##</td><td/></row>
		<row><td>PublishComponents</td><td>##IDS_ACTIONTEXT_PublishingQualifiedComponents##</td><td>##IDS_ACTIONTEXT_ComponentIDQualifier##</td></row>
		<row><td>PublishFeatures</td><td>##IDS_ACTIONTEXT_PublishProductFeatures##</td><td>##IDS_ACTIONTEXT_FeatureColon##</td></row>
		<row><td>PublishProduct</td><td>##IDS_ACTIONTEXT_PublishProductInfo##</td><td/></row>
		<row><td>RMCCPSearch</td><td>##IDS_ACTIONTEXT_SearchingQualifyingProducts##</td><td/></row>
		<row><td>RegisterClassInfo</td><td>##IDS_ACTIONTEXT_RegisterClassServer##</td><td>##IDS_ACTIONTEXT_ClassId##</td></row>
		<row><td>RegisterComPlus</td><td>##IDS_ACTIONTEXT_RegisteringComPlus##</td><td>##IDS_ACTIONTEXT_AppIdAppTypeRSN##</td></row>
		<row><td>RegisterExtensionInfo</td><td>##IDS_ACTIONTEXT_RegisterExtensionServers##</td><td>##IDS_ACTIONTEXT_Extension2##</td></row>
		<row><td>RegisterFonts</td><td>##IDS_ACTIONTEXT_RegisterFonts##</td><td>##IDS_ACTIONTEXT_Font##</td></row>
		<row><td>RegisterMIMEInfo</td><td>##IDS_ACTIONTEXT_RegisterMimeInfo##</td><td>##IDS_ACTIONTEXT_ContentTypeExtension##</td></row>
		<row><td>RegisterProduct</td><td>##IDS_ACTIONTEXT_RegisteringProduct##</td><td>##IDS_ACTIONTEXT_1b##</td></row>
		<row><td>RegisterProgIdInfo</td><td>##IDS_ACTIONTEXT_RegisteringProgIdentifiers##</td><td>##IDS_ACTIONTEXT_ProgID2##</td></row>
		<row><td>RegisterTypeLibraries</td><td>##IDS_ACTIONTEXT_RegisterTypeLibs##</td><td>##IDS_ACTIONTEXT_LibId##</td></row>
		<row><td>RegisterUser</td><td>##IDS_ACTIONTEXT_RegUser##</td><td>##IDS_ACTIONTEXT_1c##</td></row>
		<row><td>RemoveDuplicateFiles</td><td>##IDS_ACTIONTEXT_RemovingDuplicates##</td><td>##IDS_ACTIONTEXT_FileDir##</td></row>
		<row><td>RemoveEnvironmentStrings</td><td>##IDS_ACTIONTEXT_UpdateEnvironmentStrings##</td><td>##IDS_ACTIONTEXT_NameValueAction2##</td></row>
		<row><td>RemoveExistingProducts</td><td>##IDS_ACTIONTEXT_RemoveApps##</td><td>##IDS_ACTIONTEXT_AppCommandLine##</td></row>
		<row><td>RemoveFiles</td><td>##IDS_ACTIONTEXT_RemovingFiles##</td><td>##IDS_ACTIONTEXT_FileDir2##</td></row>
		<row><td>RemoveFolders</td><td>##IDS_ACTIONTEXT_RemovingFolders##</td><td>##IDS_ACTIONTEXT_Folder1##</td></row>
		<row><td>RemoveIniValues</td><td>##IDS_ACTIONTEXT_RemovingIni##</td><td>##IDS_ACTIONTEXT_FileSectionKeyValue##</td></row>
		<row><td>RemoveODBC</td><td>##IDS_ACTIONTEXT_RemovingODBC##</td><td/></row>
		<row><td>RemoveRegistryValues</td><td>##IDS_ACTIONTEXT_RemovingRegistry##</td><td>##IDS_ACTIONTEXT_KeyName##</td></row>
		<row><td>RemoveShortcuts</td><td>##IDS_ACTIONTEXT_RemovingShortcuts##</td><td>##IDS_ACTIONTEXT_Shortcut1##</td></row>
		<row><td>Rollback</td><td>##IDS_ACTIONTEXT_RollingBack##</td><td>##IDS_ACTIONTEXT_1d##</td></row>
		<row><td>RollbackCleanup</td><td>##IDS_ACTIONTEXT_RemovingBackup##</td><td>##IDS_ACTIONTEXT_File2##</td></row>
		<row><td>SelfRegModules</td><td>##IDS_ACTIONTEXT_RegisteringModules##</td><td>##IDS_ACTIONTEXT_FileFolder##</td></row>
		<row><td>SelfUnregModules</td><td>##IDS_ACTIONTEXT_UnregisterModules##</td><td>##IDS_ACTIONTEXT_FileFolder2##</td></row>
		<row><td>SetODBCFolders</td><td>##IDS_ACTIONTEXT_InitializeODBCDirs##</td><td/></row>
		<row><td>StartServices</td><td>##IDS_ACTIONTEXT_StartingServices##</td><td>##IDS_ACTIONTEXT_Service3##</td></row>
		<row><td>StopServices</td><td>##IDS_ACTIONTEXT_StoppingServices##</td><td>##IDS_ACTIONTEXT_Service4##</td></row>
		<row><td>UnmoveFiles</td><td>##IDS_ACTIONTEXT_RemovingMoved##</td><td>##IDS_ACTIONTEXT_FileDir3##</td></row>
		<row><td>UnpublishComponents</td><td>##IDS_ACTIONTEXT_UnpublishQualified##</td><td>##IDS_ACTIONTEXT_ComponentIdQualifier2##</td></row>
		<row><td>UnpublishFeatures</td><td>##IDS_ACTIONTEXT_UnpublishProductFeatures##</td><td>##IDS_ACTIONTEXT_Feature##</td></row>
		<row><td>UnpublishProduct</td><td>##IDS_ACTIONTEXT_UnpublishingProductInfo##</td><td/></row>
		<row><td>UnregisterClassInfo</td><td>##IDS_ACTIONTEXT_UnregisterClassServers##</td><td>##IDS_ACTIONTEXT_ClsID##</td></row>
		<row><td>UnregisterComPlus</td><td>##IDS_ACTIONTEXT_UnregisteringComPlus##</td><td>##IDS_ACTIONTEXT_AppId##</td></row>
		<row><td>UnregisterExtensionInfo</td><td>##IDS_ACTIONTEXT_UnregisterExtensionServers##</td><td>##IDS_ACTIONTEXT_Extension##</td></row>
		<row><td>UnregisterFonts</td><td>##IDS_ACTIONTEXT_UnregisteringFonts##</td><td>##IDS_ACTIONTEXT_Font2##</td></row>
		<row><td>UnregisterMIMEInfo</td><td>##IDS_ACTIONTEXT_UnregisteringMimeInfo##</td><td>##IDS_ACTIONTEXT_ContentTypeExtension2##</td></row>
		<row><td>UnregisterProgIdInfo</td><td>##IDS_ACTIONTEXT_UnregisteringProgramIds##</td><td>##IDS_ACTIONTEXT_ProgID##</td></row>
		<row><td>UnregisterTypeLibraries</td><td>##IDS_ACTIONTEXT_UnregTypeLibs##</td><td>##IDS_ACTIONTEXT_Libid2##</td></row>
		<row><td>WriteEnvironmentStrings</td><td>##IDS_ACTIONTEXT_EnvironmentStrings##</td><td>##IDS_ACTIONTEXT_NameValueAction##</td></row>
		<row><td>WriteIniValues</td><td>##IDS_ACTIONTEXT_WritingINI##</td><td>##IDS_ACTIONTEXT_FileSectionKeyValue2##</td></row>
		<row><td>WriteRegistryValues</td><td>##IDS_ACTIONTEXT_WritingRegistry##</td><td>##IDS_ACTIONTEXT_KeyNameValue##</td></row>
	</table>

	<table name="AdminExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>InstallAdminPackage</td><td/><td>3900</td><td>InstallAdminPackage</td><td/></row>
		<row><td>InstallFiles</td><td/><td>4000</td><td>InstallFiles</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1500</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>4010</td><td>ScheduleReboot</td><td/></row>
	</table>

	<table name="AdminUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AdminWelcome</td><td/><td>1010</td><td>AdminWelcome</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>ExecuteAction</td><td/><td>1300</td><td>ExecuteAction</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>SetupCompleteError</td><td/><td>-3</td><td>SetupCompleteError</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td/><td>-1</td><td>SetupCompleteSuccess</td><td/></row>
		<row><td>SetupInitialization</td><td/><td>50</td><td>SetupInitialization</td><td/></row>
		<row><td>SetupInterrupted</td><td/><td>-2</td><td>SetupInterrupted</td><td/></row>
		<row><td>SetupProgress</td><td/><td>1020</td><td>SetupProgress</td><td/></row>
	</table>

	<table name="AdvtExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>CreateShortcuts</td><td/><td>4500</td><td>CreateShortcuts</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1500</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>MsiPublishAssemblies</td><td/><td>6250</td><td>MsiPublishAssemblies</td><td/></row>
		<row><td>PublishComponents</td><td/><td>6200</td><td>PublishComponents</td><td/></row>
		<row><td>PublishFeatures</td><td/><td>6300</td><td>PublishFeatures</td><td/></row>
		<row><td>PublishProduct</td><td/><td>6400</td><td>PublishProduct</td><td/></row>
		<row><td>RegisterClassInfo</td><td/><td>4600</td><td>RegisterClassInfo</td><td/></row>
		<row><td>RegisterExtensionInfo</td><td/><td>4700</td><td>RegisterExtensionInfo</td><td/></row>
		<row><td>RegisterMIMEInfo</td><td/><td>4900</td><td>RegisterMIMEInfo</td><td/></row>
		<row><td>RegisterProgIdInfo</td><td/><td>4800</td><td>RegisterProgIdInfo</td><td/></row>
		<row><td>RegisterTypeLibraries</td><td/><td>4910</td><td>RegisterTypeLibraries</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>6410</td><td>ScheduleReboot</td><td/></row>
	</table>

	<table name="AdvtUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="AppId">
		<col key="yes" def="s38">AppId</col>
		<col def="S255">RemoteServerName</col>
		<col def="S255">LocalService</col>
		<col def="S255">ServiceParameters</col>
		<col def="S255">DllSurrogate</col>
		<col def="I2">ActivateAtStorage</col>
		<col def="I2">RunAsInteractiveUser</col>
	</table>

	<table name="AppSearch">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="s72">Signature_</col>
		<row><td>DOTNETVERSION40CLIENT</td><td>DotNet40Client</td></row>
	</table>

	<table name="BBControl">
		<col key="yes" def="s50">Billboard_</col>
		<col key="yes" def="s50">BBControl</col>
		<col def="s50">Type</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="L50">Text</col>
	</table>

	<table name="Billboard">
		<col key="yes" def="s50">Billboard</col>
		<col def="s38">Feature_</col>
		<col def="S50">Action</col>
		<col def="I2">Ordering</col>
	</table>

	<table name="Binary">
		<col key="yes" def="s72">Name</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
		<row><td>ISExpHlp.dll</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\ISExpHlp.dll</td></row>
		<row><td>ISSELFREG.DLL</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\isregsvr.dll</td></row>
		<row><td>NewBinary1</td><td/><td>&lt;ISProductFolder&gt;\Support\Themes\InstallShield Blue Theme\banner.jpg</td></row>
		<row><td>NewBinary10</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CompleteSetupIco.ibd</td></row>
		<row><td>NewBinary11</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CustomSetupIco.ibd</td></row>
		<row><td>NewBinary12</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\DestIcon.ibd</td></row>
		<row><td>NewBinary13</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\NetworkInstall.ico</td></row>
		<row><td>NewBinary14</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\DontInstall.ico</td></row>
		<row><td>NewBinary15</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\Install.ico</td></row>
		<row><td>NewBinary16</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallFirstUse.ico</td></row>
		<row><td>NewBinary17</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallPartial.ico</td></row>
		<row><td>NewBinary18</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\InstallStateMenu.ico</td></row>
		<row><td>NewBinary2</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\New.ibd</td></row>
		<row><td>NewBinary3</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\Up.ibd</td></row>
		<row><td>NewBinary4</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\WarningIcon.ibd</td></row>
		<row><td>NewBinary5</td><td/><td>&lt;ISProductFolder&gt;\Support\Themes\InstallShield Blue Theme\welcome.jpg</td></row>
		<row><td>NewBinary6</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\CustomSetupIco.ibd</td></row>
		<row><td>NewBinary7</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\ReinstIco.ibd</td></row>
		<row><td>NewBinary8</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\RemoveIco.ibd</td></row>
		<row><td>NewBinary9</td><td/><td>&lt;ISProductFolder&gt;\Redist\Language Independent\OS Independent\SetupIcon.ibd</td></row>
		<row><td>SetAllUsers.dll</td><td/><td>&lt;ISRedistPlatformDependentFolder&gt;\SetAllUsers.dll</td></row>
	</table>

	<table name="BindImage">
		<col key="yes" def="s72">File_</col>
		<col def="S255">Path</col>
	</table>

	<table name="CCPSearch">
		<col key="yes" def="s72">Signature_</col>
	</table>

	<table name="CheckBox">
		<col key="yes" def="s72">Property</col>
		<col def="S64">Value</col>
		<row><td>ISCHECKFORPRODUCTUPDATES</td><td>1</td></row>
		<row><td>LAUNCHPROGRAM</td><td>1</td></row>
		<row><td>LAUNCHREADME</td><td>1</td></row>
	</table>

	<table name="Class">
		<col key="yes" def="s38">CLSID</col>
		<col key="yes" def="s32">Context</col>
		<col key="yes" def="s72">Component_</col>
		<col def="S255">ProgId_Default</col>
		<col def="L255">Description</col>
		<col def="S38">AppId_</col>
		<col def="S255">FileTypeMask</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="S32">DefInprocHandler</col>
		<col def="S255">Argument</col>
		<col def="s38">Feature_</col>
		<col def="I2">Attributes</col>
	</table>

	<table name="ComboBox">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
	</table>

	<table name="CompLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="s38">ComponentId</col>
		<col def="I2">Type</col>
	</table>

	<table name="Complus">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="I2">ExpType</col>
	</table>

	<table name="Component">
		<col key="yes" def="s72">Component</col>
		<col def="S38">ComponentId</col>
		<col def="s72">Directory_</col>
		<col def="i2">Attributes</col>
		<col def="S255">Condition</col>
		<col def="S72">KeyPath</col>
		<col def="I4">ISAttributes</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISScanAtBuildFile</col>
		<col def="S255">ISRegFileToMergeAtBuild</col>
		<col def="S0">ISDotNetInstallerArgsInstall</col>
		<col def="S0">ISDotNetInstallerArgsCommit</col>
		<col def="S0">ISDotNetInstallerArgsUninstall</col>
		<col def="S0">ISDotNetInstallerArgsRollback</col>
		<row><td>CrewChiefV2.Primary_output</td><td>{B8FE064C-3583-4606-984D-EAC69E4B1674}</td><td>INSTALLDIR</td><td>2</td><td/><td>crewchiefv2.primary_output</td><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT</td><td>{E6A8FB2E-BBB5-4ED2-8F05-739B33F6B2EA}</td><td>SOUNDS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT1</td><td>{68A7BD59-9895-4E32-8B2E-4EA49AA62592}</td><td>BACKGROUND_SOUNDS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT10</td><td>{07C568FB-63D2-4A00-9D22-E39E316D0CA9}</td><td>OK</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT100</td><td>{99334EBB-E59D-4513-910F-E44306F69AD5}</td><td>PRIMES_TO_OPTIONS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT101</td><td>{20D91B98-0677-4D22-8C93-3FC601D5248B}</td><td>YES_STOP_AFTER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT102</td><td>{4375ED38-5F18-40DA-BD20-AC736FFA9B1F}</td><td>YES_STOP_ON_LAP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT103</td><td>{0D565AB6-585E-4CDE-8EDD-A39A12D8B026}</td><td>NUMBERS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT104</td><td>{0D0CC4E1-A190-4564-99AB-A1AEA27E3529}</td><td>_</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT105</td><td>{9FBCAE60-49FA-4322-8E09-CCFAFE8A1604}</td><td>_1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT106</td><td>{BCE50861-89B4-4882-97B1-15D5814A1E16}</td><td>_2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT107</td><td>{21A8E5EB-1E04-4100-BAC6-A97CD0FBFEC5}</td><td>_3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT108</td><td>{39A673FD-FB12-438F-AF46-50060925F314}</td><td>_4</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT109</td><td>{4B363D49-5CDC-4F39-9815-46B744F9D8AE}</td><td>_5</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT11</td><td>{C90DDCC8-D4C4-4CBA-A658-9268B8C2E359}</td><td>SPOTTERDISABLED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT110</td><td>{C62C4233-1EE3-4F4F-8B4B-24B8C9064BD1}</td><td>_6</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT111</td><td>{360CAB06-114E-49AC-B05A-16F2D34ACEBD}</td><td>_7</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT112</td><td>{5FBFA024-E963-43C9-8300-C165819CC8C0}</td><td>_8</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT113</td><td>{E459A6B0-ACF5-4EA8-B57E-6927B3423B14}</td><td>_9</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT114</td><td>{91DBF65D-0EC1-4D47-A572-C9D5B2F13C8B}</td><td>_10</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT115</td><td>{6C43AB83-7ED2-4F98-B2F6-3F5008CC1BC4}</td><td>_0</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT116</td><td>{2D266A98-2415-46CB-B309-905AF072DF52}</td><td>_11</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT117</td><td>{2004811F-0CE8-4E39-82FF-84C5C03CAE9C}</td><td>_21</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT118</td><td>{8207E657-2B93-491A-B26F-062BA76B65F6}</td><td>_31</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT119</td><td>{AEE9A0FC-0666-444C-A34F-EAE1BACCB464}</td><td>_41</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT12</td><td>{2730A475-F407-4725-A18D-6ED4E38B4139}</td><td>SPOTTERENABLED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT120</td><td>{FD08B668-720A-49B0-9E77-691B75DA4FB1}</td><td>_51</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT121</td><td>{1F9DE1E7-23D2-40F7-B181-8035559292F2}</td><td>_61</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT122</td><td>{FC34BAA2-4F5B-480B-98D2-0F45DBB37C38}</td><td>_71</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT123</td><td>{239315E4-8495-4D09-99B9-F25C69E9785D}</td><td>_81</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT124</td><td>{1ED7DCED-776A-4F28-996B-3A8FD3D531D9}</td><td>_91</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT125</td><td>{97D899B7-60FB-4F4B-8570-BFE4BF5C472A}</td><td>_12</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT126</td><td>{763EAFCC-EF59-47B0-9883-27AC58876BFC}</td><td>_01</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT127</td><td>{314A1F67-7961-44C0-8E01-BFF65EE07A37}</td><td>_13</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT128</td><td>{1B3922D0-3B9B-4274-AA9C-C021DD92E627}</td><td>_22</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT129</td><td>{385091F4-BAFA-4524-B5AD-11CD868F9317}</td><td>_32</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT13</td><td>{740462C4-25B4-4AC7-86A0-CF519E236255}</td><td>YES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT130</td><td>{03A93DC9-CD1A-45CA-A7BF-B2C51326F1CB}</td><td>_42</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT131</td><td>{53CBFD6C-EEBD-4306-ADD5-BC17A3C54293}</td><td>_52</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT132</td><td>{CD8C8176-9282-42B6-962A-FB9C8AE9A3C3}</td><td>_62</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT133</td><td>{3898E8CA-376F-4010-BD74-DB13E9140F05}</td><td>_72</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT134</td><td>{C3EB22B3-F475-40AF-A45B-9ED10680DF8D}</td><td>_82</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT135</td><td>{CBB443B2-E810-4C83-B080-619A3E243C95}</td><td>_92</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT136</td><td>{0947776C-22C2-4B86-A68B-A11F2CD59BE0}</td><td>_14</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT137</td><td>{A4B4D7CC-4016-4130-B8BB-31114FACF7DA}</td><td>_02</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT138</td><td>{A7D80595-4C5E-4B84-914D-4C0A669A4455}</td><td>_15</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT139</td><td>{58479179-A492-46E9-A2B1-87A73D4BF319}</td><td>_23</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT14</td><td>{BCFC21CE-1C75-4C5F-B82E-EB528C1852CE}</td><td>DAMAGE_REPORTING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT140</td><td>{FE23D427-0FC1-430B-9C35-606BA48AA70E}</td><td>_33</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT141</td><td>{71931F6A-B7CE-4C93-8678-FBE668B86225}</td><td>_43</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT142</td><td>{7B4915C9-FDA5-4851-B0A0-884A3133D773}</td><td>_53</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT143</td><td>{E408E262-60B2-45ED-8E11-E3F40DE59006}</td><td>_63</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT144</td><td>{2EE5ED3C-7363-4ACF-A2EF-1C5AB119AC21}</td><td>_73</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT145</td><td>{183B108E-BCFA-4678-B6CA-717E545B543A}</td><td>_83</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT146</td><td>{E96601B4-498F-49E0-9F1F-7A1E3207E57E}</td><td>_93</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT147</td><td>{6311D67F-B093-4647-930E-64D378386E2A}</td><td>_16</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT148</td><td>{4427172A-C2DA-43B4-ADD6-6B5024E5798E}</td><td>_03</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT149</td><td>{5302F0E8-A8E3-4941-9267-5BEC2FDAC5F7}</td><td>_17</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT15</td><td>{1D938C93-7C71-40CD-A171-11C52B8A6B78}</td><td>BUSTED_ENGINE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT150</td><td>{1DF3FF44-583A-4274-BB00-C7D03E6D23BE}</td><td>_24</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT151</td><td>{00CA9A50-6C02-4C18-85A2-5CC4FE55F0DB}</td><td>_34</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT152</td><td>{155D978A-A655-4765-9240-C8294B49259A}</td><td>_44</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT153</td><td>{7E9B529D-B254-4765-82F2-8CB2EFC88D09}</td><td>_54</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT154</td><td>{E1D4157F-EF05-4CA5-9B56-BD5AAC3B9BF3}</td><td>_64</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT155</td><td>{2BB160F6-7422-44B4-8832-953E5FAF4581}</td><td>_74</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT156</td><td>{4AAB47E7-0E0B-48A6-9876-D04E6BB4CA6D}</td><td>_84</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT157</td><td>{81FBFB81-FB2C-4197-8F04-599972B23EEF}</td><td>_94</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT158</td><td>{839C4D3F-BE9F-4281-AA93-A96C2742D2D1}</td><td>_18</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT159</td><td>{1041CCA6-916C-480D-A405-4E9C046A032C}</td><td>_04</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT16</td><td>{FB407D21-FA3B-45C9-BF86-C30206BB00A7}</td><td>BUSTED_TRANSMISSION</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT160</td><td>{3D43788B-AE31-4ABF-9351-E1C92E39969B}</td><td>_19</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT161</td><td>{2D5824B9-A80F-4FAD-A37D-22105D118191}</td><td>_25</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT162</td><td>{A53FB1A3-7433-437A-8FB4-3701A789F074}</td><td>_35</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT163</td><td>{8A12F239-8749-4A72-A037-A221DC7272B8}</td><td>_45</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT164</td><td>{BF96E607-8594-4129-BE6B-D595F7E99A9E}</td><td>_55</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT165</td><td>{66C62DB7-E684-4D40-8DD9-D07F88FF22C1}</td><td>_65</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT166</td><td>{6B48EB27-310E-4C0F-B62E-9B5CB6641977}</td><td>_75</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT167</td><td>{EE47E66B-2514-4B77-9558-C8746DC4155A}</td><td>_85</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT168</td><td>{AA4C9E30-66B3-4763-82D0-84636FE008F6}</td><td>_95</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT169</td><td>{AA7A0BA0-634D-4731-8DC8-48C11A8AB23A}</td><td>_20</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT17</td><td>{35A5C419-8122-4AEA-8C2A-D1AABE026E2C}</td><td>MINOR_AERO_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT170</td><td>{D3389F99-FD13-4FB4-AE17-9333E45C0AC8}</td><td>_26</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT171</td><td>{918FC61E-B3B4-4B99-9D7E-F6C18D1CDAA5}</td><td>_27</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT172</td><td>{7459135C-9272-4B29-91FE-CEB4E08A4FAA}</td><td>_28</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT173</td><td>{D2DF5A4D-49E4-4734-8335-86ECAC2B4508}</td><td>OH</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT174</td><td>{720DC4F7-D968-44CF-ABA6-AA86BB815FEF}</td><td>POINT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT175</td><td>{D754FF31-6BFC-45FB-B27C-D1055753CEE3}</td><td>ZEROZERO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT176</td><td>{064F9F35-293B-4180-A01D-BF604527AC2B}</td><td>PEARLS_OF_WISDOM</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT177</td><td>{01E4A6BD-14F3-44B6-8CA9-9DFEADBA01F8}</td><td>KEEP_IT_UP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT178</td><td>{15D28D33-7173-4D2A-AB87-AA4646DF41F3}</td><td>MUST_DO_BETTER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT179</td><td>{452A751A-2D48-4523-A894-B92F4CEF3C61}</td><td>NEUTRAL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT18</td><td>{61A7434F-CC6D-4273-9C67-023CB8535F8D}</td><td>MINOR_ENGINE_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT180</td><td>{27BD48E3-3C48-48F5-8481-E3B72C4F40EE}</td><td>PENALTIES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT181</td><td>{3CE3D372-DCC9-4574-A2CA-C128ED62AE80}</td><td>CUT_TRACK_IN_PRAC_OR_QUAL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT182</td><td>{3E5097D0-BE88-456C-8E37-D9D585526753}</td><td>CUT_TRACK_IN_RACE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT183</td><td>{DA44EEFB-0C02-4EE6-B712-388F4879EF56}</td><td>LAP_DELETED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT184</td><td>{2DBACB0D-D7C2-4DF1-8040-4625ADE0D189}</td><td>NEW_PENALTY_DRIVETHROUGH</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT185</td><td>{8965626E-CC54-4DDD-8CC2-E5BFDF5F5640}</td><td>NEW_PENALTY_STOPGO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT186</td><td>{9D27BF50-9964-451E-867F-61AA8A6CA883}</td><td>PENALTY_DISQUALIFIED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT187</td><td>{B3F1E353-1F04-4FEC-B61B-973C3FC85F42}</td><td>PENALTY_NOT_SERVED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT188</td><td>{E1522550-1043-4902-BE8E-C6CF63269A27}</td><td>PENALTY_ONE_LAP_LEFT_DRIVETHROUGH</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT189</td><td>{1A4CC8C7-52F5-4606-A55D-9D39B737C5ED}</td><td>PENALTY_ONE_LAP_LEFT_STOPGO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT19</td><td>{9B799FE2-A584-4C81-984A-A916F8E1A9EC}</td><td>MINOR_TRANSMISSION_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT190</td><td>{8B438B63-3042-4976-99D3-BF0DB8884307}</td><td>PENALTY_SERVED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT191</td><td>{4C6262CB-3F50-4120-A9D7-7EC40D91A7F0}</td><td>PENALTY_THREE_LAPS_LEFT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT192</td><td>{09F4244B-3BF0-4AFA-A116-0C73089F37C9}</td><td>PENALTY_TWO_LAPS_LEFT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT193</td><td>{B0829D81-E190-421F-B4A3-BD3354367F17}</td><td>PIT_NOW_DRIVE_THROUGH</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT194</td><td>{F88DA8B1-453D-4339-ABFC-C81366F27ADF}</td><td>PIT_NOW_STOP_GO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT195</td><td>{F0501F80-413E-4121-8285-6B1E1C112992}</td><td>TIME_PENALTY</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT196</td><td>{9815872C-E2DE-4885-ACA3-95F17C969D5A}</td><td>YOU_DONT_HAVE_A_PENALTY</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT197</td><td>{54930E9C-1A99-4688-B62A-8988A1223545}</td><td>YOU_HAVE_A_PENALTY</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT198</td><td>{C9024AC8-117A-40F0-8088-8597CD92A32B}</td><td>YOU_STILL_HAVE_A_PENALTY</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT199</td><td>{C3F18483-87CD-4306-896D-41930C830637}</td><td>POSITION</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT2</td><td>{F6D890A4-D67F-4F14-B98C-EBE6E152858A}</td><td>FX</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT20</td><td>{7E43315C-D25E-4218-99C6-52287AA3370F}</td><td>NO_AERO_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT200</td><td>{1953C4DA-D1CE-402E-8D64-4DEA288D8FC3}</td><td>BAD_START</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT201</td><td>{035CECD9-3C56-4BDD-BD26-8713FA64039E}</td><td>CONSISTENTLY_LAST</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT202</td><td>{CEE7D687-D06D-4F91-ABE6-E20E395DCE67}</td><td>GOOD_START</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT203</td><td>{1A3534E4-20A0-46EC-B76F-93EF168CBCD6}</td><td>LAST</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT204</td><td>{8A60A823-0267-4949-A24D-3D9369B4B15A}</td><td>LEADING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT205</td><td>{349ACC85-67A5-4851-A60C-CC28E8F96B28}</td><td>OK_START</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT206</td><td>{9137A160-A01A-442E-A747-F90D5ACC270B}</td><td>P1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT207</td><td>{1E4CA2B0-B28B-4B3E-B43E-CDB3AD0AB7AA}</td><td>P10</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT208</td><td>{7E3FC191-8200-4D81-95D4-B70B7ED3401B}</td><td>P11</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT209</td><td>{052B97BB-DB39-4637-B088-C64CCFACE568}</td><td>P12</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT21</td><td>{CF86D705-DC32-4901-B627-FAB9A7969820}</td><td>NO_ENGINE_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT210</td><td>{DE6512A9-577A-40B9-8EB7-F47C367C642F}</td><td>P13</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT211</td><td>{5749A2DD-AC1E-4285-ADFD-64FAF5F869D5}</td><td>P14</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT212</td><td>{75B5ABE9-3A28-43B2-AA30-A9A0F386715F}</td><td>P15</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT213</td><td>{E1C60168-2861-4C2E-B7DF-5B6422378CA6}</td><td>P16</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT214</td><td>{B5EE07CA-2E47-44F2-917B-374AAF33230F}</td><td>P17</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT215</td><td>{0619FC37-1635-4F42-BCC1-1D799D12DB9E}</td><td>P18</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT216</td><td>{B02C84CD-75CA-4C97-87F5-39CDAEDF5076}</td><td>P19</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT217</td><td>{8E8C17E2-F98B-4E0E-A19D-EFAF83487B6A}</td><td>P2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT218</td><td>{E08E36C5-626E-42EB-BD59-21B6F79295EC}</td><td>P20</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT219</td><td>{B82806D5-F550-4C9F-A562-3D86569B7506}</td><td>P21</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT22</td><td>{6EC6A387-3A4D-4DE6-809E-00447379935A}</td><td>NO_TRANSMISSION_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT220</td><td>{DDE2620E-B84F-43EA-8968-1F9EB3AD7AD4}</td><td>P22</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT221</td><td>{BB070CE3-534F-42DB-BD76-2B9005C5186D}</td><td>P23</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT222</td><td>{6BD3514C-3F52-4000-9748-2244C9C61905}</td><td>P24</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT223</td><td>{0CF525AF-D414-4DA8-8DD3-1C7F1B90AA7B}</td><td>P3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT224</td><td>{265CA006-1FB2-4155-B4E0-9A76D982200D}</td><td>P4</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT225</td><td>{5001CEB4-C163-4BFD-86F0-E1FB6DC88CD7}</td><td>P5</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT226</td><td>{6BDC59A4-E266-41F7-9ABE-C74EA81D53EF}</td><td>P6</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT227</td><td>{94352E47-9A38-4CDB-BAD5-F32244ACE321}</td><td>P7</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT228</td><td>{68C53100-5C6B-420C-BAE4-3DE8DDFB8D88}</td><td>P8</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT229</td><td>{5B1C21E5-6F24-4194-93BF-81459214487B}</td><td>P9</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT23</td><td>{064E7BE4-B1D3-49B4-B69D-AC210757E662}</td><td>SEVERE_AERO_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT230</td><td>{DA599E0D-D8D6-49C9-A2A0-6E1AC43F145C}</td><td>POLE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT231</td><td>{70CA1206-7CD9-4683-A39B-9FD5AE27C81F}</td><td>TERRIBLE_START</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT232</td><td>{C77FB883-D927-473A-97D0-A1C6BEC44483}</td><td>PUSH_NOW</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT233</td><td>{A3F0E3A9-0A66-44A7-B38A-CA270783D0C6}</td><td>PITS_EXIT_CLEAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT234</td><td>{4AAAB9FF-85B5-409F-9B80-D0C1A3E17071}</td><td>PITS_EXIT_TRAFFIC_BEHIND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT235</td><td>{72DAC057-C5D2-4E6D-910D-D930992587A2}</td><td>PUSH_TO_GET_SECOND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT236</td><td>{7043F9B4-17C2-4E31-8F0A-C0CD8655428C}</td><td>PUSH_TO_GET_THIRD</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT237</td><td>{1A7B8C20-F62F-48A1-86D2-8265BC2BADB2}</td><td>PUSH_TO_GET_WIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT238</td><td>{5C185174-A4B0-4522-B9F7-B91FD75A7D65}</td><td>PUSH_TO_HOLD_POSITION</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT239</td><td>{1F3E34B8-2797-4548-83BA-4C55AB70D60B}</td><td>PUSH_TO_IMPROVE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT24</td><td>{D5988AAE-293F-46D0-956E-FF6D7AF29661}</td><td>SEVERE_ENGINE_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT240</td><td>{68D5D814-7ACD-4F86-8DF5-9AFBCA9A3DFC}</td><td>RACE_TIME</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT241</td><td>{BF0DF910-C08C-4F31-BCAB-50633ABB3647}</td><td>FIFTEEN_MINUTES_LEFT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT242</td><td>{719563AB-9E10-4C9F-B87C-8497553B1FFC}</td><td>FIVE_MINUTES_LEFT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT243</td><td>{CD50BC84-2EAD-4BD0-BB94-E4CC2E6A3945}</td><td>FIVE_MINUTES_LEFT_LEADING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT244</td><td>{A126BF87-24EF-4004-AC1B-DBE40424F883}</td><td>INSTALLDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT245</td><td>{E3072594-2786-48CB-9BBD-B0C4C23E8C1B}</td><td>FIVE_MINUTES_LEFT_PODIUM</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT246</td><td>{BBB88BAB-B70A-4651-82E7-7A1C92352FCA}</td><td>HALF_WAY</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT247</td><td>{E0274FBD-27A3-46F5-9706-5EB2C91B5D40}</td><td>LAPS_REMAINING1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT248</td><td>{3D709840-18D5-454E-BF20-86723EF255E1}</td><td>LAST_LAP1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT249</td><td>{F864B6CE-2B7E-4027-A896-BD99514C3CEA}</td><td>LAST_LAP_LEADING1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT25</td><td>{756AEB39-1314-42BC-B23F-43AB82E2A578}</td><td>SEVERE_TRANSMISSION_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT250</td><td>{B0D19F91-0670-4997-88FB-26C589E11244}</td><td>LAST_LAP_TOP_THREE1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT251</td><td>{FCF168DF-1FDE-4471-9390-6F27CD636C04}</td><td>LESS_THAN_ONE_MINUTE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT252</td><td>{32457560-F1E5-4E84-AC54-4AC6C15090BC}</td><td>MINUTES_REMAINING1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT253</td><td>{4C3D2D77-D52B-4680-9748-BECAFDE0B547}</td><td>ONE_MINUTE_REMAINING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT254</td><td>{66E6ECB7-0242-4D96-8320-F3F1320B49BF}</td><td>ONE_MORE_LAP_AFTER_THIS_ONE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT255</td><td>{2F86FACB-F345-48B2-B2C0-CF8F86CF0503}</td><td>TEN_MINUTES_LEFT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT256</td><td>{DCD4AFC9-F466-418E-AF1B-36864B2365D9}</td><td>THIS_IS_THE_LAST_LAP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT257</td><td>{B98CDE00-FB37-42D4-96C8-77BFFA9F75D4}</td><td>TWENTY_MINUTES_LEFT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT258</td><td>{AF6DDBEB-0A60-4C17-ADDF-BAEB7FDCB5C4}</td><td>TWO_MINUTES_LEFT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT259</td><td>{59DE344C-1E71-4ADB-A2D1-40EB7A5E3701}</td><td>RADIO_CHECK</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT26</td><td>{98DF38C2-321A-4485-97F3-4FD3BAD9457C}</td><td>TRIVIAL_AERO_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT260</td><td>{DDF9BF9D-8131-464D-AF8F-48DC57456268}</td><td>TEST</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT261</td><td>{7CBBE501-3635-4BFD-8DF9-A96E2703AA25}</td><td>SPOTTER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT262</td><td>{428E461D-EA70-4806-A77B-70BC9E5687C1}</td><td>CLEAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT263</td><td>{2D6131F5-C6E7-46E6-9768-0C80C882D9B6}</td><td>HOLD_YOUR_LINE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT264</td><td>{E7FB1263-9B9F-4FFD-A363-978EC479EEDB}</td><td>STILL_THERE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT265</td><td>{614AA054-6F5F-4BF8-96FF-A858089D3551}</td><td>TIMINGS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT266</td><td>{850EA99E-1899-4BED-B34A-8A2528B16D61}</td><td>BEING_HELD_UP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT267</td><td>{361028E0-5D01-4AB9-BAA8-48752FC33EB6}</td><td>BEING_PRESSURED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT268</td><td>{46AB02C2-9B05-4413-8A05-6913053202AA}</td><td>GAP_BEHIND_DECREASING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT269</td><td>{6F9D7B57-6461-4022-883C-0F3853151EDA}</td><td>GAP_BEHIND_INCREASING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT27</td><td>{8A2CAED0-E1E0-4607-A1DB-51989119DB3F}</td><td>ENGINE_MONITOR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT270</td><td>{5CAAA633-0D5B-469E-9CF5-7C738BAC6A7D}</td><td>GAP_IN_FRONT_DECREASING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT271</td><td>{8550E474-668D-4C63-A8F3-F0ADCFE1F942}</td><td>GAP_IN_FRONT_INCREASING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT272</td><td>{A83BFD71-11ED-4EED-8B7F-8E5213DFB10E}</td><td>SECONDS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT273</td><td>{E064FA73-5456-4810-AA68-2E86438E04BF}</td><td>TYRE_MONITOR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT274</td><td>{26508E1D-861B-42EB-9CBB-05851EF52807}</td><td>GOOD_TEMPS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT275</td><td>{F9D111AD-3195-4ECB-8C8E-D833CABBADD8}</td><td>GOOD_WEAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT276</td><td>{331C04F7-4B90-4A2D-B992-8FDCA44C4184}</td><td>HOT_ALL_ROUND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT277</td><td>{55B5900C-2544-4246-B7AB-19D2B02DCA2E}</td><td>HOT_FRONTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT278</td><td>{B67F76B0-A2C0-4B7B-81B3-38EA74024D1F}</td><td>HOT_LEFTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT279</td><td>{8ED208FD-07D9-4D1C-98A3-C5416C1E9AB2}</td><td>HOT_LEFT_FRONT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT28</td><td>{9D1B3F3A-214F-4D20-8CEA-7E21841C6A8F}</td><td>ALL_CLEAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT280</td><td>{74D2938F-B960-4012-A98E-EBCD34AC0B9D}</td><td>HOT_LEFT_REAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT281</td><td>{3C51B349-3A2A-4EA4-A81E-7A4EFAE8FF52}</td><td>HOT_REARS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT282</td><td>{DDDCBAFC-6996-4F36-8FD7-64DEB00E9AE9}</td><td>HOT_RIGHTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT283</td><td>{971D207D-B0B5-4506-8DC3-F69A3D98BE75}</td><td>HOT_RIGHT_FRONT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT284</td><td>{C88B8714-5970-4EBE-A1D9-D61CE8152409}</td><td>HOT_RIGHT_REAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT285</td><td>{F9A67714-E435-4BDE-8821-1C3420AFF3BE}</td><td>KNACKERED_ALL_ROUND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT286</td><td>{BDE61427-3B8C-4ED3-BF67-752130E5C3C5}</td><td>KNACKERED_FRONTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT287</td><td>{438D6E1D-6480-43FE-8A76-670E98AEDCEE}</td><td>KNACKERED_LEFTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT288</td><td>{943176E4-E54C-499C-A820-50CE00760223}</td><td>KNACKERED_LEFT_FRONT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT289</td><td>{2FCED4F6-5DDD-43CB-AFB5-3E1D47C67EF9}</td><td>KNACKERED_LEFT_REAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT29</td><td>{61DFF4B8-4DC2-4025-AA35-30009CB785EE}</td><td>HOT_OIL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT290</td><td>{32E0C878-10D6-4600-9F03-F93CE5779666}</td><td>KNACKERED_REARS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT291</td><td>{F9441BA7-CBCF-47E7-B55B-27EEE849927E}</td><td>KNACKERED_RIGHTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT292</td><td>{44017199-B8CE-4151-9095-D5C583412366}</td><td>KNACKERED_RIGHT_FRONT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT293</td><td>{AB79588C-8751-42E5-9759-D947ABD83217}</td><td>KNACKERED_RIGHT_REAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT294</td><td>{602598BC-27E5-4D69-910B-327D9E118EF4}</td><td>LAPS_ON_CURRENT_TYRES_INTRO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT295</td><td>{5B84EBE5-218E-427C-AB93-B4D0C6CD49C2}</td><td>LAPS_ON_CURRENT_TYRES_OUTRO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT296</td><td>{0E9122C4-52C8-40F6-BF88-C9167E2CC845}</td><td>MINUTES_ON_CURRENT_TYRES_INTRO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT297</td><td>{9D721AED-5471-492D-8957-0958680DABD6}</td><td>MINUTES_ON_CURRENT_TYRES_OUTRO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT298</td><td>{5DB0723B-7750-49C4-98F1-B1653E242D69}</td><td>WORN_ALL_ROUND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT299</td><td>{C2165996-4ECF-46ED-8C40-010FE21A8A63}</td><td>WORN_FRONTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT3</td><td>{560E3D06-08C1-45D9-ADCA-45B3927C5B25}</td><td>VOICE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT30</td><td>{C6CF94A5-B76F-4AB6-8B39-36C451C966F7}</td><td>HOT_OIL_AND_WATER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT300</td><td>{794986FD-1C54-43B0-ABAE-22D658AB35C2}</td><td>WORN_LEFTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT301</td><td>{A4EB7B4A-61F9-45AE-925D-AEBD216ECE63}</td><td>WORN_LEFT_FRONT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT302</td><td>{8921E801-ADB0-47F0-A92A-FA6E8D7B379D}</td><td>WORN_LEFT_REAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT303</td><td>{426075CD-FB93-4FFA-A450-B3FE7F25B251}</td><td>WORN_REARS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT304</td><td>{D31CD5ED-1B39-4C7A-919A-C54DE048317F}</td><td>WORN_RIGHTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT305</td><td>{959076BD-0ED3-47F6-8C6B-EC205BAE1E26}</td><td>WORN_RIGHT_FRONT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT306</td><td>{6A8D4F37-E43D-4E98-BBAA-6EEAA4C10D94}</td><td>WORN_RIGHT_REAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT31</td><td>{D6BA369D-A87A-4673-8411-FF40427D5E81}</td><td>HOT_WATER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT32</td><td>{67F5BB00-2643-4DB0-9733-B104F9B40295}</td><td>FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT33</td><td>{6FE23802-B7CF-419D-A3E9-C5991A4D802B}</td><td>FIVE_MINUTES_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT34</td><td>{C3E91F31-9EF3-4D49-A90D-A6EF3762D4AC}</td><td>FOUR_LAPS_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT35</td><td>{95ED61DF-9F2A-42FA-BD6D-377310DD0424}</td><td>HALF_DISTANCE_GOOD_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT36</td><td>{6A7E9047-DD59-40A2-8306-D7B261F54EC1}</td><td>HALF_DISTANCE_LOW_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT37</td><td>{0AA3808E-2649-4330-B160-87C77DA15E76}</td><td>HALF_TANK_WARNING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT38</td><td>{37B064A1-AD4D-44D0-8DDC-510AAECD786A}</td><td>LAPS_REMAINING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT39</td><td>{40E4FCA8-C4B1-4D62-B5B8-7A7157F53F0C}</td><td>MINUTES_REMAINING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT4</td><td>{A1C41BC4-5D70-48F2-9CB1-3A10C1D4BE07}</td><td>ACKNOWLEDGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT40</td><td>{281B92D7-F7C2-453A-9F12-E4E9A8E2D0B5}</td><td>ONE_LAP_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT41</td><td>{9EEF2415-B27C-45B7-A4B8-39A94E3D49AA}</td><td>PLENTY_OF_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT42</td><td>{CD8ADD01-78EF-4FAB-8224-68A40656C368}</td><td>TEN_MINUTES_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT43</td><td>{32A0BBB2-0E37-43BF-838F-150C6916D364}</td><td>THREE_LAPS_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT44</td><td>{45785FAD-15CC-415A-9E35-C2B7AA2C526D}</td><td>TWO_LAPS_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT45</td><td>{3511E721-32C9-4F20-A120-F0C758C8C360}</td><td>TWO_MINUTES_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT46</td><td>{A1DA40F5-8EDA-4AAB-8FA5-DA18CD08380F}</td><td>WE_ESTIMATE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT47</td><td>{D78A6516-0F9A-4261-BF1E-9710153FDA33}</td><td>LAP_COUNTER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT48</td><td>{F86C5F06-6D28-4EB6-BA42-23196BA97B43}</td><td>END_OF_SESSION</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT49</td><td>{E33EA31E-84B8-4AE3-BF7F-552C0C4369C0}</td><td>END_OF_SESSION_POLE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT5</td><td>{E79AC152-9F13-48BF-A4E3-6860E55F943E}</td><td>DIDNT_UNDERSTAND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT50</td><td>{2F244ADD-62DE-4AD7-B816-C1FA7F21D4EE}</td><td>FINISHED_RACE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT51</td><td>{737F3C2E-5FB7-4361-800E-6F9ACA3FEE53}</td><td>FINISHED_RACE_LAST</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT52</td><td>{A5910BDE-019A-45F1-8358-E4A076541C00}</td><td>GET_READY</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT53</td><td>{30EC1891-C386-4584-9580-015D3762D2D6}</td><td>GREEN_GREEN_GREEN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT54</td><td>{C814385C-552B-4FCA-939C-FDEE1BB0289E}</td><td>LAST_LAP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT55</td><td>{488848CA-06B1-4AC4-87DB-24EC1DF23CC0}</td><td>LAST_LAP_LEADING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT56</td><td>{6C6A8070-C072-47AB-A464-8ECCDAE26DDF}</td><td>LAST_LAP_TOP_THREE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT57</td><td>{919D355A-2DAB-495C-87CB-D7E3610E9BD3}</td><td>PODIUM_FINISH</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT58</td><td>{F578A200-D9C9-42AF-B38B-A16818970FEE}</td><td>TWO_TO_GO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT59</td><td>{F08188BB-7404-4FBA-8F7C-92F7565834E9}</td><td>TWO_TO_GO_LEADING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT6</td><td>{D47C5C2B-0BC8-4128-AD18-8C33F6972F4C}</td><td>KEEPQUIETDISABLED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT60</td><td>{B6A01962-7D1A-4B79-BE5D-4542903A1225}</td><td>TWO_TO_GO_TOP_THREE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT61</td><td>{11DA4533-7D74-49B2-A565-6473D7D5DB6F}</td><td>WON_RACE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT62</td><td>{D2A7174F-8619-4F30-A4CB-A2ADC525FC38}</td><td>LAP_TIMES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT63</td><td>{83A7F95E-E24B-411E-A98A-7E33E1D6E964}</td><td>BEST_LAP_IN_RACE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT64</td><td>{882C8B61-B995-4F43-BD41-E5D47BE797F0}</td><td>BEST_LAP_IN_RACE_FOR_CLASS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT65</td><td>{2D842918-7720-48E9-8582-D72307589E72}</td><td>CONSISTENT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT66</td><td>{649C6253-D3EE-4793-AAA4-C26B9228E5E3}</td><td>FASTEST_IN_YOUR_CLASS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT67</td><td>{C64F090A-B9ED-437A-9CCE-F165E2683CDD}</td><td>GAP_INTRO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT68</td><td>{8A205662-1F73-430D-8073-7A0C0785E72C}</td><td>GAP_OUTRO_OFF_PACE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT69</td><td>{15747CF1-DB1E-4278-A560-EC1702889D84}</td><td>GOOD_LAP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT7</td><td>{C7C4DF8C-A8CB-4EF1-8B29-8EFBD819D9F4}</td><td>KEEPQUIETENABLED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT70</td><td>{E3D5E6C2-5D48-4C07-8A7A-125989E7EB23}</td><td>IMPROVING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT71</td><td>{FAED9961-A263-4FE2-AFC6-8A0F6C87FD3C}</td><td>LESS_THAN_A_TENTH_OFF_THE_PACE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT72</td><td>{459FA62F-0D60-4B09-8CAB-44B2ADABF2C7}</td><td>NEED_TO_FIND_A_FEW_MORE_TENTHS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT73</td><td>{1CBCF3E4-556D-41E3-8735-179263B34D19}</td><td>NEED_TO_FIND_A_SECOND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT74</td><td>{8B11D404-61EC-4C1A-932F-1D4CDA8E6141}</td><td>NEED_TO_FIND_MORE_THAN_A_SECOND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT75</td><td>{6CD7E838-96EB-4144-8406-9221AFE657E3}</td><td>NEED_TO_FIND_ONE_MORE_TENTH</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT76</td><td>{EB7E185F-ED6E-43C7-A338-05A4E607DA16}</td><td>PACE_BAD</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT77</td><td>{459AB987-CFD8-4D19-BF82-084BF6C66A29}</td><td>PACE_GOOD</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT78</td><td>{80DC705C-C149-4C61-983A-3737E3B08A15}</td><td>PACE_OK</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT79</td><td>{3540C356-8CFA-44AC-BA98-DD20BAE6EEDF}</td><td>PERSONAL_BEST</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT8</td><td>{0D86C643-7B9B-4828-A8FA-2EE7BDC29DE6}</td><td>NO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT80</td><td>{287F903A-B5DA-4822-9919-C9FD2D2EF391}</td><td>QUICKER_THAN_SECOND_PLACE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT81</td><td>{8CE6AADE-69C5-491D-9295-5FCE4D1A56C3}</td><td>QUICKEST_IN_CLASS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT82</td><td>{849011CA-7115-480A-B6B5-A938853D2C9E}</td><td>QUICKEST_OVERALL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT83</td><td>{F1539363-C4E2-4E3A-AAB0-55AB7D36E72B}</td><td>TIME_INTRO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT84</td><td>{71AEEFFB-2943-435A-B646-86A27B3DD8D8}</td><td>WORSENING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT85</td><td>{1A53B7B2-698D-4FFA-B5F2-24D990BB1FF8}</td><td>MANDATORY_PIT_STOPS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT86</td><td>{2D975147-812C-4CA8-87E6-7FAFA42E080F}</td><td>MINUTES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT87</td><td>{92901D2D-BC63-4C5F-935B-33453F6F5406}</td><td>MISSED_STOP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT88</td><td>{FD1C6F84-2765-430B-906A-BE4710F756B6}</td><td>OPTIONS_TO_PRIMES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT89</td><td>{84494CBD-C448-49C7-9E39-A151E4873D16}</td><td>PIT_NOW</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT9</td><td>{C9933B49-3C36-41E3-B4E5-47E3794347BE}</td><td>NO_DATA</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT90</td><td>{0AF266CA-6F3D-4442-801B-7C185347217E}</td><td>PIT_THIS_LAP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT91</td><td>{D792C08F-67F3-4762-AB06-29C00335032A}</td><td>PIT_THIS_LAP_TOO_LATE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT92</td><td>{0D0BDC2E-7915-48EA-82BC-423D90BFCF17}</td><td>PIT_WINDOW_CLOSED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT93</td><td>{9E963455-4A04-4821-8DFD-4FF17DF941E3}</td><td>PIT_WINDOW_CLOSES_1_MIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT94</td><td>{E9ACA9AE-193B-4C8F-AF7E-17B11F6954E1}</td><td>PIT_WINDOW_CLOSES_2_MIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT95</td><td>{C0F13F3B-D6AC-4307-8555-47BCBAA91ABB}</td><td>PIT_WINDOW_CLOSING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT96</td><td>{99527D4B-87B4-43E5-B22A-8A4A0478911D}</td><td>PIT_WINDOW_OPEN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT97</td><td>{0F422EB9-89BE-4DDB-80A9-753D566509C3}</td><td>PIT_WINDOW_OPENING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT98</td><td>{8E96CB6D-BC96-4EAA-907D-D42ABFFBB2DB}</td><td>PIT_WINDOW_OPENS_1_MIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT99</td><td>{CE925BE6-6DE2-4E26-925B-ABFFF400926A}</td><td>PIT_WINDOW_OPENS_2_MIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
	</table>

	<table name="Condition">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="i2">Level</col>
		<col def="S255">Condition</col>
	</table>

	<table name="Control">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control</col>
		<col def="s20">Type</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="S72">Property</col>
		<col def="L0">Text</col>
		<col def="S50">Control_Next</col>
		<col def="L50">Help</col>
		<col def="I4">ISWindowStyle</col>
		<col def="I4">ISControlId</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="S72">Binary_</col>
		<row><td>AdminChangeFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>AdminChangeFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ComboText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Combo</td><td>DirectoryCombo</td><td>21</td><td>64</td><td>277</td><td>80</td><td>458755</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_4##</td><td>Up</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>ComboText</td><td>Text</td><td>21</td><td>50</td><td>99</td><td>14</td><td>3</td><td/><td>##IDS__IsAdminInstallBrowse_LookIn##</td><td>Combo</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallBrowse_BrowseDestination##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallBrowse_ChangeDestination##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>List</td><td>DirectoryList</td><td>21</td><td>90</td><td>332</td><td>97</td><td>7</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_8##</td><td>TailText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>NewFolder</td><td>PushButton</td><td>335</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>List</td><td>##IDS__IsAdminInstallBrowse_CreateFolder##</td><td>0</td><td/><td/><td>NewBinary2</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Tail</td><td>PathEdit</td><td>21</td><td>207</td><td>332</td><td>17</td><td>3</td><td>TARGETDIR</td><td>##IDS__IsAdminInstallBrowse_11##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>TailText</td><td>Text</td><td>21</td><td>193</td><td>99</td><td>13</td><td>3</td><td/><td>##IDS__IsAdminInstallBrowse_FolderName##</td><td>Tail</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminChangeFolder</td><td>Up</td><td>PushButton</td><td>310</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>NewFolder</td><td>##IDS__IsAdminInstallBrowse_UpOneLevel##</td><td>0</td><td/><td/><td>NewBinary3</td></row>
		<row><td>AdminNetworkLocation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>InstallNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>AdminNetworkLocation</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Browse</td><td>PushButton</td><td>286</td><td>124</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_Change##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>SetupPathEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallPoint_SpecifyNetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>40</td><td>131075</td><td/><td>##IDS__IsAdminInstallPoint_EnterNetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsAdminInstallPoint_NetworkLocationFormatted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_Install##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>LBBrowse</td><td>Text</td><td>21</td><td>90</td><td>100</td><td>10</td><td>3</td><td/><td>##IDS__IsAdminInstallPoint_NetworkLocation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminNetworkLocation</td><td>SetupPathEdit</td><td>PathEdit</td><td>21</td><td>102</td><td>330</td><td>17</td><td>3</td><td>TARGETDIR</td><td/><td>Browse</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>AdminWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsAdminInstallPointWelcome_Wizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>AdminWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsAdminInstallPointWelcome_ServerImage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Icon</td><td>Icon</td><td>15</td><td>15</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary4</td></row>
		<row><td>CancelSetup</td><td>No</td><td>PushButton</td><td>135</td><td>57</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCancelDlg_No##</td><td>Yes</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Text</td><td>Text</td><td>48</td><td>15</td><td>194</td><td>30</td><td>131075</td><td/><td>##IDS__IsCancelDlg_ConfirmCancel##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CancelSetup</td><td>Yes</td><td>PushButton</td><td>62</td><td>57</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCancelDlg_Yes##</td><td>No</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomSetup</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Tree</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>203</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Change##</td><td>Help</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Details</td><td>PushButton</td><td>93</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Space##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgDesc</td><td>Text</td><td>17</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsCustomSelectionDlg_SelectFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgText</td><td>Text</td><td>9</td><td>51</td><td>360</td><td>10</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_ClickFeatureIcon##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>DlgTitle</td><td>Text</td><td>9</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsCustomSelectionDlg_CustomSetup##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>FeatureGroup</td><td>GroupBox</td><td>235</td><td>67</td><td>131</td><td>120</td><td>1</td><td/><td>##IDS__IsCustomSelectionDlg_FeatureDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Help</td><td>PushButton</td><td>22</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_Help##</td><td>Details</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>InstallLabel</td><td>Text</td><td>8</td><td>190</td><td>360</td><td>10</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_InstallTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>ItemDescription</td><td>Text</td><td>241</td><td>80</td><td>120</td><td>50</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_MultilineDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Location</td><td>Text</td><td>8</td><td>203</td><td>291</td><td>20</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_FeaturePath##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Size</td><td>Text</td><td>241</td><td>133</td><td>120</td><td>50</td><td>3</td><td/><td>##IDS__IsCustomSelectionDlg_FeatureSize##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetup</td><td>Tree</td><td>SelectionTree</td><td>8</td><td>70</td><td>220</td><td>118</td><td>7</td><td>_BrowseProperty</td><td/><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomSetupTips</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS_SetupTips_CustomSetupDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS_SetupTips_CustomSetup##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>DontInstall</td><td>Icon</td><td>21</td><td>155</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary14</td></row>
		<row><td>CustomSetupTips</td><td>DontInstallText</td><td>Text</td><td>60</td><td>155</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_WillNotBeInstalled##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>FirstInstallText</td><td>Text</td><td>60</td><td>180</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_Advertise##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>Install</td><td>Icon</td><td>21</td><td>105</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary15</td></row>
		<row><td>CustomSetupTips</td><td>InstallFirstUse</td><td>Icon</td><td>21</td><td>180</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary16</td></row>
		<row><td>CustomSetupTips</td><td>InstallPartial</td><td>Icon</td><td>21</td><td>130</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary17</td></row>
		<row><td>CustomSetupTips</td><td>InstallStateMenu</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary18</td></row>
		<row><td>CustomSetupTips</td><td>InstallStateText</td><td>Text</td><td>21</td><td>91</td><td>300</td><td>10</td><td>3</td><td/><td>##IDS_SetupTips_InstallState##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>CustomSetupTips</td><td>InstallText</td><td>Text</td><td>60</td><td>105</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_AllInstalledLocal##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>MenuText</td><td>Text</td><td>50</td><td>52</td><td>300</td><td>36</td><td>3</td><td/><td>##IDS_SetupTips_IconInstallState##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>NetworkInstall</td><td>Icon</td><td>21</td><td>205</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary13</td></row>
		<row><td>CustomSetupTips</td><td>NetworkInstallText</td><td>Text</td><td>60</td><td>205</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_Network##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>OK</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_SetupTips_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomSetupTips</td><td>PartialText</td><td>Text</td><td>60</td><td>130</td><td>300</td><td>20</td><td>3</td><td/><td>##IDS_SetupTips_SubFeaturesInstalledLocal##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>CustomerInformation</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>NameLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>CompanyEdit</td><td>Edit</td><td>21</td><td>100</td><td>237</td><td>17</td><td>3</td><td>COMPANYNAME</td><td>##IDS__IsRegisterUserDlg_Tahoma80##</td><td>SerialLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>CompanyLabel</td><td>Text</td><td>21</td><td>89</td><td>75</td><td>10</td><td>3</td><td/><td>##IDS__IsRegisterUserDlg_Organization##</td><td>CompanyEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsRegisterUserDlg_PleaseEnterInfo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Text</td><td>21</td><td>161</td><td>300</td><td>14</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_InstallFor##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsRegisterUserDlg_CustomerInformation##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>NameEdit</td><td>Edit</td><td>21</td><td>63</td><td>237</td><td>17</td><td>3</td><td>USERNAME</td><td>##IDS__IsRegisterUserDlg_Tahoma50##</td><td>CompanyLabel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>NameLabel</td><td>Text</td><td>21</td><td>52</td><td>75</td><td>10</td><td>3</td><td/><td>##IDS__IsRegisterUserDlg_UserName##</td><td>NameEdit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>63</td><td>170</td><td>300</td><td>50</td><td>2</td><td>ApplicationUsers</td><td>##IDS__IsRegisterUserDlg_16##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>SerialLabel</td><td>Text</td><td>21</td><td>127</td><td>109</td><td>10</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_SerialNumber##</td><td>SerialNumber</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>CustomerInformation</td><td>SerialNumber</td><td>MaskedEdit</td><td>21</td><td>138</td><td>237</td><td>17</td><td>2</td><td>ISX_SERIALNUM</td><td/><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DatabaseFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>65</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CHANGE##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DatabaseFolder</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary12</td></row>
		<row><td>DatabaseFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DatabaseFolder_ChangeFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DatabaseFolder_DatabaseFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>LocLabel</td><td>Text</td><td>57</td><td>52</td><td>290</td><td>10</td><td>131075</td><td/><td>##IDS_DatabaseFolder_InstallDatabaseTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Location</td><td>Text</td><td>57</td><td>65</td><td>240</td><td>40</td><td>3</td><td>_BrowseProperty</td><td>##IDS__DatabaseFolder_DatabaseDir##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DatabaseFolder</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DestinationFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ChangeFolder</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>PushButton</td><td>301</td><td>65</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__DestinationFolder_Change##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DestFolder</td><td>Icon</td><td>21</td><td>52</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary12</td></row>
		<row><td>DestinationFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DestinationFolder_ChangeFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__DestinationFolder_DestinationFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>LocLabel</td><td>Text</td><td>57</td><td>52</td><td>290</td><td>10</td><td>131075</td><td/><td>##IDS__DestinationFolder_InstallTo##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Location</td><td>Text</td><td>57</td><td>65</td><td>240</td><td>40</td><td>3</td><td>_BrowseProperty</td><td>##IDS_INSTALLDIR##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DestinationFolder</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>DiskSpaceRequirements</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgDesc</td><td>Text</td><td>17</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFeatureDetailsDlg_SpaceRequired##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgText</td><td>Text</td><td>10</td><td>185</td><td>358</td><td>41</td><td>3</td><td/><td>##IDS__IsFeatureDetailsDlg_VolumesTooSmall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>DlgTitle</td><td>Text</td><td>9</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFeatureDetailsDlg_DiskSpaceRequirements##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>List</td><td>VolumeCostList</td><td>8</td><td>55</td><td>358</td><td>125</td><td>393223</td><td/><td>##IDS__IsFeatureDetailsDlg_Numbers##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>DiskSpaceRequirements</td><td>OK</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFeatureDetailsDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>FilesInUse</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUseMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>348</td><td>33</td><td>3</td><td/><td>##IDS__IsFilesInUse_ApplicationsUsingFiles##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUse##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Exit</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Exit##</td><td>List</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Ignore</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Ignore##</td><td>Exit</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>List</td><td>ListBox</td><td>21</td><td>87</td><td>331</td><td>135</td><td>7</td><td>FileInUseProcess</td><td/><td>Retry</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>FilesInUse</td><td>Retry</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFilesInUse_Retry##</td><td>Ignore</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>InstallChangeFolder</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ComboText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Combo</td><td>DirectoryCombo</td><td>21</td><td>64</td><td>277</td><td>80</td><td>4128779</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_4##</td><td>Up</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>ComboText</td><td>Text</td><td>21</td><td>50</td><td>99</td><td>14</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_LookIn##</td><td>Combo</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsBrowseFolderDlg_BrowseDestFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsBrowseFolderDlg_ChangeCurrentFolder##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>List</td><td>DirectoryList</td><td>21</td><td>90</td><td>332</td><td>97</td><td>15</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_8##</td><td>TailText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>NewFolder</td><td>PushButton</td><td>335</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>List</td><td>##IDS__IsBrowseFolderDlg_CreateFolder##</td><td>0</td><td/><td/><td>NewBinary2</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Tail</td><td>PathEdit</td><td>21</td><td>207</td><td>332</td><td>17</td><td>15</td><td>_BrowseProperty</td><td>##IDS__IsBrowseFolderDlg_11##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>TailText</td><td>Text</td><td>21</td><td>193</td><td>99</td><td>13</td><td>3</td><td/><td>##IDS__IsBrowseFolderDlg_FolderName##</td><td>Tail</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallChangeFolder</td><td>Up</td><td>PushButton</td><td>310</td><td>66</td><td>19</td><td>19</td><td>3670019</td><td/><td/><td>NewFolder</td><td>##IDS__IsBrowseFolderDlg_UpOneLevel##</td><td>0</td><td/><td/><td>NewBinary3</td></row>
		<row><td>InstallWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Copyright</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Text</td><td>135</td><td>144</td><td>228</td><td>73</td><td>65539</td><td/><td>##IDS__IsWelcomeDlg_WarningCopyright##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>InstallWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsWelcomeDlg_WelcomeProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>InstallWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsWelcomeDlg_InstallProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Agree</td><td>RadioButtonGroup</td><td>8</td><td>190</td><td>291</td><td>40</td><td>3</td><td>AgreeToLicense</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>LicenseAgreement</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>ISPrintButton</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsLicenseDlg_ReadLicenseAgreement##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsLicenseDlg_LicenseAgreement##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>ISPrintButton</td><td>PushButton</td><td>301</td><td>188</td><td>65</td><td>17</td><td>3</td><td/><td>##IDS_PRINT_BUTTON##</td><td>Agree</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>LicenseAgreement</td><td>Memo</td><td>ScrollableText</td><td>8</td><td>55</td><td>358</td><td>130</td><td>7</td><td/><td/><td/><td/><td>0</td><td/><td>&lt;ISProductFolder&gt;\Redist\0409\Eula.rtf</td><td/></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>MaintenanceType</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsMaintenanceDlg_MaitenanceOptions##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsMaintenanceDlg_ProgramMaintenance##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Ico1</td><td>Icon</td><td>35</td><td>75</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary6</td></row>
		<row><td>MaintenanceType</td><td>Ico2</td><td>Icon</td><td>35</td><td>135</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary7</td></row>
		<row><td>MaintenanceType</td><td>Ico3</td><td>Icon</td><td>35</td><td>195</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary8</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>21</td><td>55</td><td>290</td><td>170</td><td>3</td><td>_IsMaintenance</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text1</td><td>Text</td><td>80</td><td>72</td><td>260</td><td>35</td><td>3</td><td/><td>##IDS__IsMaintenanceDlg_ChangeFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text2</td><td>Text</td><td>80</td><td>135</td><td>260</td><td>35</td><td>3</td><td/><td>##IDS__IsMaintenanceDlg_RepairMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceType</td><td>Text3</td><td>Text</td><td>80</td><td>192</td><td>260</td><td>35</td><td>131075</td><td/><td>##IDS__IsMaintenanceDlg_RemoveProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>MaintenanceWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsMaintenanceWelcome_WizardWelcome##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MaintenanceWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>50</td><td>196611</td><td/><td>##IDS__IsMaintenanceWelcome_MaintenanceOptionsDescription##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>MsiRMFilesInUse</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Restart</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUseMessage##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>348</td><td>14</td><td>3</td><td/><td>##IDS__IsMsiRMFilesInUse_ApplicationsUsingFiles##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsFilesInUse_FilesInUse##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>List</td><td>ListBox</td><td>21</td><td>66</td><td>331</td><td>130</td><td>3</td><td>FileInUseProcess</td><td/><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_OK##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>MsiRMFilesInUse</td><td>Restart</td><td>RadioButtonGroup</td><td>19</td><td>187</td><td>343</td><td>40</td><td>3</td><td>RestartManagerOption</td><td/><td>List</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>OutOfSpace</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsDiskSpaceDlg_DiskSpace##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>43</td><td>3</td><td/><td>##IDS__IsDiskSpaceDlg_HighlightedVolumes##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsDiskSpaceDlg_OutOfDiskSpace##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>List</td><td>VolumeCostList</td><td>21</td><td>95</td><td>332</td><td>120</td><td>393223</td><td/><td>##IDS__IsDiskSpaceDlg_Numbers##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsDiskSpaceDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsPatchDlg_Update##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsPatchDlg_WelcomePatchWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>PatchWelcome</td><td>TextLine2</td><td>Text</td><td>135</td><td>54</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsPatchDlg_PatchClickUpdate##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>3</td><td/><td/><td>DlgTitle</td><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadmeInformation</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS__IsReadmeDlg_Cancel##</td><td>Readme</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>232</td><td>16</td><td>65539</td><td/><td>##IDS__IsReadmeDlg_PleaseReadInfo##</td><td>Back</td><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>3</td><td/><td/><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadmeInformation</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>193</td><td>13</td><td>65539</td><td/><td>##IDS__IsReadmeDlg_ReadMeInfo##</td><td>DlgDesc</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1048579</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadmeInformation</td><td>Readme</td><td>ScrollableText</td><td>10</td><td>55</td><td>353</td><td>166</td><td>3</td><td/><td/><td>Banner</td><td/><td>0</td><td/><td>&lt;ISProductFolder&gt;\Redist\0409\Readme.rtf</td><td/></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>GroupBox1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadyToInstall</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>CompanyNameText</td><td>Text</td><td>38</td><td>198</td><td>211</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Company##</td><td>SerialNumberText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>CurrentSettingsText</td><td>Text</td><td>19</td><td>80</td><td>81</td><td>10</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_CurrentSettings##</td><td>InstallNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyReadyDlg_WizardReady##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgText1</td><td>Text</td><td>21</td><td>54</td><td>330</td><td>24</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_BackOrCancel##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Text</td><td>21</td><td>99</td><td>330</td><td>20</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_InstallFor##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ModifyReady##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle2</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ReadyRepair##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>DlgTitle3</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsVerifyReadyDlg_ReadyInstall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>GroupBox1</td><td>Text</td><td>19</td><td>92</td><td>330</td><td>133</td><td>65541</td><td/><td/><td>SetupTypeText1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>8388611</td><td/><td>##IDS__IsVerifyReadyDlg_Install##</td><td>InstallPerMachine</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>PushButton</td><td>63</td><td>123</td><td>248</td><td>17</td><td>8388610</td><td/><td>##IDS__IsRegisterUserDlg_Anyone##</td><td>InstallPerUser</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>PushButton</td><td>63</td><td>143</td><td>248</td><td>17</td><td>2</td><td/><td>##IDS__IsRegisterUserDlg_OnlyMe##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Text</td><td>38</td><td>211</td><td>306</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Serial##</td><td>CurrentSettingsText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText1</td><td>Text</td><td>23</td><td>97</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_SetupType##</td><td>SetupTypeText2</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText2</td><td>Text</td><td>37</td><td>114</td><td>306</td><td>14</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_SelectedSetupType##</td><td>TargetFolderText1</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText1</td><td>Text</td><td>24</td><td>136</td><td>306</td><td>11</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_DestFolder##</td><td>TargetFolderText2</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText2</td><td>Text</td><td>37</td><td>151</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_Installdir##</td><td>UserInformationText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>UserInformationText</td><td>Text</td><td>23</td><td>171</td><td>306</td><td>13</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_UserInfo##</td><td>UserNameText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToInstall</td><td>UserNameText</td><td>Text</td><td>38</td><td>184</td><td>306</td><td>9</td><td>3</td><td/><td>##IDS__IsVerifyReadyDlg_UserName##</td><td>CompanyNameText</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>RemoveNow</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>ReadyToRemove</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ChoseRemoveProgram##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText</td><td>Text</td><td>21</td><td>51</td><td>326</td><td>24</td><td>131075</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ClickRemove##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText1</td><td>Text</td><td>21</td><td>79</td><td>330</td><td>23</td><td>3</td><td/><td>##IDS__IsVerifyRemoveAllDlg_ClickBack##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgText2</td><td>Text</td><td>21</td><td>102</td><td>330</td><td>24</td><td>3</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsVerifyRemoveAllDlg_RemoveProgram##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>8388611</td><td/><td>##IDS__IsVerifyRemoveAllDlg_Remove##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Finish</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>172</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsFatalError_Finish##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsFatalError_NotModified##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsFatalError_ClickFinish##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsFatalError_KeepOrRestore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsFatalError_RestoreOrContinueLater##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>172</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsFatalError_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteError</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>25</td><td>196611</td><td/><td>##IDS__IsFatalError_WizardInterrupted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>OK</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckBoxUpdates</td><td>CheckBox</td><td>135</td><td>164</td><td>10</td><td>9</td><td>2</td><td>ISCHECKFORPRODUCTUPDATES</td><td>CheckBox1</td><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckForUpdatesText</td><td>Text</td><td>152</td><td>162</td><td>190</td><td>30</td><td>65538</td><td/><td>##IDS__IsExitDialog_Update_YesCheckForUpdates##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchProgram</td><td>CheckBox</td><td>151</td><td>114</td><td>10</td><td>9</td><td>2</td><td>LAUNCHPROGRAM</td><td/><td>CheckLaunchReadme</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchReadme</td><td>CheckBox</td><td>151</td><td>148</td><td>10</td><td>9</td><td>2</td><td>LAUNCHREADME</td><td/><td>CheckBoxUpdates</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>182</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckLaunchProgram</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchProgramText</td><td>Text</td><td>164</td><td>112</td><td>98</td><td>15</td><td>65538</td><td/><td>##IDS__IsExitDialog_LaunchProgram##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchReadmeText</td><td>Text</td><td>164</td><td>148</td><td>120</td><td>13</td><td>65538</td><td/><td>##IDS__IsExitDialog_ShowReadMe##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsExitDialog_Finish##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>182</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsExitDialog_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_InstallSuccess##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine3</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_UninstallSuccess##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine1</td><td>Text</td><td>135</td><td>30</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_Update_SetupFinished##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine2</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>45</td><td>196610</td><td/><td>##IDS__IsExitDialog_Update_PossibleUpdates##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine3</td><td>Text</td><td>135</td><td>120</td><td>228</td><td>45</td><td>65538</td><td/><td>##IDS__IsExitDialog_Update_InternetConnection##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>A</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Abort##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>C</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>ErrorIcon</td><td>Icon</td><td>15</td><td>15</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary4</td></row>
		<row><td>SetupError</td><td>ErrorText</td><td>Text</td><td>50</td><td>15</td><td>200</td><td>50</td><td>131075</td><td/><td>##IDS__IsErrorDlg_ErrorText##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>I</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Ignore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>N</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_NO##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>O</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_OK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>R</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Retry##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupError</td><td>Y</td><td>PushButton</td><td>192</td><td>80</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsErrorDlg_Yes##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>ActionData</td><td>Text</td><td>135</td><td>125</td><td>228</td><td>12</td><td>65539</td><td/><td>##IDS__IsInitDlg_1##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>ActionText</td><td>Text</td><td>135</td><td>109</td><td>220</td><td>36</td><td>65539</td><td/><td>##IDS__IsInitDlg_2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupInitialization</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_NEXT##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsInitDlg_WelcomeWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInitialization</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>30</td><td>196611</td><td/><td>##IDS__IsInitDlg_PreparingWizard##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Finish</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_CANCEL##</td><td>Image</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>CheckShowMsiLog</td><td>CheckBox</td><td>151</td><td>172</td><td>10</td><td>9</td><td>2</td><td>ISSHOWMSILOG</td><td/><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS__IsUserExit_Finish##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsUserExit_NotModified##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsUserExit_ClickFinish##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td>CheckShowMsiLog</td><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Text</td><td>135</td><td>80</td><td>228</td><td>50</td><td>65539</td><td/><td>##IDS__IsUserExit_KeepOrRestore##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Text</td><td>135</td><td>135</td><td>228</td><td>25</td><td>65539</td><td/><td>##IDS__IsUserExit_RestoreOrContinue##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>ShowMsiLogText</td><td>Text</td><td>164</td><td>172</td><td>198</td><td>10</td><td>65538</td><td/><td>##IDS__IsSetupComplete_ShowMsiLog##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>65539</td><td/><td>##IDS__IsUserExit_WizardCompleted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupInterrupted</td><td>TextLine2</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>25</td><td>196611</td><td/><td>##IDS__IsUserExit_WizardInterrupted##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>ProgressBar</td><td>59</td><td>113</td><td>275</td><td>12</td><td>65537</td><td/><td>##IDS__IsProgressDlg_ProgressDone##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>ActionText</td><td>Text</td><td>59</td><td>100</td><td>275</td><td>12</td><td>3</td><td/><td>##IDS__IsProgressDlg_2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>SetupProgress</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsProgressDlg_UninstallingFeatures2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgDesc2</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65538</td><td/><td>##IDS__IsProgressDlg_UninstallingFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgText</td><td>Text</td><td>59</td><td>51</td><td>275</td><td>30</td><td>196610</td><td/><td>##IDS__IsProgressDlg_WaitUninstall2##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgText2</td><td>Text</td><td>59</td><td>51</td><td>275</td><td>30</td><td>196610</td><td/><td>##IDS__IsProgressDlg_WaitUninstall##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>196610</td><td/><td>##IDS__IsProgressDlg_InstallingProductName##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>DlgTitle2</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>196610</td><td/><td>##IDS__IsProgressDlg_Uninstalling##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>LbSec</td><td>Text</td><td>192</td><td>139</td><td>32</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_SecHidden##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>LbStatus</td><td>Text</td><td>59</td><td>85</td><td>70</td><td>12</td><td>3</td><td/><td>##IDS__IsProgressDlg_Status##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>SetupIcon</td><td>Icon</td><td>21</td><td>51</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary9</td></row>
		<row><td>SetupProgress</td><td>ShowTime</td><td>Text</td><td>170</td><td>139</td><td>17</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_Hidden##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupProgress</td><td>TextTime</td><td>Text</td><td>59</td><td>139</td><td>110</td><td>12</td><td>2</td><td/><td>##IDS__IsProgressDlg_HiddenTimeRemaining##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>DlgLine</td><td>Line</td><td>0</td><td>234</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>Image</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>234</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SetupResume</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Text</td><td>135</td><td>55</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_WizardResume##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Text</td><td>135</td><td>46</td><td>228</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_ResumeSuspended##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupResume</td><td>TextLine1</td><td>Text</td><td>135</td><td>8</td><td>225</td><td>45</td><td>196611</td><td/><td>##IDS__IsResumeDlg_Resuming##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Banner</td><td>Bitmap</td><td>0</td><td>0</td><td>374</td><td>44</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary1</td></row>
		<row><td>SetupType</td><td>BannerLine</td><td>Line</td><td>0</td><td>44</td><td>374</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>RadioGroup</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CompText</td><td>Text</td><td>80</td><td>80</td><td>246</td><td>30</td><td>3</td><td/><td>##IDS__IsSetupTypeMinDlg_AllFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CompleteIco</td><td>Icon</td><td>34</td><td>80</td><td>24</td><td>24</td><td>5242881</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary10</td></row>
		<row><td>SetupType</td><td>CustText</td><td>Text</td><td>80</td><td>171</td><td>246</td><td>30</td><td>2</td><td/><td>##IDS__IsSetupTypeMinDlg_ChooseFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>CustomIco</td><td>Icon</td><td>34</td><td>171</td><td>24</td><td>24</td><td>5242880</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary11</td></row>
		<row><td>SetupType</td><td>DlgDesc</td><td>Text</td><td>21</td><td>23</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsSetupTypeMinDlg_ChooseSetupType##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>DlgText</td><td>Text</td><td>22</td><td>49</td><td>326</td><td>10</td><td>3</td><td/><td>##IDS__IsSetupTypeMinDlg_SelectSetupType##</td><td/><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SetupType</td><td>DlgTitle</td><td>Text</td><td>13</td><td>6</td><td>292</td><td>25</td><td>65539</td><td/><td>##IDS__IsSetupTypeMinDlg_SetupType##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>MinIco</td><td>Icon</td><td>34</td><td>125</td><td>24</td><td>24</td><td>5242880</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary11</td></row>
		<row><td>SetupType</td><td>MinText</td><td>Text</td><td>80</td><td>125</td><td>246</td><td>30</td><td>2</td><td/><td>##IDS__IsSetupTypeMinDlg_MinimumFeatures##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SetupType</td><td>RadioGroup</td><td>RadioButtonGroup</td><td>20</td><td>59</td><td>264</td><td>139</td><td>1048579</td><td>_IsSetupTypeMin</td><td/><td>Back</td><td/><td>0</td><td>0</td><td/><td/></row>
		<row><td>SplashBitmap</td><td>Back</td><td>PushButton</td><td>164</td><td>243</td><td>66</td><td>17</td><td>1</td><td/><td>##IDS_BACK##</td><td>Next</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Branding1</td><td>Text</td><td>4</td><td>229</td><td>50</td><td>13</td><td>3</td><td/><td>##IDS_INSTALLSHIELD_FORMATTED##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Branding2</td><td>Text</td><td>3</td><td>228</td><td>50</td><td>13</td><td>65537</td><td/><td>##IDS_INSTALLSHIELD##</td><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Cancel</td><td>PushButton</td><td>301</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_CANCEL##</td><td>Back</td><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>DlgLine</td><td>Line</td><td>48</td><td>234</td><td>326</td><td>0</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td/></row>
		<row><td>SplashBitmap</td><td>Image</td><td>Bitmap</td><td>13</td><td>12</td><td>349</td><td>211</td><td>1</td><td/><td/><td/><td/><td>0</td><td/><td/><td>NewBinary5</td></row>
		<row><td>SplashBitmap</td><td>Next</td><td>PushButton</td><td>230</td><td>243</td><td>66</td><td>17</td><td>3</td><td/><td>##IDS_NEXT##</td><td>Cancel</td><td/><td>0</td><td/><td/><td/></row>
	</table>

	<table name="ControlCondition">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Action</col>
		<col key="yes" def="s255">Condition</col>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomSetup</td><td>Details</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomSetup</td><td>InstallLabel</td><td>Hide</td><td>Installed</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>NOT Privileged</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>ProductState &gt; 0</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>Version9X</td></row>
		<row><td>CustomerInformation</td><td>DlgRadioGroupText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>NOT Privileged</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>ProductState &gt; 0</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>Version9X</td></row>
		<row><td>CustomerInformation</td><td>RadioGroup</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>CustomerInformation</td><td>SerialLabel</td><td>Show</td><td>SERIALNUMSHOW</td></row>
		<row><td>CustomerInformation</td><td>SerialNumber</td><td>Show</td><td>SERIALNUMSHOW</td></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Hide</td><td>SHOWCOPYRIGHT="No"</td></row>
		<row><td>InstallWelcome</td><td>Copyright</td><td>Show</td><td>SHOWCOPYRIGHT="Yes"</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>Disable</td><td>AgreeToLicense &lt;&gt; "Yes"</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>Enable</td><td>AgreeToLicense = "Yes"</td></row>
		<row><td>ReadyToInstall</td><td>CompanyNameText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>CurrentSettingsText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgText2</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle</td><td>Show</td><td>ProgressType0="Modify"</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle2</td><td>Show</td><td>ProgressType0="Repair"</td></row>
		<row><td>ReadyToInstall</td><td>DlgTitle3</td><td>Show</td><td>ProgressType0="install"</td></row>
		<row><td>ReadyToInstall</td><td>GroupBox1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>Disable</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>Enable</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>Hide</td><td>VersionNT &lt; "601" OR NOT ISSupportPerUser OR Installed</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>Show</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Hide</td><td>NOT SERIALNUMSHOW</td></row>
		<row><td>ReadyToInstall</td><td>SerialNumberText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>SetupTypeText2</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText1</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>TargetFolderText2</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>UserInformationText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>ReadyToInstall</td><td>UserNameText</td><td>Hide</td><td>VersionNT &gt;= "601" AND ISSupportPerUser AND NOT Installed</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Default</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>Default</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText1</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>FinishText2</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText1</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>RestContText2</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupCompleteError</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckBoxUpdates</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckForUpdatesText</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchProgram</td><td>Show</td><td>SHOWLAUNCHPROGRAM="-1" And PROGRAMFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckLaunchReadme</td><td>Show</td><td>SHOWLAUNCHREADME="-1"  And READMEFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchProgramText</td><td>Show</td><td>SHOWLAUNCHPROGRAM="-1" And PROGRAMFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>LaunchReadmeText</td><td>Show</td><td>SHOWLAUNCHREADME="-1"  And READMEFILETOLAUNCHATEND &lt;&gt; "" And NOT Installed And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation And NOT ISENABLEDWUSFINISHDIALOG</td></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine2</td><td>Show</td><td>ProgressType2="installed" And ((ACTION&lt;&gt;"INSTALL") OR (NOT ISENABLEDWUSFINISHDIALOG) OR (ISENABLEDWUSFINISHDIALOG And Installed))</td></row>
		<row><td>SetupCompleteSuccess</td><td>TextLine3</td><td>Show</td><td>ProgressType2="uninstalled" And ((ACTION&lt;&gt;"INSTALL") OR (NOT ISENABLEDWUSFINISHDIALOG) OR (ISENABLEDWUSFINISHDIALOG And Installed))</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine1</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine2</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupCompleteSuccess</td><td>UpdateTextLine3</td><td>Show</td><td>ISENABLEDWUSFINISHDIALOG And NOT Installed And ACTION="INSTALL"</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Default</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>Disable</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>Enable</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>CheckShowMsiLog</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>Default</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText1</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Hide</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>FinishText2</td><td>Show</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText1</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Hide</td><td>NOT UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>RestContText2</td><td>Show</td><td>UpdateStarted</td></row>
		<row><td>SetupInterrupted</td><td>ShowMsiLogText</td><td>Show</td><td>MsiLogFileLocation</td></row>
		<row><td>SetupProgress</td><td>DlgDesc</td><td>Show</td><td>ProgressType2="installed"</td></row>
		<row><td>SetupProgress</td><td>DlgDesc2</td><td>Show</td><td>ProgressType2="uninstalled"</td></row>
		<row><td>SetupProgress</td><td>DlgText</td><td>Show</td><td>ProgressType3="installs"</td></row>
		<row><td>SetupProgress</td><td>DlgText2</td><td>Show</td><td>ProgressType3="uninstalls"</td></row>
		<row><td>SetupProgress</td><td>DlgTitle</td><td>Show</td><td>ProgressType1="Installing"</td></row>
		<row><td>SetupProgress</td><td>DlgTitle2</td><td>Show</td><td>ProgressType1="Uninstalling"</td></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Hide</td><td>RESUME</td></row>
		<row><td>SetupResume</td><td>PreselectedText</td><td>Show</td><td>NOT RESUME</td></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Hide</td><td>NOT RESUME</td></row>
		<row><td>SetupResume</td><td>ResumeText</td><td>Show</td><td>RESUME</td></row>
	</table>

	<table name="ControlEvent">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Event</col>
		<col key="yes" def="s255">Argument</col>
		<col key="yes" def="S255">Condition</col>
		<col def="I2">Ordering</col>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>AdminChangeFolder</td><td>Cancel</td><td>Reset</td><td>0</td><td>1</td><td>1</td></row>
		<row><td>AdminChangeFolder</td><td>NewFolder</td><td>DirectoryListNew</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>AdminChangeFolder</td><td>OK</td><td>SetTargetPath</td><td>TARGETDIR</td><td>1</td><td>1</td></row>
		<row><td>AdminChangeFolder</td><td>Up</td><td>DirectoryListUp</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Back</td><td>NewDialog</td><td>AdminWelcome</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Browse</td><td>SpawnDialog</td><td>AdminChangeFolder</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>3</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>2</td></row>
		<row><td>AdminNetworkLocation</td><td>InstallNow</td><td>SetTargetPath</td><td>TARGETDIR</td><td>1</td><td>1</td></row>
		<row><td>AdminWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>AdminWelcome</td><td>Next</td><td>NewDialog</td><td>AdminNetworkLocation</td><td>1</td><td>0</td></row>
		<row><td>CancelSetup</td><td>No</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>CancelSetup</td><td>Yes</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>CancelSetup</td><td>Yes</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>CustomSetup</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>NOT Installed</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>Installed</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>ChangeFolder</td><td>SelectionBrowse</td><td>InstallChangeFolder</td><td>1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Details</td><td>SelectionBrowse</td><td>DiskSpaceRequirements</td><td>1</td><td>1</td></row>
		<row><td>CustomSetup</td><td>Help</td><td>SpawnDialog</td><td>CustomSetupTips</td><td>1</td><td>1</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>CustomSetup</td><td>Next</td><td>[_IsSetupTypeMin]</td><td>Custom</td><td>1</td><td>0</td></row>
		<row><td>CustomSetupTips</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>NOT Installed</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>EndDialog</td><td>Exit</td><td>(SERIALNUMVALRETRYLIMIT) And (SERIALNUMVALRETRYLIMIT&lt;0) And (SERIALNUMVALRETURN&lt;&gt;SERIALNUMVALSUCCESSRETVAL)</td><td>2</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>(Not SERIALNUMVALRETURN) OR (SERIALNUMVALRETURN=SERIALNUMVALSUCCESSRETVAL)</td><td>3</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>[ALLUSERS]</td><td>1</td><td>ApplicationUsers = "AllUsers" And Privileged</td><td>1</td></row>
		<row><td>CustomerInformation</td><td>Next</td><td>[ALLUSERS]</td><td>{}</td><td>ApplicationUsers = "OnlyCurrentUser" And Privileged</td><td>2</td></row>
		<row><td>DatabaseFolder</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>SpawnDialog</td><td>InstallChangeFolder</td><td>1</td><td>1</td></row>
		<row><td>DatabaseFolder</td><td>ChangeFolder</td><td>[_BrowseProperty]</td><td>DATABASEDIR</td><td>1</td><td>2</td></row>
		<row><td>DatabaseFolder</td><td>Next</td><td>NewDialog</td><td>SetupType</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>NOT Installed</td><td>0</td></row>
		<row><td>DestinationFolder</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>SpawnDialog</td><td>InstallChangeFolder</td><td>1</td><td>1</td></row>
		<row><td>DestinationFolder</td><td>ChangeFolder</td><td>[_BrowseProperty]</td><td>INSTALLDIR</td><td>1</td><td>2</td></row>
		<row><td>DestinationFolder</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>1</td><td>0</td></row>
		<row><td>DiskSpaceRequirements</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Exit</td><td>EndDialog</td><td>Exit</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Ignore</td><td>EndDialog</td><td>Ignore</td><td>1</td><td>0</td></row>
		<row><td>FilesInUse</td><td>Retry</td><td>EndDialog</td><td>Retry</td><td>1</td><td>0</td></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>InstallChangeFolder</td><td>Cancel</td><td>Reset</td><td>0</td><td>1</td><td>1</td></row>
		<row><td>InstallChangeFolder</td><td>NewFolder</td><td>DirectoryListNew</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>3</td></row>
		<row><td>InstallChangeFolder</td><td>OK</td><td>SetTargetPath</td><td>[_BrowseProperty]</td><td>1</td><td>2</td></row>
		<row><td>InstallChangeFolder</td><td>Up</td><td>DirectoryListUp</td><td>0</td><td>1</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Back</td><td>NewDialog</td><td>SplashBitmap</td><td>Display_IsBitmapDlg</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>InstallWelcome</td><td>Next</td><td>NewDialog</td><td>DestinationFolder</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Back</td><td>NewDialog</td><td>InstallWelcome</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>ISPrintButton</td><td>DoAction</td><td>ISPrint</td><td>1</td><td>0</td></row>
		<row><td>LicenseAgreement</td><td>Next</td><td>NewDialog</td><td>CustomerInformation</td><td>AgreeToLicense = "Yes"</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Back</td><td>NewDialog</td><td>MaintenanceWelcome</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>CustomSetup</td><td>_IsMaintenance = "Change"</td><td>12</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>_IsMaintenance = "Reinstall"</td><td>13</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>NewDialog</td><td>ReadyToRemove</td><td>_IsMaintenance = "Remove"</td><td>11</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>Reinstall</td><td>ALL</td><td>_IsMaintenance = "Reinstall"</td><td>10</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>ReinstallMode</td><td>[ReinstallModeText]</td><td>_IsMaintenance = "Reinstall"</td><td>9</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType0]</td><td>Modify</td><td>_IsMaintenance = "Change"</td><td>2</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType0]</td><td>Repair</td><td>_IsMaintenance = "Reinstall"</td><td>1</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType1]</td><td>Modifying</td><td>_IsMaintenance = "Change"</td><td>3</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType1]</td><td>Repairing</td><td>_IsMaintenance = "Reinstall"</td><td>4</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType2]</td><td>modified</td><td>_IsMaintenance = "Change"</td><td>6</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType2]</td><td>repairs</td><td>_IsMaintenance = "Reinstall"</td><td>5</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType3]</td><td>modifies</td><td>_IsMaintenance = "Change"</td><td>7</td></row>
		<row><td>MaintenanceType</td><td>Next</td><td>[ProgressType3]</td><td>repairs</td><td>_IsMaintenance = "Reinstall"</td><td>8</td></row>
		<row><td>MaintenanceWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>MaintenanceWelcome</td><td>Next</td><td>NewDialog</td><td>MaintenanceType</td><td>1</td><td>0</td></row>
		<row><td>MsiRMFilesInUse</td><td>Cancel</td><td>EndDialog</td><td>Exit</td><td>1</td><td>1</td></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>EndDialog</td><td>Return</td><td>1</td><td>1</td></row>
		<row><td>MsiRMFilesInUse</td><td>OK</td><td>RMShutdownAndRestart</td><td>0</td><td>RestartManagerOption="CloseRestart"</td><td>2</td></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>NewDialog</td><td>AdminNetworkLocation</td><td>ACTION = "ADMIN"</td><td>0</td></row>
		<row><td>OutOfSpace</td><td>Resume</td><td>NewDialog</td><td>DestinationFolder</td><td>ACTION &lt;&gt; "ADMIN"</td><td>0</td></row>
		<row><td>PatchWelcome</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>EndDialog</td><td>Return</td><td>1</td><td>3</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>Reinstall</td><td>ALL</td><td>PATCH And REINSTALL=""</td><td>1</td></row>
		<row><td>PatchWelcome</td><td>Next</td><td>ReinstallMode</td><td>omus</td><td>PATCH And REINSTALLMODE=""</td><td>2</td></row>
		<row><td>ReadmeInformation</td><td>Back</td><td>NewDialog</td><td>LicenseAgreement</td><td>1</td><td>1</td></row>
		<row><td>ReadmeInformation</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>1</td></row>
		<row><td>ReadmeInformation</td><td>Next</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>CustomSetup</td><td>Installed OR _IsSetupTypeMin = "Custom"</td><td>2</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>DestinationFolder</td><td>NOT Installed</td><td>1</td></row>
		<row><td>ReadyToInstall</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>Installed AND _IsMaintenance = "Reinstall"</td><td>3</td></row>
		<row><td>ReadyToInstall</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallNow</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ALLUSERS]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[MSIINSTALLPERUSER]</td><td>{}</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerMachine</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ALLUSERS]</td><td>2</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[MSIINSTALLPERUSER]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType1]</td><td>Installing</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType2]</td><td>installed</td><td>1</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>InstallPerUser</td><td>[ProgressType3]</td><td>installs</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>Back</td><td>NewDialog</td><td>MaintenanceType</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>2</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>2</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>Remove</td><td>ALL</td><td>1</td><td>1</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType1]</td><td>Uninstalling</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType2]</td><td>uninstalled</td><td>1</td><td>0</td></row>
		<row><td>ReadyToRemove</td><td>RemoveNow</td><td>[ProgressType3]</td><td>uninstalls</td><td>1</td><td>0</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteError</td><td>Back</td><td>[Suspend]</td><td>{}</td><td>1</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>EndDialog</td><td>Return</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteError</td><td>Cancel</td><td>[Suspend]</td><td>1</td><td>1</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1")</td><td>3</td></row>
		<row><td>SetupCompleteError</td><td>Finish</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1") And NOT ISENABLEDWUSFINISHDIALOG</td><td>6</td></row>
		<row><td>SetupCompleteSuccess</td><td>OK</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupError</td><td>A</td><td>EndDialog</td><td>ErrorAbort</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>C</td><td>EndDialog</td><td>ErrorCancel</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>I</td><td>EndDialog</td><td>ErrorIgnore</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>N</td><td>EndDialog</td><td>ErrorNo</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>O</td><td>EndDialog</td><td>ErrorOk</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>R</td><td>EndDialog</td><td>ErrorRetry</td><td>1</td><td>0</td></row>
		<row><td>SetupError</td><td>Y</td><td>EndDialog</td><td>ErrorYes</td><td>1</td><td>0</td></row>
		<row><td>SetupInitialization</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupInterrupted</td><td>Back</td><td>[Suspend]</td><td>{}</td><td>1</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupInterrupted</td><td>Cancel</td><td>[Suspend]</td><td>1</td><td>1</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>DoAction</td><td>CleanUp</td><td>ISSCRIPTRUNNING="1"</td><td>1</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>DoAction</td><td>ShowMsiLog</td><td>MsiLogFileLocation And (ISSHOWMSILOG="1")</td><td>3</td></row>
		<row><td>SetupInterrupted</td><td>Finish</td><td>EndDialog</td><td>Exit</td><td>1</td><td>2</td></row>
		<row><td>SetupProgress</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Next</td><td>EndDialog</td><td>Return</td><td>OutOfNoRbDiskSpace &lt;&gt; 1</td><td>0</td></row>
		<row><td>SetupResume</td><td>Next</td><td>NewDialog</td><td>OutOfSpace</td><td>OutOfNoRbDiskSpace = 1</td><td>0</td></row>
		<row><td>SetupType</td><td>Back</td><td>NewDialog</td><td>CustomerInformation</td><td>1</td><td>1</td></row>
		<row><td>SetupType</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>NewDialog</td><td>CustomSetup</td><td>_IsSetupTypeMin = "Custom"</td><td>2</td></row>
		<row><td>SetupType</td><td>Next</td><td>NewDialog</td><td>ReadyToInstall</td><td>_IsSetupTypeMin &lt;&gt; "Custom"</td><td>1</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>100</td><td>_IsSetupTypeMin="Minimal"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>200</td><td>_IsSetupTypeMin="Typical"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>SetInstallLevel</td><td>300</td><td>_IsSetupTypeMin="Custom"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[ISRUNSETUPTYPEADDLOCALEVENT]</td><td>1</td><td>1</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameCustom]</td><td>_IsSetupTypeMin = "Custom"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameMinimal]</td><td>_IsSetupTypeMin = "Minimal"</td><td>0</td></row>
		<row><td>SetupType</td><td>Next</td><td>[SelectedSetupType]</td><td>[DisplayNameTypical]</td><td>_IsSetupTypeMin = "Typical"</td><td>0</td></row>
		<row><td>SplashBitmap</td><td>Cancel</td><td>SpawnDialog</td><td>CancelSetup</td><td>1</td><td>0</td></row>
		<row><td>SplashBitmap</td><td>Next</td><td>NewDialog</td><td>InstallWelcome</td><td>1</td><td>0</td></row>
	</table>

	<table name="CreateFolder">
		<col key="yes" def="s72">Directory_</col>
		<col key="yes" def="s72">Component_</col>
		<row><td>ACKNOWLEDGE</td><td>ISX_DEFAULTCOMPONENT4</td></row>
		<row><td>DAMAGE_REPORTING</td><td>ISX_DEFAULTCOMPONENT14</td></row>
		<row><td>ENGINE_MONITOR</td><td>ISX_DEFAULTCOMPONENT27</td></row>
		<row><td>FUEL</td><td>ISX_DEFAULTCOMPONENT32</td></row>
		<row><td>LAP_COUNTER</td><td>ISX_DEFAULTCOMPONENT47</td></row>
		<row><td>LAP_TIMES</td><td>ISX_DEFAULTCOMPONENT62</td></row>
		<row><td>MANDATORY_PIT_STOPS</td><td>ISX_DEFAULTCOMPONENT85</td></row>
		<row><td>NUMBERS</td><td>ISX_DEFAULTCOMPONENT103</td></row>
		<row><td>PEARLS_OF_WISDOM</td><td>ISX_DEFAULTCOMPONENT176</td></row>
		<row><td>PENALTIES</td><td>ISX_DEFAULTCOMPONENT180</td></row>
		<row><td>POSITION</td><td>ISX_DEFAULTCOMPONENT199</td></row>
		<row><td>PUSH_NOW</td><td>ISX_DEFAULTCOMPONENT232</td></row>
		<row><td>RACE_TIME</td><td>ISX_DEFAULTCOMPONENT240</td></row>
		<row><td>RADIO_CHECK</td><td>ISX_DEFAULTCOMPONENT259</td></row>
		<row><td>SPOTTER</td><td>ISX_DEFAULTCOMPONENT261</td></row>
		<row><td>TIMINGS</td><td>ISX_DEFAULTCOMPONENT265</td></row>
		<row><td>TYRE_MONITOR</td><td>ISX_DEFAULTCOMPONENT273</td></row>
		<row><td>VOICE</td><td>ISX_DEFAULTCOMPONENT3</td></row>
	</table>

	<table name="CustomAction">
		<col key="yes" def="s72">Action</col>
		<col def="i2">Type</col>
		<col def="S64">Source</col>
		<col def="S0">Target</col>
		<col def="I4">ExtendedType</col>
		<col def="S255">ISComments</col>
		<row><td>ISPreventDowngrade</td><td>19</td><td/><td>[IS_PREVENT_DOWNGRADE_EXIT]</td><td/><td>Exits install when a newer version of this product is found</td></row>
		<row><td>ISPrint</td><td>1</td><td>SetAllUsers.dll</td><td>PrintScrollableText</td><td/><td>Prints the contents of a ScrollableText control on a dialog.</td></row>
		<row><td>ISRunSetupTypeAddLocalEvent</td><td>1</td><td>ISExpHlp.dll</td><td>RunSetupTypeAddLocalEvent</td><td/><td>Run the AddLocal events associated with the Next button on the Setup Type dialog.</td></row>
		<row><td>ISSelfRegisterCosting</td><td>1</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterCosting</td><td/><td/></row>
		<row><td>ISSelfRegisterFiles</td><td>3073</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterFiles</td><td/><td/></row>
		<row><td>ISSelfRegisterFinalize</td><td>1</td><td>ISSELFREG.DLL</td><td>ISSelfRegisterFinalize</td><td/><td/></row>
		<row><td>ISUnSelfRegisterFiles</td><td>3073</td><td>ISSELFREG.DLL</td><td>ISUnSelfRegisterFiles</td><td/><td/></row>
		<row><td>SetARPINSTALLLOCATION</td><td>51</td><td>ARPINSTALLLOCATION</td><td>[INSTALLDIR]</td><td/><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>51</td><td>ALLUSERSPROFILE</td><td>[%SystemRoot]\Profiles\All Users</td><td/><td/></row>
		<row><td>ShowMsiLog</td><td>226</td><td>SystemFolder</td><td>[SystemFolder]notepad.exe "[MsiLogFileLocation]"</td><td/><td>Shows Property-driven MSI Log</td></row>
		<row><td>setAllUsersProfile2K</td><td>51</td><td>ALLUSERSPROFILE</td><td>[%ALLUSERSPROFILE]</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>51</td><td>USERPROFILE</td><td>[%USERPROFILE]</td><td/><td/></row>
	</table>

	<table name="Dialog">
		<col key="yes" def="s72">Dialog</col>
		<col def="i2">HCentering</col>
		<col def="i2">VCentering</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="I4">Attributes</col>
		<col def="L128">Title</col>
		<col def="s50">Control_First</col>
		<col def="S50">Control_Default</col>
		<col def="S50">Control_Cancel</col>
		<col def="S255">ISComments</col>
		<col def="S72">TextStyle_</col>
		<col def="I4">ISWindowStyle</col>
		<col def="I4">ISResourceId</col>
		<row><td>AdminChangeFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tail</td><td>OK</td><td>Cancel</td><td>Install Point Browse</td><td/><td>0</td><td/></row>
		<row><td>AdminNetworkLocation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>InstallNow</td><td>InstallNow</td><td>Cancel</td><td>Network Location</td><td/><td>0</td><td/></row>
		<row><td>AdminWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Administration Welcome</td><td/><td>0</td><td/></row>
		<row><td>CancelSetup</td><td>50</td><td>50</td><td>260</td><td>85</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>No</td><td>No</td><td>No</td><td>Cancel</td><td/><td>0</td><td/></row>
		<row><td>CustomSetup</td><td>50</td><td>50</td><td>374</td><td>266</td><td>35</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tree</td><td>Next</td><td>Cancel</td><td>Custom Selection</td><td/><td>0</td><td/></row>
		<row><td>CustomSetupTips</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Custom Setup Tips</td><td/><td>0</td><td/></row>
		<row><td>CustomerInformation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>NameEdit</td><td>Next</td><td>Cancel</td><td>Identification</td><td/><td>0</td><td/></row>
		<row><td>DatabaseFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Database Folder</td><td/><td>0</td><td/></row>
		<row><td>DestinationFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Destination Folder</td><td/><td>0</td><td/></row>
		<row><td>DiskSpaceRequirements</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Feature Details</td><td/><td>0</td><td/></row>
		<row><td>FilesInUse</td><td>50</td><td>50</td><td>374</td><td>266</td><td>19</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Retry</td><td>Retry</td><td>Exit</td><td>Files in Use</td><td/><td>0</td><td/></row>
		<row><td>InstallChangeFolder</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Tail</td><td>OK</td><td>Cancel</td><td>Browse</td><td/><td>0</td><td/></row>
		<row><td>InstallWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Welcome Panel</td><td/><td>0</td><td/></row>
		<row><td>LicenseAgreement</td><td>50</td><td>50</td><td>374</td><td>266</td><td>2</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Agree</td><td>Next</td><td>Cancel</td><td>License Agreement</td><td/><td>0</td><td/></row>
		<row><td>MaintenanceType</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RadioGroup</td><td>Next</td><td>Cancel</td><td>Change, Reinstall, Remove</td><td/><td>0</td><td/></row>
		<row><td>MaintenanceWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Maintenance Welcome</td><td/><td>0</td><td/></row>
		<row><td>MsiRMFilesInUse</td><td>50</td><td>50</td><td>374</td><td>266</td><td>19</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>Cancel</td><td>RestartManager Files in Use</td><td/><td>0</td><td/></row>
		<row><td>OutOfSpace</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Resume</td><td>Resume</td><td>Resume</td><td>Out Of Disk Space</td><td/><td>0</td><td/></row>
		<row><td>PatchWelcome</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS__IsPatchDlg_PatchWizard##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Patch Panel</td><td/><td>0</td><td/></row>
		<row><td>ReadmeInformation</td><td>50</td><td>50</td><td>374</td><td>266</td><td>7</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Readme Information</td><td/><td>0</td><td>0</td></row>
		<row><td>ReadyToInstall</td><td>50</td><td>50</td><td>374</td><td>266</td><td>35</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>InstallNow</td><td>InstallNow</td><td>Cancel</td><td>Ready to Install</td><td/><td>0</td><td/></row>
		<row><td>ReadyToRemove</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RemoveNow</td><td>RemoveNow</td><td>Cancel</td><td>Verify Remove</td><td/><td>0</td><td/></row>
		<row><td>SetupCompleteError</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Finish</td><td>Finish</td><td>Finish</td><td>Fatal Error</td><td/><td>0</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>OK</td><td>OK</td><td>OK</td><td>Exit</td><td/><td>0</td><td/></row>
		<row><td>SetupError</td><td>50</td><td>50</td><td>270</td><td>110</td><td>65543</td><td>##IDS__IsErrorDlg_InstallerInfo##</td><td>ErrorText</td><td>O</td><td>C</td><td>Error</td><td/><td>0</td><td/></row>
		<row><td>SetupInitialization</td><td>50</td><td>50</td><td>374</td><td>266</td><td>5</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Cancel</td><td>Cancel</td><td>Cancel</td><td>Setup Initialization</td><td/><td>0</td><td/></row>
		<row><td>SetupInterrupted</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Finish</td><td>Finish</td><td>Finish</td><td>User Exit</td><td/><td>0</td><td/></row>
		<row><td>SetupProgress</td><td>50</td><td>50</td><td>374</td><td>266</td><td>5</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Cancel</td><td>Cancel</td><td>Cancel</td><td>Progress</td><td/><td>0</td><td/></row>
		<row><td>SetupResume</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Resume</td><td/><td>0</td><td/></row>
		<row><td>SetupType</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>RadioGroup</td><td>Next</td><td>Cancel</td><td>Setup Type</td><td/><td>0</td><td/></row>
		<row><td>SplashBitmap</td><td>50</td><td>50</td><td>374</td><td>266</td><td>3</td><td>##IDS_PRODUCTNAME_INSTALLSHIELD##</td><td>Next</td><td>Next</td><td>Cancel</td><td>Welcome Bitmap</td><td/><td>0</td><td/></row>
	</table>

	<table name="Directory">
		<col key="yes" def="s72">Directory</col>
		<col def="S72">Directory_Parent</col>
		<col def="l255">DefaultDir</col>
		<col def="S255">ISDescription</col>
		<col def="I4">ISAttributes</col>
		<col def="S255">ISFolderName</col>
		<row><td>ACKNOWLEDGE</td><td>VOICE</td><td>ACKNOW~1|acknowledge</td><td/><td>0</td><td/></row>
		<row><td>ALLUSERSPROFILE</td><td>TARGETDIR</td><td>.:ALLUSE~1|All Users</td><td/><td>0</td><td/></row>
		<row><td>ALL_CLEAR</td><td>ENGINE_MONITOR</td><td>ALL_CL~1|all_clear</td><td/><td>0</td><td/></row>
		<row><td>AdminToolsFolder</td><td>TARGETDIR</td><td>.:Admint~1|AdminTools</td><td/><td>0</td><td/></row>
		<row><td>AppDataFolder</td><td>TARGETDIR</td><td>.:APPLIC~1|Application Data</td><td/><td>0</td><td/></row>
		<row><td>BACKGROUND_SOUNDS</td><td>SOUNDS</td><td>BACKGR~1|background_sounds</td><td/><td>0</td><td/></row>
		<row><td>BAD_START</td><td>POSITION</td><td>BAD_ST~1|bad_start</td><td/><td>0</td><td/></row>
		<row><td>BEING_HELD_UP</td><td>TIMINGS</td><td>BEING_~1|being_held_up</td><td/><td>0</td><td/></row>
		<row><td>BEING_PRESSURED</td><td>TIMINGS</td><td>BEING_~1|being_pressured</td><td/><td>0</td><td/></row>
		<row><td>BEST_LAP_IN_RACE</td><td>LAP_TIMES</td><td>BEST_L~1|best_lap_in_race</td><td/><td>0</td><td/></row>
		<row><td>BEST_LAP_IN_RACE_FOR_CLASS</td><td>LAP_TIMES</td><td>BEST_L~1|best_lap_in_race_for_class</td><td/><td>0</td><td/></row>
		<row><td>BRITTON_IT_LTD</td><td>ProgramFilesFolder</td><td>BRITTO~1|Britton IT Ltd</td><td/><td>0</td><td/></row>
		<row><td>BUSTED_ENGINE</td><td>DAMAGE_REPORTING</td><td>BUSTED~1|busted_engine</td><td/><td>0</td><td/></row>
		<row><td>BUSTED_TRANSMISSION</td><td>DAMAGE_REPORTING</td><td>BUSTED~1|busted_transmission</td><td/><td>0</td><td/></row>
		<row><td>CLEAR</td><td>SPOTTER</td><td>clear</td><td/><td>0</td><td/></row>
		<row><td>CONSISTENT</td><td>LAP_TIMES</td><td>CONSIS~1|consistent</td><td/><td>0</td><td/></row>
		<row><td>CONSISTENTLY_LAST</td><td>POSITION</td><td>CONSIS~1|consistently_last</td><td/><td>0</td><td/></row>
		<row><td>CUT_TRACK_IN_PRAC_OR_QUAL</td><td>PENALTIES</td><td>CUT_TR~1|cut_track_in_prac_or_qual</td><td/><td>0</td><td/></row>
		<row><td>CUT_TRACK_IN_RACE</td><td>PENALTIES</td><td>CUT_TR~1|cut_track_in_race</td><td/><td>0</td><td/></row>
		<row><td>CommonAppDataFolder</td><td>TARGETDIR</td><td>.:Common~1|CommonAppData</td><td/><td>0</td><td/></row>
		<row><td>CommonFiles64Folder</td><td>TARGETDIR</td><td>.:Common64</td><td/><td>0</td><td/></row>
		<row><td>CommonFilesFolder</td><td>TARGETDIR</td><td>.:Common</td><td/><td>0</td><td/></row>
		<row><td>DAMAGE_REPORTING</td><td>VOICE</td><td>DAMAGE~1|damage_reporting</td><td/><td>0</td><td/></row>
		<row><td>DATABASEDIR</td><td>ISYourDataBaseDir</td><td>.</td><td/><td>0</td><td/></row>
		<row><td>DIDNT_UNDERSTAND</td><td>ACKNOWLEDGE</td><td>DIDNT_~1|didnt_understand</td><td/><td>0</td><td/></row>
		<row><td>DesktopFolder</td><td>TARGETDIR</td><td>.:Desktop</td><td/><td>3</td><td/></row>
		<row><td>END_OF_SESSION</td><td>LAP_COUNTER</td><td>END_OF~1|end_of_session</td><td/><td>0</td><td/></row>
		<row><td>END_OF_SESSION_POLE</td><td>LAP_COUNTER</td><td>END_OF~1|end_of_session_pole</td><td/><td>0</td><td/></row>
		<row><td>ENGINE_MONITOR</td><td>VOICE</td><td>ENGINE~1|engine_monitor</td><td/><td>0</td><td/></row>
		<row><td>FASTEST_IN_YOUR_CLASS</td><td>LAP_TIMES</td><td>FASTES~1|fastest_in_your_class</td><td/><td>0</td><td/></row>
		<row><td>FIFTEEN_MINUTES_LEFT</td><td>RACE_TIME</td><td>FIFTEE~1|fifteen_minutes_left</td><td/><td>0</td><td/></row>
		<row><td>FINISHED_RACE</td><td>LAP_COUNTER</td><td>FINISH~1|finished_race</td><td/><td>0</td><td/></row>
		<row><td>FINISHED_RACE_LAST</td><td>LAP_COUNTER</td><td>FINISH~1|finished_race_last</td><td/><td>0</td><td/></row>
		<row><td>FIVE_MINUTES_FUEL</td><td>FUEL</td><td>FIVE_M~1|five_minutes_fuel</td><td/><td>0</td><td/></row>
		<row><td>FIVE_MINUTES_LEFT</td><td>RACE_TIME</td><td>FIVE_M~1|five_minutes_left</td><td/><td>0</td><td/></row>
		<row><td>FIVE_MINUTES_LEFT_LEADING</td><td>RACE_TIME</td><td>FIVE_M~1|five_minutes_left_leading</td><td/><td>0</td><td/></row>
		<row><td>FIVE_MINUTES_LEFT_PODIUM</td><td>RACE_TIME</td><td>FIVE_M~1|five_minutes_left_podium</td><td/><td>0</td><td/></row>
		<row><td>FOUR_LAPS_FUEL</td><td>FUEL</td><td>FOUR_L~1|four_laps_fuel</td><td/><td>0</td><td/></row>
		<row><td>FUEL</td><td>VOICE</td><td>fuel</td><td/><td>0</td><td/></row>
		<row><td>FX</td><td>SOUNDS</td><td>fx</td><td/><td>0</td><td/></row>
		<row><td>FavoritesFolder</td><td>TARGETDIR</td><td>.:FAVORI~1|Favorites</td><td/><td>0</td><td/></row>
		<row><td>FontsFolder</td><td>TARGETDIR</td><td>.:Fonts</td><td/><td>0</td><td/></row>
		<row><td>GAP_BEHIND_DECREASING</td><td>TIMINGS</td><td>GAP_BE~1|gap_behind_decreasing</td><td/><td>0</td><td/></row>
		<row><td>GAP_BEHIND_INCREASING</td><td>TIMINGS</td><td>GAP_BE~1|gap_behind_increasing</td><td/><td>0</td><td/></row>
		<row><td>GAP_INTRO</td><td>LAP_TIMES</td><td>GAP_IN~1|gap_intro</td><td/><td>0</td><td/></row>
		<row><td>GAP_IN_FRONT_DECREASING</td><td>TIMINGS</td><td>GAP_IN~1|gap_in_front_decreasing</td><td/><td>0</td><td/></row>
		<row><td>GAP_IN_FRONT_INCREASING</td><td>TIMINGS</td><td>GAP_IN~1|gap_in_front_increasing</td><td/><td>0</td><td/></row>
		<row><td>GAP_OUTRO_OFF_PACE</td><td>LAP_TIMES</td><td>GAP_OU~1|gap_outro_off_pace</td><td/><td>0</td><td/></row>
		<row><td>GET_READY</td><td>LAP_COUNTER</td><td>GET_RE~1|get_ready</td><td/><td>0</td><td/></row>
		<row><td>GOOD_LAP</td><td>LAP_TIMES</td><td>good_lap</td><td/><td>0</td><td/></row>
		<row><td>GOOD_START</td><td>POSITION</td><td>GOOD_S~1|good_start</td><td/><td>0</td><td/></row>
		<row><td>GOOD_TEMPS</td><td>TYRE_MONITOR</td><td>GOOD_T~1|good_temps</td><td/><td>0</td><td/></row>
		<row><td>GOOD_WEAR</td><td>TYRE_MONITOR</td><td>GOOD_W~1|good_wear</td><td/><td>0</td><td/></row>
		<row><td>GREEN_GREEN_GREEN</td><td>LAP_COUNTER</td><td>GREEN_~1|green_green_green</td><td/><td>0</td><td/></row>
		<row><td>GlobalAssemblyCache</td><td>TARGETDIR</td><td>.:Global~1|GlobalAssemblyCache</td><td/><td>0</td><td/></row>
		<row><td>HALF_DISTANCE_GOOD_FUEL</td><td>FUEL</td><td>HALF_D~1|half_distance_good_fuel</td><td/><td>0</td><td/></row>
		<row><td>HALF_DISTANCE_LOW_FUEL</td><td>FUEL</td><td>HALF_D~1|half_distance_low_fuel</td><td/><td>0</td><td/></row>
		<row><td>HALF_TANK_WARNING</td><td>FUEL</td><td>HALF_T~1|half_tank_warning</td><td/><td>0</td><td/></row>
		<row><td>HALF_WAY</td><td>RACE_TIME</td><td>half_way</td><td/><td>0</td><td/></row>
		<row><td>HOLD_YOUR_LINE</td><td>SPOTTER</td><td>HOLD_Y~1|hold_your_line</td><td/><td>0</td><td/></row>
		<row><td>HOT_ALL_ROUND</td><td>TYRE_MONITOR</td><td>HOT_AL~1|hot_all_round</td><td/><td>0</td><td/></row>
		<row><td>HOT_FRONTS</td><td>TYRE_MONITOR</td><td>HOT_FR~1|hot_fronts</td><td/><td>0</td><td/></row>
		<row><td>HOT_LEFTS</td><td>TYRE_MONITOR</td><td>HOT_LE~1|hot_lefts</td><td/><td>0</td><td/></row>
		<row><td>HOT_LEFT_FRONT</td><td>TYRE_MONITOR</td><td>HOT_LE~1|hot_left_front</td><td/><td>0</td><td/></row>
		<row><td>HOT_LEFT_REAR</td><td>TYRE_MONITOR</td><td>HOT_LE~1|hot_left_rear</td><td/><td>0</td><td/></row>
		<row><td>HOT_OIL</td><td>ENGINE_MONITOR</td><td>hot_oil</td><td/><td>0</td><td/></row>
		<row><td>HOT_OIL_AND_WATER</td><td>ENGINE_MONITOR</td><td>HOT_OI~1|hot_oil_and_water</td><td/><td>0</td><td/></row>
		<row><td>HOT_REARS</td><td>TYRE_MONITOR</td><td>HOT_RE~1|hot_rears</td><td/><td>0</td><td/></row>
		<row><td>HOT_RIGHTS</td><td>TYRE_MONITOR</td><td>HOT_RI~1|hot_rights</td><td/><td>0</td><td/></row>
		<row><td>HOT_RIGHT_FRONT</td><td>TYRE_MONITOR</td><td>HOT_RI~1|hot_right_front</td><td/><td>0</td><td/></row>
		<row><td>HOT_RIGHT_REAR</td><td>TYRE_MONITOR</td><td>HOT_RI~1|hot_right_rear</td><td/><td>0</td><td/></row>
		<row><td>HOT_WATER</td><td>ENGINE_MONITOR</td><td>HOT_WA~1|hot_water</td><td/><td>0</td><td/></row>
		<row><td>IMPROVING</td><td>LAP_TIMES</td><td>IMPROV~1|improving</td><td/><td>0</td><td/></row>
		<row><td>INSTALLDIR</td><td>MY_PRODUCT_NAME</td><td>.</td><td/><td>0</td><td/></row>
		<row><td>ISCommonFilesFolder</td><td>CommonFilesFolder</td><td>Instal~1|InstallShield</td><td/><td>0</td><td/></row>
		<row><td>ISMyCompanyDir</td><td>ProgramFilesFolder</td><td>MYCOMP~1|My Company Name</td><td/><td>0</td><td/></row>
		<row><td>ISMyProductDir</td><td>ISMyCompanyDir</td><td>MYPROD~1|My Product Name</td><td/><td>0</td><td/></row>
		<row><td>ISYourDataBaseDir</td><td>INSTALLDIR</td><td>Database</td><td/><td>0</td><td/></row>
		<row><td>KEEPQUIETDISABLED</td><td>ACKNOWLEDGE</td><td>KEEPQU~1|keepQuietDisabled</td><td/><td>0</td><td/></row>
		<row><td>KEEPQUIETENABLED</td><td>ACKNOWLEDGE</td><td>KEEPQU~1|keepQuietEnabled</td><td/><td>0</td><td/></row>
		<row><td>KEEP_IT_UP</td><td>PEARLS_OF_WISDOM</td><td>KEEP_I~1|keep_it_up</td><td/><td>0</td><td/></row>
		<row><td>KNACKERED_ALL_ROUND</td><td>TYRE_MONITOR</td><td>KNACKE~1|knackered_all_round</td><td/><td>0</td><td/></row>
		<row><td>KNACKERED_FRONTS</td><td>TYRE_MONITOR</td><td>KNACKE~1|knackered_fronts</td><td/><td>0</td><td/></row>
		<row><td>KNACKERED_LEFTS</td><td>TYRE_MONITOR</td><td>KNACKE~1|knackered_lefts</td><td/><td>0</td><td/></row>
		<row><td>KNACKERED_LEFT_FRONT</td><td>TYRE_MONITOR</td><td>KNACKE~1|knackered_left_front</td><td/><td>0</td><td/></row>
		<row><td>KNACKERED_LEFT_REAR</td><td>TYRE_MONITOR</td><td>KNACKE~1|knackered_left_rear</td><td/><td>0</td><td/></row>
		<row><td>KNACKERED_REARS</td><td>TYRE_MONITOR</td><td>KNACKE~1|knackered_rears</td><td/><td>0</td><td/></row>
		<row><td>KNACKERED_RIGHTS</td><td>TYRE_MONITOR</td><td>KNACKE~1|knackered_rights</td><td/><td>0</td><td/></row>
		<row><td>KNACKERED_RIGHT_FRONT</td><td>TYRE_MONITOR</td><td>KNACKE~1|knackered_right_front</td><td/><td>0</td><td/></row>
		<row><td>KNACKERED_RIGHT_REAR</td><td>TYRE_MONITOR</td><td>KNACKE~1|knackered_right_rear</td><td/><td>0</td><td/></row>
		<row><td>LAPS_ON_CURRENT_TYRES_INTRO</td><td>TYRE_MONITOR</td><td>LAPS_O~1|laps_on_current_tyres_intro</td><td/><td>0</td><td/></row>
		<row><td>LAPS_ON_CURRENT_TYRES_OUTRO</td><td>TYRE_MONITOR</td><td>LAPS_O~1|laps_on_current_tyres_outro</td><td/><td>0</td><td/></row>
		<row><td>LAPS_REMAINING</td><td>FUEL</td><td>LAPS_R~1|laps_remaining</td><td/><td>0</td><td/></row>
		<row><td>LAPS_REMAINING1</td><td>RACE_TIME</td><td>LAPS_R~1|laps_remaining</td><td/><td>0</td><td/></row>
		<row><td>LAP_COUNTER</td><td>VOICE</td><td>LAP_CO~1|lap_counter</td><td/><td>0</td><td/></row>
		<row><td>LAP_DELETED</td><td>PENALTIES</td><td>LAP_DE~1|lap_deleted</td><td/><td>0</td><td/></row>
		<row><td>LAP_TIMES</td><td>VOICE</td><td>LAP_TI~1|lap_times</td><td/><td>0</td><td/></row>
		<row><td>LAST</td><td>POSITION</td><td>last</td><td/><td>0</td><td/></row>
		<row><td>LAST_LAP</td><td>LAP_COUNTER</td><td>last_lap</td><td/><td>0</td><td/></row>
		<row><td>LAST_LAP1</td><td>RACE_TIME</td><td>last_lap</td><td/><td>0</td><td/></row>
		<row><td>LAST_LAP_LEADING</td><td>LAP_COUNTER</td><td>LAST_L~1|last_lap_leading</td><td/><td>0</td><td/></row>
		<row><td>LAST_LAP_LEADING1</td><td>RACE_TIME</td><td>LAST_L~1|last_lap_leading</td><td/><td>0</td><td/></row>
		<row><td>LAST_LAP_TOP_THREE</td><td>LAP_COUNTER</td><td>LAST_L~1|last_lap_top_three</td><td/><td>0</td><td/></row>
		<row><td>LAST_LAP_TOP_THREE1</td><td>RACE_TIME</td><td>LAST_L~1|last_lap_top_three</td><td/><td>0</td><td/></row>
		<row><td>LEADING</td><td>POSITION</td><td>leading</td><td/><td>0</td><td/></row>
		<row><td>LESS_THAN_A_TENTH_OFF_THE_PACE</td><td>LAP_TIMES</td><td>LESS_T~1|less_than_a_tenth_off_the_pace</td><td/><td>0</td><td/></row>
		<row><td>LESS_THAN_ONE_MINUTE</td><td>RACE_TIME</td><td>LESS_T~1|less_than_one_minute</td><td/><td>0</td><td/></row>
		<row><td>LocalAppDataFolder</td><td>TARGETDIR</td><td>.:LocalA~1|LocalAppData</td><td/><td>0</td><td/></row>
		<row><td>MANDATORY_PIT_STOPS</td><td>VOICE</td><td>MANDAT~1|mandatory_pit_stops</td><td/><td>0</td><td/></row>
		<row><td>MINOR_AERO_DAMAGE</td><td>DAMAGE_REPORTING</td><td>MINOR_~1|minor_aero_damage</td><td/><td>0</td><td/></row>
		<row><td>MINOR_ENGINE_DAMAGE</td><td>DAMAGE_REPORTING</td><td>MINOR_~1|minor_engine_damage</td><td/><td>0</td><td/></row>
		<row><td>MINOR_TRANSMISSION_DAMAGE</td><td>DAMAGE_REPORTING</td><td>MINOR_~1|minor_transmission_damage</td><td/><td>0</td><td/></row>
		<row><td>MINUTES</td><td>MANDATORY_PIT_STOPS</td><td>minutes</td><td/><td>0</td><td/></row>
		<row><td>MINUTES_ON_CURRENT_TYRES_INTRO</td><td>TYRE_MONITOR</td><td>MINUTE~1|minutes_on_current_tyres_intro</td><td/><td>0</td><td/></row>
		<row><td>MINUTES_ON_CURRENT_TYRES_OUTRO</td><td>TYRE_MONITOR</td><td>MINUTE~1|minutes_on_current_tyres_outro</td><td/><td>0</td><td/></row>
		<row><td>MINUTES_REMAINING</td><td>FUEL</td><td>MINUTE~1|minutes_remaining</td><td/><td>0</td><td/></row>
		<row><td>MINUTES_REMAINING1</td><td>RACE_TIME</td><td>MINUTE~1|minutes_remaining</td><td/><td>0</td><td/></row>
		<row><td>MISSED_STOP</td><td>MANDATORY_PIT_STOPS</td><td>MISSED~1|missed_stop</td><td/><td>0</td><td/></row>
		<row><td>MUST_DO_BETTER</td><td>PEARLS_OF_WISDOM</td><td>MUST_D~1|must_do_better</td><td/><td>0</td><td/></row>
		<row><td>MY_PRODUCT_NAME</td><td>BRITTON_IT_LTD</td><td>CREWCH~1|CrewChiefV2</td><td/><td>0</td><td/></row>
		<row><td>MyPicturesFolder</td><td>TARGETDIR</td><td>.:MyPict~1|MyPictures</td><td/><td>0</td><td/></row>
		<row><td>NEED_TO_FIND_A_FEW_MORE_TENTHS</td><td>LAP_TIMES</td><td>NEED_T~1|need_to_find_a_few_more_tenths</td><td/><td>0</td><td/></row>
		<row><td>NEED_TO_FIND_A_SECOND</td><td>LAP_TIMES</td><td>NEED_T~1|need_to_find_a_second</td><td/><td>0</td><td/></row>
		<row><td>NEED_TO_FIND_MORE_THAN_A_SECOND</td><td>LAP_TIMES</td><td>NEED_T~1|need_to_find_more_than_a_second</td><td/><td>0</td><td/></row>
		<row><td>NEED_TO_FIND_ONE_MORE_TENTH</td><td>LAP_TIMES</td><td>NEED_T~1|need_to_find_one_more_tenth</td><td/><td>0</td><td/></row>
		<row><td>NEUTRAL</td><td>PEARLS_OF_WISDOM</td><td>neutral</td><td/><td>0</td><td/></row>
		<row><td>NEW_PENALTY_DRIVETHROUGH</td><td>PENALTIES</td><td>NEW_PE~1|new_penalty_drivethrough</td><td/><td>0</td><td/></row>
		<row><td>NEW_PENALTY_STOPGO</td><td>PENALTIES</td><td>NEW_PE~1|new_penalty_stopgo</td><td/><td>0</td><td/></row>
		<row><td>NO</td><td>ACKNOWLEDGE</td><td>no</td><td/><td>0</td><td/></row>
		<row><td>NO_AERO_DAMAGE</td><td>DAMAGE_REPORTING</td><td>NO_AER~1|no_aero_damage</td><td/><td>0</td><td/></row>
		<row><td>NO_DATA</td><td>ACKNOWLEDGE</td><td>no_data</td><td/><td>0</td><td/></row>
		<row><td>NO_ENGINE_DAMAGE</td><td>DAMAGE_REPORTING</td><td>NO_ENG~1|no_engine_damage</td><td/><td>0</td><td/></row>
		<row><td>NO_TRANSMISSION_DAMAGE</td><td>DAMAGE_REPORTING</td><td>NO_TRA~1|no_transmission_damage</td><td/><td>0</td><td/></row>
		<row><td>NUMBERS</td><td>VOICE</td><td>numbers</td><td/><td>0</td><td/></row>
		<row><td>NetHoodFolder</td><td>TARGETDIR</td><td>.:NetHood</td><td/><td>0</td><td/></row>
		<row><td>OH</td><td>NUMBERS</td><td>oh</td><td/><td>0</td><td/></row>
		<row><td>OK</td><td>ACKNOWLEDGE</td><td>OK</td><td/><td>0</td><td/></row>
		<row><td>OK_START</td><td>POSITION</td><td>ok_start</td><td/><td>0</td><td/></row>
		<row><td>ONE_LAP_FUEL</td><td>FUEL</td><td>ONE_LA~1|one_lap_fuel</td><td/><td>0</td><td/></row>
		<row><td>ONE_MINUTE_REMAINING</td><td>RACE_TIME</td><td>ONE_MI~1|one_minute_remaining</td><td/><td>0</td><td/></row>
		<row><td>ONE_MORE_LAP_AFTER_THIS_ONE</td><td>RACE_TIME</td><td>ONE_MO~1|one_more_lap_after_this_one</td><td/><td>0</td><td/></row>
		<row><td>OPTIONS_TO_PRIMES</td><td>MANDATORY_PIT_STOPS</td><td>OPTION~1|options_to_primes</td><td/><td>0</td><td/></row>
		<row><td>P1</td><td>POSITION</td><td>p1</td><td/><td>0</td><td/></row>
		<row><td>P10</td><td>POSITION</td><td>p10</td><td/><td>0</td><td/></row>
		<row><td>P11</td><td>POSITION</td><td>p11</td><td/><td>0</td><td/></row>
		<row><td>P12</td><td>POSITION</td><td>p12</td><td/><td>0</td><td/></row>
		<row><td>P13</td><td>POSITION</td><td>p13</td><td/><td>0</td><td/></row>
		<row><td>P14</td><td>POSITION</td><td>p14</td><td/><td>0</td><td/></row>
		<row><td>P15</td><td>POSITION</td><td>p15</td><td/><td>0</td><td/></row>
		<row><td>P16</td><td>POSITION</td><td>p16</td><td/><td>0</td><td/></row>
		<row><td>P17</td><td>POSITION</td><td>p17</td><td/><td>0</td><td/></row>
		<row><td>P18</td><td>POSITION</td><td>p18</td><td/><td>0</td><td/></row>
		<row><td>P19</td><td>POSITION</td><td>p19</td><td/><td>0</td><td/></row>
		<row><td>P2</td><td>POSITION</td><td>p2</td><td/><td>0</td><td/></row>
		<row><td>P20</td><td>POSITION</td><td>p20</td><td/><td>0</td><td/></row>
		<row><td>P21</td><td>POSITION</td><td>p21</td><td/><td>0</td><td/></row>
		<row><td>P22</td><td>POSITION</td><td>p22</td><td/><td>0</td><td/></row>
		<row><td>P23</td><td>POSITION</td><td>p23</td><td/><td>0</td><td/></row>
		<row><td>P24</td><td>POSITION</td><td>p24</td><td/><td>0</td><td/></row>
		<row><td>P3</td><td>POSITION</td><td>p3</td><td/><td>0</td><td/></row>
		<row><td>P4</td><td>POSITION</td><td>p4</td><td/><td>0</td><td/></row>
		<row><td>P5</td><td>POSITION</td><td>p5</td><td/><td>0</td><td/></row>
		<row><td>P6</td><td>POSITION</td><td>p6</td><td/><td>0</td><td/></row>
		<row><td>P7</td><td>POSITION</td><td>p7</td><td/><td>0</td><td/></row>
		<row><td>P8</td><td>POSITION</td><td>p8</td><td/><td>0</td><td/></row>
		<row><td>P9</td><td>POSITION</td><td>p9</td><td/><td>0</td><td/></row>
		<row><td>PACE_BAD</td><td>LAP_TIMES</td><td>pace_bad</td><td/><td>0</td><td/></row>
		<row><td>PACE_GOOD</td><td>LAP_TIMES</td><td>PACE_G~1|pace_good</td><td/><td>0</td><td/></row>
		<row><td>PACE_OK</td><td>LAP_TIMES</td><td>pace_ok</td><td/><td>0</td><td/></row>
		<row><td>PEARLS_OF_WISDOM</td><td>VOICE</td><td>PEARLS~1|pearls_of_wisdom</td><td/><td>0</td><td/></row>
		<row><td>PENALTIES</td><td>VOICE</td><td>PENALT~1|penalties</td><td/><td>0</td><td/></row>
		<row><td>PENALTY_DISQUALIFIED</td><td>PENALTIES</td><td>PENALT~1|penalty_disqualified</td><td/><td>0</td><td/></row>
		<row><td>PENALTY_NOT_SERVED</td><td>PENALTIES</td><td>PENALT~1|penalty_not_served</td><td/><td>0</td><td/></row>
		<row><td>PENALTY_ONE_LAP_LEFT_DRIVETHROUGH</td><td>PENALTIES</td><td>PENALT~1|penalty_one_lap_left_drivethrough</td><td/><td>0</td><td/></row>
		<row><td>PENALTY_ONE_LAP_LEFT_STOPGO</td><td>PENALTIES</td><td>PENALT~1|penalty_one_lap_left_stopgo</td><td/><td>0</td><td/></row>
		<row><td>PENALTY_SERVED</td><td>PENALTIES</td><td>PENALT~1|penalty_served</td><td/><td>0</td><td/></row>
		<row><td>PENALTY_THREE_LAPS_LEFT</td><td>PENALTIES</td><td>PENALT~1|penalty_three_laps_left</td><td/><td>0</td><td/></row>
		<row><td>PENALTY_TWO_LAPS_LEFT</td><td>PENALTIES</td><td>PENALT~1|penalty_two_laps_left</td><td/><td>0</td><td/></row>
		<row><td>PERSONAL_BEST</td><td>LAP_TIMES</td><td>PERSON~1|personal_best</td><td/><td>0</td><td/></row>
		<row><td>PITS_EXIT_CLEAR</td><td>PUSH_NOW</td><td>PITS_E~1|pits_exit_clear</td><td/><td>0</td><td/></row>
		<row><td>PITS_EXIT_TRAFFIC_BEHIND</td><td>PUSH_NOW</td><td>PITS_E~1|pits_exit_traffic_behind</td><td/><td>0</td><td/></row>
		<row><td>PIT_NOW</td><td>MANDATORY_PIT_STOPS</td><td>pit_now</td><td/><td>0</td><td/></row>
		<row><td>PIT_NOW_DRIVE_THROUGH</td><td>PENALTIES</td><td>PIT_NO~1|pit_now_drive_through</td><td/><td>0</td><td/></row>
		<row><td>PIT_NOW_STOP_GO</td><td>PENALTIES</td><td>PIT_NO~1|pit_now_stop_go</td><td/><td>0</td><td/></row>
		<row><td>PIT_THIS_LAP</td><td>MANDATORY_PIT_STOPS</td><td>PIT_TH~1|pit_this_lap</td><td/><td>0</td><td/></row>
		<row><td>PIT_THIS_LAP_TOO_LATE</td><td>MANDATORY_PIT_STOPS</td><td>PIT_TH~1|pit_this_lap_too_late</td><td/><td>0</td><td/></row>
		<row><td>PIT_WINDOW_CLOSED</td><td>MANDATORY_PIT_STOPS</td><td>PIT_WI~1|pit_window_closed</td><td/><td>0</td><td/></row>
		<row><td>PIT_WINDOW_CLOSES_1_MIN</td><td>MANDATORY_PIT_STOPS</td><td>PIT_WI~1|pit_window_closes_1_min</td><td/><td>0</td><td/></row>
		<row><td>PIT_WINDOW_CLOSES_2_MIN</td><td>MANDATORY_PIT_STOPS</td><td>PIT_WI~1|pit_window_closes_2_min</td><td/><td>0</td><td/></row>
		<row><td>PIT_WINDOW_CLOSING</td><td>MANDATORY_PIT_STOPS</td><td>PIT_WI~1|pit_window_closing</td><td/><td>0</td><td/></row>
		<row><td>PIT_WINDOW_OPEN</td><td>MANDATORY_PIT_STOPS</td><td>PIT_WI~1|pit_window_open</td><td/><td>0</td><td/></row>
		<row><td>PIT_WINDOW_OPENING</td><td>MANDATORY_PIT_STOPS</td><td>PIT_WI~1|pit_window_opening</td><td/><td>0</td><td/></row>
		<row><td>PIT_WINDOW_OPENS_1_MIN</td><td>MANDATORY_PIT_STOPS</td><td>PIT_WI~1|pit_window_opens_1_min</td><td/><td>0</td><td/></row>
		<row><td>PIT_WINDOW_OPENS_2_MIN</td><td>MANDATORY_PIT_STOPS</td><td>PIT_WI~1|pit_window_opens_2_min</td><td/><td>0</td><td/></row>
		<row><td>PLENTY_OF_FUEL</td><td>FUEL</td><td>PLENTY~1|plenty_of_fuel</td><td/><td>0</td><td/></row>
		<row><td>PODIUM_FINISH</td><td>LAP_COUNTER</td><td>PODIUM~1|podium_finish</td><td/><td>0</td><td/></row>
		<row><td>POINT</td><td>NUMBERS</td><td>point</td><td/><td>0</td><td/></row>
		<row><td>POLE</td><td>POSITION</td><td>pole</td><td/><td>0</td><td/></row>
		<row><td>POSITION</td><td>VOICE</td><td>position</td><td/><td>0</td><td/></row>
		<row><td>PRIMES_TO_OPTIONS</td><td>MANDATORY_PIT_STOPS</td><td>PRIMES~1|primes_to_options</td><td/><td>0</td><td/></row>
		<row><td>PUSH_NOW</td><td>VOICE</td><td>push_now</td><td/><td>0</td><td/></row>
		<row><td>PUSH_TO_GET_SECOND</td><td>PUSH_NOW</td><td>PUSH_T~1|push_to_get_second</td><td/><td>0</td><td/></row>
		<row><td>PUSH_TO_GET_THIRD</td><td>PUSH_NOW</td><td>PUSH_T~1|push_to_get_third</td><td/><td>0</td><td/></row>
		<row><td>PUSH_TO_GET_WIN</td><td>PUSH_NOW</td><td>PUSH_T~1|push_to_get_win</td><td/><td>0</td><td/></row>
		<row><td>PUSH_TO_HOLD_POSITION</td><td>PUSH_NOW</td><td>PUSH_T~1|push_to_hold_position</td><td/><td>0</td><td/></row>
		<row><td>PUSH_TO_IMPROVE</td><td>PUSH_NOW</td><td>PUSH_T~1|push_to_improve</td><td/><td>0</td><td/></row>
		<row><td>PersonalFolder</td><td>TARGETDIR</td><td>.:Personal</td><td/><td>0</td><td/></row>
		<row><td>PrimaryVolumePath</td><td>TARGETDIR</td><td>.:Primar~1|PrimaryVolumePath</td><td/><td>0</td><td/></row>
		<row><td>PrintHoodFolder</td><td>TARGETDIR</td><td>.:PRINTH~1|PrintHood</td><td/><td>0</td><td/></row>
		<row><td>ProgramFiles64Folder</td><td>TARGETDIR</td><td>.:Prog64~1|Program Files 64</td><td/><td>0</td><td/></row>
		<row><td>ProgramFilesFolder</td><td>TARGETDIR</td><td>.:PROGRA~1|program files</td><td/><td>0</td><td/></row>
		<row><td>ProgramMenuFolder</td><td>TARGETDIR</td><td>.:Programs</td><td/><td>3</td><td/></row>
		<row><td>QUICKER_THAN_SECOND_PLACE</td><td>LAP_TIMES</td><td>QUICKE~1|quicker_than_second_place</td><td/><td>0</td><td/></row>
		<row><td>QUICKEST_IN_CLASS</td><td>LAP_TIMES</td><td>QUICKE~1|quickest_in_class</td><td/><td>0</td><td/></row>
		<row><td>QUICKEST_OVERALL</td><td>LAP_TIMES</td><td>QUICKE~1|quickest_overall</td><td/><td>0</td><td/></row>
		<row><td>RACE_TIME</td><td>VOICE</td><td>RACE_T~1|race_time</td><td/><td>0</td><td/></row>
		<row><td>RADIO_CHECK</td><td>VOICE</td><td>RADIO_~1|radio_check</td><td/><td>0</td><td/></row>
		<row><td>RecentFolder</td><td>TARGETDIR</td><td>.:Recent</td><td/><td>0</td><td/></row>
		<row><td>SECONDS</td><td>TIMINGS</td><td>seconds</td><td/><td>0</td><td/></row>
		<row><td>SEVERE_AERO_DAMAGE</td><td>DAMAGE_REPORTING</td><td>SEVERE~1|severe_aero_damage</td><td/><td>0</td><td/></row>
		<row><td>SEVERE_ENGINE_DAMAGE</td><td>DAMAGE_REPORTING</td><td>SEVERE~1|severe_engine_damage</td><td/><td>0</td><td/></row>
		<row><td>SEVERE_TRANSMISSION_DAMAGE</td><td>DAMAGE_REPORTING</td><td>SEVERE~1|severe_transmission_damage</td><td/><td>0</td><td/></row>
		<row><td>SOUNDS</td><td>INSTALLDIR</td><td>sounds</td><td/><td>0</td><td/></row>
		<row><td>SPOTTER</td><td>VOICE</td><td>spotter</td><td/><td>0</td><td/></row>
		<row><td>SPOTTERDISABLED</td><td>ACKNOWLEDGE</td><td>SPOTTE~1|spotterDisabled</td><td/><td>0</td><td/></row>
		<row><td>SPOTTERENABLED</td><td>ACKNOWLEDGE</td><td>SPOTTE~1|spotterEnabled</td><td/><td>0</td><td/></row>
		<row><td>STILL_THERE</td><td>SPOTTER</td><td>STILL_~1|still_there</td><td/><td>0</td><td/></row>
		<row><td>SendToFolder</td><td>TARGETDIR</td><td>.:SendTo</td><td/><td>3</td><td/></row>
		<row><td>StartMenuFolder</td><td>TARGETDIR</td><td>.:STARTM~1|Start Menu</td><td/><td>3</td><td/></row>
		<row><td>StartupFolder</td><td>TARGETDIR</td><td>.:StartUp</td><td/><td>3</td><td/></row>
		<row><td>System16Folder</td><td>TARGETDIR</td><td>.:System</td><td/><td>0</td><td/></row>
		<row><td>System64Folder</td><td>TARGETDIR</td><td>.:System64</td><td/><td>0</td><td/></row>
		<row><td>SystemFolder</td><td>TARGETDIR</td><td>.:System32</td><td/><td>0</td><td/></row>
		<row><td>TARGETDIR</td><td/><td>SourceDir</td><td/><td>0</td><td/></row>
		<row><td>TEN_MINUTES_FUEL</td><td>FUEL</td><td>TEN_MI~1|ten_minutes_fuel</td><td/><td>0</td><td/></row>
		<row><td>TEN_MINUTES_LEFT</td><td>RACE_TIME</td><td>TEN_MI~1|ten_minutes_left</td><td/><td>0</td><td/></row>
		<row><td>TERRIBLE_START</td><td>POSITION</td><td>TERRIB~1|terrible_start</td><td/><td>0</td><td/></row>
		<row><td>TEST</td><td>RADIO_CHECK</td><td>test</td><td/><td>0</td><td/></row>
		<row><td>THIS_IS_THE_LAST_LAP</td><td>RACE_TIME</td><td>THIS_I~1|this_is_the_last_lap</td><td/><td>0</td><td/></row>
		<row><td>THREE_LAPS_FUEL</td><td>FUEL</td><td>THREE_~1|three_laps_fuel</td><td/><td>0</td><td/></row>
		<row><td>TIME_INTRO</td><td>LAP_TIMES</td><td>TIME_I~1|time_intro</td><td/><td>0</td><td/></row>
		<row><td>TIME_PENALTY</td><td>PENALTIES</td><td>TIME_P~1|time_penalty</td><td/><td>0</td><td/></row>
		<row><td>TIMINGS</td><td>VOICE</td><td>timings</td><td/><td>0</td><td/></row>
		<row><td>TRIVIAL_AERO_DAMAGE</td><td>DAMAGE_REPORTING</td><td>TRIVIA~1|trivial_aero_damage</td><td/><td>0</td><td/></row>
		<row><td>TWENTY_MINUTES_LEFT</td><td>RACE_TIME</td><td>TWENTY~1|twenty_minutes_left</td><td/><td>0</td><td/></row>
		<row><td>TWO_LAPS_FUEL</td><td>FUEL</td><td>TWO_LA~1|two_laps_fuel</td><td/><td>0</td><td/></row>
		<row><td>TWO_MINUTES_FUEL</td><td>FUEL</td><td>TWO_MI~1|two_minutes_fuel</td><td/><td>0</td><td/></row>
		<row><td>TWO_MINUTES_LEFT</td><td>RACE_TIME</td><td>TWO_MI~1|two_minutes_left</td><td/><td>0</td><td/></row>
		<row><td>TWO_TO_GO</td><td>LAP_COUNTER</td><td>TWO_TO~1|two_to_go</td><td/><td>0</td><td/></row>
		<row><td>TWO_TO_GO_LEADING</td><td>LAP_COUNTER</td><td>TWO_TO~1|two_to_go_leading</td><td/><td>0</td><td/></row>
		<row><td>TWO_TO_GO_TOP_THREE</td><td>LAP_COUNTER</td><td>TWO_TO~1|two_to_go_top_three</td><td/><td>0</td><td/></row>
		<row><td>TYRE_MONITOR</td><td>VOICE</td><td>TYRE_M~1|tyre_monitor</td><td/><td>0</td><td/></row>
		<row><td>TempFolder</td><td>TARGETDIR</td><td>.:Temp</td><td/><td>0</td><td/></row>
		<row><td>TemplateFolder</td><td>TARGETDIR</td><td>.:ShellNew</td><td/><td>0</td><td/></row>
		<row><td>USERPROFILE</td><td>TARGETDIR</td><td>.:USERPR~1|UserProfile</td><td/><td>0</td><td/></row>
		<row><td>VOICE</td><td>SOUNDS</td><td>voice</td><td/><td>0</td><td/></row>
		<row><td>WE_ESTIMATE</td><td>FUEL</td><td>WE_EST~1|we_estimate</td><td/><td>0</td><td/></row>
		<row><td>WON_RACE</td><td>LAP_COUNTER</td><td>won_race</td><td/><td>0</td><td/></row>
		<row><td>WORN_ALL_ROUND</td><td>TYRE_MONITOR</td><td>WORN_A~1|worn_all_round</td><td/><td>0</td><td/></row>
		<row><td>WORN_FRONTS</td><td>TYRE_MONITOR</td><td>WORN_F~1|worn_fronts</td><td/><td>0</td><td/></row>
		<row><td>WORN_LEFTS</td><td>TYRE_MONITOR</td><td>WORN_L~1|worn_lefts</td><td/><td>0</td><td/></row>
		<row><td>WORN_LEFT_FRONT</td><td>TYRE_MONITOR</td><td>WORN_L~1|worn_left_front</td><td/><td>0</td><td/></row>
		<row><td>WORN_LEFT_REAR</td><td>TYRE_MONITOR</td><td>WORN_L~1|worn_left_rear</td><td/><td>0</td><td/></row>
		<row><td>WORN_REARS</td><td>TYRE_MONITOR</td><td>WORN_R~1|worn_rears</td><td/><td>0</td><td/></row>
		<row><td>WORN_RIGHTS</td><td>TYRE_MONITOR</td><td>WORN_R~1|worn_rights</td><td/><td>0</td><td/></row>
		<row><td>WORN_RIGHT_FRONT</td><td>TYRE_MONITOR</td><td>WORN_R~1|worn_right_front</td><td/><td>0</td><td/></row>
		<row><td>WORN_RIGHT_REAR</td><td>TYRE_MONITOR</td><td>WORN_R~1|worn_right_rear</td><td/><td>0</td><td/></row>
		<row><td>WORSENING</td><td>LAP_TIMES</td><td>WORSEN~1|worsening</td><td/><td>0</td><td/></row>
		<row><td>WindowsFolder</td><td>TARGETDIR</td><td>.:Windows</td><td/><td>0</td><td/></row>
		<row><td>WindowsVolume</td><td>TARGETDIR</td><td>.:WinRoot</td><td/><td>0</td><td/></row>
		<row><td>YES</td><td>ACKNOWLEDGE</td><td>yes</td><td/><td>0</td><td/></row>
		<row><td>YES_STOP_AFTER</td><td>MANDATORY_PIT_STOPS</td><td>YES_ST~1|yes_stop_after</td><td/><td>0</td><td/></row>
		<row><td>YES_STOP_ON_LAP</td><td>MANDATORY_PIT_STOPS</td><td>YES_ST~1|yes_stop_on_lap</td><td/><td>0</td><td/></row>
		<row><td>YOU_DONT_HAVE_A_PENALTY</td><td>PENALTIES</td><td>YOU_DO~1|you_dont_have_a_penalty</td><td/><td>0</td><td/></row>
		<row><td>YOU_HAVE_A_PENALTY</td><td>PENALTIES</td><td>YOU_HA~1|you_have_a_penalty</td><td/><td>0</td><td/></row>
		<row><td>YOU_STILL_HAVE_A_PENALTY</td><td>PENALTIES</td><td>YOU_ST~1|you_still_have_a_penalty</td><td/><td>0</td><td/></row>
		<row><td>ZEROZERO</td><td>NUMBERS</td><td>zerozero</td><td/><td>0</td><td/></row>
		<row><td>_</td><td>NUMBERS</td><td>0</td><td/><td>0</td><td/></row>
		<row><td>_0</td><td>NUMBERS</td><td>10</td><td/><td>0</td><td/></row>
		<row><td>_01</td><td>NUMBERS</td><td>20</td><td/><td>0</td><td/></row>
		<row><td>_02</td><td>NUMBERS</td><td>30</td><td/><td>0</td><td/></row>
		<row><td>_03</td><td>NUMBERS</td><td>40</td><td/><td>0</td><td/></row>
		<row><td>_04</td><td>NUMBERS</td><td>50</td><td/><td>0</td><td/></row>
		<row><td>_1</td><td>NUMBERS</td><td>01</td><td/><td>0</td><td/></row>
		<row><td>_10</td><td>NUMBERS</td><td>1</td><td/><td>0</td><td/></row>
		<row><td>_11</td><td>NUMBERS</td><td>11</td><td/><td>0</td><td/></row>
		<row><td>_12</td><td>NUMBERS</td><td>2</td><td/><td>0</td><td/></row>
		<row><td>_13</td><td>NUMBERS</td><td>21</td><td/><td>0</td><td/></row>
		<row><td>_14</td><td>NUMBERS</td><td>3</td><td/><td>0</td><td/></row>
		<row><td>_15</td><td>NUMBERS</td><td>31</td><td/><td>0</td><td/></row>
		<row><td>_16</td><td>NUMBERS</td><td>4</td><td/><td>0</td><td/></row>
		<row><td>_17</td><td>NUMBERS</td><td>41</td><td/><td>0</td><td/></row>
		<row><td>_18</td><td>NUMBERS</td><td>5</td><td/><td>0</td><td/></row>
		<row><td>_19</td><td>NUMBERS</td><td>51</td><td/><td>0</td><td/></row>
		<row><td>_2</td><td>NUMBERS</td><td>02</td><td/><td>0</td><td/></row>
		<row><td>_20</td><td>NUMBERS</td><td>6</td><td/><td>0</td><td/></row>
		<row><td>_21</td><td>NUMBERS</td><td>12</td><td/><td>0</td><td/></row>
		<row><td>_22</td><td>NUMBERS</td><td>22</td><td/><td>0</td><td/></row>
		<row><td>_23</td><td>NUMBERS</td><td>32</td><td/><td>0</td><td/></row>
		<row><td>_24</td><td>NUMBERS</td><td>42</td><td/><td>0</td><td/></row>
		<row><td>_25</td><td>NUMBERS</td><td>52</td><td/><td>0</td><td/></row>
		<row><td>_26</td><td>NUMBERS</td><td>7</td><td/><td>0</td><td/></row>
		<row><td>_27</td><td>NUMBERS</td><td>8</td><td/><td>0</td><td/></row>
		<row><td>_28</td><td>NUMBERS</td><td>9</td><td/><td>0</td><td/></row>
		<row><td>_3</td><td>NUMBERS</td><td>03</td><td/><td>0</td><td/></row>
		<row><td>_31</td><td>NUMBERS</td><td>13</td><td/><td>0</td><td/></row>
		<row><td>_32</td><td>NUMBERS</td><td>23</td><td/><td>0</td><td/></row>
		<row><td>_33</td><td>NUMBERS</td><td>33</td><td/><td>0</td><td/></row>
		<row><td>_34</td><td>NUMBERS</td><td>43</td><td/><td>0</td><td/></row>
		<row><td>_35</td><td>NUMBERS</td><td>53</td><td/><td>0</td><td/></row>
		<row><td>_4</td><td>NUMBERS</td><td>04</td><td/><td>0</td><td/></row>
		<row><td>_41</td><td>NUMBERS</td><td>14</td><td/><td>0</td><td/></row>
		<row><td>_42</td><td>NUMBERS</td><td>24</td><td/><td>0</td><td/></row>
		<row><td>_43</td><td>NUMBERS</td><td>34</td><td/><td>0</td><td/></row>
		<row><td>_44</td><td>NUMBERS</td><td>44</td><td/><td>0</td><td/></row>
		<row><td>_45</td><td>NUMBERS</td><td>54</td><td/><td>0</td><td/></row>
		<row><td>_5</td><td>NUMBERS</td><td>05</td><td/><td>0</td><td/></row>
		<row><td>_51</td><td>NUMBERS</td><td>15</td><td/><td>0</td><td/></row>
		<row><td>_52</td><td>NUMBERS</td><td>25</td><td/><td>0</td><td/></row>
		<row><td>_53</td><td>NUMBERS</td><td>35</td><td/><td>0</td><td/></row>
		<row><td>_54</td><td>NUMBERS</td><td>45</td><td/><td>0</td><td/></row>
		<row><td>_55</td><td>NUMBERS</td><td>55</td><td/><td>0</td><td/></row>
		<row><td>_6</td><td>NUMBERS</td><td>06</td><td/><td>0</td><td/></row>
		<row><td>_61</td><td>NUMBERS</td><td>16</td><td/><td>0</td><td/></row>
		<row><td>_62</td><td>NUMBERS</td><td>26</td><td/><td>0</td><td/></row>
		<row><td>_63</td><td>NUMBERS</td><td>36</td><td/><td>0</td><td/></row>
		<row><td>_64</td><td>NUMBERS</td><td>46</td><td/><td>0</td><td/></row>
		<row><td>_65</td><td>NUMBERS</td><td>56</td><td/><td>0</td><td/></row>
		<row><td>_7</td><td>NUMBERS</td><td>07</td><td/><td>0</td><td/></row>
		<row><td>_71</td><td>NUMBERS</td><td>17</td><td/><td>0</td><td/></row>
		<row><td>_72</td><td>NUMBERS</td><td>27</td><td/><td>0</td><td/></row>
		<row><td>_73</td><td>NUMBERS</td><td>37</td><td/><td>0</td><td/></row>
		<row><td>_74</td><td>NUMBERS</td><td>47</td><td/><td>0</td><td/></row>
		<row><td>_75</td><td>NUMBERS</td><td>57</td><td/><td>0</td><td/></row>
		<row><td>_8</td><td>NUMBERS</td><td>08</td><td/><td>0</td><td/></row>
		<row><td>_81</td><td>NUMBERS</td><td>18</td><td/><td>0</td><td/></row>
		<row><td>_82</td><td>NUMBERS</td><td>28</td><td/><td>0</td><td/></row>
		<row><td>_83</td><td>NUMBERS</td><td>38</td><td/><td>0</td><td/></row>
		<row><td>_84</td><td>NUMBERS</td><td>48</td><td/><td>0</td><td/></row>
		<row><td>_85</td><td>NUMBERS</td><td>58</td><td/><td>0</td><td/></row>
		<row><td>_9</td><td>NUMBERS</td><td>09</td><td/><td>0</td><td/></row>
		<row><td>_91</td><td>NUMBERS</td><td>19</td><td/><td>0</td><td/></row>
		<row><td>_92</td><td>NUMBERS</td><td>29</td><td/><td>0</td><td/></row>
		<row><td>_93</td><td>NUMBERS</td><td>39</td><td/><td>0</td><td/></row>
		<row><td>_94</td><td>NUMBERS</td><td>49</td><td/><td>0</td><td/></row>
		<row><td>_95</td><td>NUMBERS</td><td>59</td><td/><td>0</td><td/></row>
	</table>

	<table name="DrLocator">
		<col key="yes" def="s72">Signature_</col>
		<col key="yes" def="S72">Parent</col>
		<col key="yes" def="S255">Path</col>
		<col def="I2">Depth</col>
	</table>

	<table name="DuplicateFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="s72">File_</col>
		<col def="L255">DestName</col>
		<col def="S72">DestFolder</col>
	</table>

	<table name="Environment">
		<col key="yes" def="s72">Environment</col>
		<col def="l255">Name</col>
		<col def="L255">Value</col>
		<col def="s72">Component_</col>
	</table>

	<table name="Error">
		<col key="yes" def="i2">Error</col>
		<col def="L255">Message</col>
		<row><td>0</td><td>##IDS_ERROR_0##</td></row>
		<row><td>1</td><td>##IDS_ERROR_1##</td></row>
		<row><td>10</td><td>##IDS_ERROR_8##</td></row>
		<row><td>11</td><td>##IDS_ERROR_9##</td></row>
		<row><td>1101</td><td>##IDS_ERROR_22##</td></row>
		<row><td>12</td><td>##IDS_ERROR_10##</td></row>
		<row><td>13</td><td>##IDS_ERROR_11##</td></row>
		<row><td>1301</td><td>##IDS_ERROR_23##</td></row>
		<row><td>1302</td><td>##IDS_ERROR_24##</td></row>
		<row><td>1303</td><td>##IDS_ERROR_25##</td></row>
		<row><td>1304</td><td>##IDS_ERROR_26##</td></row>
		<row><td>1305</td><td>##IDS_ERROR_27##</td></row>
		<row><td>1306</td><td>##IDS_ERROR_28##</td></row>
		<row><td>1307</td><td>##IDS_ERROR_29##</td></row>
		<row><td>1308</td><td>##IDS_ERROR_30##</td></row>
		<row><td>1309</td><td>##IDS_ERROR_31##</td></row>
		<row><td>1310</td><td>##IDS_ERROR_32##</td></row>
		<row><td>1311</td><td>##IDS_ERROR_33##</td></row>
		<row><td>1312</td><td>##IDS_ERROR_34##</td></row>
		<row><td>1313</td><td>##IDS_ERROR_35##</td></row>
		<row><td>1314</td><td>##IDS_ERROR_36##</td></row>
		<row><td>1315</td><td>##IDS_ERROR_37##</td></row>
		<row><td>1316</td><td>##IDS_ERROR_38##</td></row>
		<row><td>1317</td><td>##IDS_ERROR_39##</td></row>
		<row><td>1318</td><td>##IDS_ERROR_40##</td></row>
		<row><td>1319</td><td>##IDS_ERROR_41##</td></row>
		<row><td>1320</td><td>##IDS_ERROR_42##</td></row>
		<row><td>1321</td><td>##IDS_ERROR_43##</td></row>
		<row><td>1322</td><td>##IDS_ERROR_44##</td></row>
		<row><td>1323</td><td>##IDS_ERROR_45##</td></row>
		<row><td>1324</td><td>##IDS_ERROR_46##</td></row>
		<row><td>1325</td><td>##IDS_ERROR_47##</td></row>
		<row><td>1326</td><td>##IDS_ERROR_48##</td></row>
		<row><td>1327</td><td>##IDS_ERROR_49##</td></row>
		<row><td>1328</td><td>##IDS_ERROR_122##</td></row>
		<row><td>1329</td><td>##IDS_ERROR_1329##</td></row>
		<row><td>1330</td><td>##IDS_ERROR_1330##</td></row>
		<row><td>1331</td><td>##IDS_ERROR_1331##</td></row>
		<row><td>1332</td><td>##IDS_ERROR_1332##</td></row>
		<row><td>1333</td><td>##IDS_ERROR_1333##</td></row>
		<row><td>1334</td><td>##IDS_ERROR_1334##</td></row>
		<row><td>1335</td><td>##IDS_ERROR_1335##</td></row>
		<row><td>1336</td><td>##IDS_ERROR_1336##</td></row>
		<row><td>14</td><td>##IDS_ERROR_12##</td></row>
		<row><td>1401</td><td>##IDS_ERROR_50##</td></row>
		<row><td>1402</td><td>##IDS_ERROR_51##</td></row>
		<row><td>1403</td><td>##IDS_ERROR_52##</td></row>
		<row><td>1404</td><td>##IDS_ERROR_53##</td></row>
		<row><td>1405</td><td>##IDS_ERROR_54##</td></row>
		<row><td>1406</td><td>##IDS_ERROR_55##</td></row>
		<row><td>1407</td><td>##IDS_ERROR_56##</td></row>
		<row><td>1408</td><td>##IDS_ERROR_57##</td></row>
		<row><td>1409</td><td>##IDS_ERROR_58##</td></row>
		<row><td>1410</td><td>##IDS_ERROR_59##</td></row>
		<row><td>15</td><td>##IDS_ERROR_13##</td></row>
		<row><td>1500</td><td>##IDS_ERROR_60##</td></row>
		<row><td>1501</td><td>##IDS_ERROR_61##</td></row>
		<row><td>1502</td><td>##IDS_ERROR_62##</td></row>
		<row><td>1503</td><td>##IDS_ERROR_63##</td></row>
		<row><td>16</td><td>##IDS_ERROR_14##</td></row>
		<row><td>1601</td><td>##IDS_ERROR_64##</td></row>
		<row><td>1602</td><td>##IDS_ERROR_65##</td></row>
		<row><td>1603</td><td>##IDS_ERROR_66##</td></row>
		<row><td>1604</td><td>##IDS_ERROR_67##</td></row>
		<row><td>1605</td><td>##IDS_ERROR_68##</td></row>
		<row><td>1606</td><td>##IDS_ERROR_69##</td></row>
		<row><td>1607</td><td>##IDS_ERROR_70##</td></row>
		<row><td>1608</td><td>##IDS_ERROR_71##</td></row>
		<row><td>1609</td><td>##IDS_ERROR_1609##</td></row>
		<row><td>1651</td><td>##IDS_ERROR_1651##</td></row>
		<row><td>17</td><td>##IDS_ERROR_15##</td></row>
		<row><td>1701</td><td>##IDS_ERROR_72##</td></row>
		<row><td>1702</td><td>##IDS_ERROR_73##</td></row>
		<row><td>1703</td><td>##IDS_ERROR_74##</td></row>
		<row><td>1704</td><td>##IDS_ERROR_75##</td></row>
		<row><td>1705</td><td>##IDS_ERROR_76##</td></row>
		<row><td>1706</td><td>##IDS_ERROR_77##</td></row>
		<row><td>1707</td><td>##IDS_ERROR_78##</td></row>
		<row><td>1708</td><td>##IDS_ERROR_79##</td></row>
		<row><td>1709</td><td>##IDS_ERROR_80##</td></row>
		<row><td>1710</td><td>##IDS_ERROR_81##</td></row>
		<row><td>1711</td><td>##IDS_ERROR_82##</td></row>
		<row><td>1712</td><td>##IDS_ERROR_83##</td></row>
		<row><td>1713</td><td>##IDS_ERROR_123##</td></row>
		<row><td>1714</td><td>##IDS_ERROR_124##</td></row>
		<row><td>1715</td><td>##IDS_ERROR_1715##</td></row>
		<row><td>1716</td><td>##IDS_ERROR_1716##</td></row>
		<row><td>1717</td><td>##IDS_ERROR_1717##</td></row>
		<row><td>1718</td><td>##IDS_ERROR_1718##</td></row>
		<row><td>1719</td><td>##IDS_ERROR_1719##</td></row>
		<row><td>1720</td><td>##IDS_ERROR_1720##</td></row>
		<row><td>1721</td><td>##IDS_ERROR_1721##</td></row>
		<row><td>1722</td><td>##IDS_ERROR_1722##</td></row>
		<row><td>1723</td><td>##IDS_ERROR_1723##</td></row>
		<row><td>1724</td><td>##IDS_ERROR_1724##</td></row>
		<row><td>1725</td><td>##IDS_ERROR_1725##</td></row>
		<row><td>1726</td><td>##IDS_ERROR_1726##</td></row>
		<row><td>1727</td><td>##IDS_ERROR_1727##</td></row>
		<row><td>1728</td><td>##IDS_ERROR_1728##</td></row>
		<row><td>1729</td><td>##IDS_ERROR_1729##</td></row>
		<row><td>1730</td><td>##IDS_ERROR_1730##</td></row>
		<row><td>1731</td><td>##IDS_ERROR_1731##</td></row>
		<row><td>1732</td><td>##IDS_ERROR_1732##</td></row>
		<row><td>18</td><td>##IDS_ERROR_16##</td></row>
		<row><td>1801</td><td>##IDS_ERROR_84##</td></row>
		<row><td>1802</td><td>##IDS_ERROR_85##</td></row>
		<row><td>1803</td><td>##IDS_ERROR_86##</td></row>
		<row><td>1804</td><td>##IDS_ERROR_87##</td></row>
		<row><td>1805</td><td>##IDS_ERROR_88##</td></row>
		<row><td>1806</td><td>##IDS_ERROR_89##</td></row>
		<row><td>1807</td><td>##IDS_ERROR_90##</td></row>
		<row><td>19</td><td>##IDS_ERROR_17##</td></row>
		<row><td>1901</td><td>##IDS_ERROR_91##</td></row>
		<row><td>1902</td><td>##IDS_ERROR_92##</td></row>
		<row><td>1903</td><td>##IDS_ERROR_93##</td></row>
		<row><td>1904</td><td>##IDS_ERROR_94##</td></row>
		<row><td>1905</td><td>##IDS_ERROR_95##</td></row>
		<row><td>1906</td><td>##IDS_ERROR_96##</td></row>
		<row><td>1907</td><td>##IDS_ERROR_97##</td></row>
		<row><td>1908</td><td>##IDS_ERROR_98##</td></row>
		<row><td>1909</td><td>##IDS_ERROR_99##</td></row>
		<row><td>1910</td><td>##IDS_ERROR_100##</td></row>
		<row><td>1911</td><td>##IDS_ERROR_101##</td></row>
		<row><td>1912</td><td>##IDS_ERROR_102##</td></row>
		<row><td>1913</td><td>##IDS_ERROR_103##</td></row>
		<row><td>1914</td><td>##IDS_ERROR_104##</td></row>
		<row><td>1915</td><td>##IDS_ERROR_105##</td></row>
		<row><td>1916</td><td>##IDS_ERROR_106##</td></row>
		<row><td>1917</td><td>##IDS_ERROR_107##</td></row>
		<row><td>1918</td><td>##IDS_ERROR_108##</td></row>
		<row><td>1919</td><td>##IDS_ERROR_109##</td></row>
		<row><td>1920</td><td>##IDS_ERROR_110##</td></row>
		<row><td>1921</td><td>##IDS_ERROR_111##</td></row>
		<row><td>1922</td><td>##IDS_ERROR_112##</td></row>
		<row><td>1923</td><td>##IDS_ERROR_113##</td></row>
		<row><td>1924</td><td>##IDS_ERROR_114##</td></row>
		<row><td>1925</td><td>##IDS_ERROR_115##</td></row>
		<row><td>1926</td><td>##IDS_ERROR_116##</td></row>
		<row><td>1927</td><td>##IDS_ERROR_117##</td></row>
		<row><td>1928</td><td>##IDS_ERROR_118##</td></row>
		<row><td>1929</td><td>##IDS_ERROR_119##</td></row>
		<row><td>1930</td><td>##IDS_ERROR_125##</td></row>
		<row><td>1931</td><td>##IDS_ERROR_126##</td></row>
		<row><td>1932</td><td>##IDS_ERROR_127##</td></row>
		<row><td>1933</td><td>##IDS_ERROR_128##</td></row>
		<row><td>1934</td><td>##IDS_ERROR_129##</td></row>
		<row><td>1935</td><td>##IDS_ERROR_1935##</td></row>
		<row><td>1936</td><td>##IDS_ERROR_1936##</td></row>
		<row><td>1937</td><td>##IDS_ERROR_1937##</td></row>
		<row><td>1938</td><td>##IDS_ERROR_1938##</td></row>
		<row><td>2</td><td>##IDS_ERROR_2##</td></row>
		<row><td>20</td><td>##IDS_ERROR_18##</td></row>
		<row><td>21</td><td>##IDS_ERROR_19##</td></row>
		<row><td>2101</td><td>##IDS_ERROR_2101##</td></row>
		<row><td>2102</td><td>##IDS_ERROR_2102##</td></row>
		<row><td>2103</td><td>##IDS_ERROR_2103##</td></row>
		<row><td>2104</td><td>##IDS_ERROR_2104##</td></row>
		<row><td>2105</td><td>##IDS_ERROR_2105##</td></row>
		<row><td>2106</td><td>##IDS_ERROR_2106##</td></row>
		<row><td>2107</td><td>##IDS_ERROR_2107##</td></row>
		<row><td>2108</td><td>##IDS_ERROR_2108##</td></row>
		<row><td>2109</td><td>##IDS_ERROR_2109##</td></row>
		<row><td>2110</td><td>##IDS_ERROR_2110##</td></row>
		<row><td>2111</td><td>##IDS_ERROR_2111##</td></row>
		<row><td>2112</td><td>##IDS_ERROR_2112##</td></row>
		<row><td>2113</td><td>##IDS_ERROR_2113##</td></row>
		<row><td>22</td><td>##IDS_ERROR_120##</td></row>
		<row><td>2200</td><td>##IDS_ERROR_2200##</td></row>
		<row><td>2201</td><td>##IDS_ERROR_2201##</td></row>
		<row><td>2202</td><td>##IDS_ERROR_2202##</td></row>
		<row><td>2203</td><td>##IDS_ERROR_2203##</td></row>
		<row><td>2204</td><td>##IDS_ERROR_2204##</td></row>
		<row><td>2205</td><td>##IDS_ERROR_2205##</td></row>
		<row><td>2206</td><td>##IDS_ERROR_2206##</td></row>
		<row><td>2207</td><td>##IDS_ERROR_2207##</td></row>
		<row><td>2208</td><td>##IDS_ERROR_2208##</td></row>
		<row><td>2209</td><td>##IDS_ERROR_2209##</td></row>
		<row><td>2210</td><td>##IDS_ERROR_2210##</td></row>
		<row><td>2211</td><td>##IDS_ERROR_2211##</td></row>
		<row><td>2212</td><td>##IDS_ERROR_2212##</td></row>
		<row><td>2213</td><td>##IDS_ERROR_2213##</td></row>
		<row><td>2214</td><td>##IDS_ERROR_2214##</td></row>
		<row><td>2215</td><td>##IDS_ERROR_2215##</td></row>
		<row><td>2216</td><td>##IDS_ERROR_2216##</td></row>
		<row><td>2217</td><td>##IDS_ERROR_2217##</td></row>
		<row><td>2218</td><td>##IDS_ERROR_2218##</td></row>
		<row><td>2219</td><td>##IDS_ERROR_2219##</td></row>
		<row><td>2220</td><td>##IDS_ERROR_2220##</td></row>
		<row><td>2221</td><td>##IDS_ERROR_2221##</td></row>
		<row><td>2222</td><td>##IDS_ERROR_2222##</td></row>
		<row><td>2223</td><td>##IDS_ERROR_2223##</td></row>
		<row><td>2224</td><td>##IDS_ERROR_2224##</td></row>
		<row><td>2225</td><td>##IDS_ERROR_2225##</td></row>
		<row><td>2226</td><td>##IDS_ERROR_2226##</td></row>
		<row><td>2227</td><td>##IDS_ERROR_2227##</td></row>
		<row><td>2228</td><td>##IDS_ERROR_2228##</td></row>
		<row><td>2229</td><td>##IDS_ERROR_2229##</td></row>
		<row><td>2230</td><td>##IDS_ERROR_2230##</td></row>
		<row><td>2231</td><td>##IDS_ERROR_2231##</td></row>
		<row><td>2232</td><td>##IDS_ERROR_2232##</td></row>
		<row><td>2233</td><td>##IDS_ERROR_2233##</td></row>
		<row><td>2234</td><td>##IDS_ERROR_2234##</td></row>
		<row><td>2235</td><td>##IDS_ERROR_2235##</td></row>
		<row><td>2236</td><td>##IDS_ERROR_2236##</td></row>
		<row><td>2237</td><td>##IDS_ERROR_2237##</td></row>
		<row><td>2238</td><td>##IDS_ERROR_2238##</td></row>
		<row><td>2239</td><td>##IDS_ERROR_2239##</td></row>
		<row><td>2240</td><td>##IDS_ERROR_2240##</td></row>
		<row><td>2241</td><td>##IDS_ERROR_2241##</td></row>
		<row><td>2242</td><td>##IDS_ERROR_2242##</td></row>
		<row><td>2243</td><td>##IDS_ERROR_2243##</td></row>
		<row><td>2244</td><td>##IDS_ERROR_2244##</td></row>
		<row><td>2245</td><td>##IDS_ERROR_2245##</td></row>
		<row><td>2246</td><td>##IDS_ERROR_2246##</td></row>
		<row><td>2247</td><td>##IDS_ERROR_2247##</td></row>
		<row><td>2248</td><td>##IDS_ERROR_2248##</td></row>
		<row><td>2249</td><td>##IDS_ERROR_2249##</td></row>
		<row><td>2250</td><td>##IDS_ERROR_2250##</td></row>
		<row><td>2251</td><td>##IDS_ERROR_2251##</td></row>
		<row><td>2252</td><td>##IDS_ERROR_2252##</td></row>
		<row><td>2253</td><td>##IDS_ERROR_2253##</td></row>
		<row><td>2254</td><td>##IDS_ERROR_2254##</td></row>
		<row><td>2255</td><td>##IDS_ERROR_2255##</td></row>
		<row><td>2256</td><td>##IDS_ERROR_2256##</td></row>
		<row><td>2257</td><td>##IDS_ERROR_2257##</td></row>
		<row><td>2258</td><td>##IDS_ERROR_2258##</td></row>
		<row><td>2259</td><td>##IDS_ERROR_2259##</td></row>
		<row><td>2260</td><td>##IDS_ERROR_2260##</td></row>
		<row><td>2261</td><td>##IDS_ERROR_2261##</td></row>
		<row><td>2262</td><td>##IDS_ERROR_2262##</td></row>
		<row><td>2263</td><td>##IDS_ERROR_2263##</td></row>
		<row><td>2264</td><td>##IDS_ERROR_2264##</td></row>
		<row><td>2265</td><td>##IDS_ERROR_2265##</td></row>
		<row><td>2266</td><td>##IDS_ERROR_2266##</td></row>
		<row><td>2267</td><td>##IDS_ERROR_2267##</td></row>
		<row><td>2268</td><td>##IDS_ERROR_2268##</td></row>
		<row><td>2269</td><td>##IDS_ERROR_2269##</td></row>
		<row><td>2270</td><td>##IDS_ERROR_2270##</td></row>
		<row><td>2271</td><td>##IDS_ERROR_2271##</td></row>
		<row><td>2272</td><td>##IDS_ERROR_2272##</td></row>
		<row><td>2273</td><td>##IDS_ERROR_2273##</td></row>
		<row><td>2274</td><td>##IDS_ERROR_2274##</td></row>
		<row><td>2275</td><td>##IDS_ERROR_2275##</td></row>
		<row><td>2276</td><td>##IDS_ERROR_2276##</td></row>
		<row><td>2277</td><td>##IDS_ERROR_2277##</td></row>
		<row><td>2278</td><td>##IDS_ERROR_2278##</td></row>
		<row><td>2279</td><td>##IDS_ERROR_2279##</td></row>
		<row><td>2280</td><td>##IDS_ERROR_2280##</td></row>
		<row><td>2281</td><td>##IDS_ERROR_2281##</td></row>
		<row><td>2282</td><td>##IDS_ERROR_2282##</td></row>
		<row><td>23</td><td>##IDS_ERROR_121##</td></row>
		<row><td>2302</td><td>##IDS_ERROR_2302##</td></row>
		<row><td>2303</td><td>##IDS_ERROR_2303##</td></row>
		<row><td>2304</td><td>##IDS_ERROR_2304##</td></row>
		<row><td>2305</td><td>##IDS_ERROR_2305##</td></row>
		<row><td>2306</td><td>##IDS_ERROR_2306##</td></row>
		<row><td>2307</td><td>##IDS_ERROR_2307##</td></row>
		<row><td>2308</td><td>##IDS_ERROR_2308##</td></row>
		<row><td>2309</td><td>##IDS_ERROR_2309##</td></row>
		<row><td>2310</td><td>##IDS_ERROR_2310##</td></row>
		<row><td>2315</td><td>##IDS_ERROR_2315##</td></row>
		<row><td>2318</td><td>##IDS_ERROR_2318##</td></row>
		<row><td>2319</td><td>##IDS_ERROR_2319##</td></row>
		<row><td>2320</td><td>##IDS_ERROR_2320##</td></row>
		<row><td>2321</td><td>##IDS_ERROR_2321##</td></row>
		<row><td>2322</td><td>##IDS_ERROR_2322##</td></row>
		<row><td>2323</td><td>##IDS_ERROR_2323##</td></row>
		<row><td>2324</td><td>##IDS_ERROR_2324##</td></row>
		<row><td>2325</td><td>##IDS_ERROR_2325##</td></row>
		<row><td>2326</td><td>##IDS_ERROR_2326##</td></row>
		<row><td>2327</td><td>##IDS_ERROR_2327##</td></row>
		<row><td>2328</td><td>##IDS_ERROR_2328##</td></row>
		<row><td>2329</td><td>##IDS_ERROR_2329##</td></row>
		<row><td>2330</td><td>##IDS_ERROR_2330##</td></row>
		<row><td>2331</td><td>##IDS_ERROR_2331##</td></row>
		<row><td>2332</td><td>##IDS_ERROR_2332##</td></row>
		<row><td>2333</td><td>##IDS_ERROR_2333##</td></row>
		<row><td>2334</td><td>##IDS_ERROR_2334##</td></row>
		<row><td>2335</td><td>##IDS_ERROR_2335##</td></row>
		<row><td>2336</td><td>##IDS_ERROR_2336##</td></row>
		<row><td>2337</td><td>##IDS_ERROR_2337##</td></row>
		<row><td>2338</td><td>##IDS_ERROR_2338##</td></row>
		<row><td>2339</td><td>##IDS_ERROR_2339##</td></row>
		<row><td>2340</td><td>##IDS_ERROR_2340##</td></row>
		<row><td>2341</td><td>##IDS_ERROR_2341##</td></row>
		<row><td>2342</td><td>##IDS_ERROR_2342##</td></row>
		<row><td>2343</td><td>##IDS_ERROR_2343##</td></row>
		<row><td>2344</td><td>##IDS_ERROR_2344##</td></row>
		<row><td>2345</td><td>##IDS_ERROR_2345##</td></row>
		<row><td>2347</td><td>##IDS_ERROR_2347##</td></row>
		<row><td>2348</td><td>##IDS_ERROR_2348##</td></row>
		<row><td>2349</td><td>##IDS_ERROR_2349##</td></row>
		<row><td>2350</td><td>##IDS_ERROR_2350##</td></row>
		<row><td>2351</td><td>##IDS_ERROR_2351##</td></row>
		<row><td>2352</td><td>##IDS_ERROR_2352##</td></row>
		<row><td>2353</td><td>##IDS_ERROR_2353##</td></row>
		<row><td>2354</td><td>##IDS_ERROR_2354##</td></row>
		<row><td>2355</td><td>##IDS_ERROR_2355##</td></row>
		<row><td>2356</td><td>##IDS_ERROR_2356##</td></row>
		<row><td>2357</td><td>##IDS_ERROR_2357##</td></row>
		<row><td>2358</td><td>##IDS_ERROR_2358##</td></row>
		<row><td>2359</td><td>##IDS_ERROR_2359##</td></row>
		<row><td>2360</td><td>##IDS_ERROR_2360##</td></row>
		<row><td>2361</td><td>##IDS_ERROR_2361##</td></row>
		<row><td>2362</td><td>##IDS_ERROR_2362##</td></row>
		<row><td>2363</td><td>##IDS_ERROR_2363##</td></row>
		<row><td>2364</td><td>##IDS_ERROR_2364##</td></row>
		<row><td>2365</td><td>##IDS_ERROR_2365##</td></row>
		<row><td>2366</td><td>##IDS_ERROR_2366##</td></row>
		<row><td>2367</td><td>##IDS_ERROR_2367##</td></row>
		<row><td>2368</td><td>##IDS_ERROR_2368##</td></row>
		<row><td>2370</td><td>##IDS_ERROR_2370##</td></row>
		<row><td>2371</td><td>##IDS_ERROR_2371##</td></row>
		<row><td>2372</td><td>##IDS_ERROR_2372##</td></row>
		<row><td>2373</td><td>##IDS_ERROR_2373##</td></row>
		<row><td>2374</td><td>##IDS_ERROR_2374##</td></row>
		<row><td>2375</td><td>##IDS_ERROR_2375##</td></row>
		<row><td>2376</td><td>##IDS_ERROR_2376##</td></row>
		<row><td>2379</td><td>##IDS_ERROR_2379##</td></row>
		<row><td>2380</td><td>##IDS_ERROR_2380##</td></row>
		<row><td>2381</td><td>##IDS_ERROR_2381##</td></row>
		<row><td>2382</td><td>##IDS_ERROR_2382##</td></row>
		<row><td>2401</td><td>##IDS_ERROR_2401##</td></row>
		<row><td>2402</td><td>##IDS_ERROR_2402##</td></row>
		<row><td>2501</td><td>##IDS_ERROR_2501##</td></row>
		<row><td>2502</td><td>##IDS_ERROR_2502##</td></row>
		<row><td>2503</td><td>##IDS_ERROR_2503##</td></row>
		<row><td>2601</td><td>##IDS_ERROR_2601##</td></row>
		<row><td>2602</td><td>##IDS_ERROR_2602##</td></row>
		<row><td>2603</td><td>##IDS_ERROR_2603##</td></row>
		<row><td>2604</td><td>##IDS_ERROR_2604##</td></row>
		<row><td>2605</td><td>##IDS_ERROR_2605##</td></row>
		<row><td>2606</td><td>##IDS_ERROR_2606##</td></row>
		<row><td>2607</td><td>##IDS_ERROR_2607##</td></row>
		<row><td>2608</td><td>##IDS_ERROR_2608##</td></row>
		<row><td>2609</td><td>##IDS_ERROR_2609##</td></row>
		<row><td>2611</td><td>##IDS_ERROR_2611##</td></row>
		<row><td>2612</td><td>##IDS_ERROR_2612##</td></row>
		<row><td>2613</td><td>##IDS_ERROR_2613##</td></row>
		<row><td>2614</td><td>##IDS_ERROR_2614##</td></row>
		<row><td>2615</td><td>##IDS_ERROR_2615##</td></row>
		<row><td>2616</td><td>##IDS_ERROR_2616##</td></row>
		<row><td>2617</td><td>##IDS_ERROR_2617##</td></row>
		<row><td>2618</td><td>##IDS_ERROR_2618##</td></row>
		<row><td>2619</td><td>##IDS_ERROR_2619##</td></row>
		<row><td>2620</td><td>##IDS_ERROR_2620##</td></row>
		<row><td>2621</td><td>##IDS_ERROR_2621##</td></row>
		<row><td>2701</td><td>##IDS_ERROR_2701##</td></row>
		<row><td>2702</td><td>##IDS_ERROR_2702##</td></row>
		<row><td>2703</td><td>##IDS_ERROR_2703##</td></row>
		<row><td>2704</td><td>##IDS_ERROR_2704##</td></row>
		<row><td>2705</td><td>##IDS_ERROR_2705##</td></row>
		<row><td>2706</td><td>##IDS_ERROR_2706##</td></row>
		<row><td>2707</td><td>##IDS_ERROR_2707##</td></row>
		<row><td>2708</td><td>##IDS_ERROR_2708##</td></row>
		<row><td>2709</td><td>##IDS_ERROR_2709##</td></row>
		<row><td>2710</td><td>##IDS_ERROR_2710##</td></row>
		<row><td>2711</td><td>##IDS_ERROR_2711##</td></row>
		<row><td>2712</td><td>##IDS_ERROR_2712##</td></row>
		<row><td>2713</td><td>##IDS_ERROR_2713##</td></row>
		<row><td>2714</td><td>##IDS_ERROR_2714##</td></row>
		<row><td>2715</td><td>##IDS_ERROR_2715##</td></row>
		<row><td>2716</td><td>##IDS_ERROR_2716##</td></row>
		<row><td>2717</td><td>##IDS_ERROR_2717##</td></row>
		<row><td>2718</td><td>##IDS_ERROR_2718##</td></row>
		<row><td>2719</td><td>##IDS_ERROR_2719##</td></row>
		<row><td>2720</td><td>##IDS_ERROR_2720##</td></row>
		<row><td>2721</td><td>##IDS_ERROR_2721##</td></row>
		<row><td>2722</td><td>##IDS_ERROR_2722##</td></row>
		<row><td>2723</td><td>##IDS_ERROR_2723##</td></row>
		<row><td>2724</td><td>##IDS_ERROR_2724##</td></row>
		<row><td>2725</td><td>##IDS_ERROR_2725##</td></row>
		<row><td>2726</td><td>##IDS_ERROR_2726##</td></row>
		<row><td>2727</td><td>##IDS_ERROR_2727##</td></row>
		<row><td>2728</td><td>##IDS_ERROR_2728##</td></row>
		<row><td>2729</td><td>##IDS_ERROR_2729##</td></row>
		<row><td>2730</td><td>##IDS_ERROR_2730##</td></row>
		<row><td>2731</td><td>##IDS_ERROR_2731##</td></row>
		<row><td>2732</td><td>##IDS_ERROR_2732##</td></row>
		<row><td>2733</td><td>##IDS_ERROR_2733##</td></row>
		<row><td>2734</td><td>##IDS_ERROR_2734##</td></row>
		<row><td>2735</td><td>##IDS_ERROR_2735##</td></row>
		<row><td>2736</td><td>##IDS_ERROR_2736##</td></row>
		<row><td>2737</td><td>##IDS_ERROR_2737##</td></row>
		<row><td>2738</td><td>##IDS_ERROR_2738##</td></row>
		<row><td>2739</td><td>##IDS_ERROR_2739##</td></row>
		<row><td>2740</td><td>##IDS_ERROR_2740##</td></row>
		<row><td>2741</td><td>##IDS_ERROR_2741##</td></row>
		<row><td>2742</td><td>##IDS_ERROR_2742##</td></row>
		<row><td>2743</td><td>##IDS_ERROR_2743##</td></row>
		<row><td>2744</td><td>##IDS_ERROR_2744##</td></row>
		<row><td>2745</td><td>##IDS_ERROR_2745##</td></row>
		<row><td>2746</td><td>##IDS_ERROR_2746##</td></row>
		<row><td>2747</td><td>##IDS_ERROR_2747##</td></row>
		<row><td>2748</td><td>##IDS_ERROR_2748##</td></row>
		<row><td>2749</td><td>##IDS_ERROR_2749##</td></row>
		<row><td>2750</td><td>##IDS_ERROR_2750##</td></row>
		<row><td>27500</td><td>##IDS_ERROR_130##</td></row>
		<row><td>27501</td><td>##IDS_ERROR_131##</td></row>
		<row><td>27502</td><td>##IDS_ERROR_27502##</td></row>
		<row><td>27503</td><td>##IDS_ERROR_27503##</td></row>
		<row><td>27504</td><td>##IDS_ERROR_27504##</td></row>
		<row><td>27505</td><td>##IDS_ERROR_27505##</td></row>
		<row><td>27506</td><td>##IDS_ERROR_27506##</td></row>
		<row><td>27507</td><td>##IDS_ERROR_27507##</td></row>
		<row><td>27508</td><td>##IDS_ERROR_27508##</td></row>
		<row><td>27509</td><td>##IDS_ERROR_27509##</td></row>
		<row><td>2751</td><td>##IDS_ERROR_2751##</td></row>
		<row><td>27510</td><td>##IDS_ERROR_27510##</td></row>
		<row><td>27511</td><td>##IDS_ERROR_27511##</td></row>
		<row><td>27512</td><td>##IDS_ERROR_27512##</td></row>
		<row><td>27513</td><td>##IDS_ERROR_27513##</td></row>
		<row><td>27514</td><td>##IDS_ERROR_27514##</td></row>
		<row><td>27515</td><td>##IDS_ERROR_27515##</td></row>
		<row><td>27516</td><td>##IDS_ERROR_27516##</td></row>
		<row><td>27517</td><td>##IDS_ERROR_27517##</td></row>
		<row><td>27518</td><td>##IDS_ERROR_27518##</td></row>
		<row><td>27519</td><td>##IDS_ERROR_27519##</td></row>
		<row><td>2752</td><td>##IDS_ERROR_2752##</td></row>
		<row><td>27520</td><td>##IDS_ERROR_27520##</td></row>
		<row><td>27521</td><td>##IDS_ERROR_27521##</td></row>
		<row><td>27522</td><td>##IDS_ERROR_27522##</td></row>
		<row><td>27523</td><td>##IDS_ERROR_27523##</td></row>
		<row><td>27524</td><td>##IDS_ERROR_27524##</td></row>
		<row><td>27525</td><td>##IDS_ERROR_27525##</td></row>
		<row><td>27526</td><td>##IDS_ERROR_27526##</td></row>
		<row><td>27527</td><td>##IDS_ERROR_27527##</td></row>
		<row><td>27528</td><td>##IDS_ERROR_27528##</td></row>
		<row><td>27529</td><td>##IDS_ERROR_27529##</td></row>
		<row><td>2753</td><td>##IDS_ERROR_2753##</td></row>
		<row><td>27530</td><td>##IDS_ERROR_27530##</td></row>
		<row><td>27531</td><td>##IDS_ERROR_27531##</td></row>
		<row><td>27532</td><td>##IDS_ERROR_27532##</td></row>
		<row><td>27533</td><td>##IDS_ERROR_27533##</td></row>
		<row><td>27534</td><td>##IDS_ERROR_27534##</td></row>
		<row><td>27535</td><td>##IDS_ERROR_27535##</td></row>
		<row><td>27536</td><td>##IDS_ERROR_27536##</td></row>
		<row><td>27537</td><td>##IDS_ERROR_27537##</td></row>
		<row><td>27538</td><td>##IDS_ERROR_27538##</td></row>
		<row><td>27539</td><td>##IDS_ERROR_27539##</td></row>
		<row><td>2754</td><td>##IDS_ERROR_2754##</td></row>
		<row><td>27540</td><td>##IDS_ERROR_27540##</td></row>
		<row><td>27541</td><td>##IDS_ERROR_27541##</td></row>
		<row><td>27542</td><td>##IDS_ERROR_27542##</td></row>
		<row><td>27543</td><td>##IDS_ERROR_27543##</td></row>
		<row><td>27544</td><td>##IDS_ERROR_27544##</td></row>
		<row><td>27545</td><td>##IDS_ERROR_27545##</td></row>
		<row><td>27546</td><td>##IDS_ERROR_27546##</td></row>
		<row><td>27547</td><td>##IDS_ERROR_27547##</td></row>
		<row><td>27548</td><td>##IDS_ERROR_27548##</td></row>
		<row><td>27549</td><td>##IDS_ERROR_27549##</td></row>
		<row><td>2755</td><td>##IDS_ERROR_2755##</td></row>
		<row><td>27550</td><td>##IDS_ERROR_27550##</td></row>
		<row><td>27551</td><td>##IDS_ERROR_27551##</td></row>
		<row><td>27552</td><td>##IDS_ERROR_27552##</td></row>
		<row><td>27553</td><td>##IDS_ERROR_27553##</td></row>
		<row><td>27554</td><td>##IDS_ERROR_27554##</td></row>
		<row><td>27555</td><td>##IDS_ERROR_27555##</td></row>
		<row><td>2756</td><td>##IDS_ERROR_2756##</td></row>
		<row><td>2757</td><td>##IDS_ERROR_2757##</td></row>
		<row><td>2758</td><td>##IDS_ERROR_2758##</td></row>
		<row><td>2759</td><td>##IDS_ERROR_2759##</td></row>
		<row><td>2760</td><td>##IDS_ERROR_2760##</td></row>
		<row><td>2761</td><td>##IDS_ERROR_2761##</td></row>
		<row><td>2762</td><td>##IDS_ERROR_2762##</td></row>
		<row><td>2763</td><td>##IDS_ERROR_2763##</td></row>
		<row><td>2765</td><td>##IDS_ERROR_2765##</td></row>
		<row><td>2766</td><td>##IDS_ERROR_2766##</td></row>
		<row><td>2767</td><td>##IDS_ERROR_2767##</td></row>
		<row><td>2768</td><td>##IDS_ERROR_2768##</td></row>
		<row><td>2769</td><td>##IDS_ERROR_2769##</td></row>
		<row><td>2770</td><td>##IDS_ERROR_2770##</td></row>
		<row><td>2771</td><td>##IDS_ERROR_2771##</td></row>
		<row><td>2772</td><td>##IDS_ERROR_2772##</td></row>
		<row><td>2801</td><td>##IDS_ERROR_2801##</td></row>
		<row><td>2802</td><td>##IDS_ERROR_2802##</td></row>
		<row><td>2803</td><td>##IDS_ERROR_2803##</td></row>
		<row><td>2804</td><td>##IDS_ERROR_2804##</td></row>
		<row><td>2806</td><td>##IDS_ERROR_2806##</td></row>
		<row><td>2807</td><td>##IDS_ERROR_2807##</td></row>
		<row><td>2808</td><td>##IDS_ERROR_2808##</td></row>
		<row><td>2809</td><td>##IDS_ERROR_2809##</td></row>
		<row><td>2810</td><td>##IDS_ERROR_2810##</td></row>
		<row><td>2811</td><td>##IDS_ERROR_2811##</td></row>
		<row><td>2812</td><td>##IDS_ERROR_2812##</td></row>
		<row><td>2813</td><td>##IDS_ERROR_2813##</td></row>
		<row><td>2814</td><td>##IDS_ERROR_2814##</td></row>
		<row><td>2815</td><td>##IDS_ERROR_2815##</td></row>
		<row><td>2816</td><td>##IDS_ERROR_2816##</td></row>
		<row><td>2817</td><td>##IDS_ERROR_2817##</td></row>
		<row><td>2818</td><td>##IDS_ERROR_2818##</td></row>
		<row><td>2819</td><td>##IDS_ERROR_2819##</td></row>
		<row><td>2820</td><td>##IDS_ERROR_2820##</td></row>
		<row><td>2821</td><td>##IDS_ERROR_2821##</td></row>
		<row><td>2822</td><td>##IDS_ERROR_2822##</td></row>
		<row><td>2823</td><td>##IDS_ERROR_2823##</td></row>
		<row><td>2824</td><td>##IDS_ERROR_2824##</td></row>
		<row><td>2825</td><td>##IDS_ERROR_2825##</td></row>
		<row><td>2826</td><td>##IDS_ERROR_2826##</td></row>
		<row><td>2827</td><td>##IDS_ERROR_2827##</td></row>
		<row><td>2828</td><td>##IDS_ERROR_2828##</td></row>
		<row><td>2829</td><td>##IDS_ERROR_2829##</td></row>
		<row><td>2830</td><td>##IDS_ERROR_2830##</td></row>
		<row><td>2831</td><td>##IDS_ERROR_2831##</td></row>
		<row><td>2832</td><td>##IDS_ERROR_2832##</td></row>
		<row><td>2833</td><td>##IDS_ERROR_2833##</td></row>
		<row><td>2834</td><td>##IDS_ERROR_2834##</td></row>
		<row><td>2835</td><td>##IDS_ERROR_2835##</td></row>
		<row><td>2836</td><td>##IDS_ERROR_2836##</td></row>
		<row><td>2837</td><td>##IDS_ERROR_2837##</td></row>
		<row><td>2838</td><td>##IDS_ERROR_2838##</td></row>
		<row><td>2839</td><td>##IDS_ERROR_2839##</td></row>
		<row><td>2840</td><td>##IDS_ERROR_2840##</td></row>
		<row><td>2841</td><td>##IDS_ERROR_2841##</td></row>
		<row><td>2842</td><td>##IDS_ERROR_2842##</td></row>
		<row><td>2843</td><td>##IDS_ERROR_2843##</td></row>
		<row><td>2844</td><td>##IDS_ERROR_2844##</td></row>
		<row><td>2845</td><td>##IDS_ERROR_2845##</td></row>
		<row><td>2846</td><td>##IDS_ERROR_2846##</td></row>
		<row><td>2847</td><td>##IDS_ERROR_2847##</td></row>
		<row><td>2848</td><td>##IDS_ERROR_2848##</td></row>
		<row><td>2849</td><td>##IDS_ERROR_2849##</td></row>
		<row><td>2850</td><td>##IDS_ERROR_2850##</td></row>
		<row><td>2851</td><td>##IDS_ERROR_2851##</td></row>
		<row><td>2852</td><td>##IDS_ERROR_2852##</td></row>
		<row><td>2853</td><td>##IDS_ERROR_2853##</td></row>
		<row><td>2854</td><td>##IDS_ERROR_2854##</td></row>
		<row><td>2855</td><td>##IDS_ERROR_2855##</td></row>
		<row><td>2856</td><td>##IDS_ERROR_2856##</td></row>
		<row><td>2857</td><td>##IDS_ERROR_2857##</td></row>
		<row><td>2858</td><td>##IDS_ERROR_2858##</td></row>
		<row><td>2859</td><td>##IDS_ERROR_2859##</td></row>
		<row><td>2860</td><td>##IDS_ERROR_2860##</td></row>
		<row><td>2861</td><td>##IDS_ERROR_2861##</td></row>
		<row><td>2862</td><td>##IDS_ERROR_2862##</td></row>
		<row><td>2863</td><td>##IDS_ERROR_2863##</td></row>
		<row><td>2864</td><td>##IDS_ERROR_2864##</td></row>
		<row><td>2865</td><td>##IDS_ERROR_2865##</td></row>
		<row><td>2866</td><td>##IDS_ERROR_2866##</td></row>
		<row><td>2867</td><td>##IDS_ERROR_2867##</td></row>
		<row><td>2868</td><td>##IDS_ERROR_2868##</td></row>
		<row><td>2869</td><td>##IDS_ERROR_2869##</td></row>
		<row><td>2870</td><td>##IDS_ERROR_2870##</td></row>
		<row><td>2871</td><td>##IDS_ERROR_2871##</td></row>
		<row><td>2872</td><td>##IDS_ERROR_2872##</td></row>
		<row><td>2873</td><td>##IDS_ERROR_2873##</td></row>
		<row><td>2874</td><td>##IDS_ERROR_2874##</td></row>
		<row><td>2875</td><td>##IDS_ERROR_2875##</td></row>
		<row><td>2876</td><td>##IDS_ERROR_2876##</td></row>
		<row><td>2877</td><td>##IDS_ERROR_2877##</td></row>
		<row><td>2878</td><td>##IDS_ERROR_2878##</td></row>
		<row><td>2879</td><td>##IDS_ERROR_2879##</td></row>
		<row><td>2880</td><td>##IDS_ERROR_2880##</td></row>
		<row><td>2881</td><td>##IDS_ERROR_2881##</td></row>
		<row><td>2882</td><td>##IDS_ERROR_2882##</td></row>
		<row><td>2883</td><td>##IDS_ERROR_2883##</td></row>
		<row><td>2884</td><td>##IDS_ERROR_2884##</td></row>
		<row><td>2885</td><td>##IDS_ERROR_2885##</td></row>
		<row><td>2886</td><td>##IDS_ERROR_2886##</td></row>
		<row><td>2887</td><td>##IDS_ERROR_2887##</td></row>
		<row><td>2888</td><td>##IDS_ERROR_2888##</td></row>
		<row><td>2889</td><td>##IDS_ERROR_2889##</td></row>
		<row><td>2890</td><td>##IDS_ERROR_2890##</td></row>
		<row><td>2891</td><td>##IDS_ERROR_2891##</td></row>
		<row><td>2892</td><td>##IDS_ERROR_2892##</td></row>
		<row><td>2893</td><td>##IDS_ERROR_2893##</td></row>
		<row><td>2894</td><td>##IDS_ERROR_2894##</td></row>
		<row><td>2895</td><td>##IDS_ERROR_2895##</td></row>
		<row><td>2896</td><td>##IDS_ERROR_2896##</td></row>
		<row><td>2897</td><td>##IDS_ERROR_2897##</td></row>
		<row><td>2898</td><td>##IDS_ERROR_2898##</td></row>
		<row><td>2899</td><td>##IDS_ERROR_2899##</td></row>
		<row><td>2901</td><td>##IDS_ERROR_2901##</td></row>
		<row><td>2902</td><td>##IDS_ERROR_2902##</td></row>
		<row><td>2903</td><td>##IDS_ERROR_2903##</td></row>
		<row><td>2904</td><td>##IDS_ERROR_2904##</td></row>
		<row><td>2905</td><td>##IDS_ERROR_2905##</td></row>
		<row><td>2906</td><td>##IDS_ERROR_2906##</td></row>
		<row><td>2907</td><td>##IDS_ERROR_2907##</td></row>
		<row><td>2908</td><td>##IDS_ERROR_2908##</td></row>
		<row><td>2909</td><td>##IDS_ERROR_2909##</td></row>
		<row><td>2910</td><td>##IDS_ERROR_2910##</td></row>
		<row><td>2911</td><td>##IDS_ERROR_2911##</td></row>
		<row><td>2912</td><td>##IDS_ERROR_2912##</td></row>
		<row><td>2919</td><td>##IDS_ERROR_2919##</td></row>
		<row><td>2920</td><td>##IDS_ERROR_2920##</td></row>
		<row><td>2924</td><td>##IDS_ERROR_2924##</td></row>
		<row><td>2927</td><td>##IDS_ERROR_2927##</td></row>
		<row><td>2928</td><td>##IDS_ERROR_2928##</td></row>
		<row><td>2929</td><td>##IDS_ERROR_2929##</td></row>
		<row><td>2932</td><td>##IDS_ERROR_2932##</td></row>
		<row><td>2933</td><td>##IDS_ERROR_2933##</td></row>
		<row><td>2934</td><td>##IDS_ERROR_2934##</td></row>
		<row><td>2935</td><td>##IDS_ERROR_2935##</td></row>
		<row><td>2936</td><td>##IDS_ERROR_2936##</td></row>
		<row><td>2937</td><td>##IDS_ERROR_2937##</td></row>
		<row><td>2938</td><td>##IDS_ERROR_2938##</td></row>
		<row><td>2939</td><td>##IDS_ERROR_2939##</td></row>
		<row><td>2940</td><td>##IDS_ERROR_2940##</td></row>
		<row><td>2941</td><td>##IDS_ERROR_2941##</td></row>
		<row><td>2942</td><td>##IDS_ERROR_2942##</td></row>
		<row><td>2943</td><td>##IDS_ERROR_2943##</td></row>
		<row><td>2944</td><td>##IDS_ERROR_2944##</td></row>
		<row><td>2945</td><td>##IDS_ERROR_2945##</td></row>
		<row><td>3001</td><td>##IDS_ERROR_3001##</td></row>
		<row><td>3002</td><td>##IDS_ERROR_3002##</td></row>
		<row><td>32</td><td>##IDS_ERROR_20##</td></row>
		<row><td>33</td><td>##IDS_ERROR_21##</td></row>
		<row><td>4</td><td>##IDS_ERROR_3##</td></row>
		<row><td>5</td><td>##IDS_ERROR_4##</td></row>
		<row><td>7</td><td>##IDS_ERROR_5##</td></row>
		<row><td>8</td><td>##IDS_ERROR_6##</td></row>
		<row><td>9</td><td>##IDS_ERROR_7##</td></row>
	</table>

	<table name="EventMapping">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">Event</col>
		<col def="s50">Attribute</col>
		<row><td>CustomSetup</td><td>ItemDescription</td><td>SelectionDescription</td><td>Text</td></row>
		<row><td>CustomSetup</td><td>Location</td><td>SelectionPath</td><td>Text</td></row>
		<row><td>CustomSetup</td><td>Size</td><td>SelectionSize</td><td>Text</td></row>
		<row><td>SetupInitialization</td><td>ActionData</td><td>ActionData</td><td>Text</td></row>
		<row><td>SetupInitialization</td><td>ActionText</td><td>ActionText</td><td>Text</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>AdminInstallFinalize</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>InstallFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>MoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>RemoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>RemoveRegistryValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>SetProgress</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>UnmoveFiles</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>WriteIniValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionProgress95</td><td>WriteRegistryValues</td><td>Progress</td></row>
		<row><td>SetupProgress</td><td>ActionText</td><td>ActionText</td><td>Text</td></row>
	</table>

	<table name="Extension">
		<col key="yes" def="s255">Extension</col>
		<col key="yes" def="s72">Component_</col>
		<col def="S255">ProgId_</col>
		<col def="S64">MIME_</col>
		<col def="s38">Feature_</col>
	</table>

	<table name="Feature">
		<col key="yes" def="s38">Feature</col>
		<col def="S38">Feature_Parent</col>
		<col def="L64">Title</col>
		<col def="L255">Description</col>
		<col def="I2">Display</col>
		<col def="i2">Level</col>
		<col def="S72">Directory_</col>
		<col def="i2">Attributes</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISFeatureCabName</col>
		<col def="S255">ISProFeatureName</col>
		<row><td>AlwaysInstall</td><td/><td>##DN_AlwaysInstall##</td><td>Enter the description for this feature here.</td><td>0</td><td>1</td><td>INSTALLDIR</td><td>16</td><td/><td>Enter comments regarding this feature here.</td><td/><td/></row>
	</table>

	<table name="FeatureComponents">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">Component_</col>
		<row><td>AlwaysInstall</td><td>CrewChiefV2.Primary_output</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT1</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT10</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT100</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT101</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT102</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT103</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT104</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT105</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT106</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT107</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT108</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT109</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT11</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT110</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT111</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT112</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT113</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT114</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT115</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT116</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT117</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT118</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT119</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT12</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT120</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT121</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT122</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT123</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT124</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT125</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT126</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT127</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT128</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT129</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT13</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT130</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT131</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT132</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT133</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT134</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT135</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT136</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT137</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT138</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT139</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT14</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT140</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT141</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT142</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT143</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT144</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT145</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT146</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT147</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT148</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT149</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT15</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT150</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT151</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT152</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT153</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT154</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT155</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT156</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT157</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT158</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT159</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT16</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT160</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT161</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT162</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT163</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT164</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT165</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT166</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT167</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT168</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT169</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT17</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT170</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT171</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT172</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT173</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT174</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT175</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT176</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT177</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT178</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT179</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT18</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT180</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT181</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT182</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT183</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT184</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT185</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT186</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT187</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT188</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT189</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT19</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT190</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT191</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT192</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT193</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT194</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT195</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT196</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT197</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT198</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT199</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT2</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT20</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT200</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT201</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT202</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT203</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT204</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT205</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT206</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT207</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT208</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT209</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT21</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT210</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT211</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT212</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT213</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT214</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT215</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT216</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT217</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT218</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT219</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT22</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT220</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT221</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT222</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT223</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT224</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT225</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT226</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT227</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT228</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT229</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT23</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT230</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT231</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT232</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT233</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT234</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT235</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT236</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT237</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT238</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT239</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT24</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT240</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT241</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT242</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT243</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT244</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT245</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT246</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT247</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT248</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT249</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT25</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT250</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT251</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT252</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT253</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT254</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT255</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT256</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT257</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT258</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT259</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT26</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT260</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT261</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT262</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT263</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT264</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT265</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT266</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT267</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT268</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT269</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT27</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT270</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT271</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT272</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT273</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT274</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT275</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT276</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT277</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT278</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT279</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT28</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT280</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT281</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT282</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT283</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT284</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT285</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT286</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT287</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT288</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT289</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT29</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT290</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT291</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT292</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT293</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT294</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT295</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT296</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT297</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT298</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT299</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT3</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT30</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT300</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT301</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT302</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT303</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT304</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT305</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT306</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT31</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT32</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT33</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT34</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT35</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT36</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT37</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT38</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT39</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT4</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT40</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT41</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT42</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT43</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT44</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT45</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT46</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT47</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT48</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT49</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT5</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT50</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT51</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT52</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT53</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT54</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT55</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT56</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT57</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT58</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT59</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT6</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT60</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT61</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT62</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT63</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT64</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT65</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT66</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT67</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT68</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT69</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT7</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT70</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT71</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT72</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT73</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT74</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT75</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT76</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT77</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT78</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT79</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT8</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT80</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT81</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT82</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT83</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT84</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT85</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT86</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT87</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT88</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT89</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT9</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT90</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT91</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT92</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT93</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT94</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT95</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT96</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT97</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT98</td></row>
		<row><td>AlwaysInstall</td><td>ISX_DEFAULTCOMPONENT99</td></row>
	</table>

	<table name="File">
		<col key="yes" def="s72">File</col>
		<col def="s72">Component_</col>
		<col def="s255">FileName</col>
		<col def="i4">FileSize</col>
		<col def="S72">Version</col>
		<col def="S20">Language</col>
		<col def="I2">Attributes</col>
		<col def="i2">Sequence</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I4">ISAttributes</col>
		<col def="S72">ISComponentSubFolder_</col>
		<row><td>_.wav</td><td>ISX_DEFAULTCOMPONENT5</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\didnt_understand\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav1</td><td>ISX_DEFAULTCOMPONENT5</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\didnt_understand\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav10</td><td>ISX_DEFAULTCOMPONENT7</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\keepQuietEnabled\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav100</td><td>ISX_DEFAULTCOMPONENT39</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\minutes_remaining\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav101</td><td>ISX_DEFAULTCOMPONENT39</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\minutes_remaining\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav102</td><td>ISX_DEFAULTCOMPONENT39</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\minutes_remaining\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav103</td><td>ISX_DEFAULTCOMPONENT40</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\one_lap_fuel\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav104</td><td>ISX_DEFAULTCOMPONENT40</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\one_lap_fuel\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav105</td><td>ISX_DEFAULTCOMPONENT40</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\one_lap_fuel\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav106</td><td>ISX_DEFAULTCOMPONENT41</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\plenty_of_fuel\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav107</td><td>ISX_DEFAULTCOMPONENT41</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\plenty_of_fuel\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav108</td><td>ISX_DEFAULTCOMPONENT41</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\plenty_of_fuel\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav109</td><td>ISX_DEFAULTCOMPONENT42</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\ten_minutes_fuel\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav11</td><td>ISX_DEFAULTCOMPONENT7</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\keepQuietEnabled\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav110</td><td>ISX_DEFAULTCOMPONENT42</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\ten_minutes_fuel\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav111</td><td>ISX_DEFAULTCOMPONENT42</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\ten_minutes_fuel\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav112</td><td>ISX_DEFAULTCOMPONENT43</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\three_laps_fuel\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav113</td><td>ISX_DEFAULTCOMPONENT43</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\three_laps_fuel\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav114</td><td>ISX_DEFAULTCOMPONENT43</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\three_laps_fuel\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav115</td><td>ISX_DEFAULTCOMPONENT44</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\two_laps_fuel\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav116</td><td>ISX_DEFAULTCOMPONENT44</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\two_laps_fuel\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav117</td><td>ISX_DEFAULTCOMPONENT44</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\two_laps_fuel\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav118</td><td>ISX_DEFAULTCOMPONENT45</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\two_minutes_fuel\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav119</td><td>ISX_DEFAULTCOMPONENT45</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\two_minutes_fuel\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav12</td><td>ISX_DEFAULTCOMPONENT8</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\no\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav120</td><td>ISX_DEFAULTCOMPONENT45</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\two_minutes_fuel\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav121</td><td>ISX_DEFAULTCOMPONENT46</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\we_estimate\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav122</td><td>ISX_DEFAULTCOMPONENT46</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\we_estimate\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav123</td><td>ISX_DEFAULTCOMPONENT46</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\we_estimate\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav124</td><td>ISX_DEFAULTCOMPONENT48</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\end_of_session\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav125</td><td>ISX_DEFAULTCOMPONENT48</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\end_of_session\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav126</td><td>ISX_DEFAULTCOMPONENT48</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\end_of_session\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav127</td><td>ISX_DEFAULTCOMPONENT49</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\end_of_session_pole\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav128</td><td>ISX_DEFAULTCOMPONENT49</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\end_of_session_pole\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav129</td><td>ISX_DEFAULTCOMPONENT49</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\end_of_session_pole\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav13</td><td>ISX_DEFAULTCOMPONENT8</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\no\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav130</td><td>ISX_DEFAULTCOMPONENT50</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\finished_race\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav131</td><td>ISX_DEFAULTCOMPONENT50</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\finished_race\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav132</td><td>ISX_DEFAULTCOMPONENT50</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\finished_race\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav133</td><td>ISX_DEFAULTCOMPONENT50</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\finished_race\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav134</td><td>ISX_DEFAULTCOMPONENT51</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\finished_race_last\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav135</td><td>ISX_DEFAULTCOMPONENT51</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\finished_race_last\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav136</td><td>ISX_DEFAULTCOMPONENT51</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\finished_race_last\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav137</td><td>ISX_DEFAULTCOMPONENT52</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\get_ready\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav138</td><td>ISX_DEFAULTCOMPONENT52</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\get_ready\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav139</td><td>ISX_DEFAULTCOMPONENT52</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\get_ready\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav14</td><td>ISX_DEFAULTCOMPONENT8</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\no\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav140</td><td>ISX_DEFAULTCOMPONENT52</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\get_ready\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav141</td><td>ISX_DEFAULTCOMPONENT53</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\green_green_green\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav142</td><td>ISX_DEFAULTCOMPONENT53</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\green_green_green\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav143</td><td>ISX_DEFAULTCOMPONENT53</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\green_green_green\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav144</td><td>ISX_DEFAULTCOMPONENT53</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\green_green_green\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav145</td><td>ISX_DEFAULTCOMPONENT54</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\last_lap\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav146</td><td>ISX_DEFAULTCOMPONENT54</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\last_lap\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav147</td><td>ISX_DEFAULTCOMPONENT54</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\last_lap\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav148</td><td>ISX_DEFAULTCOMPONENT54</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\last_lap\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav149</td><td>ISX_DEFAULTCOMPONENT55</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\last_lap_leading\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav15</td><td>ISX_DEFAULTCOMPONENT8</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\no\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav150</td><td>ISX_DEFAULTCOMPONENT55</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\last_lap_leading\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav151</td><td>ISX_DEFAULTCOMPONENT55</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\last_lap_leading\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav152</td><td>ISX_DEFAULTCOMPONENT55</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\last_lap_leading\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav153</td><td>ISX_DEFAULTCOMPONENT56</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\last_lap_top_three\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav154</td><td>ISX_DEFAULTCOMPONENT56</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\last_lap_top_three\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav155</td><td>ISX_DEFAULTCOMPONENT56</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\last_lap_top_three\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav156</td><td>ISX_DEFAULTCOMPONENT57</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\podium_finish\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav157</td><td>ISX_DEFAULTCOMPONENT57</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\podium_finish\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav158</td><td>ISX_DEFAULTCOMPONENT57</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\podium_finish\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav159</td><td>ISX_DEFAULTCOMPONENT57</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\podium_finish\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav16</td><td>ISX_DEFAULTCOMPONENT9</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\no_data\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav160</td><td>ISX_DEFAULTCOMPONENT58</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\two_to_go\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav161</td><td>ISX_DEFAULTCOMPONENT58</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\two_to_go\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav162</td><td>ISX_DEFAULTCOMPONENT58</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\two_to_go\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav163</td><td>ISX_DEFAULTCOMPONENT59</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\two_to_go_leading\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav164</td><td>ISX_DEFAULTCOMPONENT59</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\two_to_go_leading\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav165</td><td>ISX_DEFAULTCOMPONENT59</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\two_to_go_leading\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav166</td><td>ISX_DEFAULTCOMPONENT59</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\two_to_go_leading\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav167</td><td>ISX_DEFAULTCOMPONENT60</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\two_to_go_top_three\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav168</td><td>ISX_DEFAULTCOMPONENT60</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\two_to_go_top_three\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav169</td><td>ISX_DEFAULTCOMPONENT60</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\two_to_go_top_three\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav17</td><td>ISX_DEFAULTCOMPONENT9</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\no_data\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav170</td><td>ISX_DEFAULTCOMPONENT61</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\won_race\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav171</td><td>ISX_DEFAULTCOMPONENT61</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\won_race\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav172</td><td>ISX_DEFAULTCOMPONENT61</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\won_race\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav173</td><td>ISX_DEFAULTCOMPONENT61</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\won_race\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav174</td><td>ISX_DEFAULTCOMPONENT61</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\won_race\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav175</td><td>ISX_DEFAULTCOMPONENT61</td><td>6.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\won_race\6.wav</td><td>1</td><td/></row>
		<row><td>_.wav176</td><td>ISX_DEFAULTCOMPONENT63</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\best_lap_in_race\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav177</td><td>ISX_DEFAULTCOMPONENT63</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\best_lap_in_race\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav178</td><td>ISX_DEFAULTCOMPONENT63</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\best_lap_in_race\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav179</td><td>ISX_DEFAULTCOMPONENT64</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\best_lap_in_race_for_class\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav18</td><td>ISX_DEFAULTCOMPONENT9</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\no_data\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav180</td><td>ISX_DEFAULTCOMPONENT64</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\best_lap_in_race_for_class\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav181</td><td>ISX_DEFAULTCOMPONENT65</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\consistent\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav182</td><td>ISX_DEFAULTCOMPONENT65</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\consistent\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav183</td><td>ISX_DEFAULTCOMPONENT65</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\consistent\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav184</td><td>ISX_DEFAULTCOMPONENT66</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\fastest_in_your_class\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav185</td><td>ISX_DEFAULTCOMPONENT66</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\fastest_in_your_class\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav186</td><td>ISX_DEFAULTCOMPONENT67</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\gap_intro\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav187</td><td>ISX_DEFAULTCOMPONENT67</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\gap_intro\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav188</td><td>ISX_DEFAULTCOMPONENT67</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\gap_intro\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav189</td><td>ISX_DEFAULTCOMPONENT68</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\gap_outro_off_pace\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav19</td><td>ISX_DEFAULTCOMPONENT9</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\no_data\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav190</td><td>ISX_DEFAULTCOMPONENT68</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\gap_outro_off_pace\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav191</td><td>ISX_DEFAULTCOMPONENT68</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\gap_outro_off_pace\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav192</td><td>ISX_DEFAULTCOMPONENT69</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\good_lap\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav193</td><td>ISX_DEFAULTCOMPONENT69</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\good_lap\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav194</td><td>ISX_DEFAULTCOMPONENT69</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\good_lap\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav195</td><td>ISX_DEFAULTCOMPONENT69</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\good_lap\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav196</td><td>ISX_DEFAULTCOMPONENT69</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\good_lap\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav197</td><td>ISX_DEFAULTCOMPONENT70</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\improving\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav198</td><td>ISX_DEFAULTCOMPONENT70</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\improving\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav199</td><td>ISX_DEFAULTCOMPONENT70</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\improving\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav2</td><td>ISX_DEFAULTCOMPONENT5</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\didnt_understand\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav20</td><td>ISX_DEFAULTCOMPONENT9</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\no_data\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav200</td><td>ISX_DEFAULTCOMPONENT71</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\less_than_a_tenth_off_the_pace\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav201</td><td>ISX_DEFAULTCOMPONENT71</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\less_than_a_tenth_off_the_pace\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav202</td><td>ISX_DEFAULTCOMPONENT71</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\less_than_a_tenth_off_the_pace\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav203</td><td>ISX_DEFAULTCOMPONENT72</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\need_to_find_a_few_more_tenths\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav204</td><td>ISX_DEFAULTCOMPONENT72</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\need_to_find_a_few_more_tenths\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav205</td><td>ISX_DEFAULTCOMPONENT72</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\need_to_find_a_few_more_tenths\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav206</td><td>ISX_DEFAULTCOMPONENT73</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\need_to_find_a_second\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav207</td><td>ISX_DEFAULTCOMPONENT73</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\need_to_find_a_second\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav208</td><td>ISX_DEFAULTCOMPONENT73</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\need_to_find_a_second\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav209</td><td>ISX_DEFAULTCOMPONENT74</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\need_to_find_more_than_a_second\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav21</td><td>ISX_DEFAULTCOMPONENT10</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\OK\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav210</td><td>ISX_DEFAULTCOMPONENT74</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\need_to_find_more_than_a_second\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav211</td><td>ISX_DEFAULTCOMPONENT74</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\need_to_find_more_than_a_second\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav212</td><td>ISX_DEFAULTCOMPONENT75</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\need_to_find_one_more_tenth\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav213</td><td>ISX_DEFAULTCOMPONENT75</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\need_to_find_one_more_tenth\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav214</td><td>ISX_DEFAULTCOMPONENT75</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\need_to_find_one_more_tenth\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav215</td><td>ISX_DEFAULTCOMPONENT76</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\pace_bad\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav216</td><td>ISX_DEFAULTCOMPONENT76</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\pace_bad\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav217</td><td>ISX_DEFAULTCOMPONENT76</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\pace_bad\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav218</td><td>ISX_DEFAULTCOMPONENT77</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\pace_good\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav219</td><td>ISX_DEFAULTCOMPONENT77</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\pace_good\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav22</td><td>ISX_DEFAULTCOMPONENT10</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\OK\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav220</td><td>ISX_DEFAULTCOMPONENT77</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\pace_good\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav221</td><td>ISX_DEFAULTCOMPONENT77</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\pace_good\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav222</td><td>ISX_DEFAULTCOMPONENT78</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\pace_ok\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav223</td><td>ISX_DEFAULTCOMPONENT78</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\pace_ok\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav224</td><td>ISX_DEFAULTCOMPONENT78</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\pace_ok\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav225</td><td>ISX_DEFAULTCOMPONENT79</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\personal_best\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav226</td><td>ISX_DEFAULTCOMPONENT79</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\personal_best\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav227</td><td>ISX_DEFAULTCOMPONENT79</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\personal_best\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav228</td><td>ISX_DEFAULTCOMPONENT79</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\personal_best\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav229</td><td>ISX_DEFAULTCOMPONENT80</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\quicker_than_second_place\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav23</td><td>ISX_DEFAULTCOMPONENT10</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\OK\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav230</td><td>ISX_DEFAULTCOMPONENT80</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\quicker_than_second_place\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav231</td><td>ISX_DEFAULTCOMPONENT80</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\quicker_than_second_place\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav232</td><td>ISX_DEFAULTCOMPONENT81</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\quickest_in_class\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav233</td><td>ISX_DEFAULTCOMPONENT81</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\quickest_in_class\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav234</td><td>ISX_DEFAULTCOMPONENT81</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\quickest_in_class\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav235</td><td>ISX_DEFAULTCOMPONENT82</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\quickest_overall\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav236</td><td>ISX_DEFAULTCOMPONENT82</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\quickest_overall\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav237</td><td>ISX_DEFAULTCOMPONENT82</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\quickest_overall\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav238</td><td>ISX_DEFAULTCOMPONENT83</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\time_intro\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav239</td><td>ISX_DEFAULTCOMPONENT83</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\time_intro\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav24</td><td>ISX_DEFAULTCOMPONENT11</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\spotterDisabled\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav240</td><td>ISX_DEFAULTCOMPONENT83</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\time_intro\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav241</td><td>ISX_DEFAULTCOMPONENT83</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\time_intro\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav242</td><td>ISX_DEFAULTCOMPONENT84</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\worsening\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav243</td><td>ISX_DEFAULTCOMPONENT84</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\worsening\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav244</td><td>ISX_DEFAULTCOMPONENT84</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\worsening\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav245</td><td>ISX_DEFAULTCOMPONENT84</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_times\worsening\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav246</td><td>ISX_DEFAULTCOMPONENT86</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\minutes\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav247</td><td>ISX_DEFAULTCOMPONENT86</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\minutes\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav248</td><td>ISX_DEFAULTCOMPONENT86</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\minutes\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav249</td><td>ISX_DEFAULTCOMPONENT87</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\missed_stop\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav25</td><td>ISX_DEFAULTCOMPONENT11</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\spotterDisabled\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav250</td><td>ISX_DEFAULTCOMPONENT87</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\missed_stop\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav251</td><td>ISX_DEFAULTCOMPONENT87</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\missed_stop\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav252</td><td>ISX_DEFAULTCOMPONENT87</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\missed_stop\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav253</td><td>ISX_DEFAULTCOMPONENT88</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\options_to_primes\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav254</td><td>ISX_DEFAULTCOMPONENT88</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\options_to_primes\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav255</td><td>ISX_DEFAULTCOMPONENT88</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\options_to_primes\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav256</td><td>ISX_DEFAULTCOMPONENT89</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_now\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav257</td><td>ISX_DEFAULTCOMPONENT89</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_now\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav258</td><td>ISX_DEFAULTCOMPONENT89</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_now\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav259</td><td>ISX_DEFAULTCOMPONENT90</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_this_lap\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav26</td><td>ISX_DEFAULTCOMPONENT11</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\spotterDisabled\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav260</td><td>ISX_DEFAULTCOMPONENT90</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_this_lap\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav261</td><td>ISX_DEFAULTCOMPONENT90</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_this_lap\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav262</td><td>ISX_DEFAULTCOMPONENT91</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_this_lap_too_late\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav263</td><td>ISX_DEFAULTCOMPONENT91</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_this_lap_too_late\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav264</td><td>ISX_DEFAULTCOMPONENT91</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_this_lap_too_late\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav265</td><td>ISX_DEFAULTCOMPONENT92</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_closed\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav266</td><td>ISX_DEFAULTCOMPONENT92</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_closed\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav267</td><td>ISX_DEFAULTCOMPONENT92</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_closed\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav268</td><td>ISX_DEFAULTCOMPONENT92</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_closed\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav269</td><td>ISX_DEFAULTCOMPONENT93</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_closes_1_min\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav27</td><td>ISX_DEFAULTCOMPONENT12</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\spotterEnabled\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav270</td><td>ISX_DEFAULTCOMPONENT93</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_closes_1_min\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav271</td><td>ISX_DEFAULTCOMPONENT93</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_closes_1_min\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav272</td><td>ISX_DEFAULTCOMPONENT94</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_closes_2_min\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav273</td><td>ISX_DEFAULTCOMPONENT94</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_closes_2_min\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav274</td><td>ISX_DEFAULTCOMPONENT94</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_closes_2_min\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav275</td><td>ISX_DEFAULTCOMPONENT95</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_closing\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav276</td><td>ISX_DEFAULTCOMPONENT95</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_closing\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav277</td><td>ISX_DEFAULTCOMPONENT95</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_closing\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav278</td><td>ISX_DEFAULTCOMPONENT96</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_open\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav279</td><td>ISX_DEFAULTCOMPONENT96</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_open\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav28</td><td>ISX_DEFAULTCOMPONENT12</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\spotterEnabled\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav280</td><td>ISX_DEFAULTCOMPONENT96</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_open\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav281</td><td>ISX_DEFAULTCOMPONENT97</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_opening\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav282</td><td>ISX_DEFAULTCOMPONENT97</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_opening\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav283</td><td>ISX_DEFAULTCOMPONENT97</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_opening\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav284</td><td>ISX_DEFAULTCOMPONENT98</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_opens_1_min\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav285</td><td>ISX_DEFAULTCOMPONENT98</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_opens_1_min\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav286</td><td>ISX_DEFAULTCOMPONENT98</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_opens_1_min\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav287</td><td>ISX_DEFAULTCOMPONENT99</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_opens_2_min\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav288</td><td>ISX_DEFAULTCOMPONENT99</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_opens_2_min\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav289</td><td>ISX_DEFAULTCOMPONENT99</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_window_opens_2_min\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav29</td><td>ISX_DEFAULTCOMPONENT12</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\spotterEnabled\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav290</td><td>ISX_DEFAULTCOMPONENT100</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\primes_to_options\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav291</td><td>ISX_DEFAULTCOMPONENT100</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\primes_to_options\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav292</td><td>ISX_DEFAULTCOMPONENT100</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\primes_to_options\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav293</td><td>ISX_DEFAULTCOMPONENT101</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\yes_stop_after\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav294</td><td>ISX_DEFAULTCOMPONENT101</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\yes_stop_after\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav295</td><td>ISX_DEFAULTCOMPONENT101</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\yes_stop_after\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav296</td><td>ISX_DEFAULTCOMPONENT102</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\yes_stop_on_lap\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav297</td><td>ISX_DEFAULTCOMPONENT102</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\yes_stop_on_lap\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav298</td><td>ISX_DEFAULTCOMPONENT102</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\yes_stop_on_lap\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav299</td><td>ISX_DEFAULTCOMPONENT104</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\0\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav3</td><td>ISX_DEFAULTCOMPONENT5</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\didnt_understand\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav30</td><td>ISX_DEFAULTCOMPONENT13</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\yes\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav300</td><td>ISX_DEFAULTCOMPONENT104</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\0\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav301</td><td>ISX_DEFAULTCOMPONENT105</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\01\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav302</td><td>ISX_DEFAULTCOMPONENT106</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\02\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav303</td><td>ISX_DEFAULTCOMPONENT107</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\03\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav304</td><td>ISX_DEFAULTCOMPONENT108</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\04\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav305</td><td>ISX_DEFAULTCOMPONENT109</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\05\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav306</td><td>ISX_DEFAULTCOMPONENT110</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\06\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav307</td><td>ISX_DEFAULTCOMPONENT111</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\07\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav308</td><td>ISX_DEFAULTCOMPONENT112</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\08\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav309</td><td>ISX_DEFAULTCOMPONENT113</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\09\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav31</td><td>ISX_DEFAULTCOMPONENT13</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\yes\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav310</td><td>ISX_DEFAULTCOMPONENT114</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\1\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav311</td><td>ISX_DEFAULTCOMPONENT114</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\1\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav312</td><td>ISX_DEFAULTCOMPONENT115</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\10\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav313</td><td>ISX_DEFAULTCOMPONENT115</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\10\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav314</td><td>ISX_DEFAULTCOMPONENT116</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\11\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav315</td><td>ISX_DEFAULTCOMPONENT116</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\11\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav316</td><td>ISX_DEFAULTCOMPONENT117</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\12\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav317</td><td>ISX_DEFAULTCOMPONENT117</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\12\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav318</td><td>ISX_DEFAULTCOMPONENT118</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\13\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav319</td><td>ISX_DEFAULTCOMPONENT118</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\13\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav32</td><td>ISX_DEFAULTCOMPONENT13</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\yes\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav320</td><td>ISX_DEFAULTCOMPONENT119</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\14\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav321</td><td>ISX_DEFAULTCOMPONENT119</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\14\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav322</td><td>ISX_DEFAULTCOMPONENT120</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\15\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav323</td><td>ISX_DEFAULTCOMPONENT120</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\15\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav324</td><td>ISX_DEFAULTCOMPONENT121</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\16\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav325</td><td>ISX_DEFAULTCOMPONENT121</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\16\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav326</td><td>ISX_DEFAULTCOMPONENT122</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\17\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav327</td><td>ISX_DEFAULTCOMPONENT122</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\17\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav328</td><td>ISX_DEFAULTCOMPONENT123</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\18\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav329</td><td>ISX_DEFAULTCOMPONENT123</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\18\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav33</td><td>ISX_DEFAULTCOMPONENT13</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\yes\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav330</td><td>ISX_DEFAULTCOMPONENT124</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\19\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav331</td><td>ISX_DEFAULTCOMPONENT124</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\19\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav332</td><td>ISX_DEFAULTCOMPONENT125</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\2\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav333</td><td>ISX_DEFAULTCOMPONENT125</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\2\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav334</td><td>ISX_DEFAULTCOMPONENT126</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\20\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav335</td><td>ISX_DEFAULTCOMPONENT126</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\20\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav336</td><td>ISX_DEFAULTCOMPONENT127</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\21\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav337</td><td>ISX_DEFAULTCOMPONENT128</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\22\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav338</td><td>ISX_DEFAULTCOMPONENT129</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\23\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav339</td><td>ISX_DEFAULTCOMPONENT130</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\24\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav34</td><td>ISX_DEFAULTCOMPONENT13</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\yes\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav340</td><td>ISX_DEFAULTCOMPONENT131</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\25\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav341</td><td>ISX_DEFAULTCOMPONENT132</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\26\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav342</td><td>ISX_DEFAULTCOMPONENT133</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\27\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav343</td><td>ISX_DEFAULTCOMPONENT134</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\28\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav344</td><td>ISX_DEFAULTCOMPONENT135</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\29\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav345</td><td>ISX_DEFAULTCOMPONENT136</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\3\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav346</td><td>ISX_DEFAULTCOMPONENT136</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\3\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav347</td><td>ISX_DEFAULTCOMPONENT137</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\30\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav348</td><td>ISX_DEFAULTCOMPONENT137</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\30\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav349</td><td>ISX_DEFAULTCOMPONENT138</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\31\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav35</td><td>ISX_DEFAULTCOMPONENT15</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\busted_engine\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav350</td><td>ISX_DEFAULTCOMPONENT139</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\32\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav351</td><td>ISX_DEFAULTCOMPONENT140</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\33\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav352</td><td>ISX_DEFAULTCOMPONENT141</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\34\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav353</td><td>ISX_DEFAULTCOMPONENT142</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\35\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav354</td><td>ISX_DEFAULTCOMPONENT143</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\36\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav355</td><td>ISX_DEFAULTCOMPONENT144</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\37\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav356</td><td>ISX_DEFAULTCOMPONENT145</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\38\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav357</td><td>ISX_DEFAULTCOMPONENT146</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\39\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav358</td><td>ISX_DEFAULTCOMPONENT147</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\4\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav359</td><td>ISX_DEFAULTCOMPONENT147</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\4\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav36</td><td>ISX_DEFAULTCOMPONENT15</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\busted_engine\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav360</td><td>ISX_DEFAULTCOMPONENT148</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\40\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav361</td><td>ISX_DEFAULTCOMPONENT148</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\40\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav362</td><td>ISX_DEFAULTCOMPONENT149</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\41\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav363</td><td>ISX_DEFAULTCOMPONENT150</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\42\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav364</td><td>ISX_DEFAULTCOMPONENT151</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\43\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav365</td><td>ISX_DEFAULTCOMPONENT152</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\44\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav366</td><td>ISX_DEFAULTCOMPONENT153</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\45\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav367</td><td>ISX_DEFAULTCOMPONENT154</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\46\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav368</td><td>ISX_DEFAULTCOMPONENT155</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\47\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav369</td><td>ISX_DEFAULTCOMPONENT156</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\48\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav37</td><td>ISX_DEFAULTCOMPONENT16</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\busted_transmission\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav370</td><td>ISX_DEFAULTCOMPONENT157</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\49\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav371</td><td>ISX_DEFAULTCOMPONENT158</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\5\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav372</td><td>ISX_DEFAULTCOMPONENT158</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\5\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav373</td><td>ISX_DEFAULTCOMPONENT159</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\50\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav374</td><td>ISX_DEFAULTCOMPONENT159</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\50\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav375</td><td>ISX_DEFAULTCOMPONENT160</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\51\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav376</td><td>ISX_DEFAULTCOMPONENT161</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\52\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav377</td><td>ISX_DEFAULTCOMPONENT162</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\53\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav378</td><td>ISX_DEFAULTCOMPONENT163</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\54\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav379</td><td>ISX_DEFAULTCOMPONENT164</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\55\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav38</td><td>ISX_DEFAULTCOMPONENT16</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\busted_transmission\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav380</td><td>ISX_DEFAULTCOMPONENT165</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\56\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav381</td><td>ISX_DEFAULTCOMPONENT166</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\57\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav382</td><td>ISX_DEFAULTCOMPONENT167</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\58\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav383</td><td>ISX_DEFAULTCOMPONENT168</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\59\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav384</td><td>ISX_DEFAULTCOMPONENT169</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\6\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav385</td><td>ISX_DEFAULTCOMPONENT169</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\6\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav386</td><td>ISX_DEFAULTCOMPONENT170</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\7\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav387</td><td>ISX_DEFAULTCOMPONENT170</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\7\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav388</td><td>ISX_DEFAULTCOMPONENT171</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\8\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav389</td><td>ISX_DEFAULTCOMPONENT171</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\8\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav39</td><td>ISX_DEFAULTCOMPONENT17</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\minor_aero_damage\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav390</td><td>ISX_DEFAULTCOMPONENT172</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\9\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav391</td><td>ISX_DEFAULTCOMPONENT172</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\9\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav392</td><td>ISX_DEFAULTCOMPONENT173</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\oh\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav393</td><td>ISX_DEFAULTCOMPONENT173</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\oh\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav394</td><td>ISX_DEFAULTCOMPONENT174</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\point\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav395</td><td>ISX_DEFAULTCOMPONENT174</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\point\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav396</td><td>ISX_DEFAULTCOMPONENT175</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\numbers\zerozero\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav397</td><td>ISX_DEFAULTCOMPONENT177</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\keep_it_up\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav398</td><td>ISX_DEFAULTCOMPONENT177</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\keep_it_up\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav399</td><td>ISX_DEFAULTCOMPONENT177</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\keep_it_up\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav4</td><td>ISX_DEFAULTCOMPONENT5</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\didnt_understand\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav40</td><td>ISX_DEFAULTCOMPONENT17</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\minor_aero_damage\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav400</td><td>ISX_DEFAULTCOMPONENT177</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\keep_it_up\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav401</td><td>ISX_DEFAULTCOMPONENT177</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\keep_it_up\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav402</td><td>ISX_DEFAULTCOMPONENT177</td><td>6.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\keep_it_up\6.wav</td><td>1</td><td/></row>
		<row><td>_.wav403</td><td>ISX_DEFAULTCOMPONENT177</td><td>7.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\keep_it_up\7.wav</td><td>1</td><td/></row>
		<row><td>_.wav404</td><td>ISX_DEFAULTCOMPONENT177</td><td>8.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\keep_it_up\8.wav</td><td>1</td><td/></row>
		<row><td>_.wav405</td><td>ISX_DEFAULTCOMPONENT178</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\must_do_better\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav406</td><td>ISX_DEFAULTCOMPONENT178</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\must_do_better\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav407</td><td>ISX_DEFAULTCOMPONENT178</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\must_do_better\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav408</td><td>ISX_DEFAULTCOMPONENT178</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\must_do_better\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav409</td><td>ISX_DEFAULTCOMPONENT178</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\must_do_better\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav41</td><td>ISX_DEFAULTCOMPONENT17</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\minor_aero_damage\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav410</td><td>ISX_DEFAULTCOMPONENT178</td><td>6.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\must_do_better\6.wav</td><td>1</td><td/></row>
		<row><td>_.wav411</td><td>ISX_DEFAULTCOMPONENT178</td><td>7.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\must_do_better\7.wav</td><td>1</td><td/></row>
		<row><td>_.wav412</td><td>ISX_DEFAULTCOMPONENT179</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\neutral\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav413</td><td>ISX_DEFAULTCOMPONENT179</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\neutral\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav414</td><td>ISX_DEFAULTCOMPONENT179</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\neutral\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav415</td><td>ISX_DEFAULTCOMPONENT179</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\neutral\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav416</td><td>ISX_DEFAULTCOMPONENT179</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\neutral\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav417</td><td>ISX_DEFAULTCOMPONENT179</td><td>6.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\neutral\6.wav</td><td>1</td><td/></row>
		<row><td>_.wav418</td><td>ISX_DEFAULTCOMPONENT179</td><td>7.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\neutral\7.wav</td><td>1</td><td/></row>
		<row><td>_.wav419</td><td>ISX_DEFAULTCOMPONENT181</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\cut_track_in_prac_or_qual\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav42</td><td>ISX_DEFAULTCOMPONENT17</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\minor_aero_damage\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav420</td><td>ISX_DEFAULTCOMPONENT181</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\cut_track_in_prac_or_qual\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav421</td><td>ISX_DEFAULTCOMPONENT181</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\cut_track_in_prac_or_qual\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav422</td><td>ISX_DEFAULTCOMPONENT181</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\cut_track_in_prac_or_qual\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav423</td><td>ISX_DEFAULTCOMPONENT181</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\cut_track_in_prac_or_qual\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav424</td><td>ISX_DEFAULTCOMPONENT182</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\cut_track_in_race\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav425</td><td>ISX_DEFAULTCOMPONENT182</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\cut_track_in_race\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav426</td><td>ISX_DEFAULTCOMPONENT182</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\cut_track_in_race\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav427</td><td>ISX_DEFAULTCOMPONENT182</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\cut_track_in_race\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav428</td><td>ISX_DEFAULTCOMPONENT182</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\cut_track_in_race\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav429</td><td>ISX_DEFAULTCOMPONENT183</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\lap_deleted\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav43</td><td>ISX_DEFAULTCOMPONENT17</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\minor_aero_damage\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav430</td><td>ISX_DEFAULTCOMPONENT183</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\lap_deleted\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav431</td><td>ISX_DEFAULTCOMPONENT183</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\lap_deleted\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav432</td><td>ISX_DEFAULTCOMPONENT183</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\lap_deleted\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav433</td><td>ISX_DEFAULTCOMPONENT183</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\lap_deleted\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav434</td><td>ISX_DEFAULTCOMPONENT184</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\new_penalty_drivethrough\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav435</td><td>ISX_DEFAULTCOMPONENT184</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\new_penalty_drivethrough\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav436</td><td>ISX_DEFAULTCOMPONENT184</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\new_penalty_drivethrough\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav437</td><td>ISX_DEFAULTCOMPONENT185</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\new_penalty_stopgo\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav438</td><td>ISX_DEFAULTCOMPONENT185</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\new_penalty_stopgo\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav439</td><td>ISX_DEFAULTCOMPONENT185</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\new_penalty_stopgo\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav44</td><td>ISX_DEFAULTCOMPONENT18</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\minor_engine_damage\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav440</td><td>ISX_DEFAULTCOMPONENT186</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_disqualified\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav441</td><td>ISX_DEFAULTCOMPONENT186</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_disqualified\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav442</td><td>ISX_DEFAULTCOMPONENT186</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_disqualified\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav443</td><td>ISX_DEFAULTCOMPONENT187</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_not_served\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav444</td><td>ISX_DEFAULTCOMPONENT187</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_not_served\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav445</td><td>ISX_DEFAULTCOMPONENT187</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_not_served\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav446</td><td>ISX_DEFAULTCOMPONENT188</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_one_lap_left_drivethrough\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav447</td><td>ISX_DEFAULTCOMPONENT188</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_one_lap_left_drivethrough\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav448</td><td>ISX_DEFAULTCOMPONENT188</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_one_lap_left_drivethrough\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav449</td><td>ISX_DEFAULTCOMPONENT188</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_one_lap_left_drivethrough\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav45</td><td>ISX_DEFAULTCOMPONENT18</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\minor_engine_damage\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav450</td><td>ISX_DEFAULTCOMPONENT189</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_one_lap_left_stopgo\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav451</td><td>ISX_DEFAULTCOMPONENT189</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_one_lap_left_stopgo\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav452</td><td>ISX_DEFAULTCOMPONENT189</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_one_lap_left_stopgo\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav453</td><td>ISX_DEFAULTCOMPONENT189</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_one_lap_left_stopgo\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav454</td><td>ISX_DEFAULTCOMPONENT190</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_served\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav455</td><td>ISX_DEFAULTCOMPONENT190</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_served\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav456</td><td>ISX_DEFAULTCOMPONENT190</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_served\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav457</td><td>ISX_DEFAULTCOMPONENT191</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_three_laps_left\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav458</td><td>ISX_DEFAULTCOMPONENT191</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_three_laps_left\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav459</td><td>ISX_DEFAULTCOMPONENT191</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_three_laps_left\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav46</td><td>ISX_DEFAULTCOMPONENT18</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\minor_engine_damage\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav460</td><td>ISX_DEFAULTCOMPONENT192</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_two_laps_left\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav461</td><td>ISX_DEFAULTCOMPONENT192</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_two_laps_left\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav462</td><td>ISX_DEFAULTCOMPONENT192</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_two_laps_left\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav463</td><td>ISX_DEFAULTCOMPONENT192</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_two_laps_left\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav464</td><td>ISX_DEFAULTCOMPONENT193</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\pit_now_drive_through\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav465</td><td>ISX_DEFAULTCOMPONENT193</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\pit_now_drive_through\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav466</td><td>ISX_DEFAULTCOMPONENT193</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\pit_now_drive_through\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav467</td><td>ISX_DEFAULTCOMPONENT194</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\pit_now_stop_go\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav468</td><td>ISX_DEFAULTCOMPONENT194</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\pit_now_stop_go\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav469</td><td>ISX_DEFAULTCOMPONENT194</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\pit_now_stop_go\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav47</td><td>ISX_DEFAULTCOMPONENT19</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\minor_transmission_damage\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav470</td><td>ISX_DEFAULTCOMPONENT195</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\time_penalty\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav471</td><td>ISX_DEFAULTCOMPONENT195</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\time_penalty\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav472</td><td>ISX_DEFAULTCOMPONENT195</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\time_penalty\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav473</td><td>ISX_DEFAULTCOMPONENT196</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\you_dont_have_a_penalty\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav474</td><td>ISX_DEFAULTCOMPONENT196</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\you_dont_have_a_penalty\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav475</td><td>ISX_DEFAULTCOMPONENT196</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\you_dont_have_a_penalty\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav476</td><td>ISX_DEFAULTCOMPONENT197</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\you_have_a_penalty\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav477</td><td>ISX_DEFAULTCOMPONENT197</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\you_have_a_penalty\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav478</td><td>ISX_DEFAULTCOMPONENT197</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\you_have_a_penalty\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav479</td><td>ISX_DEFAULTCOMPONENT198</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\you_still_have_a_penalty\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav48</td><td>ISX_DEFAULTCOMPONENT19</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\minor_transmission_damage\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav480</td><td>ISX_DEFAULTCOMPONENT198</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\you_still_have_a_penalty\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav481</td><td>ISX_DEFAULTCOMPONENT198</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\you_still_have_a_penalty\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav482</td><td>ISX_DEFAULTCOMPONENT200</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\bad_start\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav483</td><td>ISX_DEFAULTCOMPONENT200</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\bad_start\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav484</td><td>ISX_DEFAULTCOMPONENT200</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\bad_start\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav485</td><td>ISX_DEFAULTCOMPONENT200</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\bad_start\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav486</td><td>ISX_DEFAULTCOMPONENT200</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\bad_start\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav487</td><td>ISX_DEFAULTCOMPONENT201</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\consistently_last\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav488</td><td>ISX_DEFAULTCOMPONENT201</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\consistently_last\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav489</td><td>ISX_DEFAULTCOMPONENT201</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\consistently_last\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav49</td><td>ISX_DEFAULTCOMPONENT19</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\minor_transmission_damage\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav490</td><td>ISX_DEFAULTCOMPONENT202</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\good_start\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav491</td><td>ISX_DEFAULTCOMPONENT202</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\good_start\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav492</td><td>ISX_DEFAULTCOMPONENT202</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\good_start\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav493</td><td>ISX_DEFAULTCOMPONENT202</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\good_start\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav494</td><td>ISX_DEFAULTCOMPONENT202</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\good_start\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav495</td><td>ISX_DEFAULTCOMPONENT202</td><td>6.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\good_start\6.wav</td><td>1</td><td/></row>
		<row><td>_.wav496</td><td>ISX_DEFAULTCOMPONENT202</td><td>7.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\good_start\7.wav</td><td>1</td><td/></row>
		<row><td>_.wav497</td><td>ISX_DEFAULTCOMPONENT203</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\last\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav498</td><td>ISX_DEFAULTCOMPONENT203</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\last\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav499</td><td>ISX_DEFAULTCOMPONENT203</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\last\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav5</td><td>ISX_DEFAULTCOMPONENT5</td><td>6.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\didnt_understand\6.wav</td><td>1</td><td/></row>
		<row><td>_.wav50</td><td>ISX_DEFAULTCOMPONENT20</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\no_aero_damage\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav500</td><td>ISX_DEFAULTCOMPONENT204</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\leading\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav501</td><td>ISX_DEFAULTCOMPONENT204</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\leading\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav502</td><td>ISX_DEFAULTCOMPONENT204</td><td>6.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\leading\6.wav</td><td>1</td><td/></row>
		<row><td>_.wav503</td><td>ISX_DEFAULTCOMPONENT205</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\ok_start\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav504</td><td>ISX_DEFAULTCOMPONENT205</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\ok_start\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav505</td><td>ISX_DEFAULTCOMPONENT205</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\ok_start\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav506</td><td>ISX_DEFAULTCOMPONENT205</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\ok_start\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav507</td><td>ISX_DEFAULTCOMPONENT206</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p1\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav508</td><td>ISX_DEFAULTCOMPONENT206</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p1\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav509</td><td>ISX_DEFAULTCOMPONENT206</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p1\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav51</td><td>ISX_DEFAULTCOMPONENT20</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\no_aero_damage\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav510</td><td>ISX_DEFAULTCOMPONENT207</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p10\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav511</td><td>ISX_DEFAULTCOMPONENT207</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p10\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav512</td><td>ISX_DEFAULTCOMPONENT207</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p10\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav513</td><td>ISX_DEFAULTCOMPONENT208</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p11\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav514</td><td>ISX_DEFAULTCOMPONENT208</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p11\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav515</td><td>ISX_DEFAULTCOMPONENT208</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p11\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav516</td><td>ISX_DEFAULTCOMPONENT209</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p12\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav517</td><td>ISX_DEFAULTCOMPONENT209</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p12\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav518</td><td>ISX_DEFAULTCOMPONENT209</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p12\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav519</td><td>ISX_DEFAULTCOMPONENT210</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p13\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav52</td><td>ISX_DEFAULTCOMPONENT20</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\no_aero_damage\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav520</td><td>ISX_DEFAULTCOMPONENT210</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p13\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav521</td><td>ISX_DEFAULTCOMPONENT210</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p13\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav522</td><td>ISX_DEFAULTCOMPONENT211</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p14\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav523</td><td>ISX_DEFAULTCOMPONENT211</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p14\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav524</td><td>ISX_DEFAULTCOMPONENT211</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p14\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav525</td><td>ISX_DEFAULTCOMPONENT212</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p15\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav526</td><td>ISX_DEFAULTCOMPONENT212</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p15\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav527</td><td>ISX_DEFAULTCOMPONENT212</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p15\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav528</td><td>ISX_DEFAULTCOMPONENT213</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p16\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav529</td><td>ISX_DEFAULTCOMPONENT213</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p16\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav53</td><td>ISX_DEFAULTCOMPONENT21</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\no_engine_damage\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav530</td><td>ISX_DEFAULTCOMPONENT213</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p16\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav531</td><td>ISX_DEFAULTCOMPONENT214</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p17\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav532</td><td>ISX_DEFAULTCOMPONENT214</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p17\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav533</td><td>ISX_DEFAULTCOMPONENT214</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p17\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav534</td><td>ISX_DEFAULTCOMPONENT215</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p18\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav535</td><td>ISX_DEFAULTCOMPONENT215</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p18\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav536</td><td>ISX_DEFAULTCOMPONENT215</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p18\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav537</td><td>ISX_DEFAULTCOMPONENT216</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p19\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav538</td><td>ISX_DEFAULTCOMPONENT216</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p19\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav539</td><td>ISX_DEFAULTCOMPONENT216</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p19\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav54</td><td>ISX_DEFAULTCOMPONENT21</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\no_engine_damage\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav540</td><td>ISX_DEFAULTCOMPONENT217</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p2\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav541</td><td>ISX_DEFAULTCOMPONENT217</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p2\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav542</td><td>ISX_DEFAULTCOMPONENT217</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p2\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav543</td><td>ISX_DEFAULTCOMPONENT217</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p2\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav544</td><td>ISX_DEFAULTCOMPONENT218</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p20\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav545</td><td>ISX_DEFAULTCOMPONENT218</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p20\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav546</td><td>ISX_DEFAULTCOMPONENT218</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p20\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav547</td><td>ISX_DEFAULTCOMPONENT219</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p21\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav548</td><td>ISX_DEFAULTCOMPONENT219</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p21\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav549</td><td>ISX_DEFAULTCOMPONENT219</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p21\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav55</td><td>ISX_DEFAULTCOMPONENT21</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\no_engine_damage\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav550</td><td>ISX_DEFAULTCOMPONENT220</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p22\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav551</td><td>ISX_DEFAULTCOMPONENT220</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p22\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav552</td><td>ISX_DEFAULTCOMPONENT220</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p22\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav553</td><td>ISX_DEFAULTCOMPONENT221</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p23\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav554</td><td>ISX_DEFAULTCOMPONENT221</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p23\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav555</td><td>ISX_DEFAULTCOMPONENT221</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p23\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav556</td><td>ISX_DEFAULTCOMPONENT222</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p24\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav557</td><td>ISX_DEFAULTCOMPONENT222</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p24\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav558</td><td>ISX_DEFAULTCOMPONENT222</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p24\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav559</td><td>ISX_DEFAULTCOMPONENT223</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p3\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav56</td><td>ISX_DEFAULTCOMPONENT22</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\no_transmission_damage\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav560</td><td>ISX_DEFAULTCOMPONENT223</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p3\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav561</td><td>ISX_DEFAULTCOMPONENT223</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p3\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav562</td><td>ISX_DEFAULTCOMPONENT224</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p4\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav563</td><td>ISX_DEFAULTCOMPONENT224</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p4\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav564</td><td>ISX_DEFAULTCOMPONENT224</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p4\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav565</td><td>ISX_DEFAULTCOMPONENT225</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p5\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav566</td><td>ISX_DEFAULTCOMPONENT225</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p5\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav567</td><td>ISX_DEFAULTCOMPONENT225</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p5\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav568</td><td>ISX_DEFAULTCOMPONENT226</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p6\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav569</td><td>ISX_DEFAULTCOMPONENT226</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p6\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav57</td><td>ISX_DEFAULTCOMPONENT22</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\no_transmission_damage\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav570</td><td>ISX_DEFAULTCOMPONENT226</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p6\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav571</td><td>ISX_DEFAULTCOMPONENT227</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p7\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav572</td><td>ISX_DEFAULTCOMPONENT227</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p7\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav573</td><td>ISX_DEFAULTCOMPONENT227</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p7\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav574</td><td>ISX_DEFAULTCOMPONENT228</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p8\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav575</td><td>ISX_DEFAULTCOMPONENT228</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p8\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav576</td><td>ISX_DEFAULTCOMPONENT228</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p8\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav577</td><td>ISX_DEFAULTCOMPONENT229</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p9\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav578</td><td>ISX_DEFAULTCOMPONENT229</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p9\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav579</td><td>ISX_DEFAULTCOMPONENT229</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\p9\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav58</td><td>ISX_DEFAULTCOMPONENT22</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\no_transmission_damage\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav580</td><td>ISX_DEFAULTCOMPONENT230</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\pole\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav581</td><td>ISX_DEFAULTCOMPONENT230</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\pole\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav582</td><td>ISX_DEFAULTCOMPONENT230</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\pole\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav583</td><td>ISX_DEFAULTCOMPONENT231</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\terrible_start\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav584</td><td>ISX_DEFAULTCOMPONENT231</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\terrible_start\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav585</td><td>ISX_DEFAULTCOMPONENT231</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\terrible_start\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav586</td><td>ISX_DEFAULTCOMPONENT231</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\terrible_start\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav587</td><td>ISX_DEFAULTCOMPONENT231</td><td>6.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\terrible_start\6.wav</td><td>1</td><td/></row>
		<row><td>_.wav588</td><td>ISX_DEFAULTCOMPONENT233</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\pits_exit_clear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav589</td><td>ISX_DEFAULTCOMPONENT233</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\pits_exit_clear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav59</td><td>ISX_DEFAULTCOMPONENT23</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\severe_aero_damage\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav590</td><td>ISX_DEFAULTCOMPONENT233</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\pits_exit_clear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav591</td><td>ISX_DEFAULTCOMPONENT234</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\pits_exit_traffic_behind\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav592</td><td>ISX_DEFAULTCOMPONENT234</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\pits_exit_traffic_behind\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav593</td><td>ISX_DEFAULTCOMPONENT234</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\pits_exit_traffic_behind\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav594</td><td>ISX_DEFAULTCOMPONENT235</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_get_second\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav595</td><td>ISX_DEFAULTCOMPONENT235</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_get_second\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav596</td><td>ISX_DEFAULTCOMPONENT235</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_get_second\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav597</td><td>ISX_DEFAULTCOMPONENT236</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_get_third\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav598</td><td>ISX_DEFAULTCOMPONENT236</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_get_third\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav599</td><td>ISX_DEFAULTCOMPONENT236</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_get_third\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav6</td><td>ISX_DEFAULTCOMPONENT6</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\keepQuietDisabled\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav60</td><td>ISX_DEFAULTCOMPONENT23</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\severe_aero_damage\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav600</td><td>ISX_DEFAULTCOMPONENT237</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_get_win\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav601</td><td>ISX_DEFAULTCOMPONENT237</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_get_win\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav602</td><td>ISX_DEFAULTCOMPONENT237</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_get_win\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav603</td><td>ISX_DEFAULTCOMPONENT238</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_hold_position\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav604</td><td>ISX_DEFAULTCOMPONENT238</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_hold_position\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav605</td><td>ISX_DEFAULTCOMPONENT238</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_hold_position\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav606</td><td>ISX_DEFAULTCOMPONENT239</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_improve\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav607</td><td>ISX_DEFAULTCOMPONENT239</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_improve\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav608</td><td>ISX_DEFAULTCOMPONENT239</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\push_now\push_to_improve\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav609</td><td>ISX_DEFAULTCOMPONENT241</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\fifteen_minutes_left\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav61</td><td>ISX_DEFAULTCOMPONENT24</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\severe_engine_damage\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav610</td><td>ISX_DEFAULTCOMPONENT241</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\fifteen_minutes_left\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav611</td><td>ISX_DEFAULTCOMPONENT241</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\fifteen_minutes_left\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav612</td><td>ISX_DEFAULTCOMPONENT242</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\five_minutes_left\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav613</td><td>ISX_DEFAULTCOMPONENT242</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\five_minutes_left\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav614</td><td>ISX_DEFAULTCOMPONENT242</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\five_minutes_left\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav615</td><td>ISX_DEFAULTCOMPONENT243</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\five_minutes_left_leading\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav616</td><td>ISX_DEFAULTCOMPONENT243</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\five_minutes_left_leading\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav617</td><td>ISX_DEFAULTCOMPONENT243</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\five_minutes_left_leading\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav618</td><td>ISX_DEFAULTCOMPONENT243</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\five_minutes_left_leading\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav619</td><td>ISX_DEFAULTCOMPONENT245</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\five_minutes_left_podium\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav62</td><td>ISX_DEFAULTCOMPONENT24</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\severe_engine_damage\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav620</td><td>ISX_DEFAULTCOMPONENT245</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\five_minutes_left_podium\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav621</td><td>ISX_DEFAULTCOMPONENT245</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\five_minutes_left_podium\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav622</td><td>ISX_DEFAULTCOMPONENT246</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\half_way\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav623</td><td>ISX_DEFAULTCOMPONENT246</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\half_way\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav624</td><td>ISX_DEFAULTCOMPONENT246</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\half_way\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav625</td><td>ISX_DEFAULTCOMPONENT247</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\laps_remaining\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav626</td><td>ISX_DEFAULTCOMPONENT247</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\laps_remaining\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav627</td><td>ISX_DEFAULTCOMPONENT247</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\laps_remaining\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav628</td><td>ISX_DEFAULTCOMPONENT248</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\last_lap\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav629</td><td>ISX_DEFAULTCOMPONENT248</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\last_lap\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav63</td><td>ISX_DEFAULTCOMPONENT24</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\severe_engine_damage\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav630</td><td>ISX_DEFAULTCOMPONENT248</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\last_lap\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav631</td><td>ISX_DEFAULTCOMPONENT249</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\last_lap_leading\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav632</td><td>ISX_DEFAULTCOMPONENT249</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\last_lap_leading\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav633</td><td>ISX_DEFAULTCOMPONENT249</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\last_lap_leading\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav634</td><td>ISX_DEFAULTCOMPONENT249</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\last_lap_leading\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav635</td><td>ISX_DEFAULTCOMPONENT250</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\last_lap_top_three\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav636</td><td>ISX_DEFAULTCOMPONENT250</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\last_lap_top_three\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav637</td><td>ISX_DEFAULTCOMPONENT250</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\last_lap_top_three\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav638</td><td>ISX_DEFAULTCOMPONENT251</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\less_than_one_minute\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav639</td><td>ISX_DEFAULTCOMPONENT251</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\less_than_one_minute\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav64</td><td>ISX_DEFAULTCOMPONENT25</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\severe_transmission_damage\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav640</td><td>ISX_DEFAULTCOMPONENT251</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\less_than_one_minute\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav641</td><td>ISX_DEFAULTCOMPONENT252</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\minutes_remaining\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav642</td><td>ISX_DEFAULTCOMPONENT252</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\minutes_remaining\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav643</td><td>ISX_DEFAULTCOMPONENT252</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\minutes_remaining\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav644</td><td>ISX_DEFAULTCOMPONENT253</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\one_minute_remaining\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav645</td><td>ISX_DEFAULTCOMPONENT253</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\one_minute_remaining\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav646</td><td>ISX_DEFAULTCOMPONENT253</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\one_minute_remaining\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav647</td><td>ISX_DEFAULTCOMPONENT254</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\one_more_lap_after_this_one\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav648</td><td>ISX_DEFAULTCOMPONENT254</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\one_more_lap_after_this_one\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav649</td><td>ISX_DEFAULTCOMPONENT254</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\one_more_lap_after_this_one\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav65</td><td>ISX_DEFAULTCOMPONENT25</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\severe_transmission_damage\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav650</td><td>ISX_DEFAULTCOMPONENT255</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\ten_minutes_left\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav651</td><td>ISX_DEFAULTCOMPONENT255</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\ten_minutes_left\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav652</td><td>ISX_DEFAULTCOMPONENT255</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\ten_minutes_left\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav653</td><td>ISX_DEFAULTCOMPONENT256</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\this_is_the_last_lap\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav654</td><td>ISX_DEFAULTCOMPONENT256</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\this_is_the_last_lap\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav655</td><td>ISX_DEFAULTCOMPONENT256</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\this_is_the_last_lap\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav656</td><td>ISX_DEFAULTCOMPONENT257</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\twenty_minutes_left\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav657</td><td>ISX_DEFAULTCOMPONENT257</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\twenty_minutes_left\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav658</td><td>ISX_DEFAULTCOMPONENT257</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\twenty_minutes_left\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav659</td><td>ISX_DEFAULTCOMPONENT258</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\two_minutes_left\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav66</td><td>ISX_DEFAULTCOMPONENT25</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\severe_transmission_damage\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav660</td><td>ISX_DEFAULTCOMPONENT258</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\two_minutes_left\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav661</td><td>ISX_DEFAULTCOMPONENT258</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\two_minutes_left\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav662</td><td>ISX_DEFAULTCOMPONENT260</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\radio_check\test\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav663</td><td>ISX_DEFAULTCOMPONENT260</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\radio_check\test\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav664</td><td>ISX_DEFAULTCOMPONENT262</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\clear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav665</td><td>ISX_DEFAULTCOMPONENT262</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\clear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav666</td><td>ISX_DEFAULTCOMPONENT262</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\clear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav667</td><td>ISX_DEFAULTCOMPONENT262</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\clear\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav668</td><td>ISX_DEFAULTCOMPONENT262</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\clear\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav669</td><td>ISX_DEFAULTCOMPONENT262</td><td>6.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\clear\6.wav</td><td>1</td><td/></row>
		<row><td>_.wav67</td><td>ISX_DEFAULTCOMPONENT26</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\trivial_aero_damage\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav670</td><td>ISX_DEFAULTCOMPONENT262</td><td>7.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\clear\7.wav</td><td>1</td><td/></row>
		<row><td>_.wav671</td><td>ISX_DEFAULTCOMPONENT262</td><td>8.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\clear\8.wav</td><td>1</td><td/></row>
		<row><td>_.wav672</td><td>ISX_DEFAULTCOMPONENT262</td><td>9.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\clear\9.wav</td><td>1</td><td/></row>
		<row><td>_.wav673</td><td>ISX_DEFAULTCOMPONENT263</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav674</td><td>ISX_DEFAULTCOMPONENT263</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav675</td><td>ISX_DEFAULTCOMPONENT263</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav676</td><td>ISX_DEFAULTCOMPONENT263</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav677</td><td>ISX_DEFAULTCOMPONENT263</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav678</td><td>ISX_DEFAULTCOMPONENT263</td><td>6.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\6.wav</td><td>1</td><td/></row>
		<row><td>_.wav679</td><td>ISX_DEFAULTCOMPONENT263</td><td>7.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\7.wav</td><td>1</td><td/></row>
		<row><td>_.wav68</td><td>ISX_DEFAULTCOMPONENT26</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\trivial_aero_damage\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav680</td><td>ISX_DEFAULTCOMPONENT263</td><td>8.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\8.wav</td><td>1</td><td/></row>
		<row><td>_.wav681</td><td>ISX_DEFAULTCOMPONENT263</td><td>9.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\9.wav</td><td>1</td><td/></row>
		<row><td>_.wav682</td><td>ISX_DEFAULTCOMPONENT264</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav683</td><td>ISX_DEFAULTCOMPONENT264</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav684</td><td>ISX_DEFAULTCOMPONENT264</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav685</td><td>ISX_DEFAULTCOMPONENT264</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav686</td><td>ISX_DEFAULTCOMPONENT264</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav687</td><td>ISX_DEFAULTCOMPONENT264</td><td>6.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\6.wav</td><td>1</td><td/></row>
		<row><td>_.wav688</td><td>ISX_DEFAULTCOMPONENT264</td><td>7.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\7.wav</td><td>1</td><td/></row>
		<row><td>_.wav689</td><td>ISX_DEFAULTCOMPONENT264</td><td>8.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\8.wav</td><td>1</td><td/></row>
		<row><td>_.wav69</td><td>ISX_DEFAULTCOMPONENT26</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\trivial_aero_damage\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav690</td><td>ISX_DEFAULTCOMPONENT264</td><td>9.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\9.wav</td><td>1</td><td/></row>
		<row><td>_.wav691</td><td>ISX_DEFAULTCOMPONENT266</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\being_held_up\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav692</td><td>ISX_DEFAULTCOMPONENT266</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\being_held_up\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav693</td><td>ISX_DEFAULTCOMPONENT266</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\being_held_up\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav694</td><td>ISX_DEFAULTCOMPONENT267</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\being_pressured\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav695</td><td>ISX_DEFAULTCOMPONENT267</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\being_pressured\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav696</td><td>ISX_DEFAULTCOMPONENT267</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\being_pressured\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav697</td><td>ISX_DEFAULTCOMPONENT268</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_behind_decreasing\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav698</td><td>ISX_DEFAULTCOMPONENT268</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_behind_decreasing\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav699</td><td>ISX_DEFAULTCOMPONENT268</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_behind_decreasing\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav7</td><td>ISX_DEFAULTCOMPONENT6</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\keepQuietDisabled\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav70</td><td>ISX_DEFAULTCOMPONENT28</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\all_clear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav700</td><td>ISX_DEFAULTCOMPONENT269</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_behind_increasing\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav701</td><td>ISX_DEFAULTCOMPONENT269</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_behind_increasing\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav702</td><td>ISX_DEFAULTCOMPONENT269</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_behind_increasing\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav703</td><td>ISX_DEFAULTCOMPONENT270</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_in_front_decreasing\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav704</td><td>ISX_DEFAULTCOMPONENT270</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_in_front_decreasing\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav705</td><td>ISX_DEFAULTCOMPONENT270</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_in_front_decreasing\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav706</td><td>ISX_DEFAULTCOMPONENT271</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_in_front_increasing\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav707</td><td>ISX_DEFAULTCOMPONENT271</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_in_front_increasing\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav708</td><td>ISX_DEFAULTCOMPONENT271</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_in_front_increasing\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav709</td><td>ISX_DEFAULTCOMPONENT272</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\seconds\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav71</td><td>ISX_DEFAULTCOMPONENT28</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\all_clear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav710</td><td>ISX_DEFAULTCOMPONENT272</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\seconds\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav711</td><td>ISX_DEFAULTCOMPONENT272</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\seconds\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav712</td><td>ISX_DEFAULTCOMPONENT274</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\good_temps\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav713</td><td>ISX_DEFAULTCOMPONENT274</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\good_temps\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav714</td><td>ISX_DEFAULTCOMPONENT274</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\good_temps\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav715</td><td>ISX_DEFAULTCOMPONENT275</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\good_wear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav716</td><td>ISX_DEFAULTCOMPONENT275</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\good_wear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav717</td><td>ISX_DEFAULTCOMPONENT275</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\good_wear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav718</td><td>ISX_DEFAULTCOMPONENT276</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_all_round\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav719</td><td>ISX_DEFAULTCOMPONENT276</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_all_round\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav72</td><td>ISX_DEFAULTCOMPONENT28</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\all_clear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav720</td><td>ISX_DEFAULTCOMPONENT276</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_all_round\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav721</td><td>ISX_DEFAULTCOMPONENT277</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_fronts\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav722</td><td>ISX_DEFAULTCOMPONENT277</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_fronts\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav723</td><td>ISX_DEFAULTCOMPONENT277</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_fronts\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav724</td><td>ISX_DEFAULTCOMPONENT278</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_lefts\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav725</td><td>ISX_DEFAULTCOMPONENT278</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_lefts\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav726</td><td>ISX_DEFAULTCOMPONENT278</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_lefts\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav727</td><td>ISX_DEFAULTCOMPONENT278</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_lefts\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav728</td><td>ISX_DEFAULTCOMPONENT279</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_left_front\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav729</td><td>ISX_DEFAULTCOMPONENT279</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_left_front\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav73</td><td>ISX_DEFAULTCOMPONENT29</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_oil\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav730</td><td>ISX_DEFAULTCOMPONENT279</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_left_front\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav731</td><td>ISX_DEFAULTCOMPONENT280</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_left_rear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav732</td><td>ISX_DEFAULTCOMPONENT280</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_left_rear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav733</td><td>ISX_DEFAULTCOMPONENT280</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_left_rear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav734</td><td>ISX_DEFAULTCOMPONENT281</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_rears\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav735</td><td>ISX_DEFAULTCOMPONENT281</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_rears\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav736</td><td>ISX_DEFAULTCOMPONENT281</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_rears\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav737</td><td>ISX_DEFAULTCOMPONENT282</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_rights\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav738</td><td>ISX_DEFAULTCOMPONENT282</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_rights\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav739</td><td>ISX_DEFAULTCOMPONENT282</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_rights\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav74</td><td>ISX_DEFAULTCOMPONENT29</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_oil\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav740</td><td>ISX_DEFAULTCOMPONENT283</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_right_front\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav741</td><td>ISX_DEFAULTCOMPONENT283</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_right_front\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav742</td><td>ISX_DEFAULTCOMPONENT283</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_right_front\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav743</td><td>ISX_DEFAULTCOMPONENT284</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_right_rear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav744</td><td>ISX_DEFAULTCOMPONENT284</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_right_rear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav745</td><td>ISX_DEFAULTCOMPONENT284</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_right_rear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav746</td><td>ISX_DEFAULTCOMPONENT285</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_all_round\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav747</td><td>ISX_DEFAULTCOMPONENT285</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_all_round\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav748</td><td>ISX_DEFAULTCOMPONENT285</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_all_round\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav749</td><td>ISX_DEFAULTCOMPONENT286</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_fronts\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav75</td><td>ISX_DEFAULTCOMPONENT29</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_oil\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav750</td><td>ISX_DEFAULTCOMPONENT286</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_fronts\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav751</td><td>ISX_DEFAULTCOMPONENT286</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_fronts\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav752</td><td>ISX_DEFAULTCOMPONENT287</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_lefts\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav753</td><td>ISX_DEFAULTCOMPONENT287</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_lefts\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav754</td><td>ISX_DEFAULTCOMPONENT287</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_lefts\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav755</td><td>ISX_DEFAULTCOMPONENT288</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_left_front\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav756</td><td>ISX_DEFAULTCOMPONENT288</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_left_front\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav757</td><td>ISX_DEFAULTCOMPONENT288</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_left_front\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav758</td><td>ISX_DEFAULTCOMPONENT289</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_left_rear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav759</td><td>ISX_DEFAULTCOMPONENT289</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_left_rear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav76</td><td>ISX_DEFAULTCOMPONENT30</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_oil_and_water\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav760</td><td>ISX_DEFAULTCOMPONENT289</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_left_rear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav761</td><td>ISX_DEFAULTCOMPONENT290</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_rears\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav762</td><td>ISX_DEFAULTCOMPONENT290</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_rears\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav763</td><td>ISX_DEFAULTCOMPONENT290</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_rears\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav764</td><td>ISX_DEFAULTCOMPONENT291</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_rights\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav765</td><td>ISX_DEFAULTCOMPONENT291</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_rights\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav766</td><td>ISX_DEFAULTCOMPONENT291</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_rights\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav767</td><td>ISX_DEFAULTCOMPONENT292</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_right_front\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav768</td><td>ISX_DEFAULTCOMPONENT292</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_right_front\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav769</td><td>ISX_DEFAULTCOMPONENT292</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_right_front\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav77</td><td>ISX_DEFAULTCOMPONENT30</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_oil_and_water\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav770</td><td>ISX_DEFAULTCOMPONENT293</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_right_rear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav771</td><td>ISX_DEFAULTCOMPONENT293</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_right_rear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav772</td><td>ISX_DEFAULTCOMPONENT293</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_right_rear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav773</td><td>ISX_DEFAULTCOMPONENT294</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\laps_on_current_tyres_intro\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav774</td><td>ISX_DEFAULTCOMPONENT294</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\laps_on_current_tyres_intro\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav775</td><td>ISX_DEFAULTCOMPONENT294</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\laps_on_current_tyres_intro\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav776</td><td>ISX_DEFAULTCOMPONENT295</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\laps_on_current_tyres_outro\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav777</td><td>ISX_DEFAULTCOMPONENT295</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\laps_on_current_tyres_outro\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav778</td><td>ISX_DEFAULTCOMPONENT295</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\laps_on_current_tyres_outro\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav779</td><td>ISX_DEFAULTCOMPONENT296</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\minutes_on_current_tyres_intro\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav78</td><td>ISX_DEFAULTCOMPONENT30</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_oil_and_water\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav780</td><td>ISX_DEFAULTCOMPONENT296</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\minutes_on_current_tyres_intro\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav781</td><td>ISX_DEFAULTCOMPONENT296</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\minutes_on_current_tyres_intro\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav782</td><td>ISX_DEFAULTCOMPONENT297</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\minutes_on_current_tyres_outro\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav783</td><td>ISX_DEFAULTCOMPONENT297</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\minutes_on_current_tyres_outro\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav784</td><td>ISX_DEFAULTCOMPONENT297</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\minutes_on_current_tyres_outro\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav785</td><td>ISX_DEFAULTCOMPONENT298</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_all_round\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav786</td><td>ISX_DEFAULTCOMPONENT298</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_all_round\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav787</td><td>ISX_DEFAULTCOMPONENT298</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_all_round\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav788</td><td>ISX_DEFAULTCOMPONENT299</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_fronts\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav789</td><td>ISX_DEFAULTCOMPONENT299</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_fronts\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav79</td><td>ISX_DEFAULTCOMPONENT31</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_water\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav790</td><td>ISX_DEFAULTCOMPONENT299</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_fronts\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav791</td><td>ISX_DEFAULTCOMPONENT300</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_lefts\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav792</td><td>ISX_DEFAULTCOMPONENT300</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_lefts\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav793</td><td>ISX_DEFAULTCOMPONENT300</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_lefts\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav794</td><td>ISX_DEFAULTCOMPONENT301</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_left_front\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav795</td><td>ISX_DEFAULTCOMPONENT301</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_left_front\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav796</td><td>ISX_DEFAULTCOMPONENT301</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_left_front\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav797</td><td>ISX_DEFAULTCOMPONENT302</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_left_rear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav798</td><td>ISX_DEFAULTCOMPONENT302</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_left_rear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav799</td><td>ISX_DEFAULTCOMPONENT302</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_left_rear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav8</td><td>ISX_DEFAULTCOMPONENT6</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\keepQuietDisabled\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav80</td><td>ISX_DEFAULTCOMPONENT31</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_water\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav800</td><td>ISX_DEFAULTCOMPONENT303</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_rears\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav801</td><td>ISX_DEFAULTCOMPONENT303</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_rears\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav802</td><td>ISX_DEFAULTCOMPONENT303</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_rears\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav803</td><td>ISX_DEFAULTCOMPONENT304</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_rights\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav804</td><td>ISX_DEFAULTCOMPONENT304</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_rights\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav805</td><td>ISX_DEFAULTCOMPONENT304</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_rights\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav806</td><td>ISX_DEFAULTCOMPONENT305</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_right_front\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav807</td><td>ISX_DEFAULTCOMPONENT305</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_right_front\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav808</td><td>ISX_DEFAULTCOMPONENT305</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_right_front\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav809</td><td>ISX_DEFAULTCOMPONENT306</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_right_rear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav81</td><td>ISX_DEFAULTCOMPONENT31</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_water\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav810</td><td>ISX_DEFAULTCOMPONENT306</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_right_rear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav811</td><td>ISX_DEFAULTCOMPONENT306</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_right_rear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav82</td><td>ISX_DEFAULTCOMPONENT33</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\five_minutes_fuel\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav83</td><td>ISX_DEFAULTCOMPONENT33</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\five_minutes_fuel\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav84</td><td>ISX_DEFAULTCOMPONENT33</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\five_minutes_fuel\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav85</td><td>ISX_DEFAULTCOMPONENT34</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\four_laps_fuel\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav86</td><td>ISX_DEFAULTCOMPONENT34</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\four_laps_fuel\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav87</td><td>ISX_DEFAULTCOMPONENT34</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\four_laps_fuel\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav88</td><td>ISX_DEFAULTCOMPONENT35</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\half_distance_good_fuel\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav89</td><td>ISX_DEFAULTCOMPONENT35</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\half_distance_good_fuel\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav9</td><td>ISX_DEFAULTCOMPONENT7</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\keepQuietEnabled\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav90</td><td>ISX_DEFAULTCOMPONENT35</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\half_distance_good_fuel\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav91</td><td>ISX_DEFAULTCOMPONENT36</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\half_distance_low_fuel\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav92</td><td>ISX_DEFAULTCOMPONENT36</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\half_distance_low_fuel\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav93</td><td>ISX_DEFAULTCOMPONENT36</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\half_distance_low_fuel\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav94</td><td>ISX_DEFAULTCOMPONENT37</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\half_tank_warning\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav95</td><td>ISX_DEFAULTCOMPONENT37</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\half_tank_warning\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav96</td><td>ISX_DEFAULTCOMPONENT37</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\half_tank_warning\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav97</td><td>ISX_DEFAULTCOMPONENT38</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\laps_remaining\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav98</td><td>ISX_DEFAULTCOMPONENT38</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\laps_remaining\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav99</td><td>ISX_DEFAULTCOMPONENT38</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\fuel\laps_remaining\3.wav</td><td>1</td><td/></row>
		<row><td>_0.wav</td><td>ISX_DEFAULTCOMPONENT262</td><td>10.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\clear\10.wav</td><td>1</td><td/></row>
		<row><td>_0.wav1</td><td>ISX_DEFAULTCOMPONENT263</td><td>10.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\10.wav</td><td>1</td><td/></row>
		<row><td>_0.wav2</td><td>ISX_DEFAULTCOMPONENT264</td><td>10.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\10.wav</td><td>1</td><td/></row>
		<row><td>_1.wav</td><td>ISX_DEFAULTCOMPONENT262</td><td>11.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\clear\11.wav</td><td>1</td><td/></row>
		<row><td>_1.wav1</td><td>ISX_DEFAULTCOMPONENT263</td><td>11.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\11.wav</td><td>1</td><td/></row>
		<row><td>_1.wav2</td><td>ISX_DEFAULTCOMPONENT264</td><td>11.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\11.wav</td><td>1</td><td/></row>
		<row><td>_2.wav</td><td>ISX_DEFAULTCOMPONENT264</td><td>12.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\12.wav</td><td>1</td><td/></row>
		<row><td>crewchiefv2.primary_output</td><td>CrewChiefV2.Primary_output</td><td>CrewChiefV2.Primary output</td><td>0</td><td/><td/><td/><td>1</td><td>&lt;CrewChiefV2&gt;|Built</td><td>3</td><td/></row>
		<row><td>dtm_pit_window_closed.wav</td><td>ISX_DEFAULTCOMPONENT1</td><td>DTM_PI~1.WAV|dtm_pit_window_closed.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\background_sounds\dtm_pit_window_closed.wav</td><td>1</td><td/></row>
		<row><td>dtm_pit_window_open.wav</td><td>ISX_DEFAULTCOMPONENT1</td><td>DTM_PI~1.WAV|dtm_pit_window_open.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\background_sounds\dtm_pit_window_open.wav</td><td>1</td><td/></row>
		<row><td>end_bleep.wav</td><td>ISX_DEFAULTCOMPONENT2</td><td>END_BL~1.WAV|end_bleep.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\fx\end_bleep.wav</td><td>1</td><td/></row>
		<row><td>readme.txt</td><td>ISX_DEFAULTCOMPONENT244</td><td>README.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\README.txt</td><td>1</td><td/></row>
		<row><td>sharpdx_licence.txt</td><td>ISX_DEFAULTCOMPONENT244</td><td>SHARPD~1.TXT|SharpDX_licence.txt</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\SharpDX_licence.txt</td><td>1</td><td/></row>
		<row><td>start_bleep.wav</td><td>ISX_DEFAULTCOMPONENT2</td><td>START_~1.WAV|start_bleep.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\fx\start_bleep.wav</td><td>1</td><td/></row>
		<row><td>sweary_2.wav</td><td>ISX_DEFAULTCOMPONENT16</td><td>sweary_2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\busted_transmission\sweary_2.wav</td><td>1</td><td/></row>
		<row><td>sweary_3.wav</td><td>ISX_DEFAULTCOMPONENT15</td><td>sweary_3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\busted_engine\sweary_3.wav</td><td>1</td><td/></row>
		<row><td>sweary_3.wav1</td><td>ISX_DEFAULTCOMPONENT23</td><td>sweary_3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\severe_aero_damage\sweary_3.wav</td><td>1</td><td/></row>
		<row><td>sweary_3.wav2</td><td>ISX_DEFAULTCOMPONENT231</td><td>sweary_3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\position\terrible_start\sweary_3.wav</td><td>1</td><td/></row>
		<row><td>sweary_4.wav</td><td>ISX_DEFAULTCOMPONENT51</td><td>sweary_4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\lap_counter\finished_race_last\sweary_4.wav</td><td>1</td><td/></row>
		<row><td>sweary_4.wav1</td><td>ISX_DEFAULTCOMPONENT91</td><td>sweary_4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\mandatory_pit_stops\pit_this_lap_too_late\sweary_4.wav</td><td>1</td><td/></row>
		<row><td>sweary_4.wav2</td><td>ISX_DEFAULTCOMPONENT184</td><td>sweary_4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\new_penalty_drivethrough\sweary_4.wav</td><td>1</td><td/></row>
		<row><td>sweary_4.wav3</td><td>ISX_DEFAULTCOMPONENT185</td><td>sweary_4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\new_penalty_stopgo\sweary_4.wav</td><td>1</td><td/></row>
		<row><td>sweary_4.wav4</td><td>ISX_DEFAULTCOMPONENT186</td><td>sweary_4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\penalty_disqualified\sweary_4.wav</td><td>1</td><td/></row>
		<row><td>sweary_4.wav5</td><td>ISX_DEFAULTCOMPONENT195</td><td>sweary_4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\penalties\time_penalty\sweary_4.wav</td><td>1</td><td/></row>
		<row><td>sweary_5.wav</td><td>ISX_DEFAULTCOMPONENT243</td><td>sweary_5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\race_time\five_minutes_left_leading\sweary_5.wav</td><td>1</td><td/></row>
		<row><td>sweary_8.wav</td><td>ISX_DEFAULTCOMPONENT178</td><td>sweary_8.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\pearls_of_wisdom\must_do_better\sweary_8.wav</td><td>1</td><td/></row>
		<row><td>version_info</td><td>ISX_DEFAULTCOMPONENT</td><td>VERSIO~1|version_info</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\version_info</td><td>1</td><td/></row>
	</table>

	<table name="FileSFPCatalog">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s255">SFPCatalog_</col>
	</table>

	<table name="Font">
		<col key="yes" def="s72">File_</col>
		<col def="S128">FontTitle</col>
	</table>

	<table name="ISAssistantTag">
		<col key="yes" def="s72">Tag</col>
		<col def="S255">Data</col>
		<row><td>PROJECT_ASSISTANT_DEFAULT_FEATURE</td><td>AlwaysInstall</td></row>
		<row><td>PROJECT_ASSISTANT_FEATURES</td><td>NonSelectable</td></row>
	</table>

	<table name="ISBillBoard">
		<col key="yes" def="s72">ISBillboard</col>
		<col def="i2">Duration</col>
		<col def="i2">Origin</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Effect</col>
		<col def="i2">Sequence</col>
		<col def="i2">Target</col>
		<col def="S72">Color</col>
		<col def="S72">Style</col>
		<col def="S72">Font</col>
		<col def="L72">Title</col>
		<col def="S72">DisplayName</col>
	</table>

	<table name="ISChainPackage">
		<col key="yes" def="s72">Package</col>
		<col def="S255">SourcePath</col>
		<col def="S72">ProductCode</col>
		<col def="i2">Order</col>
		<col def="i4">Options</col>
		<col def="S255">InstallCondition</col>
		<col def="S255">RemoveCondition</col>
		<col def="S0">InstallProperties</col>
		<col def="S0">RemoveProperties</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="S72">DisplayName</col>
	</table>

	<table name="ISChainPackageData">
		<col key="yes" def="s72">Package_</col>
		<col key="yes" def="s72">File</col>
		<col def="s50">FilePath</col>
		<col def="I4">Options</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="ISClrWrap">
		<col key="yes" def="s72">Action_</col>
		<col key="yes" def="s72">Name</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISComCatalogAttribute">
		<col key="yes" def="s72">ISComCatalogObject_</col>
		<col key="yes" def="s255">ItemName</col>
		<col def="S0">ItemValue</col>
	</table>

	<table name="ISComCatalogCollection">
		<col key="yes" def="s72">ISComCatalogCollection</col>
		<col def="s72">ISComCatalogObject_</col>
		<col def="s255">CollectionName</col>
	</table>

	<table name="ISComCatalogCollectionObjects">
		<col key="yes" def="s72">ISComCatalogCollection_</col>
		<col key="yes" def="s72">ISComCatalogObject_</col>
	</table>

	<table name="ISComCatalogObject">
		<col key="yes" def="s72">ISComCatalogObject</col>
		<col def="s255">DisplayName</col>
	</table>

	<table name="ISComPlusApplication">
		<col key="yes" def="s72">ISComCatalogObject_</col>
		<col def="S255">ComputerName</col>
		<col def="s72">Component_</col>
		<col def="I2">ISAttributes</col>
		<col def="S0">DepFiles</col>
	</table>

	<table name="ISComPlusApplicationDLL">
		<col key="yes" def="s72">ISComPlusApplicationDLL</col>
		<col def="s72">ISComPlusApplication_</col>
		<col def="s72">ISComCatalogObject_</col>
		<col def="s0">CLSID</col>
		<col def="S0">ProgId</col>
		<col def="S0">DLL</col>
		<col def="S0">AlterDLL</col>
	</table>

	<table name="ISComPlusProxy">
		<col key="yes" def="s72">ISComPlusProxy</col>
		<col def="s72">ISComPlusApplication_</col>
		<col def="S72">Component_</col>
		<col def="I2">ISAttributes</col>
		<col def="S0">DepFiles</col>
	</table>

	<table name="ISComPlusProxyDepFile">
		<col key="yes" def="s72">ISComPlusApplication_</col>
		<col key="yes" def="s72">File_</col>
		<col def="S0">ISPath</col>
	</table>

	<table name="ISComPlusProxyFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">ISComPlusApplicationDLL_</col>
	</table>

	<table name="ISComPlusServerDepFile">
		<col key="yes" def="s72">ISComPlusApplication_</col>
		<col key="yes" def="s72">File_</col>
		<col def="S0">ISPath</col>
	</table>

	<table name="ISComPlusServerFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">ISComPlusApplicationDLL_</col>
	</table>

	<table name="ISComponentExtended">
		<col key="yes" def="s72">Component_</col>
		<col def="I4">OS</col>
		<col def="S0">Language</col>
		<col def="s72">FilterProperty</col>
		<col def="I4">Platforms</col>
		<col def="S0">FTPLocation</col>
		<col def="S0">HTTPLocation</col>
		<col def="S0">Miscellaneous</col>
		<row><td>CrewChiefV2.Primary_output</td><td/><td/><td>_B255668E_C599_4D2F_A8DD_D102F0C87399_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT</td><td/><td/><td>_06FFB7CF_EF75_47B5_B5E8_85EC205A2571_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT1</td><td/><td/><td>_B5A179EE_2A13_4292_B42D_AEE98720AF39_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT10</td><td/><td/><td>_6181A0D7_E308_4090_B483_CAC34CF5C1A2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT100</td><td/><td/><td>_8AC2DB84_A399_4A89_A546_67036697E987_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT101</td><td/><td/><td>_1EB2090A_6204_48AB_979A_BF050B1AC25E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT102</td><td/><td/><td>_916ADE20_C214_483C_A8D2_45945689C9FD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT103</td><td/><td/><td>_9090CAE3_3ABD_4688_BA45_6D8753C98C2C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT104</td><td/><td/><td>_88B22833_F603_4B51_A1EF_21F72C5FF74C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT105</td><td/><td/><td>_1760DB0F_FFCB_48A6_B7C9_F053F99E9E18_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT106</td><td/><td/><td>_3148DD5E_CA9D_48CD_AF8A_295A941BBD79_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT107</td><td/><td/><td>_DA57AEAC_9F88_4AA0_9813_1DAA2676A6EA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT108</td><td/><td/><td>_D75F3E31_B40C_4EA6_8E4B_995909A1ACCD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT109</td><td/><td/><td>_81226D76_A421_41A6_BC43_A169732E7F39_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT11</td><td/><td/><td>_33209B2C_A01B_4EA9_8857_3820563CF7FC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT110</td><td/><td/><td>_6DD39EB0_11F5_4C19_B1F1_EE02C6F82A1F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT111</td><td/><td/><td>_4B77FDA4_C43B_4ABA_B6B4_D64B3D03C4AD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT112</td><td/><td/><td>_FB21A029_E137_43F5_A481_5CE4DDE7CD10_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT113</td><td/><td/><td>_81C5948A_B04A_4F19_B024_1198FFE73398_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT114</td><td/><td/><td>_B76CD7E2_01B5_4EAD_B5E9_FD77231E52E5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT115</td><td/><td/><td>_0C40940A_16F5_49FE_AE06_6B6745BBE6B9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT116</td><td/><td/><td>_DC5A332D_173A_4A28_9A51_6B56617FF943_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT117</td><td/><td/><td>_078AB295_94D1_44AE_9AB1_8661C1AD5946_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT118</td><td/><td/><td>_3BCBBBB1_4466_42CB_9949_913C8AE50FBA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT119</td><td/><td/><td>_490A7754_9855_4664_832D_23AD7961F1D2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT12</td><td/><td/><td>_EAC9641A_2859_4E69_93CA_DBDEDFE1F62B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT120</td><td/><td/><td>_CF873B8D_A49E_4124_A46C_7DBFFC97C12C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT121</td><td/><td/><td>_98A4BA5B_D699_450A_B22A_0F8495548BBE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT122</td><td/><td/><td>_8B74EA8E_63B2_4D2F_A09C_B4009CE61E3E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT123</td><td/><td/><td>_31206CC0_998E_4711_BD56_C278DD31DF85_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT124</td><td/><td/><td>_FEB05516_F453_41E3_B4C1_5CBD36B9ADED_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT125</td><td/><td/><td>_BDDF1CD3_859D_4C3C_A5B9_84160E2D7249_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT126</td><td/><td/><td>_486F8A66_96B4_4479_B552_EDFE2AFED9D5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT127</td><td/><td/><td>_82A18BBE_225F_4136_9BBD_7D62ED3DA129_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT128</td><td/><td/><td>_E69DF5D7_D8D4_43A0_A89D_7726C1582FE4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT129</td><td/><td/><td>_1A46919A_51DF_4681_A7EB_E2618A29B800_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT13</td><td/><td/><td>_CEF5F3DA_AB5F_4ACD_8D1F_5104B6B74D51_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT130</td><td/><td/><td>_CA1414B7_8878_4546_9D05_F8FC15698906_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT131</td><td/><td/><td>_3F65BF94_2012_4040_A4EA_23D216D420C4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT132</td><td/><td/><td>_8108ECAC_AB19_4896_9697_2B2B3C926FD6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT133</td><td/><td/><td>_E3C10E45_0E94_470D_803A_EDA0745F093D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT134</td><td/><td/><td>_7CAB3BC1_3C3A_43A5_8348_3C241D5C054F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT135</td><td/><td/><td>_5A726CF9_D984_4847_BD85_14931DDACEA1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT136</td><td/><td/><td>_D8892A37_6828_4EDD_B4D5_4CE8DABCC22D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT137</td><td/><td/><td>_B5C0F69A_F1DB_4EE2_A0B8_3574AA7532ED_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT138</td><td/><td/><td>_379D9777_105B_449F_AA26_935375496646_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT139</td><td/><td/><td>_EC6555CE_75D3_4276_9789_B3C7CF51A5A8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT14</td><td/><td/><td>_AE8D3067_AEE0_496C_971F_9B65FBBFD5EF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT140</td><td/><td/><td>_C5C611BA_36D6_4689_9D59_8E4A3E9E9479_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT141</td><td/><td/><td>_A628C066_7596_4909_BDF1_88F3AE814FDA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT142</td><td/><td/><td>_716BEAFB_6C5F_4104_9F63_953B905B655B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT143</td><td/><td/><td>_111A7478_4126_44CD_A59E_0BB065CF9304_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT144</td><td/><td/><td>_3F3A9B49_2755_42CA_86AE_D725555D58F1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT145</td><td/><td/><td>_880BEF2F_52AA_4F4A_81A0_5A292AE45936_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT146</td><td/><td/><td>_BA8E96D0_324F_43E4_B1C1_7E5FD715FDB3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT147</td><td/><td/><td>_EF396726_0ECE_4EFA_8DCB_C7EEB02C1940_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT148</td><td/><td/><td>_548DC2B2_C14B_40AE_A08F_F1936299864E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT149</td><td/><td/><td>_F0F47825_15F1_4E3B_A3B5_EC44F772D612_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT15</td><td/><td/><td>_958A9B8C_0532_4F86_9B7B_BCBAD0C486DF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT150</td><td/><td/><td>_05893582_16C5_4618_A9A8_C186E2DC323E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT151</td><td/><td/><td>_587E5E89_43C5_43B8_925A_49BADED9F06A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT152</td><td/><td/><td>_AA7A9C43_76C2_4A86_842B_438599D34988_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT153</td><td/><td/><td>_08CB8473_7E37_47F5_B64B_1EF0A55E62C1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT154</td><td/><td/><td>_945CDB91_B28B_4F98_BB8C_F97B3A61EC22_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT155</td><td/><td/><td>_EDD93592_A525_41CA_8EEE_1AAAAB427351_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT156</td><td/><td/><td>_14472596_E049_48FD_B954_D03AC0CC557A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT157</td><td/><td/><td>_6A9228A9_C089_471A_91B7_239AE15E2475_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT158</td><td/><td/><td>_D17126CA_E072_4AA5_97C7_03E56FB5FEEA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT159</td><td/><td/><td>_29D61B06_9073_499E_BD39_AC2A8A2215F7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT16</td><td/><td/><td>_91C1F1BD_8525_413A_A767_735E4609CAFF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT160</td><td/><td/><td>_32B8D696_3A5C_4918_9E9F_50EED10DCAE6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT161</td><td/><td/><td>_B74BECEF_2D6B_43F9_8ED9_7521880EB46C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT162</td><td/><td/><td>_C753E591_3A05_4AF0_8F51_ED3D89B7B71C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT163</td><td/><td/><td>_3D912984_0BF7_411C_8764_1ED10AC88995_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT164</td><td/><td/><td>_CFFFF2A4_D0FF_4F02_9B2B_F555561594CD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT165</td><td/><td/><td>_9585C448_B8BC_4FD7_AB83_5A8D8008EEAE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT166</td><td/><td/><td>_8DD6666F_4ADA_44B1_B0F2_0BDDB6F22E5E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT167</td><td/><td/><td>_D49D97FF_D578_4CD6_A9E2_9725E1DF7860_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT168</td><td/><td/><td>_E71959EE_042B_4335_9F7C_550F37DDCF59_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT169</td><td/><td/><td>_B059D7AA_2769_4B03_B108_B07B87F4AF07_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT17</td><td/><td/><td>_7B54F885_7AB1_40A6_B9A1_8A23FD1DB245_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT170</td><td/><td/><td>_9E3E9F9B_9F18_42CF_8E71_3D1ABEAB1746_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT171</td><td/><td/><td>_B1CE847C_0373_4D0F_A3D6_8D9BC2CCF342_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT172</td><td/><td/><td>_6787FDFC_8A33_4298_AFC9_37B82A61A6B2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT173</td><td/><td/><td>_EA0C419C_E05A_49DD_B6E9_C28C0ADBB7B7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT174</td><td/><td/><td>_4254966E_F485_4A99_96A1_AF2745BEE4CC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT175</td><td/><td/><td>_A4C1ADE0_CE90_482D_8CAC_70C5ADA454BA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT176</td><td/><td/><td>_0B30578C_739A_4EF4_8CDD_AD2B5C6A7022_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT177</td><td/><td/><td>_824D5B3C_7628_4762_8CEE_9F2A13BD0C8D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT178</td><td/><td/><td>_A03AC02C_4DBA_4B3C_8B78_76A99ACC766F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT179</td><td/><td/><td>_477078B0_F5D3_4F0F_BB6E_2027BE0A6A5D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT18</td><td/><td/><td>_6B2F8E59_BBF1_4CE0_A67F_5A4C7753111F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT180</td><td/><td/><td>_768C0348_5484_4311_A9CC_BA2EED800699_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT181</td><td/><td/><td>_66083C90_F94E_467D_8840_034A61D78E8F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT182</td><td/><td/><td>_E20CFDF7_FFD7_468B_9538_1A54BEB05611_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT183</td><td/><td/><td>_4B4EAE11_74E5_4DBC_B165_BFD6CB7ED083_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT184</td><td/><td/><td>_4A2E0E84_9429_4E1B_B792_2D606585D305_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT185</td><td/><td/><td>_760487B5_DFA6_49E4_9D0C_E8B52D27E50A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT186</td><td/><td/><td>_5E47CE4F_40C9_45D9_B456_5305EEB02912_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT187</td><td/><td/><td>_EC6F5F7B_C965_446A_9946_08C1EF7832B3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT188</td><td/><td/><td>_8F93344A_BB43_4B92_98CA_C1DA2A5F02C4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT189</td><td/><td/><td>_FC28F620_14C3_49B3_866E_70667769163E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT19</td><td/><td/><td>_43201C21_39CE_4615_9E7E_83A73A1EEEC2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT190</td><td/><td/><td>_E63DE238_A663_4B73_8CE2_8BEA16D135AA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT191</td><td/><td/><td>_181C7BA8_08B4_4A44_94C0_909B5412A072_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT192</td><td/><td/><td>_70F03B34_2CE5_4386_85AE_9F811E754DE8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT193</td><td/><td/><td>_177DFEF7_8C81_4549_BB04_FADF76FAD14C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT194</td><td/><td/><td>_816AA1B5_B210_49C7_9C02_31DBB12E13DD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT195</td><td/><td/><td>_D8A29FA8_CD4D_4F53_8B31_D1E165A222F8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT196</td><td/><td/><td>_67AAD49A_81D1_444C_831C_82C4F0610831_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT197</td><td/><td/><td>_58F29823_3BCF_45EB_8CFE_C77FCCA3E0AD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT198</td><td/><td/><td>_B911928E_D299_48E6_A059_68AEABF512DB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT199</td><td/><td/><td>_8FEAFE0E_0627_4B83_B382_DF698F8A46C0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT2</td><td/><td/><td>_C84626F6_9DA3_4DD9_BE20_0BB96A8FB1C1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT20</td><td/><td/><td>_15B35049_3E75_41F2_B2E2_05B56F1D2414_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT200</td><td/><td/><td>_591470AA_D640_4575_A306_AA099F5FFD2F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT201</td><td/><td/><td>_8E372592_CD30_4000_99B7_1704E702AD05_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT202</td><td/><td/><td>_91D626C0_DC4E_4872_808C_846A7C301ADE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT203</td><td/><td/><td>_9FF485E5_126D_4F51_8DA3_865A8FDD6BFB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT204</td><td/><td/><td>_CDB048E4_3A85_4637_BF44_A3C29FDE2E69_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT205</td><td/><td/><td>_E38099CC_4FD7_49B4_82AF_2A1DF956A1D5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT206</td><td/><td/><td>_EFBEC4E7_1E46_4F7D_A1BE_4E5228EA645C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT207</td><td/><td/><td>_3E18BDBE_963F_4E1D_9651_A214AA0FC7C6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT208</td><td/><td/><td>_CABC1441_D8CF_46F2_BF3E_41546D42E655_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT209</td><td/><td/><td>_B845B678_68EC_416A_93F7_F2E88E7BC408_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT21</td><td/><td/><td>_2E35CA9B_76F5_4D18_AF42_EA8A850A9F66_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT210</td><td/><td/><td>_F4354896_F4CA_487B_8092_02B6467D65E6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT211</td><td/><td/><td>_EDA13371_C3A1_4249_9586_EA1CA9F75C10_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT212</td><td/><td/><td>_6BF49CC5_F183_4227_B25D_1AB51AACD981_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT213</td><td/><td/><td>_22E1E91F_8505_41CE_A0D1_CF29FFE8B34E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT214</td><td/><td/><td>_E5A0D12A_2631_4B25_A039_0783DFEE5572_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT215</td><td/><td/><td>_6FD1E076_ABC2_4F37_ACEB_06D1F13025A1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT216</td><td/><td/><td>_7A6A6167_8DF8_4A9C_8ACB_6221E5C00221_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT217</td><td/><td/><td>_C4EF3D50_4ED2_47FC_A587_99B65AC2D613_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT218</td><td/><td/><td>_1E90DD77_2FEA_4D6F_BEBC_C37D5411D3AB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT219</td><td/><td/><td>_3E018903_0BDF_481E_9B2D_731224108CFD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT22</td><td/><td/><td>_E4160954_D8D4_4676_8AF2_CDAB875E3D69_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT220</td><td/><td/><td>_ED56E0D8_477E_46BB_BD42_1007D5B912C4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT221</td><td/><td/><td>_A8C7E355_2688_4688_854E_8D9D2F311CC9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT222</td><td/><td/><td>_F25DEB64_7CD6_48EE_8672_0ECDB538D6E4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT223</td><td/><td/><td>_C8C5F90F_F65A_4939_9DF2_4BFB121E0E73_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT224</td><td/><td/><td>_4F3FF4D7_25AB_4925_B2BC_C47772A0864D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT225</td><td/><td/><td>_1446A837_0522_49EB_9569_C8CB3F24BCD1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT226</td><td/><td/><td>_BC0F9383_6B36_47D3_99D6_FED7D9CBEFC3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT227</td><td/><td/><td>_6D41766D_74BA_40D6_BB9F_D93977FC6ABC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT228</td><td/><td/><td>_646E293F_8080_4FBC_8046_2BC43F12A71D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT229</td><td/><td/><td>_F97C1510_3415_4D21_ACB6_D77C4A146693_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT23</td><td/><td/><td>_0A25D8E6_8699_439C_A9BE_91233CF2FEDA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT230</td><td/><td/><td>_48F57C86_E3C0_4D4A_993C_529098A7827B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT231</td><td/><td/><td>_4B9286B3_8842_400B_83E3_5260F43C750D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT232</td><td/><td/><td>_39DDE45F_BEF7_4A85_BCFC_E5D3A8E6D2D0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT233</td><td/><td/><td>_FAA7BC2A_9A28_4621_9C75_DF25DD6D62B4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT234</td><td/><td/><td>_CCF1FF8F_F955_4D7C_A798_0D82C301468E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT235</td><td/><td/><td>_0449DA00_422B_4B2D_A9DC_084DEB933CAC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT236</td><td/><td/><td>_1DE1B810_0661_4388_993C_7548CA731E30_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT237</td><td/><td/><td>_3FBDFC6D_45BC_4ADA_A2D9_0DA783F4C164_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT238</td><td/><td/><td>_C02692C0_D937_4BB2_99CD_F28361859908_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT239</td><td/><td/><td>_A678AF83_2BCC_4134_ACAC_63C9DEDC210F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT24</td><td/><td/><td>_5A3F79A3_0A83_4D88_AFA1_FA3B9672867F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT240</td><td/><td/><td>_93482056_7998_45B7_8443_EDF8BFF9DD83_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT241</td><td/><td/><td>_1E69DC49_1C53_4453_9D0F_8A3516619748_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT242</td><td/><td/><td>_BDFDAB7C_4402_4A98_BF5C_CDDDDB97237A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT243</td><td/><td/><td>_92021FF8_5973_4999_A5DF_414728ED4AED_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT244</td><td/><td/><td>_02DB6578_F9A7_409F_A7C7_F91D3D19B72C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT245</td><td/><td/><td>_334E6A94_7CAC_49D9_842C_20581110BF28_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT246</td><td/><td/><td>_D94CD577_E75D_4BFC_A5AC_8AA644F036CE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT247</td><td/><td/><td>_E6F19F89_BDEC_48D3_97F2_31428956BBCE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT248</td><td/><td/><td>_57B6AB0C_A3F7_410D_8981_9BC9C379CBC3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT249</td><td/><td/><td>_B029170C_AD9F_4BB3_B884_92B98C3E7914_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT25</td><td/><td/><td>_AC1A1CE6_D43B_4D5F_B0E5_065054AE2E87_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT250</td><td/><td/><td>_F9835B75_0BF3_4252_AE54_052AB6EB1799_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT251</td><td/><td/><td>_C4B0FE94_A885_4E4D_9484_C50FCFF3BE0A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT252</td><td/><td/><td>_3F80715C_2F40_4C6C_959E_7AC39E8C9AC8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT253</td><td/><td/><td>_EC42284D_F318_4E33_9695_AAB9D34A791E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT254</td><td/><td/><td>_2F2F48D5_41D8_4284_B37B_F7B44B07018B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT255</td><td/><td/><td>_CF7449E8_BCF4_40F8_8187_249F2C12A594_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT256</td><td/><td/><td>_C717530E_9EA9_40CE_88FB_F48B1A3D9622_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT257</td><td/><td/><td>_62E85B7E_4D75_4361_A1F1_1072F4FC6613_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT258</td><td/><td/><td>_433C79C0_8008_43B2_BF96_8F2B6F748593_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT259</td><td/><td/><td>_8DB7FE43_DAC8_4FFF_A93C_7B5358BE34F1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT26</td><td/><td/><td>_272EEC11_D302_4315_885B_2A6ABE3A6133_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT260</td><td/><td/><td>_5FA8082D_07BC_4657_8020_F6671B949395_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT261</td><td/><td/><td>_97E7EBC7_0FE7_41FF_BA32_DF88D893C55C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT262</td><td/><td/><td>_B7796576_6BF7_4DE1_9E54_7460C965D63D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT263</td><td/><td/><td>_AA08B892_126F_4F84_AAC6_1468260C8E25_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT264</td><td/><td/><td>_680A1E4C_C8AF_49DC_9537_70A07C2C8474_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT265</td><td/><td/><td>_2CAF7C20_01D6_4073_84FB_B3628F3D0AA4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT266</td><td/><td/><td>_B9016DBD_2718_485D_BE96_33060B17D975_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT267</td><td/><td/><td>_528034A3_847D_4B96_97C1_4F9534AA4565_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT268</td><td/><td/><td>_A5C7571B_8BC1_40D3_908E_B19E975CF261_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT269</td><td/><td/><td>_DFCB8E51_2FB1_48E6_AFEA_E3D220D24E41_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT27</td><td/><td/><td>_DD32E489_3BDC_4AF4_88C3_8B870FA6A7CB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT270</td><td/><td/><td>_22BCE8B9_E83D_432C_A401_FFFDEC9A6FB9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT271</td><td/><td/><td>_6976CBF8_4207_4D8C_839A_DBF320177307_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT272</td><td/><td/><td>_FD2B751F_C0DB_4875_BC63_77D766A6BA8F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT273</td><td/><td/><td>_37367EC4_16BD_4A28_A4CB_D37213BF181D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT274</td><td/><td/><td>_6BB10CE2_3F7E_47AC_B443_9150FC8C5963_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT275</td><td/><td/><td>_04FD801C_7CF2_4423_A16F_182EFD9C1895_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT276</td><td/><td/><td>_2627F7E9_7A29_40DA_9D25_342AA35E18A8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT277</td><td/><td/><td>_92948265_6512_4CDB_9DBB_698B6BD0CB06_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT278</td><td/><td/><td>_C3FAAE7C_90DC_474E_8647_935F7A6EBE00_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT279</td><td/><td/><td>_DB8D9D33_8ED1_451E_B8C2_A368782BE427_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT28</td><td/><td/><td>_1164FABC_327A_4D97_BD73_708599908AD2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT280</td><td/><td/><td>_F2FE7BAB_BE76_4CA4_B3BB_97A1D61B4778_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT281</td><td/><td/><td>_09C7F3E2_0063_4810_B075_84D2B63FFE44_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT282</td><td/><td/><td>_8AC4032F_CE80_47F1_8165_2CA6EE0E7714_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT283</td><td/><td/><td>_C0AA6928_E1AA_4661_AE3B_CF96D48F285F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT284</td><td/><td/><td>_D68EA103_1337_4FB5_BE19_1B9151BB5C35_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT285</td><td/><td/><td>_BB10B406_55D3_4558_9E8C_5A7658E5A5BF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT286</td><td/><td/><td>_2F5BFE54_1AC6_433B_9B18_8689E47B78E9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT287</td><td/><td/><td>_1BBC493B_17FF_4830_A3BB_354DD3722468_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT288</td><td/><td/><td>_DC495C8F_727E_4293_999F_0D89782DF434_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT289</td><td/><td/><td>_112801B4_7E3E_4DFF_8FA8_6A4BF3FB435F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT29</td><td/><td/><td>_7E85E611_E7DA_4F1E_B358_940923793ADC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT290</td><td/><td/><td>_8CA6597E_9EEC_494C_A17C_119C533B759E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT291</td><td/><td/><td>_5243CA2F_AF1C_49B6_B0DF_33FC88808712_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT292</td><td/><td/><td>_2DFF1AAA_0F72_40BB_866D_D51C4D06C7CE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT293</td><td/><td/><td>_620A71F3_A3C6_4543_9F1C_B00D2D3CC587_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT294</td><td/><td/><td>_10C7C318_8C06_47C6_922C_6F1000D9EECA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT295</td><td/><td/><td>_AB8946BA_7292_4CCD_ACBD_1E3ADD8C740C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT296</td><td/><td/><td>_11E39CA6_DC1B_4F23_9E68_31BE8F8DE858_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT297</td><td/><td/><td>_E22CB4D9_4837_406A_B001_394D5DBE22FB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT298</td><td/><td/><td>_61AE775C_7F0F_4963_8EF8_2B7460EC6DDD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT299</td><td/><td/><td>_766DCE0B_972C_40FB_97E3_7D79074689A4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT3</td><td/><td/><td>_81587309_F18A_4E78_9737_3B754A294948_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT30</td><td/><td/><td>_7B324F31_1A1E_4228_A3D5_1397469C2565_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT300</td><td/><td/><td>_5A4D1856_4DE6_4A5A_A8BA_93BDB76FA52E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT301</td><td/><td/><td>_CD89AB36_96BD_4550_B959_C598B73EC73D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT302</td><td/><td/><td>_D5B56F35_FD59_4FAF_AC61_9DAAB3511A78_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT303</td><td/><td/><td>_11F5A06D_5D42_4E3A_AE96_619652FDF9F2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT304</td><td/><td/><td>_BB298FCA_7AC3_47A8_AEC5_8935D2CF9ACF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT305</td><td/><td/><td>_D676165D_9E1D_424D_BCF7_B2B1C79ADFA8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT306</td><td/><td/><td>_AD23E536_8C93_4FF1_85DD_2EE58B161BFF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT31</td><td/><td/><td>_47F3BCB6_E37D_4FD3_BEEF_D2771785EC85_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT32</td><td/><td/><td>_2D8D31ED_0E88_4999_9704_6B0CA861DECF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT33</td><td/><td/><td>_DF083055_F883_4AD3_8A12_0402CCC6863F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT34</td><td/><td/><td>_EABADEAF_D613_4992_95CD_69A75A47AEAC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT35</td><td/><td/><td>_68EB34D5_1124_4F19_B2CE_FCB48AF9F1E9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT36</td><td/><td/><td>_80F1E79C_8F3F_4A3C_A9A0_6AE5CFEDF996_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT37</td><td/><td/><td>_D4792B1D_3482_4BA1_BD78_351B6890754E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT38</td><td/><td/><td>_1F6E9410_D83B_4AA2_89CC_C22C9DE209F5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT39</td><td/><td/><td>_38F864E1_DB3F_493A_89A5_FCC9713CDA04_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT4</td><td/><td/><td>_111D0535_96E2_46ED_B5A8_77BE2C4FF8AD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT40</td><td/><td/><td>_6956CC56_B52A_4C1C_8130_A148951675D3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT41</td><td/><td/><td>_B82A0BBD_4B5A_4042_BEB4_82948BEE5417_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT42</td><td/><td/><td>_822A69E3_6FC3_4BD0_A939_E9A56FBBAB7B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT43</td><td/><td/><td>_AFABC2BD_3F49_472B_95E1_9AFB413537B8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT44</td><td/><td/><td>_1C4B91E9_27FD_43FB_B827_0AF7D9A612EA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT45</td><td/><td/><td>_53B71056_2D82_4284_84AE_C52E38A7E457_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT46</td><td/><td/><td>_3962C3D0_1502_4961_8193_D64C865F87FA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT47</td><td/><td/><td>_7774B5FA_9221_4678_9554_7A55B3F6562F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT48</td><td/><td/><td>_69F132FA_AB1D_4DA0_9336_38944586C29F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT49</td><td/><td/><td>_78AFC4DA_1254_4EF5_9169_6B265690701C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT5</td><td/><td/><td>_78ABC604_6B5E_4291_9480_008232A62C86_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT50</td><td/><td/><td>_72BD1FE5_074B_466B_A4BF_19AA5083EE21_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT51</td><td/><td/><td>_084E1CF5_B94E_439F_BF6E_2392D98E961E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT52</td><td/><td/><td>_5F0F3EDC_C556_475A_B49A_48CECCA51407_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT53</td><td/><td/><td>_2AC54C1B_504A_4168_B4DA_F231EC13C0D0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT54</td><td/><td/><td>_82AC6F2A_C812_492A_AA3F_F9B3BE592412_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT55</td><td/><td/><td>_B40CC5D4_2381_4760_9927_6AA6212FC1CE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT56</td><td/><td/><td>_C3C1E890_5CC8_446D_A079_124C37EC360D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT57</td><td/><td/><td>_103F6508_EFBB_4700_8E38_61974AA68BB9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT58</td><td/><td/><td>_728DD000_EF55_458D_B692_B460A01C9132_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT59</td><td/><td/><td>_7A8F2C35_0CB1_478F_9B36_7C5EAF5A2227_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT6</td><td/><td/><td>_55AB8E5F_C7F0_489E_B960_B62EA1654F78_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT60</td><td/><td/><td>_FDA3FF5B_8DFD_42B9_B63D_A3466AFC65A1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT61</td><td/><td/><td>_3D0A99A3_81DF_4216_8971_2D71EF4D03B8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT62</td><td/><td/><td>_7A027D90_74E9_42A4_88D0_5A0AB5852C34_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT63</td><td/><td/><td>_0EE553A3_0C49_49FC_B5BB_3FED9B666FD6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT64</td><td/><td/><td>_D5EE4F4B_8CB4_4FB8_A702_C7B2606E5B37_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT65</td><td/><td/><td>_A504E2DB_97F1_4519_8C69_BEA3631103EB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT66</td><td/><td/><td>_B9A23A6A_9F8C_4C7F_8434_C4F3997B67B6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT67</td><td/><td/><td>_ADBCEBEE_BF07_4E7B_AF24_80ECF592FF82_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT68</td><td/><td/><td>_F37174C5_B73C_4A3A_A73D_5C32E92C0361_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT69</td><td/><td/><td>_ECA08A47_9E20_4D0B_992E_C14760065327_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT7</td><td/><td/><td>_060DCE4A_D884_46FF_89E5_A8B442726E48_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT70</td><td/><td/><td>_7269F82D_2273_47E0_AF23_9B6694D4C1F5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT71</td><td/><td/><td>_F400BCAA_FE05_4B7F_BBC4_0A3222427BEA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT72</td><td/><td/><td>_55D405EC_D9E1_4D42_9844_C4DDBFB1886E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT73</td><td/><td/><td>_978F0455_D1E0_49FC_9877_D21DA4F69D18_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT74</td><td/><td/><td>_E1CB4850_29D2_44A2_B3CE_664546DE9B48_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT75</td><td/><td/><td>_7CB97B9A_24D0_41D8_A466_EC9F1A2BD61C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT76</td><td/><td/><td>_BE3FD7D4_8EDF_49F5_919C_D99CD2FBA825_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT77</td><td/><td/><td>_D12C24BF_E2C9_4188_8F08_ACBC31D26D6D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT78</td><td/><td/><td>_A8926669_6171_4421_904B_87260247E1F6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT79</td><td/><td/><td>_E83BFB4E_833D_4355_9F3B_36FE150CAD63_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT8</td><td/><td/><td>_CA31A9A2_730E_4654_BF2B_DC5E8024A728_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT80</td><td/><td/><td>_7E9B0E1A_1B36_482A_B42D_BE2C95FC14B0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT81</td><td/><td/><td>_B0EE1B4C_6F61_428D_AF4E_69C0DBB9B809_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT82</td><td/><td/><td>_58AA3F29_DFE8_46D0_8C31_02CED8AB6B87_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT83</td><td/><td/><td>_678D27CA_636D_4FBE_BC52_74C15911E0C3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT84</td><td/><td/><td>_ED4D2B8C_0897_42AC_B3BC_6B107F31C14F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT85</td><td/><td/><td>_6292EC54_2D45_4450_8CC1_B3AE422A02A4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT86</td><td/><td/><td>_11493A23_A313_467B_9218_80509D30C626_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT87</td><td/><td/><td>_6687064F_527E_4995_B88E_1DA01841DCA0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT88</td><td/><td/><td>_EE0EA0C1_4842_48D4_B569_01B1499D182E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT89</td><td/><td/><td>_091D9321_29E0_4EDA_BD71_94F902AAA019_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT9</td><td/><td/><td>_A0715F54_9477_4B90_87C7_C0CCFA4FF71A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT90</td><td/><td/><td>_67048BF1_FB82_443E_9F14_477D854DDD01_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT91</td><td/><td/><td>_C27FE064_357A_4A63_AFED_BB93BC9674D3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT92</td><td/><td/><td>_67926DC5_61D5_4842_9928_FD71B9B2ACC0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT93</td><td/><td/><td>_E4FCA4FA_3751_4CC2_91C9_E1836FDEF64F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT94</td><td/><td/><td>_4D44EC58_2556_40C2_A9E5_21E714F08D52_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT95</td><td/><td/><td>_D03BA852_502B_4DA9_8904_5F6C47AD9D9A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT96</td><td/><td/><td>_25C32224_D271_4FA9_8934_64325FA53CE5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT97</td><td/><td/><td>_E7E098C3_1CD4_47C7_9B18_71C9D6AE93BB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT98</td><td/><td/><td>_34BB29A7_EB4A_42D6_AC21_C08DDD5FEC09_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT99</td><td/><td/><td>_EE5CDDDE_4985_4102_A708_440CD4EC922E_FILTER</td><td/><td/><td/><td/></row>
	</table>

	<table name="ISCustomActionReference">
		<col key="yes" def="s72">Action_</col>
		<col def="S0">Description</col>
		<col def="S255">FileType</col>
		<col def="S255">ISCAReferenceFilePath</col>
	</table>

	<table name="ISDIMDependency">
		<col key="yes" def="s72">ISDIMReference_</col>
		<col def="s255">RequiredUUID</col>
		<col def="S255">RequiredMajorVersion</col>
		<col def="S255">RequiredMinorVersion</col>
		<col def="S255">RequiredBuildVersion</col>
		<col def="S255">RequiredRevisionVersion</col>
	</table>

	<table name="ISDIMReference">
		<col key="yes" def="s72">ISDIMReference</col>
		<col def="S0">ISBuildSourcePath</col>
	</table>

	<table name="ISDIMReferenceDependencies">
		<col key="yes" def="s72">ISDIMReference_Parent</col>
		<col key="yes" def="s72">ISDIMDependency_</col>
	</table>

	<table name="ISDIMVariable">
		<col key="yes" def="s72">ISDIMVariable</col>
		<col def="s72">ISDIMReference_</col>
		<col def="s0">Name</col>
		<col def="S0">NewValue</col>
		<col def="I4">Type</col>
	</table>

	<table name="ISDLLWrapper">
		<col key="yes" def="s72">EntryPoint</col>
		<col def="I4">Type</col>
		<col def="s0">Source</col>
		<col def="s255">Target</col>
	</table>

	<table name="ISDRMFile">
		<col key="yes" def="s72">ISDRMFile</col>
		<col def="S72">File_</col>
		<col def="S72">ISDRMLicense_</col>
		<col def="s255">Shell</col>
	</table>

	<table name="ISDRMFileAttribute">
		<col key="yes" def="s72">ISDRMFile_</col>
		<col key="yes" def="s72">Property</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISDRMLicense">
		<col key="yes" def="s72">ISDRMLicense</col>
		<col def="S255">Description</col>
		<col def="S50">ProjectVersion</col>
		<col def="I4">Attributes</col>
		<col def="S255">LicenseNumber</col>
		<col def="S255">RequestCode</col>
		<col def="S255">ResponseCode</col>
	</table>

	<table name="ISDependency">
		<col key="yes" def="S50">ISDependency</col>
		<col def="I2">Exclude</col>
	</table>

	<table name="ISDisk1File">
		<col key="yes" def="s72">ISDisk1File</col>
		<col def="s255">ISBuildSourcePath</col>
		<col def="I4">Disk</col>
	</table>

	<table name="ISDynamicFile">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="s255">SourceFolder</col>
		<col def="I2">IncludeFlags</col>
		<col def="S0">IncludeFiles</col>
		<col def="S0">ExcludeFiles</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISFeatureDIMReferences">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">ISDIMReference_</col>
	</table>

	<table name="ISFeatureMergeModuleExcludes">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s255">ModuleID</col>
		<col key="yes" def="i2">Language</col>
	</table>

	<table name="ISFeatureMergeModules">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s255">ISMergeModule_</col>
		<col key="yes" def="i2">Language_</col>
	</table>

	<table name="ISFeatureSetupPrerequisites">
		<col key="yes" def="s38">Feature_</col>
		<col key="yes" def="s72">ISSetupPrerequisites_</col>
	</table>

	<table name="ISFileManifests">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">Manifest_</col>
	</table>

	<table name="ISIISItem">
		<col key="yes" def="s72">ISIISItem</col>
		<col def="S72">ISIISItem_Parent</col>
		<col def="L255">DisplayName</col>
		<col def="i4">Type</col>
		<col def="S72">Component_</col>
	</table>

	<table name="ISIISProperty">
		<col key="yes" def="s72">ISIISProperty</col>
		<col key="yes" def="s72">ISIISItem_</col>
		<col def="S0">Schema</col>
		<col def="S255">FriendlyName</col>
		<col def="I4">MetaDataProp</col>
		<col def="I4">MetaDataType</col>
		<col def="I4">MetaDataUserType</col>
		<col def="I4">MetaDataAttributes</col>
		<col def="L0">MetaDataValue</col>
		<col def="I4">Order</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISInstallScriptAction">
		<col key="yes" def="s72">EntryPoint</col>
		<col def="I4">Type</col>
		<col def="s72">Source</col>
		<col def="S255">Target</col>
	</table>

	<table name="ISLanguage">
		<col key="yes" def="s50">ISLanguage</col>
		<col def="I2">Included</col>
		<row><td>1033</td><td>1</td></row>
	</table>

	<table name="ISLinkerLibrary">
		<col key="yes" def="s72">ISLinkerLibrary</col>
		<col def="s255">Library</col>
		<col def="i4">Order</col>
		<row><td>isrt.obl</td><td>isrt.obl</td><td>2</td></row>
		<row><td>iswi.obl</td><td>iswi.obl</td><td>1</td></row>
	</table>

	<table name="ISLocalControl">
		<col key="yes" def="s72">Dialog_</col>
		<col key="yes" def="s50">Control_</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="I4">Attributes</col>
		<col def="I2">X</col>
		<col def="I2">Y</col>
		<col def="I2">Width</col>
		<col def="I2">Height</col>
		<col def="S72">Binary_</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="ISLocalDialog">
		<col key="yes" def="S50">Dialog_</col>
		<col key="yes" def="S50">ISLanguage_</col>
		<col def="I4">Attributes</col>
		<col def="S72">TextStyle_</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
	</table>

	<table name="ISLocalRadioButton">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
	</table>

	<table name="ISLockPermissions">
		<col key="yes" def="s72">LockObject</col>
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="S255">Domain</col>
		<col key="yes" def="s255">User</col>
		<col def="I4">Permission</col>
		<col def="I4">Attributes</col>
	</table>

	<table name="ISLogicalDisk">
		<col key="yes" def="i2">DiskId</col>
		<col key="yes" def="s255">ISProductConfiguration_</col>
		<col key="yes" def="s255">ISRelease_</col>
		<col def="i2">LastSequence</col>
		<col def="L64">DiskPrompt</col>
		<col def="S255">Cabinet</col>
		<col def="S32">VolumeLabel</col>
		<col def="S32">Source</col>
	</table>

	<table name="ISLogicalDiskFeatures">
		<col key="yes" def="i2">ISLogicalDisk_</col>
		<col key="yes" def="s255">ISProductConfiguration_</col>
		<col key="yes" def="s255">ISRelease_</col>
		<col key="yes" def="S38">Feature_</col>
		<col def="i2">Sequence</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISMergeModule">
		<col key="yes" def="s255">ISMergeModule</col>
		<col key="yes" def="i2">Language</col>
		<col def="s255">Name</col>
		<col def="S255">Destination</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISMergeModuleCfgValues">
		<col key="yes" def="s255">ISMergeModule_</col>
		<col key="yes" def="i2">Language_</col>
		<col key="yes" def="s72">ModuleConfiguration_</col>
		<col def="L0">Value</col>
		<col def="i2">Format</col>
		<col def="L255">Type</col>
		<col def="L255">ContextData</col>
		<col def="L255">DefaultValue</col>
		<col def="I2">Attributes</col>
		<col def="L255">DisplayName</col>
		<col def="L255">Description</col>
		<col def="L255">HelpLocation</col>
		<col def="L255">HelpKeyword</col>
	</table>

	<table name="ISObject">
		<col key="yes" def="s50">ObjectName</col>
		<col def="s15">Language</col>
	</table>

	<table name="ISObjectProperty">
		<col key="yes" def="S50">ObjectName</col>
		<col key="yes" def="S50">Property</col>
		<col def="S0">Value</col>
		<col def="I2">IncludeInBuild</col>
	</table>

	<table name="ISPatchConfigImage">
		<col key="yes" def="S72">PatchConfiguration_</col>
		<col key="yes" def="s72">UpgradedImage_</col>
	</table>

	<table name="ISPatchConfiguration">
		<col key="yes" def="s72">Name</col>
		<col def="i2">CanPCDiffer</col>
		<col def="i2">CanPVDiffer</col>
		<col def="i2">IncludeWholeFiles</col>
		<col def="i2">LeaveDecompressed</col>
		<col def="i2">OptimizeForSize</col>
		<col def="i2">EnablePatchCache</col>
		<col def="S0">PatchCacheDir</col>
		<col def="i4">Flags</col>
		<col def="S0">PatchGuidsToReplace</col>
		<col def="s0">TargetProductCodes</col>
		<col def="s50">PatchGuid</col>
		<col def="s0">OutputPath</col>
		<col def="i2">MinMsiVersion</col>
		<col def="I4">Attributes</col>
	</table>

	<table name="ISPatchConfigurationProperty">
		<col key="yes" def="S72">ISPatchConfiguration_</col>
		<col key="yes" def="S50">Property</col>
		<col def="S50">Value</col>
	</table>

	<table name="ISPatchExternalFile">
		<col key="yes" def="s50">Name</col>
		<col key="yes" def="s13">ISUpgradedImage_</col>
		<col def="s72">FileKey</col>
		<col def="s255">FilePath</col>
	</table>

	<table name="ISPatchWholeFile">
		<col key="yes" def="s50">UpgradedImage</col>
		<col key="yes" def="s72">FileKey</col>
		<col def="S72">Component</col>
	</table>

	<table name="ISPathVariable">
		<col key="yes" def="s72">ISPathVariable</col>
		<col def="S255">Value</col>
		<col def="S255">TestValue</col>
		<col def="i4">Type</col>
		<row><td>CommonFilesFolder</td><td/><td/><td>1</td></row>
		<row><td>CrewChiefV2</td><td>CrewChiefV2\CrewChiefV2.csproj</td><td/><td>2</td></row>
		<row><td>ISPROJECTDIR</td><td/><td/><td>1</td></row>
		<row><td>ISProductFolder</td><td/><td/><td>1</td></row>
		<row><td>ISProjectDataFolder</td><td/><td/><td>1</td></row>
		<row><td>ISProjectFolder</td><td/><td/><td>1</td></row>
		<row><td>ProgramFilesFolder</td><td/><td/><td>1</td></row>
		<row><td>SystemFolder</td><td/><td/><td>1</td></row>
		<row><td>WindowsFolder</td><td/><td/><td>1</td></row>
	</table>

	<table name="ISPowerShellWrap">
		<col key="yes" def="s72">Action_</col>
		<col key="yes" def="s72">Name</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISProductConfiguration">
		<col key="yes" def="s72">ISProductConfiguration</col>
		<col def="S255">ProductConfigurationFlags</col>
		<col def="I4">GeneratePackageCode</col>
		<row><td>Express</td><td/><td>1</td></row>
	</table>

	<table name="ISProductConfigurationInstance">
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="i2">InstanceId</col>
		<col key="yes" def="s72">Property</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISProductConfigurationProperty">
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s72">Property</col>
		<col def="L255">Value</col>
	</table>

	<table name="ISRelease">
		<col key="yes" def="s72">ISRelease</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="s255">BuildLocation</col>
		<col def="s255">PackageName</col>
		<col def="i4">Type</col>
		<col def="s0">SupportedLanguagesUI</col>
		<col def="i4">MsiSourceType</col>
		<col def="i4">ReleaseType</col>
		<col def="s72">Platforms</col>
		<col def="S0">SupportedLanguagesData</col>
		<col def="s6">DefaultLanguage</col>
		<col def="i4">SupportedOSs</col>
		<col def="s50">DiskSize</col>
		<col def="i4">DiskSizeUnit</col>
		<col def="i4">DiskClusterSize</col>
		<col def="S0">ReleaseFlags</col>
		<col def="i4">DiskSpanning</col>
		<col def="S255">SynchMsi</col>
		<col def="s255">MediaLocation</col>
		<col def="S255">URLLocation</col>
		<col def="S255">DigitalURL</col>
		<col def="S255">DigitalPVK</col>
		<col def="S255">DigitalSPC</col>
		<col def="S255">Password</col>
		<col def="S255">VersionCopyright</col>
		<col def="i4">Attributes</col>
		<col def="S255">CDBrowser</col>
		<col def="S255">DotNetBuildConfiguration</col>
		<col def="S255">MsiCommandLine</col>
		<col def="I4">ISSetupPrerequisiteLocation</col>
		<row><td>CD_ROM</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>0</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>650</td><td>0</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>Custom</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>2</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>100</td><td>0</td><td>1024</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-10</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>8.75</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-18</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>15.83</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-5</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>4.38</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>DVD-9</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>Default</td><td>3</td><td>1033</td><td>0</td><td>2</td><td>Intel</td><td/><td>1033</td><td>0</td><td>7.95</td><td>1</td><td>2048</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>75805</td><td/><td/><td/><td>3</td></row>
		<row><td>SingleImage</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>PackageName</td><td>1</td><td>1033</td><td>0</td><td>1</td><td>Intel</td><td/><td>1033</td><td>0</td><td>0</td><td>0</td><td>0</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>108573</td><td/><td/><td/><td>3</td></row>
		<row><td>WebDeployment</td><td>Express</td><td>&lt;ISProjectDataFolder&gt;</td><td>PackageName</td><td>4</td><td>1033</td><td>2</td><td>1</td><td>Intel</td><td/><td>1033</td><td>0</td><td>0</td><td>0</td><td>0</td><td/><td>0</td><td/><td>MediaLocation</td><td/><td>http://</td><td/><td/><td/><td/><td>124941</td><td/><td/><td/><td>3</td></row>
	</table>

	<table name="ISReleaseASPublishInfo">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="S0">Property</col>
		<col def="S0">Value</col>
	</table>

	<table name="ISReleaseExtended">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="I4">WebType</col>
		<col def="S255">WebURL</col>
		<col def="I4">WebCabSize</col>
		<col def="S255">OneClickCabName</col>
		<col def="S255">OneClickHtmlName</col>
		<col def="S255">WebLocalCachePath</col>
		<col def="I4">EngineLocation</col>
		<col def="S255">Win9xMsiUrl</col>
		<col def="S255">WinNTMsiUrl</col>
		<col def="I4">ISEngineLocation</col>
		<col def="S255">ISEngineURL</col>
		<col def="I4">OneClickTargetBrowser</col>
		<col def="S255">DigitalCertificateIdNS</col>
		<col def="S255">DigitalCertificateDBaseNS</col>
		<col def="S255">DigitalCertificatePasswordNS</col>
		<col def="I4">DotNetRedistLocation</col>
		<col def="S255">DotNetRedistURL</col>
		<col def="I4">DotNetVersion</col>
		<col def="S255">DotNetBaseLanguage</col>
		<col def="S0">DotNetLangaugePacks</col>
		<col def="S255">DotNetFxCmdLine</col>
		<col def="S255">DotNetLangPackCmdLine</col>
		<col def="S50">JSharpCmdLine</col>
		<col def="I4">Attributes</col>
		<col def="I4">JSharpRedistLocation</col>
		<col def="I4">MsiEngineVersion</col>
		<col def="S255">WinMsi30Url</col>
		<col def="S255">CertPassword</col>
		<row><td>CD_ROM</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>Custom</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-10</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-18</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-5</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>DVD-9</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>0</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>SingleImage</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>install</td><td>install</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>1</td><td>http://www.installengine.com/Msiengine20</td><td>http://www.installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
		<row><td>WebDeployment</td><td>Express</td><td>0</td><td>http://</td><td>0</td><td>setup</td><td>Default</td><td>[LocalAppDataFolder]Downloaded Installations</td><td>2</td><td>http://www.Installengine.com/Msiengine20</td><td>http://www.Installengine.com/Msiengine20</td><td>0</td><td>http://www.installengine.com/cert05/isengine</td><td>0</td><td/><td/><td/><td>3</td><td>http://www.installengine.com/cert05/dotnetfx</td><td>0</td><td>1033</td><td/><td/><td/><td/><td/><td>3</td><td/><td>http://www.installengine.com/Msiengine30</td><td/></row>
	</table>

	<table name="ISReleaseProperty">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s0">Value</col>
	</table>

	<table name="ISReleasePublishInfo">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col def="S255">Repository</col>
		<col def="S255">DisplayName</col>
		<col def="S255">Publisher</col>
		<col def="S255">Description</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISSQLConnection">
		<col key="yes" def="s72">ISSQLConnection</col>
		<col def="s255">Server</col>
		<col def="s255">Database</col>
		<col def="s255">UserName</col>
		<col def="s255">Password</col>
		<col def="s255">Authentication</col>
		<col def="i2">Attributes</col>
		<col def="i2">Order</col>
		<col def="S0">Comments</col>
		<col def="I4">CmdTimeout</col>
		<col def="S0">BatchSeparator</col>
		<col def="S0">ScriptVersion_Table</col>
		<col def="S0">ScriptVersion_Column</col>
	</table>

	<table name="ISSQLConnectionDBServer">
		<col key="yes" def="s72">ISSQLConnectionDBServer</col>
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col key="yes" def="s72">ISSQLDBMetaData_</col>
		<col def="i2">Order</col>
	</table>

	<table name="ISSQLConnectionScript">
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="i2">Order</col>
	</table>

	<table name="ISSQLDBMetaData">
		<col key="yes" def="s72">ISSQLDBMetaData</col>
		<col def="S0">DisplayName</col>
		<col def="S0">AdoDriverName</col>
		<col def="S0">AdoCxnDriver</col>
		<col def="S0">AdoCxnServer</col>
		<col def="S0">AdoCxnDatabase</col>
		<col def="S0">AdoCxnUserID</col>
		<col def="S0">AdoCxnPassword</col>
		<col def="S0">AdoCxnWindowsSecurity</col>
		<col def="S0">AdoCxnNetLibrary</col>
		<col def="S0">TestDatabaseCmd</col>
		<col def="S0">TestTableCmd</col>
		<col def="S0">VersionInfoCmd</col>
		<col def="S0">VersionBeginToken</col>
		<col def="S0">VersionEndToken</col>
		<col def="S0">LocalInstanceNames</col>
		<col def="S0">CreateDbCmd</col>
		<col def="S0">SwitchDbCmd</col>
		<col def="I4">ISAttributes</col>
		<col def="S0">TestTableCmd2</col>
		<col def="S0">WinAuthentUserId</col>
		<col def="S0">DsnODBCName</col>
		<col def="S0">AdoCxnPort</col>
		<col def="S0">AdoCxnAdditional</col>
		<col def="S0">QueryDatabasesCmd</col>
		<col def="S0">CreateTableCmd</col>
		<col def="S0">InsertRecordCmd</col>
		<col def="S0">SelectTableCmd</col>
		<col def="S0">ScriptVersion_Table</col>
		<col def="S0">ScriptVersion_Column</col>
		<col def="S0">ScriptVersion_ColumnType</col>
	</table>

	<table name="ISSQLRequirement">
		<col key="yes" def="s72">ISSQLRequirement</col>
		<col key="yes" def="s72">ISSQLConnection_</col>
		<col def="S15">MajorVersion</col>
		<col def="S25">ServicePackLevel</col>
		<col def="i4">Attributes</col>
		<col def="S72">ISSQLConnectionDBServer_</col>
	</table>

	<table name="ISSQLScriptError">
		<col key="yes" def="i4">ErrNumber</col>
		<col key="yes" def="S72">ISSQLScriptFile_</col>
		<col def="i2">ErrHandling</col>
		<col def="L255">Message</col>
		<col def="i2">Attributes</col>
	</table>

	<table name="ISSQLScriptFile">
		<col key="yes" def="s72">ISSQLScriptFile</col>
		<col def="s72">Component_</col>
		<col def="i2">Scheduling</col>
		<col def="L255">InstallText</col>
		<col def="L255">UninstallText</col>
		<col def="S0">ISBuildSourcePath</col>
		<col def="S0">Comments</col>
		<col def="i2">ErrorHandling</col>
		<col def="i2">Attributes</col>
		<col def="S255">Version</col>
		<col def="S255">Condition</col>
		<col def="S0">DisplayName</col>
	</table>

	<table name="ISSQLScriptImport">
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="S255">Server</col>
		<col def="S255">Database</col>
		<col def="S255">UserName</col>
		<col def="S255">Password</col>
		<col def="i4">Authentication</col>
		<col def="S0">IncludeTables</col>
		<col def="S0">ExcludeTables</col>
		<col def="i4">Attributes</col>
	</table>

	<table name="ISSQLScriptReplace">
		<col key="yes" def="s72">ISSQLScriptReplace</col>
		<col key="yes" def="s72">ISSQLScriptFile_</col>
		<col def="S0">Search</col>
		<col def="S0">Replace</col>
		<col def="i4">Attributes</col>
	</table>

	<table name="ISScriptFile">
		<col key="yes" def="s255">ISScriptFile</col>
	</table>

	<table name="ISSelfReg">
		<col key="yes" def="s72">FileKey</col>
		<col def="I2">Cost</col>
		<col def="I2">Order</col>
		<col def="S50">CmdLine</col>
	</table>

	<table name="ISSetupFile">
		<col key="yes" def="s72">ISSetupFile</col>
		<col def="S255">FileName</col>
		<col def="V0">Stream</col>
		<col def="S50">Language</col>
		<col def="I2">Splash</col>
		<col def="S0">Path</col>
	</table>

	<table name="ISSetupPrerequisites">
		<col key="yes" def="s72">ISSetupPrerequisites</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I2">Order</col>
		<col def="I2">ISSetupLocation</col>
		<col def="S255">ISReleaseFlags</col>
	</table>

	<table name="ISSetupType">
		<col key="yes" def="s38">ISSetupType</col>
		<col def="L255">Description</col>
		<col def="L255">Display_Name</col>
		<col def="i2">Display</col>
		<col def="S255">Comments</col>
		<row><td>Custom</td><td>##IDS__IsSetupTypeMinDlg_ChooseFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Custom##</td><td>3</td><td/></row>
		<row><td>Minimal</td><td>##IDS__IsSetupTypeMinDlg_MinimumFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Minimal##</td><td>2</td><td/></row>
		<row><td>Typical</td><td>##IDS__IsSetupTypeMinDlg_AllFeatures##</td><td>##IDS__IsSetupTypeMinDlg_Typical##</td><td>1</td><td/></row>
	</table>

	<table name="ISSetupTypeFeatures">
		<col key="yes" def="s38">ISSetupType_</col>
		<col key="yes" def="s38">Feature_</col>
		<row><td>Custom</td><td>AlwaysInstall</td></row>
		<row><td>Minimal</td><td>AlwaysInstall</td></row>
		<row><td>Typical</td><td>AlwaysInstall</td></row>
	</table>

	<table name="ISStorages">
		<col key="yes" def="s72">Name</col>
		<col def="S0">ISBuildSourcePath</col>
	</table>

	<table name="ISString">
		<col key="yes" def="s255">ISString</col>
		<col key="yes" def="s50">ISLanguage_</col>
		<col def="S0">Value</col>
		<col def="I2">Encoded</col>
		<col def="S0">Comment</col>
		<col def="I4">TimeStamp</col>
		<row><td>COMPANY_NAME</td><td>1033</td><td>Britton IT Ltd</td><td>0</td><td/><td>337857488</td></row>
		<row><td>DN_AlwaysInstall</td><td>1033</td><td>Always Install</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_COLOR</td><td>1033</td><td>The color settings of your system are not adequate for running [ProductName].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_DOTNETVERSION40CLIENT</td><td>1033</td><td>Microsoft .NET Framework 4.0 Client Package or greater needs to be installed for this installation to continue.</td><td>0</td><td/><td>337877968</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_OS</td><td>1033</td><td>The operating system is not adequate for running [ProductName].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_PROCESSOR</td><td>1033</td><td>The processor is not adequate for running [ProductName].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_RAM</td><td>1033</td><td>The amount of RAM is not adequate for running [ProductName].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDPROP_EXPRESS_LAUNCH_CONDITION_SCREEN</td><td>1033</td><td>The screen resolution is not adequate for running [ProductName].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPACT</td><td>1033</td><td>Compact</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPACT_DESC</td><td>1033</td><td>Compact Description</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPLETE</td><td>1033</td><td>Complete</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDPROP_SETUPTYPE_COMPLETE_DESC</td><td>1033</td><td>Complete</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM</td><td>1033</td><td>Custom</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM_DESC</td><td>1033</td><td>Custom Description</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDPROP_SETUPTYPE_CUSTOM_DESC_PRO</td><td>1033</td><td>Custom</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDPROP_SETUPTYPE_TYPICAL</td><td>1033</td><td>Typical</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDPROP_SETUPTYPE_TYPICAL_DESC</td><td>1033</td><td>Typical Description</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_1</td><td>1033</td><td>[1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_1b</td><td>1033</td><td>[1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_1c</td><td>1033</td><td>[1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_1d</td><td>1033</td><td>[1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Advertising</td><td>1033</td><td>Advertising application</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_AllocatingRegistry</td><td>1033</td><td>Allocating registry space</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_AppCommandLine</td><td>1033</td><td>Application: [1], Command line: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_AppId</td><td>1033</td><td>AppId: [1]{{, AppType: [2]}}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_AppIdAppTypeRSN</td><td>1033</td><td>AppId: [1]{{, AppType: [2], Users: [3], RSN: [4]}}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Application</td><td>1033</td><td>Application: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_BindingExes</td><td>1033</td><td>Binding executables</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_ClassId</td><td>1033</td><td>Class ID: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_ClsID</td><td>1033</td><td>Class ID: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_ComponentIDQualifier</td><td>1033</td><td>Component ID: [1], Qualifier: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_ComponentIdQualifier2</td><td>1033</td><td>Component ID: [1], Qualifier: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace</td><td>1033</td><td>Computing space requirements</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace2</td><td>1033</td><td>Computing space requirements</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_ComputingSpace3</td><td>1033</td><td>Computing space requirements</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_ContentTypeExtension</td><td>1033</td><td>MIME Content Type: [1], Extension: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_ContentTypeExtension2</td><td>1033</td><td>MIME Content Type: [1], Extension: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_CopyingNetworkFiles</td><td>1033</td><td>Copying files to the network</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_CopyingNewFiles</td><td>1033</td><td>Copying new files</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingDuplicate</td><td>1033</td><td>Creating duplicate files</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingFolders</td><td>1033</td><td>Creating folders</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingIISRoots</td><td>1033</td><td>Creating IIS Virtual Roots...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_CreatingShortcuts</td><td>1033</td><td>Creating shortcuts</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_DeletingServices</td><td>1033</td><td>Deleting services</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_EnvironmentStrings</td><td>1033</td><td>Updating environment strings</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_EvaluateLaunchConditions</td><td>1033</td><td>Evaluating launch conditions</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Extension</td><td>1033</td><td>Extension: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Extension2</td><td>1033</td><td>Extension: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Feature</td><td>1033</td><td>Feature: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FeatureColon</td><td>1033</td><td>Feature: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_File</td><td>1033</td><td>File: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_File2</td><td>1033</td><td>File: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FileDependencies</td><td>1033</td><td>File: [1],  Dependencies: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir</td><td>1033</td><td>File: [1], Directory: [9]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir2</td><td>1033</td><td>File: [1], Directory: [9]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FileDir3</td><td>1033</td><td>File: [1], Directory: [9]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize</td><td>1033</td><td>File: [1], Directory: [9], Size: [6]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize2</td><td>1033</td><td>File: [1],  Directory: [9],  Size: [6]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize3</td><td>1033</td><td>File: [1],  Directory: [9],  Size: [6]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirSize4</td><td>1033</td><td>File: [1],  Directory: [2],  Size: [3]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FileDirectorySize</td><td>1033</td><td>File: [1],  Directory: [9],  Size: [6]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FileFolder</td><td>1033</td><td>File: [1], Folder: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FileFolder2</td><td>1033</td><td>File: [1], Folder: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FileSectionKeyValue</td><td>1033</td><td>File: [1],  Section: [2],  Key: [3], Value: [4]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FileSectionKeyValue2</td><td>1033</td><td>File: [1],  Section: [2],  Key: [3], Value: [4]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Folder</td><td>1033</td><td>Folder: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Folder1</td><td>1033</td><td>Folder: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Font</td><td>1033</td><td>Font: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Font2</td><td>1033</td><td>Font: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FoundApp</td><td>1033</td><td>Found application: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_FreeSpace</td><td>1033</td><td>Free space: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_GeneratingScript</td><td>1033</td><td>Generating script operations for action:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_ISLockPermissionsCost</td><td>1033</td><td>Gathering permissions information for objects...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_ISLockPermissionsInstall</td><td>1033</td><td>Applying permissions information for objects...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_InitializeODBCDirs</td><td>1033</td><td>Initializing ODBC directories</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_InstallODBC</td><td>1033</td><td>Installing ODBC components</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_InstallServices</td><td>1033</td><td>Installing new services</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_InstallingSystemCatalog</td><td>1033</td><td>Installing system catalog</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_KeyName</td><td>1033</td><td>Key: [1], Name: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_KeyNameValue</td><td>1033</td><td>Key: [1], Name: [2], Value: [3]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_LibId</td><td>1033</td><td>LibID: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Libid2</td><td>1033</td><td>LibID: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_MigratingFeatureStates</td><td>1033</td><td>Migrating feature states from related applications</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_MovingFiles</td><td>1033</td><td>Moving files</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_NameValueAction</td><td>1033</td><td>Name: [1], Value: [2], Action [3]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_NameValueAction2</td><td>1033</td><td>Name: [1], Value: [2], Action [3]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_PatchingFiles</td><td>1033</td><td>Patching files</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_ProgID</td><td>1033</td><td>ProgID: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_ProgID2</td><td>1033</td><td>ProgID: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_PropertySignature</td><td>1033</td><td>Property: [1], Signature: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_PublishProductFeatures</td><td>1033</td><td>Publishing product features</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_PublishProductInfo</td><td>1033</td><td>Publishing product information</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_PublishingQualifiedComponents</td><td>1033</td><td>Publishing qualified components</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RegUser</td><td>1033</td><td>Registering user</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterClassServer</td><td>1033</td><td>Registering class servers</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterExtensionServers</td><td>1033</td><td>Registering extension servers</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterFonts</td><td>1033</td><td>Registering fonts</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterMimeInfo</td><td>1033</td><td>Registering MIME info</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RegisterTypeLibs</td><td>1033</td><td>Registering type libraries</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringComPlus</td><td>1033</td><td>Registering COM+ Applications and Components</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringModules</td><td>1033</td><td>Registering modules</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringProduct</td><td>1033</td><td>Registering product</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RegisteringProgIdentifiers</td><td>1033</td><td>Registering program identifiers</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RemoveApps</td><td>1033</td><td>Removing applications</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingBackup</td><td>1033</td><td>Removing backup files</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingDuplicates</td><td>1033</td><td>Removing duplicated files</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingFiles</td><td>1033</td><td>Removing files</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingFolders</td><td>1033</td><td>Removing folders</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingIISRoots</td><td>1033</td><td>Removing IIS Virtual Roots...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingIni</td><td>1033</td><td>Removing INI file entries</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingMoved</td><td>1033</td><td>Removing moved files</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingODBC</td><td>1033</td><td>Removing ODBC components</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingRegistry</td><td>1033</td><td>Removing system registry values</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RemovingShortcuts</td><td>1033</td><td>Removing shortcuts</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_RollingBack</td><td>1033</td><td>Rolling back action:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_SearchForRelated</td><td>1033</td><td>Searching for related applications</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_SearchInstalled</td><td>1033</td><td>Searching for installed applications</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_SearchingQualifyingProducts</td><td>1033</td><td>Searching for qualifying products</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_SearchingQualifyingProducts2</td><td>1033</td><td>Searching for qualifying products</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Service</td><td>1033</td><td>Service: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Service2</td><td>1033</td><td>Service: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Service3</td><td>1033</td><td>Service: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Service4</td><td>1033</td><td>Service: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Shortcut</td><td>1033</td><td>Shortcut: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Shortcut1</td><td>1033</td><td>Shortcut: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_StartingServices</td><td>1033</td><td>Starting services</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_StoppingServices</td><td>1033</td><td>Stopping services</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishProductFeatures</td><td>1033</td><td>Unpublishing product features</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishQualified</td><td>1033</td><td>Unpublishing Qualified Components</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_UnpublishingProductInfo</td><td>1033</td><td>Unpublishing product information</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_UnregTypeLibs</td><td>1033</td><td>Unregistering type libraries</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterClassServers</td><td>1033</td><td>Unregister class servers</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterExtensionServers</td><td>1033</td><td>Unregistering extension servers</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisterModules</td><td>1033</td><td>Unregistering modules</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringComPlus</td><td>1033</td><td>Unregistering COM+ Applications and Components</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringFonts</td><td>1033</td><td>Unregistering fonts</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringMimeInfo</td><td>1033</td><td>Unregistering MIME info</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_UnregisteringProgramIds</td><td>1033</td><td>Unregistering program identifiers</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_UpdateComponentRegistration</td><td>1033</td><td>Updating component registration</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_UpdateEnvironmentStrings</td><td>1033</td><td>Updating environment strings</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_Validating</td><td>1033</td><td>Validating install</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_WritingINI</td><td>1033</td><td>Writing INI file values</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ACTIONTEXT_WritingRegistry</td><td>1033</td><td>Writing system registry values</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_BACK</td><td>1033</td><td>&lt; &amp;Back</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_CANCEL</td><td>1033</td><td>Cancel</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_CANCEL2</td><td>1033</td><td>&amp;Cancel</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_CHANGE</td><td>1033</td><td>&amp;Change...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_COST</td><td>1033</td><td>Costing COM+ application: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_INSTALL</td><td>1033</td><td>Installing COM+ application: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_COMPLUS_PROGRESSTEXT_UNINSTALL</td><td>1033</td><td>Uninstalling COM+ application: [1]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_DIALOG_TEXT2_DESCRIPTION</td><td>1033</td><td>Dialog Normal Description</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_DIALOG_TEXT_DESCRIPTION_EXTERIOR</td><td>1033</td><td>{&amp;TahomaBold10}Dialog Bold Title</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_DIALOG_TEXT_DESCRIPTION_INTERIOR</td><td>1033</td><td>{&amp;MSSansBold8}Dialog Bold Title</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_DIFX_AMD64</td><td>1033</td><td>[ProductName] requires an X64 processor. Click OK to exit the wizard.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_DIFX_IA64</td><td>1033</td><td>[ProductName] requires an IA64 processor. Click OK to exit the wizard.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_DIFX_X86</td><td>1033</td><td>[ProductName] requires an X86 processor. Click OK to exit the wizard.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_DatabaseFolder_InstallDatabaseTo</td><td>1033</td><td>Install [ProductName] database to:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_0</td><td>1033</td><td>{{Fatal error: }}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1</td><td>1033</td><td>Error [1]. </td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_10</td><td>1033</td><td>=== Logging started: [Date]  [Time] ===</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_100</td><td>1033</td><td>Could not remove shortcut [2]. Verify that the shortcut file exists and that you can access it.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_101</td><td>1033</td><td>Could not register type library for file [2].  Contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_102</td><td>1033</td><td>Could not unregister type library for file [2].  Contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_103</td><td>1033</td><td>Could not update the INI file [2][3].  Verify that the file exists and that you can access it.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_104</td><td>1033</td><td>Could not schedule file [2] to replace file [3] on reboot.  Verify that you have write permissions to file [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_105</td><td>1033</td><td>Error removing ODBC driver manager, ODBC error [2]: [3]. Contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_106</td><td>1033</td><td>Error installing ODBC driver manager, ODBC error [2]: [3]. Contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_107</td><td>1033</td><td>Error removing ODBC driver [4], ODBC error [2]: [3]. Verify that you have sufficient privileges to remove ODBC drivers.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_108</td><td>1033</td><td>Error installing ODBC driver [4], ODBC error [2]: [3]. Verify that the file [4] exists and that you can access it.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_109</td><td>1033</td><td>Error configuring ODBC data source [4], ODBC error [2]: [3]. Verify that the file [4] exists and that you can access it.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_11</td><td>1033</td><td>=== Logging stopped: [Date]  [Time] ===</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_110</td><td>1033</td><td>Service [2] ([3]) failed to start.  Verify that you have sufficient privileges to start system services.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_111</td><td>1033</td><td>Service [2] ([3]) could not be stopped.  Verify that you have sufficient privileges to stop system services.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_112</td><td>1033</td><td>Service [2] ([3]) could not be deleted.  Verify that you have sufficient privileges to remove system services.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_113</td><td>1033</td><td>Service [2] ([3]) could not be installed.  Verify that you have sufficient privileges to install system services.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_114</td><td>1033</td><td>Could not update environment variable [2].  Verify that you have sufficient privileges to modify environment variables.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_115</td><td>1033</td><td>You do not have sufficient privileges to complete this installation for all users of the machine.  Log on as an administrator and then retry this installation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_116</td><td>1033</td><td>Could not set file security for file [3]. Error: [2].  Verify that you have sufficient privileges to modify the security permissions for this file.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_117</td><td>1033</td><td>Component Services (COM+ 1.0) are not installed on this computer.  This installation requires Component Services in order to complete successfully.  Component Services are available on Windows 2000.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_118</td><td>1033</td><td>Error registering COM+ application.  Contact your support personnel for more information.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_119</td><td>1033</td><td>Error unregistering COM+ application.  Contact your support personnel for more information.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_12</td><td>1033</td><td>Action start [Time]: [1].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_120</td><td>1033</td><td>Removing older versions of this application</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_121</td><td>1033</td><td>Preparing to remove older versions of this application</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_122</td><td>1033</td><td>Error applying patch to file [2].  It has probably been updated by other means, and can no longer be modified by this patch.  For more information contact your patch vendor.  {{System Error: [3]}}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_123</td><td>1033</td><td>[2] cannot install one of its required products. Contact your technical support group.  {{System Error: [3].}}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_124</td><td>1033</td><td>The older version of [2] cannot be removed.  Contact your technical support group.  {{System Error [3].}}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_125</td><td>1033</td><td>The description for service '[2]' ([3]) could not be changed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_126</td><td>1033</td><td>The Windows Installer service cannot update the system file [2] because the file is protected by Windows.  You may need to update your operating system for this program to work correctly. {{Package version: [3], OS Protected version: [4]}}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_127</td><td>1033</td><td>The Windows Installer service cannot update the protected Windows file [2]. {{Package version: [3], OS Protected version: [4], SFP Error: [5]}}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_128</td><td>1033</td><td>The Windows Installer service cannot update one or more protected Windows files. SFP Error: [2]. List of protected files: [3]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_129</td><td>1033</td><td>User installations are disabled via policy on the machine.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_13</td><td>1033</td><td>Action ended [Time]: [1]. Return value [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_130</td><td>1033</td><td>This setup requires Internet Information Server 4.0 or higher for configuring IIS Virtual Roots. Please make sure that you have IIS 4.0 or higher.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_131</td><td>1033</td><td>This setup requires Administrator privileges for configuring IIS Virtual Roots.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1329</td><td>1033</td><td>A file that is required cannot be installed because the cabinet file [2] is not digitally signed. This may indicate that the cabinet file is corrupt.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1330</td><td>1033</td><td>A file that is required cannot be installed because the cabinet file [2] has an invalid digital signature. This may indicate that the cabinet file is corrupt.{ Error [3] was returned by WinVerifyTrust.}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1331</td><td>1033</td><td>Failed to correctly copy [2] file: CRC error.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1332</td><td>1033</td><td>Failed to correctly patch [2] file: CRC error.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1333</td><td>1033</td><td>Failed to correctly patch [2] file: CRC error.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1334</td><td>1033</td><td>The file '[2]' cannot be installed because the file cannot be found in cabinet file '[3]'. This could indicate a network error, an error reading from the CD-ROM, or a problem with this package.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1335</td><td>1033</td><td>The cabinet file '[2]' required for this installation is corrupt and cannot be used. This could indicate a network error, an error reading from the CD-ROM, or a problem with this package.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1336</td><td>1033</td><td>There was an error creating a temporary file that is needed to complete this installation. Folder: [3]. System error code: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_14</td><td>1033</td><td>Time remaining: {[1] minutes }{[2] seconds}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_15</td><td>1033</td><td>Out of memory. Shut down other applications before retrying.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_16</td><td>1033</td><td>Installer is no longer responding.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1609</td><td>1033</td><td>An error occurred while applying security settings. [2] is not a valid user or group. This could be a problem with the package, or a problem connecting to a domain controller on the network. Check your network connection and click Retry, or Cancel to end the install. Unable to locate the user's SID, system error [3]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1651</td><td>1033</td><td>Admin user failed to apply patch for a per-user managed or a per-machine application which is in advertise state.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_17</td><td>1033</td><td>Installer terminated prematurely.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1715</td><td>1033</td><td>Installed [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1716</td><td>1033</td><td>Configured [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1717</td><td>1033</td><td>Removed [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1718</td><td>1033</td><td>File [2] was rejected by digital signature policy.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1719</td><td>1033</td><td>Windows Installer service could not be accessed. Contact your support personnel to verify that it is properly registered and enabled.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1720</td><td>1033</td><td>There is a problem with this Windows Installer package. A script required for this install to complete could not be run. Contact your support personnel or package vendor. Custom action [2] script error [3], [4]: [5] Line [6], Column [7], [8]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1721</td><td>1033</td><td>There is a problem with this Windows Installer package. A program required for this install to complete could not be run. Contact your support personnel or package vendor. Action: [2], location: [3], command: [4]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1722</td><td>1033</td><td>There is a problem with this Windows Installer package. A program run as part of the setup did not finish as expected. Contact your support personnel or package vendor. Action [2], location: [3], command: [4]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1723</td><td>1033</td><td>There is a problem with this Windows Installer package. A DLL required for this install to complete could not be run. Contact your support personnel or package vendor. Action [2], entry: [3], library: [4]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1724</td><td>1033</td><td>Removal completed successfully.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1725</td><td>1033</td><td>Removal failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1726</td><td>1033</td><td>Advertisement completed successfully.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1727</td><td>1033</td><td>Advertisement failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1728</td><td>1033</td><td>Configuration completed successfully.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1729</td><td>1033</td><td>Configuration failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1730</td><td>1033</td><td>You must be an Administrator to remove this application. To remove this application, you can log on as an administrator, or contact your technical support group for assistance.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1731</td><td>1033</td><td>The source installation package for the product [2] is out of sync with the client package. Try the installation again using a valid copy of the installation package '[3]'.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1732</td><td>1033</td><td>In order to complete the installation of [2], you must restart the computer. Other users are currently logged on to this computer, and restarting may cause them to lose their work. Do you want to restart now?</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_18</td><td>1033</td><td>Please wait while Windows configures [ProductName]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_19</td><td>1033</td><td>Gathering required information...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1935</td><td>1033</td><td>An error occurred during the installation of assembly component [2]. HRESULT: [3]. {{assembly interface: [4], function: [5], assembly name: [6]}}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1936</td><td>1033</td><td>An error occurred during the installation of assembly '[6]'. The assembly is not strongly named or is not signed with the minimal key length. HRESULT: [3]. {{assembly interface: [4], function: [5], component: [2]}}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1937</td><td>1033</td><td>An error occurred during the installation of assembly '[6]'. The signature or catalog could not be verified or is not valid. HRESULT: [3]. {{assembly interface: [4], function: [5], component: [2]}}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_1938</td><td>1033</td><td>An error occurred during the installation of assembly '[6]'. One or more modules of the assembly could not be found. HRESULT: [3]. {{assembly interface: [4], function: [5], component: [2]}}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2</td><td>1033</td><td>Warning [1]. </td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_20</td><td>1033</td><td>{[ProductName] }Setup completed successfully.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_21</td><td>1033</td><td>{[ProductName] }Setup failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2101</td><td>1033</td><td>Shortcuts not supported by the operating system.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2102</td><td>1033</td><td>Invalid .ini action: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2103</td><td>1033</td><td>Could not resolve path for shell folder [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2104</td><td>1033</td><td>Writing .ini file: [3]: System error: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2105</td><td>1033</td><td>Shortcut Creation [3] Failed. System error: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2106</td><td>1033</td><td>Shortcut Deletion [3] Failed. System error: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2107</td><td>1033</td><td>Error [3] registering type library [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2108</td><td>1033</td><td>Error [3] unregistering type library [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2109</td><td>1033</td><td>Section missing for .ini action.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2110</td><td>1033</td><td>Key missing for .ini action.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2111</td><td>1033</td><td>Detection of running applications failed, could not get performance data. Registered operation returned : [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2112</td><td>1033</td><td>Detection of running applications failed, could not get performance index. Registered operation returned : [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2113</td><td>1033</td><td>Detection of running applications failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_22</td><td>1033</td><td>Error reading from file: [2]. {{ System error [3].}}  Verify that the file exists and that you can access it.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2200</td><td>1033</td><td>Database: [2]. Database object creation failed, mode = [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2201</td><td>1033</td><td>Database: [2]. Initialization failed, out of memory.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2202</td><td>1033</td><td>Database: [2]. Data access failed, out of memory.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2203</td><td>1033</td><td>Database: [2]. Cannot open database file. System error [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2204</td><td>1033</td><td>Database: [2]. Table already exists: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2205</td><td>1033</td><td>Database: [2]. Table does not exist: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2206</td><td>1033</td><td>Database: [2]. Table could not be dropped: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2207</td><td>1033</td><td>Database: [2]. Intent violation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2208</td><td>1033</td><td>Database: [2]. Insufficient parameters for Execute.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2209</td><td>1033</td><td>Database: [2]. Cursor in invalid state.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2210</td><td>1033</td><td>Database: [2]. Invalid update data type in column [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2211</td><td>1033</td><td>Database: [2]. Could not create database table [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2212</td><td>1033</td><td>Database: [2]. Database not in writable state.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2213</td><td>1033</td><td>Database: [2]. Error saving database tables.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2214</td><td>1033</td><td>Database: [2]. Error writing export file: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2215</td><td>1033</td><td>Database: [2]. Cannot open import file: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2216</td><td>1033</td><td>Database: [2]. Import file format error: [3], Line [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2217</td><td>1033</td><td>Database: [2]. Wrong state to CreateOutputDatabase [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2218</td><td>1033</td><td>Database: [2]. Table name not supplied.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2219</td><td>1033</td><td>Database: [2]. Invalid Installer database format.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2220</td><td>1033</td><td>Database: [2]. Invalid row/field data.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2221</td><td>1033</td><td>Database: [2]. Code page conflict in import file: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2222</td><td>1033</td><td>Database: [2]. Transform or merge code page [3] differs from database code page [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2223</td><td>1033</td><td>Database: [2]. Databases are the same. No transform generated.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2224</td><td>1033</td><td>Database: [2]. GenerateTransform: Database corrupt. Table: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2225</td><td>1033</td><td>Database: [2]. Transform: Cannot transform a temporary table. Table: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2226</td><td>1033</td><td>Database: [2]. Transform failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2227</td><td>1033</td><td>Database: [2]. Invalid identifier '[3]' in SQL query: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2228</td><td>1033</td><td>Database: [2]. Unknown table '[3]' in SQL query: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2229</td><td>1033</td><td>Database: [2]. Could not load table '[3]' in SQL query: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2230</td><td>1033</td><td>Database: [2]. Repeated table '[3]' in SQL query: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2231</td><td>1033</td><td>Database: [2]. Missing ')' in SQL query: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2232</td><td>1033</td><td>Database: [2]. Unexpected token '[3]' in SQL query: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2233</td><td>1033</td><td>Database: [2]. No columns in SELECT clause in SQL query: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2234</td><td>1033</td><td>Database: [2]. No columns in ORDER BY clause in SQL query: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2235</td><td>1033</td><td>Database: [2]. Column '[3]' not present or ambiguous in SQL query: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2236</td><td>1033</td><td>Database: [2]. Invalid operator '[3]' in SQL query: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2237</td><td>1033</td><td>Database: [2]. Invalid or missing query string: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2238</td><td>1033</td><td>Database: [2]. Missing FROM clause in SQL query: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2239</td><td>1033</td><td>Database: [2]. Insufficient values in INSERT SQL statement.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2240</td><td>1033</td><td>Database: [2]. Missing update columns in UPDATE SQL statement.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2241</td><td>1033</td><td>Database: [2]. Missing insert columns in INSERT SQL statement.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2242</td><td>1033</td><td>Database: [2]. Column '[3]' repeated.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2243</td><td>1033</td><td>Database: [2]. No primary columns defined for table creation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2244</td><td>1033</td><td>Database: [2]. Invalid type specifier '[3]' in SQL query [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2245</td><td>1033</td><td>IStorage::Stat failed with error [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2246</td><td>1033</td><td>Database: [2]. Invalid Installer transform format.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2247</td><td>1033</td><td>Database: [2] Transform stream read/write failure.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2248</td><td>1033</td><td>Database: [2] GenerateTransform/Merge: Column type in base table does not match reference table. Table: [3] Col #: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2249</td><td>1033</td><td>Database: [2] GenerateTransform: More columns in base table than in reference table. Table: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2250</td><td>1033</td><td>Database: [2] Transform: Cannot add existing row. Table: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2251</td><td>1033</td><td>Database: [2] Transform: Cannot delete row that does not exist. Table: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2252</td><td>1033</td><td>Database: [2] Transform: Cannot add existing table. Table: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2253</td><td>1033</td><td>Database: [2] Transform: Cannot delete table that does not exist. Table: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2254</td><td>1033</td><td>Database: [2] Transform: Cannot update row that does not exist. Table: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2255</td><td>1033</td><td>Database: [2] Transform: Column with this name already exists. Table: [3] Col: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2256</td><td>1033</td><td>Database: [2] GenerateTransform/Merge: Number of primary keys in base table does not match reference table. Table: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2257</td><td>1033</td><td>Database: [2]. Intent to modify read only table: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2258</td><td>1033</td><td>Database: [2]. Type mismatch in parameter: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2259</td><td>1033</td><td>Database: [2] Table(s) Update failed</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2260</td><td>1033</td><td>Storage CopyTo failed. System error: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2261</td><td>1033</td><td>Could not remove stream [2]. System error: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2262</td><td>1033</td><td>Stream does not exist: [2]. System error: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2263</td><td>1033</td><td>Could not open stream [2]. System error: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2264</td><td>1033</td><td>Could not remove stream [2]. System error: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2265</td><td>1033</td><td>Could not commit storage. System error: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2266</td><td>1033</td><td>Could not rollback storage. System error: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2267</td><td>1033</td><td>Could not delete storage [2]. System error: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2268</td><td>1033</td><td>Database: [2]. Merge: There were merge conflicts reported in [3] tables.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2269</td><td>1033</td><td>Database: [2]. Merge: The column count differed in the '[3]' table of the two databases.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2270</td><td>1033</td><td>Database: [2]. GenerateTransform/Merge: Column name in base table does not match reference table. Table: [3] Col #: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2271</td><td>1033</td><td>SummaryInformation write for transform failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2272</td><td>1033</td><td>Database: [2]. MergeDatabase will not write any changes because the database is open read-only.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2273</td><td>1033</td><td>Database: [2]. MergeDatabase: A reference to the base database was passed as the reference database.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2274</td><td>1033</td><td>Database: [2]. MergeDatabase: Unable to write errors to Error table. Could be due to a non-nullable column in a predefined Error table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2275</td><td>1033</td><td>Database: [2]. Specified Modify [3] operation invalid for table joins.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2276</td><td>1033</td><td>Database: [2]. Code page [3] not supported by the system.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2277</td><td>1033</td><td>Database: [2]. Failed to save table [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2278</td><td>1033</td><td>Database: [2]. Exceeded number of expressions limit of 32 in WHERE clause of SQL query: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2279</td><td>1033</td><td>Database: [2] Transform: Too many columns in base table [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2280</td><td>1033</td><td>Database: [2]. Could not create column [3] for table [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2281</td><td>1033</td><td>Could not rename stream [2]. System error: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2282</td><td>1033</td><td>Stream name invalid [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_23</td><td>1033</td><td>Cannot create the file [3].  A directory with this name already exists.  Cancel the installation and try installing to a different location.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2302</td><td>1033</td><td>Patch notify: [2] bytes patched to far.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2303</td><td>1033</td><td>Error getting volume info. GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2304</td><td>1033</td><td>Error getting disk free space. GetLastError: [2]. Volume: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2305</td><td>1033</td><td>Error waiting for patch thread. GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2306</td><td>1033</td><td>Could not create thread for patch application. GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2307</td><td>1033</td><td>Source file key name is null.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2308</td><td>1033</td><td>Destination file name is null.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2309</td><td>1033</td><td>Attempting to patch file [2] when patch already in progress.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2310</td><td>1033</td><td>Attempting to continue patch when no patch is in progress.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2315</td><td>1033</td><td>Missing path separator: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2318</td><td>1033</td><td>File does not exist: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2319</td><td>1033</td><td>Error setting file attribute: [3] GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2320</td><td>1033</td><td>File not writable: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2321</td><td>1033</td><td>Error creating file: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2322</td><td>1033</td><td>User canceled.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2323</td><td>1033</td><td>Invalid file attribute.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2324</td><td>1033</td><td>Could not open file: [3] GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2325</td><td>1033</td><td>Could not get file time for file: [3] GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2326</td><td>1033</td><td>Error in FileToDosDateTime.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2327</td><td>1033</td><td>Could not remove directory: [3] GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2328</td><td>1033</td><td>Error getting file version info for file: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2329</td><td>1033</td><td>Error deleting file: [3]. GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2330</td><td>1033</td><td>Error getting file attributes: [3]. GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2331</td><td>1033</td><td>Error loading library [2] or finding entry point [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2332</td><td>1033</td><td>Error getting file attributes. GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2333</td><td>1033</td><td>Error setting file attributes. GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2334</td><td>1033</td><td>Error converting file time to local time for file: [3]. GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2335</td><td>1033</td><td>Path: [2] is not a parent of [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2336</td><td>1033</td><td>Error creating temp file on path: [3]. GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2337</td><td>1033</td><td>Could not close file: [3] GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2338</td><td>1033</td><td>Could not update resource for file: [3] GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2339</td><td>1033</td><td>Could not set file time for file: [3] GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2340</td><td>1033</td><td>Could not update resource for file: [3], Missing resource.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2341</td><td>1033</td><td>Could not update resource for file: [3], Resource too large.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2342</td><td>1033</td><td>Could not update resource for file: [3] GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2343</td><td>1033</td><td>Specified path is empty.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2344</td><td>1033</td><td>Could not find required file IMAGEHLP.DLL to validate file:[2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2345</td><td>1033</td><td>[2]: File does not contain a valid checksum value.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2347</td><td>1033</td><td>User ignore.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2348</td><td>1033</td><td>Error attempting to read from cabinet stream.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2349</td><td>1033</td><td>Copy resumed with different info.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2350</td><td>1033</td><td>FDI server error</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2351</td><td>1033</td><td>File key '[2]' not found in cabinet '[3]'. The installation cannot continue.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2352</td><td>1033</td><td>Could not initialize cabinet file server. The required file 'CABINET.DLL' may be missing.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2353</td><td>1033</td><td>Not a cabinet.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2354</td><td>1033</td><td>Cannot handle cabinet.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2355</td><td>1033</td><td>Corrupt cabinet.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2356</td><td>1033</td><td>Could not locate cabinet in stream: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2357</td><td>1033</td><td>Cannot set attributes.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2358</td><td>1033</td><td>Error determining whether file is in-use: [3]. GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2359</td><td>1033</td><td>Unable to create the target file - file may be in use.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2360</td><td>1033</td><td>Progress tick.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2361</td><td>1033</td><td>Need next cabinet.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2362</td><td>1033</td><td>Folder not found: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2363</td><td>1033</td><td>Could not enumerate subfolders for folder: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2364</td><td>1033</td><td>Bad enumeration constant in CreateCopier call.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2365</td><td>1033</td><td>Could not BindImage exe file [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2366</td><td>1033</td><td>User failure.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2367</td><td>1033</td><td>User abort.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2368</td><td>1033</td><td>Failed to get network resource information. Error [2], network path [3]. Extended error: network provider [5], error code [4], error description [6].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2370</td><td>1033</td><td>Invalid CRC checksum value for [2] file.{ Its header says [3] for checksum, its computed value is [4].}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2371</td><td>1033</td><td>Could not apply patch to file [2]. GetLastError: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2372</td><td>1033</td><td>Patch file [2] is corrupt or of an invalid format. Attempting to patch file [3]. GetLastError: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2373</td><td>1033</td><td>File [2] is not a valid patch file.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2374</td><td>1033</td><td>File [2] is not a valid destination file for patch file [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2375</td><td>1033</td><td>Unknown patching error: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2376</td><td>1033</td><td>Cabinet not found.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2379</td><td>1033</td><td>Error opening file for read: [3] GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2380</td><td>1033</td><td>Error opening file for write: [3]. GetLastError: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2381</td><td>1033</td><td>Directory does not exist: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2382</td><td>1033</td><td>Drive not ready: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_24</td><td>1033</td><td>Please insert the disk: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2401</td><td>1033</td><td>64-bit registry operation attempted on 32-bit operating system for key [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2402</td><td>1033</td><td>Out of memory.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_25</td><td>1033</td><td>The installer has insufficient privileges to access this directory: [2].  The installation cannot continue.  Log on as an administrator or contact your system administrator.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2501</td><td>1033</td><td>Could not create rollback script enumerator.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2502</td><td>1033</td><td>Called InstallFinalize when no install in progress.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2503</td><td>1033</td><td>Called RunScript when not marked in progress.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_26</td><td>1033</td><td>Error writing to file [2].  Verify that you have access to that directory.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2601</td><td>1033</td><td>Invalid value for property [2]: '[3]'</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2602</td><td>1033</td><td>The [2] table entry '[3]' has no associated entry in the Media table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2603</td><td>1033</td><td>Duplicate table name [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2604</td><td>1033</td><td>[2] Property undefined.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2605</td><td>1033</td><td>Could not find server [2] in [3] or [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2606</td><td>1033</td><td>Value of property [2] is not a valid full path: '[3]'.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2607</td><td>1033</td><td>Media table not found or empty (required for installation of files).</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2608</td><td>1033</td><td>Could not create security descriptor for object. Error: '[2]'.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2609</td><td>1033</td><td>Attempt to migrate product settings before initialization.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2611</td><td>1033</td><td>The file [2] is marked as compressed, but the associated media entry does not specify a cabinet.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2612</td><td>1033</td><td>Stream not found in '[2]' column. Primary key: '[3]'.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2613</td><td>1033</td><td>RemoveExistingProducts action sequenced incorrectly.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2614</td><td>1033</td><td>Could not access IStorage object from installation package.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2615</td><td>1033</td><td>Skipped unregistration of Module [2] due to source resolution failure.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2616</td><td>1033</td><td>Companion file [2] parent missing.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2617</td><td>1033</td><td>Shared component [2] not found in Component table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2618</td><td>1033</td><td>Isolated application component [2] not found in Component table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2619</td><td>1033</td><td>Isolated components [2], [3] not part of same feature.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2620</td><td>1033</td><td>Key file of isolated application component [2] not in File table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2621</td><td>1033</td><td>Resource DLL or Resource ID information for shortcut [2] set incorrectly.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27</td><td>1033</td><td>Error reading from file [2].  Verify that the file exists and that you can access it.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2701</td><td>1033</td><td>The depth of a feature exceeds the acceptable tree depth of [2] levels.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2702</td><td>1033</td><td>A Feature table record ([2]) references a non-existent parent in the Attributes field.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2703</td><td>1033</td><td>Property name for root source path not defined: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2704</td><td>1033</td><td>Root directory property undefined: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2705</td><td>1033</td><td>Invalid table: [2]; Could not be linked as tree.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2706</td><td>1033</td><td>Source paths not created. No path exists for entry [2] in Directory table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2707</td><td>1033</td><td>Target paths not created. No path exists for entry [2] in Directory table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2708</td><td>1033</td><td>No entries found in the file table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2709</td><td>1033</td><td>The specified Component name ('[2]') not found in Component table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2710</td><td>1033</td><td>The requested 'Select' state is illegal for this Component.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2711</td><td>1033</td><td>The specified Feature name ('[2]') not found in Feature table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2712</td><td>1033</td><td>Invalid return from modeless dialog: [3], in action [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2713</td><td>1033</td><td>Null value in a non-nullable column ('[2]' in '[3]' column of the '[4]' table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2714</td><td>1033</td><td>Invalid value for default folder name: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2715</td><td>1033</td><td>The specified File key ('[2]') not found in the File table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2716</td><td>1033</td><td>Could not create a random subcomponent name for component '[2]'.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2717</td><td>1033</td><td>Bad action condition or error calling custom action '[2]'.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2718</td><td>1033</td><td>Missing package name for product code '[2]'.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2719</td><td>1033</td><td>Neither UNC nor drive letter path found in source '[2]'.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2720</td><td>1033</td><td>Error opening source list key. Error: '[2]'</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2721</td><td>1033</td><td>Custom action [2] not found in Binary table stream.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2722</td><td>1033</td><td>Custom action [2] not found in File table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2723</td><td>1033</td><td>Custom action [2] specifies unsupported type.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2724</td><td>1033</td><td>The volume label '[2]' on the media you're running from does not match the label '[3]' given in the Media table. This is allowed only if you have only 1 entry in your Media table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2725</td><td>1033</td><td>Invalid database tables</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2726</td><td>1033</td><td>Action not found: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2727</td><td>1033</td><td>The directory entry '[2]' does not exist in the Directory table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2728</td><td>1033</td><td>Table definition error: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2729</td><td>1033</td><td>Install engine not initialized.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2730</td><td>1033</td><td>Bad value in database. Table: '[2]'; Primary key: '[3]'; Column: '[4]'</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2731</td><td>1033</td><td>Selection Manager not initialized.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2732</td><td>1033</td><td>Directory Manager not initialized.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2733</td><td>1033</td><td>Bad foreign key ('[2]') in '[3]' column of the '[4]' table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2734</td><td>1033</td><td>Invalid reinstall mode character.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2735</td><td>1033</td><td>Custom action '[2]' has caused an unhandled exception and has been stopped. This may be the result of an internal error in the custom action, such as an access violation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2736</td><td>1033</td><td>Generation of custom action temp file failed: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2737</td><td>1033</td><td>Could not access custom action [2], entry [3], library [4]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2738</td><td>1033</td><td>Could not access VBScript run time for custom action [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2739</td><td>1033</td><td>Could not access JavaScript run time for custom action [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2740</td><td>1033</td><td>Custom action [2] script error [3], [4]: [5] Line [6], Column [7], [8].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2741</td><td>1033</td><td>Configuration information for product [2] is corrupt. Invalid info: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2742</td><td>1033</td><td>Marshaling to Server failed: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2743</td><td>1033</td><td>Could not execute custom action [2], location: [3], command: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2744</td><td>1033</td><td>EXE failed called by custom action [2], location: [3], command: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2745</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected language [4], found language [5].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2746</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected product [4], found product [5].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2747</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected product version &lt; [4], found product version [5].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2748</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected product version &lt;= [4], found product version [5].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2749</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected product version == [4], found product version [5].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2750</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected product version &gt;= [4], found product version [5].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27502</td><td>1033</td><td>Could not connect to [2] '[3]'. [4]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27503</td><td>1033</td><td>Error retrieving version string from [2] '[3]'. [4]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27504</td><td>1033</td><td>SQL version requirements not met: [3]. This installation requires [2] [4] or later.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27505</td><td>1033</td><td>Could not open SQL script file [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27506</td><td>1033</td><td>Error executing SQL script [2]. Line [3]. [4]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27507</td><td>1033</td><td>Connection or browsing for database servers requires that MDAC be installed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27508</td><td>1033</td><td>Error installing COM+ application [2]. [3]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27509</td><td>1033</td><td>Error uninstalling COM+ application [2]. [3]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2751</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected product version &gt; [4], found product version [5].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27510</td><td>1033</td><td>Error installing COM+ application [2].  Could not load Microsoft(R) .NET class libraries. Registering .NET serviced components requires that Microsoft(R) .NET Framework be installed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27511</td><td>1033</td><td>Could not execute SQL script file [2]. Connection not open: [3]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27512</td><td>1033</td><td>Error beginning transactions for [2] '[3]'. Database [4]. [5]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27513</td><td>1033</td><td>Error committing transactions for [2] '[3]'. Database [4]. [5]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27514</td><td>1033</td><td>This installation requires a Microsoft SQL Server. The specified server '[3]' is a Microsoft SQL Server Desktop Engine or SQL Server Express.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27515</td><td>1033</td><td>Error retrieving schema version from [2] '[3]'. Database: '[4]'. [5]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27516</td><td>1033</td><td>Error writing schema version to [2] '[3]'. Database: '[4]'. [5]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27517</td><td>1033</td><td>This installation requires Administrator privileges for installing COM+ applications. Log on as an administrator and then retry this installation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27518</td><td>1033</td><td>The COM+ application "[2]" is configured to run as an NT service; this requires COM+ 1.5 or later on the system. Since your system has COM+ 1.0, this application will not be installed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27519</td><td>1033</td><td>Error updating XML file [2]. [3]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2752</td><td>1033</td><td>Could not open transform [2] stored as child storage of package [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27520</td><td>1033</td><td>Error opening XML file [2]. [3]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27521</td><td>1033</td><td>This setup requires MSXML 3.0 or higher for configuring XML files. Please make sure that you have version 3.0 or higher.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27522</td><td>1033</td><td>Error creating XML file [2]. [3]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27523</td><td>1033</td><td>Error loading servers.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27524</td><td>1033</td><td>Error loading NetApi32.DLL. The ISNetApi.dll needs to have NetApi32.DLL properly loaded and requires an NT based operating system.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27525</td><td>1033</td><td>Server not found. Verify that the specified server exists. The server name can not be empty.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27526</td><td>1033</td><td>Unspecified error from ISNetApi.dll.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27527</td><td>1033</td><td>The buffer is too small.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27528</td><td>1033</td><td>Access denied. Check administrative rights.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27529</td><td>1033</td><td>Invalid computer.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2753</td><td>1033</td><td>The File '[2]' is not marked for installation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27530</td><td>1033</td><td>Unknown error returned from NetAPI. System error: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27531</td><td>1033</td><td>Unhandled exception.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27532</td><td>1033</td><td>Invalid user name for this server or domain.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27533</td><td>1033</td><td>The case-sensitive passwords do not match.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27534</td><td>1033</td><td>The list is empty.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27535</td><td>1033</td><td>Access violation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27536</td><td>1033</td><td>Error getting group.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27537</td><td>1033</td><td>Error adding user to group. Verify that the group exists for this domain or server.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27538</td><td>1033</td><td>Error creating user.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27539</td><td>1033</td><td>ERROR_NETAPI_ERROR_NOT_PRIMARY returned from NetAPI.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2754</td><td>1033</td><td>The File '[2]' is not a valid patch file.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27540</td><td>1033</td><td>The specified user already exists.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27541</td><td>1033</td><td>The specified group already exists.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27542</td><td>1033</td><td>Invalid password. Verify that the password is in accordance with your network password policy.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27543</td><td>1033</td><td>Invalid name.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27544</td><td>1033</td><td>Invalid group.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27545</td><td>1033</td><td>The user name can not be empty and must be in the format DOMAIN\Username.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27546</td><td>1033</td><td>Error loading or creating INI file in the user TEMP directory.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27547</td><td>1033</td><td>ISNetAPI.dll is not loaded or there was an error loading the dll. This dll needs to be loaded for this operation. Verify that the dll is in the SUPPORTDIR directory.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27548</td><td>1033</td><td>Error deleting INI file containing new user information from the user's TEMP directory.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27549</td><td>1033</td><td>Error getting the primary domain controller (PDC).</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2755</td><td>1033</td><td>Server returned unexpected error [2] attempting to install package [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27550</td><td>1033</td><td>Every field must have a value in order to create a user.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27551</td><td>1033</td><td>ODBC driver for [2] not found. This is required to connect to [2] database servers.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27552</td><td>1033</td><td>Error creating database [4]. Server: [2] [3]. [5]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27553</td><td>1033</td><td>Error connecting to database [4]. Server: [2] [3]. [5]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27554</td><td>1033</td><td>Error attempting to open connection [2]. No valid database metadata associated with this connection.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_27555</td><td>1033</td><td>Error attempting to apply permissions to object '[2]'. System error: [3] ([4])</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2756</td><td>1033</td><td>The property '[2]' was used as a directory property in one or more tables, but no value was ever assigned.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2757</td><td>1033</td><td>Could not create summary info for transform [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2758</td><td>1033</td><td>Transform [2] does not contain an MSI version.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2759</td><td>1033</td><td>Transform [2] version [3] incompatible with engine; Min: [4], Max: [5].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2760</td><td>1033</td><td>Transform [2] invalid for package [3]. Expected upgrade code [4], found [5].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2761</td><td>1033</td><td>Cannot begin transaction. Global mutex not properly initialized.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2762</td><td>1033</td><td>Cannot write script record. Transaction not started.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2763</td><td>1033</td><td>Cannot run script. Transaction not started.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2765</td><td>1033</td><td>Assembly name missing from AssemblyName table : Component: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2766</td><td>1033</td><td>The file [2] is an invalid MSI storage file.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2767</td><td>1033</td><td>No more data{ while enumerating [2]}.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2768</td><td>1033</td><td>Transform in patch package is invalid.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2769</td><td>1033</td><td>Custom Action [2] did not close [3] MSIHANDLEs.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2770</td><td>1033</td><td>Cached folder [2] not defined in internal cache folder table.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2771</td><td>1033</td><td>Upgrade of feature [2] has a missing component.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2772</td><td>1033</td><td>New upgrade feature [2] must be a leaf feature.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_28</td><td>1033</td><td>Another application has exclusive access to the file [2].  Please shut down all other applications, then click Retry.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2801</td><td>1033</td><td>Unknown Message -- Type [2]. No action is taken.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2802</td><td>1033</td><td>No publisher is found for the event [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2803</td><td>1033</td><td>Dialog View did not find a record for the dialog [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2804</td><td>1033</td><td>On activation of the control [3] on dialog [2] CMsiDialog failed to evaluate the condition [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2806</td><td>1033</td><td>The dialog [2] failed to evaluate the condition [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2807</td><td>1033</td><td>The action [2] is not recognized.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2808</td><td>1033</td><td>Default button is ill-defined on dialog [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2809</td><td>1033</td><td>On the dialog [2] the next control pointers do not form a cycle. There is a pointer from [3] to [4], but there is no further pointer.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2810</td><td>1033</td><td>On the dialog [2] the next control pointers do not form a cycle. There is a pointer from both [3] and [5] to [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2811</td><td>1033</td><td>On dialog [2] control [3] has to take focus, but it is unable to do so.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2812</td><td>1033</td><td>The event [2] is not recognized.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2813</td><td>1033</td><td>The EndDialog event was called with the argument [2], but the dialog has a parent.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2814</td><td>1033</td><td>On the dialog [2] the control [3] names a nonexistent control [4] as the next control.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2815</td><td>1033</td><td>ControlCondition table has a row without condition for the dialog [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2816</td><td>1033</td><td>The EventMapping table refers to an invalid control [4] on dialog [2] for the event [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2817</td><td>1033</td><td>The event [2] failed to set the attribute for the control [4] on dialog [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2818</td><td>1033</td><td>In the ControlEvent table EndDialog has an unrecognized argument [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2819</td><td>1033</td><td>Control [3] on dialog [2] needs a property linked to it.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2820</td><td>1033</td><td>Attempted to initialize an already initialized handler.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2821</td><td>1033</td><td>Attempted to initialize an already initialized dialog: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2822</td><td>1033</td><td>No other method can be called on dialog [2] until all the controls are added.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2823</td><td>1033</td><td>Attempted to initialize an already initialized control: [3] on dialog [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2824</td><td>1033</td><td>The dialog attribute [3] needs a record of at least [2] field(s).</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2825</td><td>1033</td><td>The control attribute [3] needs a record of at least [2] field(s).</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2826</td><td>1033</td><td>Control [3] on dialog [2] extends beyond the boundaries of the dialog [4] by [5] pixels.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2827</td><td>1033</td><td>The button [4] on the radio button group [3] on dialog [2] extends beyond the boundaries of the group [5] by [6] pixels.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2828</td><td>1033</td><td>Tried to remove control [3] from dialog [2], but the control is not part of the dialog.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2829</td><td>1033</td><td>Attempt to use an uninitialized dialog.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2830</td><td>1033</td><td>Attempt to use an uninitialized control on dialog [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2831</td><td>1033</td><td>The control [3] on dialog [2] does not support [5] the attribute [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2832</td><td>1033</td><td>The dialog [2] does not support the attribute [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2833</td><td>1033</td><td>Control [4] on dialog [3] ignored the message [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2834</td><td>1033</td><td>The next pointers on the dialog [2] do not form a single loop.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2835</td><td>1033</td><td>The control [2] was not found on dialog [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2836</td><td>1033</td><td>The control [3] on the dialog [2] cannot take focus.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2837</td><td>1033</td><td>The control [3] on dialog [2] wants the winproc to return [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2838</td><td>1033</td><td>The item [2] in the selection table has itself as a parent.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2839</td><td>1033</td><td>Setting the property [2] failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2840</td><td>1033</td><td>Error dialog name mismatch.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2841</td><td>1033</td><td>No OK button was found on the error dialog.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2842</td><td>1033</td><td>No text field was found on the error dialog.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2843</td><td>1033</td><td>The ErrorString attribute is not supported for standard dialogs.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2844</td><td>1033</td><td>Cannot execute an error dialog if the Errorstring is not set.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2845</td><td>1033</td><td>The total width of the buttons exceeds the size of the error dialog.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2846</td><td>1033</td><td>SetFocus did not find the required control on the error dialog.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2847</td><td>1033</td><td>The control [3] on dialog [2] has both the icon and the bitmap style set.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2848</td><td>1033</td><td>Tried to set control [3] as the default button on dialog [2], but the control does not exist.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2849</td><td>1033</td><td>The control [3] on dialog [2] is of a type, that cannot be integer valued.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2850</td><td>1033</td><td>Unrecognized volume type.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2851</td><td>1033</td><td>The data for the icon [2] is not valid.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2852</td><td>1033</td><td>At least one control has to be added to dialog [2] before it is used.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2853</td><td>1033</td><td>Dialog [2] is a modeless dialog. The execute method should not be called on it.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2854</td><td>1033</td><td>On the dialog [2] the control [3] is designated as first active control, but there is no such control.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2855</td><td>1033</td><td>The radio button group [3] on dialog [2] has fewer than 2 buttons.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2856</td><td>1033</td><td>Creating a second copy of the dialog [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2857</td><td>1033</td><td>The directory [2] is mentioned in the selection table but not found.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2858</td><td>1033</td><td>The data for the bitmap [2] is not valid.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2859</td><td>1033</td><td>Test error message.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2860</td><td>1033</td><td>Cancel button is ill-defined on dialog [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2861</td><td>1033</td><td>The next pointers for the radio buttons on dialog [2] control [3] do not form a cycle.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2862</td><td>1033</td><td>The attributes for the control [3] on dialog [2] do not define a valid icon size. Setting the size to 16.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2863</td><td>1033</td><td>The control [3] on dialog [2] needs the icon [4] in size [5]x[5], but that size is not available. Loading the first available size.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2864</td><td>1033</td><td>The control [3] on dialog [2] received a browse event, but there is no configurable directory for the present selection. Likely cause: browse button is not authored correctly.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2865</td><td>1033</td><td>Control [3] on billboard [2] extends beyond the boundaries of the billboard [4] by [5] pixels.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2866</td><td>1033</td><td>The dialog [2] is not allowed to return the argument [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2867</td><td>1033</td><td>The error dialog property is not set.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2868</td><td>1033</td><td>The error dialog [2] does not have the error style bit set.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2869</td><td>1033</td><td>The dialog [2] has the error style bit set, but is not an error dialog.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2870</td><td>1033</td><td>The help string [4] for control [3] on dialog [2] does not contain the separator character.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2871</td><td>1033</td><td>The [2] table is out of date: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2872</td><td>1033</td><td>The argument of the CheckPath control event on dialog [2] is invalid.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2873</td><td>1033</td><td>On the dialog [2] the control [3] has an invalid string length limit: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2874</td><td>1033</td><td>Changing the text font to [2] failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2875</td><td>1033</td><td>Changing the text color to [2] failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2876</td><td>1033</td><td>The control [3] on dialog [2] had to truncate the string: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2877</td><td>1033</td><td>The binary data [2] was not found</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2878</td><td>1033</td><td>On the dialog [2] the control [3] has a possible value: [4]. This is an invalid or duplicate value.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2879</td><td>1033</td><td>The control [3] on dialog [2] cannot parse the mask string: [4].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2880</td><td>1033</td><td>Do not perform the remaining control events.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2881</td><td>1033</td><td>CMsiHandler initialization failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2882</td><td>1033</td><td>Dialog window class registration failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2883</td><td>1033</td><td>CreateNewDialog failed for the dialog [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2884</td><td>1033</td><td>Failed to create a window for the dialog [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2885</td><td>1033</td><td>Failed to create the control [3] on the dialog [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2886</td><td>1033</td><td>Creating the [2] table failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2887</td><td>1033</td><td>Creating a cursor to the [2] table failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2888</td><td>1033</td><td>Executing the [2] view failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2889</td><td>1033</td><td>Creating the window for the control [3] on dialog [2] failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2890</td><td>1033</td><td>The handler failed in creating an initialized dialog.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2891</td><td>1033</td><td>Failed to destroy window for dialog [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2892</td><td>1033</td><td>[2] is an integer only control, [3] is not a valid integer value.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2893</td><td>1033</td><td>The control [3] on dialog [2] can accept property values that are at most [5] characters long. The value [4] exceeds this limit, and has been truncated.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2894</td><td>1033</td><td>Loading RICHED20.DLL failed. GetLastError() returned: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2895</td><td>1033</td><td>Freeing RICHED20.DLL failed. GetLastError() returned: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2896</td><td>1033</td><td>Executing action [2] failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2897</td><td>1033</td><td>Failed to create any [2] font on this system.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2898</td><td>1033</td><td>For [2] textstyle, the system created a '[3]' font, in [4] character set.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2899</td><td>1033</td><td>Failed to create [2] textstyle. GetLastError() returned: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_29</td><td>1033</td><td>There is not enough disk space to install the file [2].  Free some disk space and click Retry, or click Cancel to exit.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2901</td><td>1033</td><td>Invalid parameter to operation [2]: Parameter [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2902</td><td>1033</td><td>Operation [2] called out of sequence.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2903</td><td>1033</td><td>The file [2] is missing.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2904</td><td>1033</td><td>Could not BindImage file [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2905</td><td>1033</td><td>Could not read record from script file [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2906</td><td>1033</td><td>Missing header in script file [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2907</td><td>1033</td><td>Could not create secure security descriptor. Error: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2908</td><td>1033</td><td>Could not register component [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2909</td><td>1033</td><td>Could not unregister component [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2910</td><td>1033</td><td>Could not determine user's security ID.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2911</td><td>1033</td><td>Could not remove the folder [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2912</td><td>1033</td><td>Could not schedule file [2] for removal on restart.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2919</td><td>1033</td><td>No cabinet specified for compressed file: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2920</td><td>1033</td><td>Source directory not specified for file [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2924</td><td>1033</td><td>Script [2] version unsupported. Script version: [3], minimum version: [4], maximum version: [5].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2927</td><td>1033</td><td>ShellFolder id [2] is invalid.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2928</td><td>1033</td><td>Exceeded maximum number of sources. Skipping source '[2]'.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2929</td><td>1033</td><td>Could not determine publishing root. Error: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2932</td><td>1033</td><td>Could not create file [2] from script data. Error: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2933</td><td>1033</td><td>Could not initialize rollback script [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2934</td><td>1033</td><td>Could not secure transform [2]. Error [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2935</td><td>1033</td><td>Could not unsecure transform [2]. Error [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2936</td><td>1033</td><td>Could not find transform [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2937</td><td>1033</td><td>Windows Installer cannot install a system file protection catalog. Catalog: [2], Error: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2938</td><td>1033</td><td>Windows Installer cannot retrieve a system file protection catalog from the cache. Catalog: [2], Error: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2939</td><td>1033</td><td>Windows Installer cannot delete a system file protection catalog from the cache. Catalog: [2], Error: [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2940</td><td>1033</td><td>Directory Manager not supplied for source resolution.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2941</td><td>1033</td><td>Unable to compute the CRC for file [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2942</td><td>1033</td><td>BindImage action has not been executed on [2] file.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2943</td><td>1033</td><td>This version of Windows does not support deploying 64-bit packages. The script [2] is for a 64-bit package.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2944</td><td>1033</td><td>GetProductAssignmentType failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_2945</td><td>1033</td><td>Installation of ComPlus App [2] failed with error [3].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_3</td><td>1033</td><td>Info [1]. </td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_30</td><td>1033</td><td>Source file not found: [2].  Verify that the file exists and that you can access it.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_3001</td><td>1033</td><td>The patches in this list contain incorrect sequencing information: [2][3][4][5][6][7][8][9][10][11][12][13][14][15][16].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_3002</td><td>1033</td><td>Patch [2] contains invalid sequencing information. </td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_31</td><td>1033</td><td>Error reading from file: [3]. {{ System error [2].}}  Verify that the file exists and that you can access it.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_32</td><td>1033</td><td>Error writing to file: [3]. {{ System error [2].}}  Verify that you have access to that directory.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_33</td><td>1033</td><td>Source file not found{{(cabinet)}}: [2].  Verify that the file exists and that you can access it.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_34</td><td>1033</td><td>Cannot create the directory [2].  A file with this name already exists.  Please rename or remove the file and click Retry, or click Cancel to exit.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_35</td><td>1033</td><td>The volume [2] is currently unavailable.  Please select another.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_36</td><td>1033</td><td>The specified path [2] is unavailable.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_37</td><td>1033</td><td>Unable to write to the specified folder [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_38</td><td>1033</td><td>A network error occurred while attempting to read from the file [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_39</td><td>1033</td><td>An error occurred while attempting to create the directory [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_4</td><td>1033</td><td>Internal Error [1]. [2]{, [3]}{, [4]}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_40</td><td>1033</td><td>A network error occurred while attempting to create the directory [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_41</td><td>1033</td><td>A network error occurred while attempting to open the source file cabinet [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_42</td><td>1033</td><td>The specified path is too long [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_43</td><td>1033</td><td>The Installer has insufficient privileges to modify the file [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_44</td><td>1033</td><td>A portion of the path [2] exceeds the length allowed by the system.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_45</td><td>1033</td><td>The path [2] contains words that are not valid in folders.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_46</td><td>1033</td><td>The path [2] contains an invalid character.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_47</td><td>1033</td><td>[2] is not a valid short file name.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_48</td><td>1033</td><td>Error getting file security: [3] GetLastError: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_49</td><td>1033</td><td>Invalid Drive: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_5</td><td>1033</td><td>{{Disk full: }}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_50</td><td>1033</td><td>Could not create key [2]. {{ System error [3].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_51</td><td>1033</td><td>Could not open key: [2]. {{ System error [3].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_52</td><td>1033</td><td>Could not delete value [2] from key [3]. {{ System error [4].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_53</td><td>1033</td><td>Could not delete key [2]. {{ System error [3].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_54</td><td>1033</td><td>Could not read value [2] from key [3]. {{ System error [4].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_55</td><td>1033</td><td>Could not write value [2] to key [3]. {{ System error [4].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_56</td><td>1033</td><td>Could not get value names for key [2]. {{ System error [3].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_57</td><td>1033</td><td>Could not get sub key names for key [2]. {{ System error [3].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_58</td><td>1033</td><td>Could not read security information for key [2]. {{ System error [3].}}  Verify that you have sufficient access to that key, or contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_59</td><td>1033</td><td>Could not increase the available registry space. [2] KB of free registry space is required for the installation of this application.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_6</td><td>1033</td><td>Action [Time]: [1]. [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_60</td><td>1033</td><td>Another installation is in progress. You must complete that installation before continuing this one.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_61</td><td>1033</td><td>Error accessing secured data. Please make sure the Windows Installer is configured properly and try the installation again.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_62</td><td>1033</td><td>User [2] has previously initiated an installation for product [3].  That user will need to run that installation again before using that product.  Your current installation will now continue.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_63</td><td>1033</td><td>User [2] has previously initiated an installation for product [3].  That user will need to run that installation again before using that product.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_64</td><td>1033</td><td>Out of disk space -- Volume: '[2]'; required space: [3] KB; available space: [4] KB.  Free some disk space and retry.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_65</td><td>1033</td><td>Are you sure you want to cancel?</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_66</td><td>1033</td><td>The file [2][3] is being held in use{ by the following process: Name: [4], ID: [5], Window Title: [6]}.  Close that application and retry.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_67</td><td>1033</td><td>The product [2] is already installed, preventing the installation of this product.  The two products are incompatible.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_68</td><td>1033</td><td>Out of disk space -- Volume: [2]; required space: [3] KB; available space: [4] KB.  If rollback is disabled, enough space is available. Click Cancel to quit, Retry to check available disk space again, or Ignore to continue without rollback.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_69</td><td>1033</td><td>Could not access network location [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_7</td><td>1033</td><td>[ProductName]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_70</td><td>1033</td><td>The following applications should be closed before continuing the installation:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_71</td><td>1033</td><td>Could not find any previously installed compliant products on the machine for installing this product.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_72</td><td>1033</td><td>The key [2] is not valid.  Verify that you entered the correct key.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_73</td><td>1033</td><td>The installer must restart your system before configuration of [2] can continue.  Click Yes to restart now or No if you plan to restart later.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_74</td><td>1033</td><td>You must restart your system for the configuration changes made to [2] to take effect. Click Yes to restart now or No if you plan to restart later.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_75</td><td>1033</td><td>An installation for [2] is currently suspended.  You must undo the changes made by that installation to continue.  Do you want to undo those changes?</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_76</td><td>1033</td><td>A previous installation for this product is in progress.  You must undo the changes made by that installation to continue.  Do you want to undo those changes?</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_77</td><td>1033</td><td>No valid source could be found for product [2].  The Windows Installer cannot continue.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_78</td><td>1033</td><td>Installation operation completed successfully.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_79</td><td>1033</td><td>Installation operation failed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_8</td><td>1033</td><td>{[2]}{, [3]}{, [4]}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_80</td><td>1033</td><td>Product: [2] -- [3]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_81</td><td>1033</td><td>You may either restore your computer to its previous state or continue the installation later. Would you like to restore?</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_82</td><td>1033</td><td>An error occurred while writing installation information to disk.  Check to make sure enough disk space is available, and click Retry, or Cancel to end the installation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_83</td><td>1033</td><td>One or more of the files required to restore your computer to its previous state could not be found.  Restoration will not be possible.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_84</td><td>1033</td><td>The path [2] is not valid.  Please specify a valid path.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_85</td><td>1033</td><td>Out of memory. Shut down other applications before retrying.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_86</td><td>1033</td><td>There is no disk in drive [2]. Please insert one and click Retry, or click Cancel to go back to the previously selected volume.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_87</td><td>1033</td><td>There is no disk in drive [2]. Please insert one and click Retry, or click Cancel to return to the browse dialog and select a different volume.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_88</td><td>1033</td><td>The folder [2] does not exist.  Please enter a path to an existing folder.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_89</td><td>1033</td><td>You have insufficient privileges to read this folder.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_9</td><td>1033</td><td>Message type: [1], Argument: [2]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_90</td><td>1033</td><td>A valid destination folder for the installation could not be determined.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_91</td><td>1033</td><td>Error attempting to read from the source installation database: [2].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_92</td><td>1033</td><td>Scheduling reboot operation: Renaming file [2] to [3]. Must reboot to complete operation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_93</td><td>1033</td><td>Scheduling reboot operation: Deleting file [2]. Must reboot to complete operation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_94</td><td>1033</td><td>Module [2] failed to register.  HRESULT [3].  Contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_95</td><td>1033</td><td>Module [2] failed to unregister.  HRESULT [3].  Contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_96</td><td>1033</td><td>Failed to cache package [2]. Error: [3]. Contact your support personnel.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_97</td><td>1033</td><td>Could not register font [2].  Verify that you have sufficient permissions to install fonts, and that the system supports this font.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_98</td><td>1033</td><td>Could not unregister font [2]. Verify that you have sufficient permissions to remove fonts.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ERROR_99</td><td>1033</td><td>Could not create shortcut [2]. Verify that the destination folder exists and that you can access it.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_INSTALLDIR</td><td>1033</td><td>[INSTALLDIR]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_INSTALLSHIELD</td><td>1033</td><td>InstallShield</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_INSTALLSHIELD_FORMATTED</td><td>1033</td><td>{&amp;MSSWhiteSerif8}InstallShield</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ISSCRIPT_VERSION_MISSING</td><td>1033</td><td>The InstallScript engine is missing from this machine.  If available, please run ISScript.msi, or contact your support personnel for further assistance.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_ISSCRIPT_VERSION_OLD</td><td>1033</td><td>The InstallScript engine on this machine is older than the version required to run this setup.  If available, please install the latest version of ISScript.msi, or contact your support personnel for further assistance.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_NEXT</td><td>1033</td><td>&amp;Next &gt;</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_OK</td><td>1033</td><td>OK</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_BROWSE</td><td>1033</td><td>Open [ProductName]'s original [SETUPEXENAME]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_INVALID</td><td>1033</td><td>This executable file does not appear to be the original executable file for [ProductName]. Without using the original [SETUPEXENAME] to install additional dependencies, [ProductName] may not work correctly. Would you like to find the original [SETUPEXENAME]?</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PREREQUISITE_SETUP_SEARCH</td><td>1033</td><td>This installation may require additional dependencies. Without its dependencies, [ProductName] may not work correctly. Would you like to find the original [SETUPEXENAME]?</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PREVENT_DOWNGRADE_EXIT</td><td>1033</td><td>A newer version of this application is already installed on this computer. If you wish to install this version, please uninstall the newer version first. Click OK to exit the wizard.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PRINT_BUTTON</td><td>1033</td><td>&amp;Print</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PRODUCTNAME_INSTALLSHIELD</td><td>1033</td><td>[ProductName] - InstallShield Wizard</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEAPPPOOL</td><td>1033</td><td>Creating application pool %s</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEAPPPOOLS</td><td>1033</td><td>Creating application Pools...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEVROOT</td><td>1033</td><td>Creating IIS virtual directory %s</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEVROOTS</td><td>1033</td><td>Creating IIS virtual directories...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSION</td><td>1033</td><td>Creating web service extension</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS</td><td>1033</td><td>Creating web service extensions...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSITE</td><td>1033</td><td>Creating IIS website %s</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_CREATEWEBSITES</td><td>1033</td><td>Creating IIS websites...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_EXTRACT</td><td>1033</td><td>Extracting information for IIS virtual directories...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_EXTRACTDONE</td><td>1033</td><td>Extracted information for IIS virtual directories...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEAPPPOOL</td><td>1033</td><td>Removing application pool</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEAPPPOOLS</td><td>1033</td><td>Removing application pools...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVESITE</td><td>1033</td><td>Removing web site at port %d</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEVROOT</td><td>1033</td><td>Removing IIS virtual directory %s</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEVROOTS</td><td>1033</td><td>Removing IIS virtual directories...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION</td><td>1033</td><td>Removing web service extension</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS</td><td>1033</td><td>Removing web service extensions...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_REMOVEWEBSITES</td><td>1033</td><td>Removing IIS websites...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKAPPPOOLS</td><td>1033</td><td>Rolling back application pools...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKVROOTS</td><td>1033</td><td>Rolling back virtual directory and web site changes...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS</td><td>1033</td><td>Rolling back web service extensions...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_TEXTFILECHANGS_REPLACE</td><td>1033</td><td>Replacing %s with %s in %s...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_XML_COSTING</td><td>1033</td><td>Costing XML files...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_XML_CREATE_FILE</td><td>1033</td><td>Creating XML file %s...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_XML_FILES</td><td>1033</td><td>Performing XML file changes...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_XML_REMOVE_FILE</td><td>1033</td><td>Removing XML file %s...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_XML_ROLLBACK_FILES</td><td>1033</td><td>Rolling back XML file changes...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_PROGMSG_XML_UPDATE_FILE</td><td>1033</td><td>Updating XML file %s...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SETUPEXE_EXPIRE_MSG</td><td>1033</td><td>This setup works until %s. The setup will now exit.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SETUPEXE_LAUNCH_COND_E</td><td>1033</td><td>This setup was built with an evaluation version of InstallShield and can only be launched from setup.exe.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLBROWSE_INTRO</td><td>1033</td><td>From the list of servers below, select the database server you would like to target.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLBROWSE_INTRO_DB</td><td>1033</td><td>From the list of catalog names below, select the database catalog you would like to target.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLBROWSE_INTRO_TEMPLATE</td><td>1033</td><td>[IS_SQLBROWSE_INTRO]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLLOGIN_BROWSE</td><td>1033</td><td>B&amp;rowse...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLLOGIN_BROWSE_DB</td><td>1033</td><td>Br&amp;owse...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLLOGIN_CATALOG</td><td>1033</td><td>&amp;Name of database catalog:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLLOGIN_CONNECT</td><td>1033</td><td>Connect using:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLLOGIN_DESC</td><td>1033</td><td>Select database server and authentication method</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLLOGIN_ID</td><td>1033</td><td>&amp;Login ID:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLLOGIN_INTRO</td><td>1033</td><td>Select the database server to install to from the list below or click Browse to see a list of all database servers. You can also specify the way to authenticate your login using your current credentials or a SQL Login ID and Password.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLLOGIN_PSWD</td><td>1033</td><td>&amp;Password:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLLOGIN_SERVER</td><td>1033</td><td>&amp;Database Server:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLLOGIN_SERVER2</td><td>1033</td><td>&amp;Database server that you are installing to:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLLOGIN_SQL</td><td>1033</td><td>S&amp;erver authentication using the Login ID and password below</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLLOGIN_TITLE</td><td>1033</td><td>{&amp;MSSansBold8}Database Server</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLLOGIN_WIN</td><td>1033</td><td>&amp;Windows authentication credentials of current user</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLSCRIPT_INSTALLING</td><td>1033</td><td>Executing SQL Install Script...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SQLSCRIPT_UNINSTALLING</td><td>1033</td><td>Executing SQL Uninstall Script...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_STANDARD_USE_SETUPEXE</td><td>1033</td><td>This installation cannot be run by directly launching the MSI package. You must run setup.exe.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SetupTips_Advertise</td><td>1033</td><td>Will be installed on first use. (Available only if the feature supports this option.)</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SetupTips_AllInstalledLocal</td><td>1033</td><td>Will be completely installed to the local hard drive.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SetupTips_CustomSetup</td><td>1033</td><td>{&amp;MSSansBold8}Custom Setup Tips</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SetupTips_CustomSetupDescription</td><td>1033</td><td>Custom Setup allows you to selectively install program features.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SetupTips_IconInstallState</td><td>1033</td><td>The icon next to the feature name indicates the install state of the feature. Click the icon to drop down the install state menu for each feature.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SetupTips_InstallState</td><td>1033</td><td>This install state means the feature...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SetupTips_Network</td><td>1033</td><td>Will be installed to run from the network. (Available only if the feature supports this option.)</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SetupTips_OK</td><td>1033</td><td>OK</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SetupTips_SubFeaturesInstalledLocal</td><td>1033</td><td>Will have some subfeatures installed to the local hard drive. (Available only if the feature has subfeatures.)</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_SetupTips_WillNotBeInstalled</td><td>1033</td><td>Will not be installed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_Available</td><td>1033</td><td>Available</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_Bytes</td><td>1033</td><td>bytes</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_CompilingFeaturesCost</td><td>1033</td><td>Compiling cost for this feature...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_Differences</td><td>1033</td><td>Differences</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_DiskSize</td><td>1033</td><td>Disk Size</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureCompletelyRemoved</td><td>1033</td><td>This feature will be completely removed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureContinueNetwork</td><td>1033</td><td>This feature will continue to be run from the network</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureFreeSpace</td><td>1033</td><td>This feature frees up [1] on your hard drive.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledCD</td><td>1033</td><td>This feature, and all subfeatures, will be installed to run from the CD.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledCD2</td><td>1033</td><td>This feature will be installed to run from CD.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledLocal</td><td>1033</td><td>This feature, and all subfeatures, will be installed on local hard drive.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledLocal2</td><td>1033</td><td>This feature will be installed on local hard drive.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledNetwork</td><td>1033</td><td>This feature, and all subfeatures, will be installed to run from the network.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledNetwork2</td><td>1033</td><td>This feature will be installed to run from network.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledRequired</td><td>1033</td><td>Will be installed when required.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledWhenRequired</td><td>1033</td><td>This feature will be set to be installed when required.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureInstalledWhenRequired2</td><td>1033</td><td>This feature will be installed when required.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureLocal</td><td>1033</td><td>This feature will be installed on the local hard drive.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureLocal2</td><td>1033</td><td>This feature will be installed on your local hard drive.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureNetwork</td><td>1033</td><td>This feature will be installed to run from the network.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureNetwork2</td><td>1033</td><td>This feature will be available to run from the network.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureNotAvailable</td><td>1033</td><td>This feature will not be available.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureOnCD</td><td>1033</td><td>This feature will be installed to run from CD.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureOnCD2</td><td>1033</td><td>This feature will be available to run from CD.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureRemainLocal</td><td>1033</td><td>This feature will remain on your local hard drive.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureRemoveNetwork</td><td>1033</td><td>This feature will be removed from your local hard drive, but will be still available to run from the network.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureRemovedCD</td><td>1033</td><td>This feature will be removed from your local hard drive but will still be available to run from CD.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureRemovedUnlessRequired</td><td>1033</td><td>This feature will be removed from your local hard drive but will be set to be installed when required.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureRequiredSpace</td><td>1033</td><td>This feature requires [1] on your hard drive.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureRunFromCD</td><td>1033</td><td>This feature will continue to be run from the CD</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree</td><td>1033</td><td>This feature frees up [1] on your hard drive. It has [2] of [3] subfeatures selected. The subfeatures free up [4] on your hard drive.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree2</td><td>1033</td><td>This feature frees up [1] on your hard drive. It has [2] of [3] subfeatures selected. The subfeatures require [4] on your hard drive.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree3</td><td>1033</td><td>This feature requires [1] on your hard drive. It has [2] of [3] subfeatures selected. The subfeatures free up [4] on your hard drive.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureSpaceFree4</td><td>1033</td><td>This feature requires [1] on your hard drive. It has [2] of [3] subfeatures selected. The subfeatures require [4] on your hard drive.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureUnavailable</td><td>1033</td><td>This feature will become unavailable.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureUninstallNoNetwork</td><td>1033</td><td>This feature will be uninstalled completely, and you won't be able to run it from the network.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureWasCD</td><td>1033</td><td>This feature was run from the CD but will be set to be installed when required.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureWasCDLocal</td><td>1033</td><td>This feature was run from the CD but will be installed on the local hard drive.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureWasOnNetworkInstalled</td><td>1033</td><td>This feature was run from the network but will be installed when required.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureWasOnNetworkLocal</td><td>1033</td><td>This feature was run from the network but will be installed on the local hard drive.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_FeatureWillBeUninstalled</td><td>1033</td><td>This feature will be uninstalled completely, and you won't be able to run it from CD.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_Folder</td><td>1033</td><td>Fldr|New Folder</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_GB</td><td>1033</td><td>GB</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_KB</td><td>1033</td><td>KB</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_MB</td><td>1033</td><td>MB</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_Required</td><td>1033</td><td>Required</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_TimeRemaining</td><td>1033</td><td>Time remaining: {[1] min }{[2] sec}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS_UITEXT_Volume</td><td>1033</td><td>Volume</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__AgreeToLicense_0</td><td>1033</td><td>I &amp;do not accept the terms in the license agreement</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__AgreeToLicense_1</td><td>1033</td><td>I &amp;accept the terms in the license agreement</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__DatabaseFolder_ChangeFolder</td><td>1033</td><td>Click Next to install to this folder, or click Change to install to a different folder.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__DatabaseFolder_DatabaseDir</td><td>1033</td><td>[DATABASEDIR]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__DatabaseFolder_DatabaseFolder</td><td>1033</td><td>{&amp;MSSansBold8}Database Folder</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__DestinationFolder_Change</td><td>1033</td><td>&amp;Change...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__DestinationFolder_ChangeFolder</td><td>1033</td><td>Click Next to install to this folder, or click Change to install to a different folder.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__DestinationFolder_DestinationFolder</td><td>1033</td><td>{&amp;MSSansBold8}Destination Folder</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__DestinationFolder_InstallTo</td><td>1033</td><td>Install [ProductName] to:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__DisplayName_Custom</td><td>1033</td><td>Custom</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__DisplayName_Minimal</td><td>1033</td><td>Minimal</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__DisplayName_Typical</td><td>1033</td><td>Typical</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallBrowse_11</td><td>1033</td><td/><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallBrowse_4</td><td>1033</td><td/><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallBrowse_8</td><td>1033</td><td/><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallBrowse_BrowseDestination</td><td>1033</td><td>Browse to the destination folder.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallBrowse_ChangeDestination</td><td>1033</td><td>{&amp;MSSansBold8}Change Current Destination Folder</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallBrowse_CreateFolder</td><td>1033</td><td>Create new folder|</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallBrowse_FolderName</td><td>1033</td><td>&amp;Folder name:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallBrowse_LookIn</td><td>1033</td><td>&amp;Look in:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallBrowse_UpOneLevel</td><td>1033</td><td>Up one level|</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallPointWelcome_ServerImage</td><td>1033</td><td>The InstallShield(R) Wizard will create a server image of [ProductName] at a specified network location. To continue, click Next.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallPointWelcome_Wizard</td><td>1033</td><td>{&amp;TahomaBold10}Welcome to the InstallShield Wizard for [ProductName]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallPoint_Change</td><td>1033</td><td>&amp;Change...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallPoint_EnterNetworkLocation</td><td>1033</td><td>Enter the network location or click Change to browse to a location.  Click Install to create a server image of [ProductName] at the specified network location or click Cancel to exit the wizard.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallPoint_Install</td><td>1033</td><td>&amp;Install</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallPoint_NetworkLocation</td><td>1033</td><td>&amp;Network location:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallPoint_NetworkLocationFormatted</td><td>1033</td><td>{&amp;MSSansBold8}Network Location</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsAdminInstallPoint_SpecifyNetworkLocation</td><td>1033</td><td>Specify a network location for the server image of the product.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsBrowseButton</td><td>1033</td><td>&amp;Browse...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsBrowseFolderDlg_11</td><td>1033</td><td/><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsBrowseFolderDlg_4</td><td>1033</td><td/><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsBrowseFolderDlg_8</td><td>1033</td><td/><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsBrowseFolderDlg_BrowseDestFolder</td><td>1033</td><td>Browse to the destination folder.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsBrowseFolderDlg_ChangeCurrentFolder</td><td>1033</td><td>{&amp;MSSansBold8}Change Current Destination Folder</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsBrowseFolderDlg_CreateFolder</td><td>1033</td><td>Create New Folder|</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsBrowseFolderDlg_FolderName</td><td>1033</td><td>&amp;Folder name:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsBrowseFolderDlg_LookIn</td><td>1033</td><td>&amp;Look in:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsBrowseFolderDlg_OK</td><td>1033</td><td>OK</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsBrowseFolderDlg_UpOneLevel</td><td>1033</td><td>Up One Level|</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsBrowseForAccount</td><td>1033</td><td>Browse for a User Account</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsBrowseGroup</td><td>1033</td><td>Select a Group</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsBrowseUsernameTitle</td><td>1033</td><td>Select a User Name</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCancelDlg_ConfirmCancel</td><td>1033</td><td>Are you sure you want to cancel [ProductName] installation?</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCancelDlg_No</td><td>1033</td><td>&amp;No</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCancelDlg_Yes</td><td>1033</td><td>&amp;Yes</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsConfirmPassword</td><td>1033</td><td>Con&amp;firm password:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCreateNewUserTitle</td><td>1033</td><td>New User Information</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCreateUserBrowse</td><td>1033</td><td>N&amp;ew User Information...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Change</td><td>1033</td><td>&amp;Change...</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCustomSelectionDlg_ClickFeatureIcon</td><td>1033</td><td>Click on an icon in the list below to change how a feature is installed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCustomSelectionDlg_CustomSetup</td><td>1033</td><td>{&amp;MSSansBold8}Custom Setup</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeatureDescription</td><td>1033</td><td>Feature Description</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeaturePath</td><td>1033</td><td>&lt;selected feature path&gt;</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCustomSelectionDlg_FeatureSize</td><td>1033</td><td>Feature size</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Help</td><td>1033</td><td>&amp;Help</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCustomSelectionDlg_InstallTo</td><td>1033</td><td>Install to:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCustomSelectionDlg_MultilineDescription</td><td>1033</td><td>Multiline description of the currently selected item</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCustomSelectionDlg_SelectFeatures</td><td>1033</td><td>Select the program features you want installed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsCustomSelectionDlg_Space</td><td>1033</td><td>&amp;Space</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsDiskSpaceDlg_DiskSpace</td><td>1033</td><td>Disk space required for the installation exceeds available disk space.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsDiskSpaceDlg_HighlightedVolumes</td><td>1033</td><td>The highlighted volumes do not have enough disk space available for the currently selected features. You can remove files from the highlighted volumes, choose to install fewer features onto local drives, or select different destination drives.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsDiskSpaceDlg_Numbers</td><td>1033</td><td>{120}{70}{70}{70}{70}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsDiskSpaceDlg_OK</td><td>1033</td><td>OK</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsDiskSpaceDlg_OutOfDiskSpace</td><td>1033</td><td>{&amp;MSSansBold8}Out of Disk Space</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsDomainOrServer</td><td>1033</td><td>&amp;Domain or server:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsErrorDlg_Abort</td><td>1033</td><td>&amp;Abort</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsErrorDlg_ErrorText</td><td>1033</td><td>&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;&lt;error text goes here&gt;</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsErrorDlg_Ignore</td><td>1033</td><td>&amp;Ignore</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsErrorDlg_InstallerInfo</td><td>1033</td><td>[ProductName] Installer Information</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsErrorDlg_NO</td><td>1033</td><td>&amp;No</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsErrorDlg_OK</td><td>1033</td><td>&amp;OK</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsErrorDlg_Retry</td><td>1033</td><td>&amp;Retry</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsErrorDlg_Yes</td><td>1033</td><td>&amp;Yes</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsExitDialog_Finish</td><td>1033</td><td>&amp;Finish</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsExitDialog_InstallSuccess</td><td>1033</td><td>The InstallShield Wizard has successfully installed [ProductName]. Click Finish to exit the wizard.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsExitDialog_LaunchProgram</td><td>1033</td><td>Launch the program</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsExitDialog_ShowReadMe</td><td>1033</td><td>Show the readme file</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsExitDialog_UninstallSuccess</td><td>1033</td><td>The InstallShield Wizard has successfully uninstalled [ProductName]. Click Finish to exit the wizard.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsExitDialog_Update_InternetConnection</td><td>1033</td><td>Your Internet connection can be used to make sure that you have the latest updates.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsExitDialog_Update_PossibleUpdates</td><td>1033</td><td>Some program files might have been updated since you purchased your copy of [ProductName].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsExitDialog_Update_SetupFinished</td><td>1033</td><td>Setup has finished installing [ProductName].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsExitDialog_Update_YesCheckForUpdates</td><td>1033</td><td>&amp;Yes, check for program updates (Recommended) after the setup completes.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsExitDialog_WizardCompleted</td><td>1033</td><td>{&amp;TahomaBold10}InstallShield Wizard Completed</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFatalError_ClickFinish</td><td>1033</td><td>Click Finish to exit the wizard.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFatalError_Finish</td><td>1033</td><td>&amp;Finish</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFatalError_KeepOrRestore</td><td>1033</td><td>You can either keep any existing installed elements on your system to continue this installation at a later time or you can restore your system to its original state prior to the installation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFatalError_NotModified</td><td>1033</td><td>Your system has not been modified. To complete installation at another time, please run setup again.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFatalError_RestoreOrContinueLater</td><td>1033</td><td>Click Restore or Continue Later to exit the wizard.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFatalError_WizardCompleted</td><td>1033</td><td>{&amp;TahomaBold10}InstallShield Wizard Completed</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFatalError_WizardInterrupted</td><td>1033</td><td>The wizard was interrupted before [ProductName] could be completely installed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_DiskSpaceRequirements</td><td>1033</td><td>{&amp;MSSansBold8}Disk Space Requirements</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_Numbers</td><td>1033</td><td>{120}{70}{70}{70}{70}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_OK</td><td>1033</td><td>OK</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_SpaceRequired</td><td>1033</td><td>The disk space required for the installation of the selected features.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFeatureDetailsDlg_VolumesTooSmall</td><td>1033</td><td>The highlighted volumes do not have enough disk space available for the currently selected features. You can remove files from the highlighted volumes, choose to install fewer features onto local drives, or select different destination drives.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFilesInUse_ApplicationsUsingFiles</td><td>1033</td><td>The following applications are using files that need to be updated by this setup. Close these applications and click Retry to continue.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFilesInUse_Exit</td><td>1033</td><td>&amp;Exit</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFilesInUse_FilesInUse</td><td>1033</td><td>{&amp;MSSansBold8}Files in Use</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFilesInUse_FilesInUseMessage</td><td>1033</td><td>Some files that need to be updated are currently in use.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFilesInUse_Ignore</td><td>1033</td><td>&amp;Ignore</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsFilesInUse_Retry</td><td>1033</td><td>&amp;Retry</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsGroup</td><td>1033</td><td>&amp;Group:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsGroupLabel</td><td>1033</td><td>Gr&amp;oup:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsInitDlg_1</td><td>1033</td><td/><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsInitDlg_2</td><td>1033</td><td/><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsInitDlg_PreparingWizard</td><td>1033</td><td>[ProductName] Setup is preparing the InstallShield Wizard which will guide you through the program setup process.  Please wait.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsInitDlg_WelcomeWizard</td><td>1033</td><td>{&amp;TahomaBold10}Welcome to the InstallShield Wizard for [ProductName]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsLicenseDlg_LicenseAgreement</td><td>1033</td><td>{&amp;MSSansBold8}License Agreement</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsLicenseDlg_ReadLicenseAgreement</td><td>1033</td><td>Please read the following license agreement carefully.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsLogonInfoDescription</td><td>1033</td><td>Specify the user name and password of the user account that will logon to use this application. The user account must be in the form DOMAIN\Username.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsLogonInfoTitle</td><td>1033</td><td>{&amp;MSSansBold8}Logon Information</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsLogonInfoTitleDescription</td><td>1033</td><td>Specify a user name and password</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsLogonNewUserDescription</td><td>1033</td><td>Select the button below to specify information about a new user that will be created during the installation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsMaintenanceDlg_ChangeFeatures</td><td>1033</td><td>Change which program features are installed. This option displays the Custom Selection dialog in which you can change the way features are installed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsMaintenanceDlg_MaitenanceOptions</td><td>1033</td><td>Modify, repair, or remove the program.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsMaintenanceDlg_Modify</td><td>1033</td><td>{&amp;MSSansBold8}&amp;Modify</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsMaintenanceDlg_ProgramMaintenance</td><td>1033</td><td>{&amp;MSSansBold8}Program Maintenance</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsMaintenanceDlg_Remove</td><td>1033</td><td>{&amp;MSSansBold8}&amp;Remove</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsMaintenanceDlg_RemoveProductName</td><td>1033</td><td>Remove [ProductName] from your computer.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsMaintenanceDlg_Repair</td><td>1033</td><td>{&amp;MSSansBold8}Re&amp;pair</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsMaintenanceDlg_RepairMessage</td><td>1033</td><td>Repair installation errors in the program. This option fixes missing or corrupt files, shortcuts, and registry entries.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsMaintenanceWelcome_MaintenanceOptionsDescription</td><td>1033</td><td>The InstallShield(R) Wizard will allow you to modify, repair, or remove [ProductName]. To continue, click Next.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsMaintenanceWelcome_WizardWelcome</td><td>1033</td><td>{&amp;TahomaBold10}Welcome to the InstallShield Wizard for [ProductName]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_ApplicationsUsingFiles</td><td>1033</td><td>The following applications are using files that need to be updated by this setup.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_CloseRestart</td><td>1033</td><td>Automatically close and attempt to restart applications.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsMsiRMFilesInUse_RebootAfter</td><td>1033</td><td>Do not close applications. (A reboot will be required.)</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsPatchDlg_PatchClickUpdate</td><td>1033</td><td>The InstallShield(R) Wizard will install the Patch for [ProductName] on your computer.  To continue, click Update.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsPatchDlg_PatchWizard</td><td>1033</td><td>[ProductName] Patch - InstallShield Wizard</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsPatchDlg_Update</td><td>1033</td><td>&amp;Update &gt;</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsPatchDlg_WelcomePatchWizard</td><td>1033</td><td>{&amp;TahomaBold10}Welcome to the Patch for [ProductName]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsProgressDlg_2</td><td>1033</td><td/><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsProgressDlg_Hidden</td><td>1033</td><td>(Hidden for now)</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsProgressDlg_HiddenTimeRemaining</td><td>1033</td><td>)Hidden for now)Estimated time remaining:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsProgressDlg_InstallingProductName</td><td>1033</td><td>{&amp;MSSansBold8}Installing [ProductName]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsProgressDlg_ProgressDone</td><td>1033</td><td>Progress done</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsProgressDlg_SecHidden</td><td>1033</td><td>(Hidden for now)Sec.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsProgressDlg_Status</td><td>1033</td><td>Status:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsProgressDlg_Uninstalling</td><td>1033</td><td>{&amp;MSSansBold8}Uninstalling [ProductName]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsProgressDlg_UninstallingFeatures</td><td>1033</td><td>The program features you selected are being uninstalled.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsProgressDlg_UninstallingFeatures2</td><td>1033</td><td>The program features you selected are being installed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsProgressDlg_WaitUninstall</td><td>1033</td><td>Please wait while the InstallShield Wizard uninstalls [ProductName]. This may take several minutes.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsProgressDlg_WaitUninstall2</td><td>1033</td><td>Please wait while the InstallShield Wizard installs [ProductName]. This may take several minutes.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsReadmeDlg_Cancel</td><td>1033</td><td>&amp;Cancel</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsReadmeDlg_PleaseReadInfo</td><td>1033</td><td>Please read the following readme information carefully.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsReadmeDlg_ReadMeInfo</td><td>1033</td><td>{&amp;MSSansBold8}Readme Information</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsRegisterUserDlg_16</td><td>1033</td><td/><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsRegisterUserDlg_Anyone</td><td>1033</td><td>&amp;Anyone who uses this computer (all users)</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsRegisterUserDlg_CustomerInformation</td><td>1033</td><td>{&amp;MSSansBold8}Customer Information</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsRegisterUserDlg_InstallFor</td><td>1033</td><td>Install this application for:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsRegisterUserDlg_OnlyMe</td><td>1033</td><td>Only for &amp;me ([USERNAME])</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsRegisterUserDlg_Organization</td><td>1033</td><td>&amp;Organization:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsRegisterUserDlg_PleaseEnterInfo</td><td>1033</td><td>Please enter your information.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsRegisterUserDlg_SerialNumber</td><td>1033</td><td>&amp;Serial Number:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsRegisterUserDlg_Tahoma50</td><td>1033</td><td>{\Tahoma8}{50}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsRegisterUserDlg_Tahoma80</td><td>1033</td><td>{\Tahoma8}{80}</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsRegisterUserDlg_UserName</td><td>1033</td><td>&amp;User Name:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsResumeDlg_ResumeSuspended</td><td>1033</td><td>The InstallShield(R) Wizard will complete the suspended installation of [ProductName] on your computer. To continue, click Next.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsResumeDlg_Resuming</td><td>1033</td><td>{&amp;TahomaBold10}Resuming the InstallShield Wizard for [ProductName]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsResumeDlg_WizardResume</td><td>1033</td><td>The InstallShield(R) Wizard will complete the installation of [ProductName] on your computer. To continue, click Next.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsSelectDomainOrServer</td><td>1033</td><td>Select a Domain or Server</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsSelectDomainUserInstructions</td><td>1033</td><td>Use the browse buttons to select a domain\server and a user name.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsSetupComplete_ShowMsiLog</td><td>1033</td><td>Show the Windows Installer log</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_13</td><td>1033</td><td/><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_AllFeatures</td><td>1033</td><td>All program features will be installed. (Requires the most disk space.)</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_ChooseFeatures</td><td>1033</td><td>Choose which program features you want installed and where they will be installed. Recommended for advanced users.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_ChooseSetupType</td><td>1033</td><td>Choose the setup type that best suits your needs.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Complete</td><td>1033</td><td>{&amp;MSSansBold8}&amp;Complete</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Custom</td><td>1033</td><td>{&amp;MSSansBold8}Cu&amp;stom</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Minimal</td><td>1033</td><td>{&amp;MSSansBold8}&amp;Minimal</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_MinimumFeatures</td><td>1033</td><td>Minimum required features will be installed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_SelectSetupType</td><td>1033</td><td>Please select a setup type.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_SetupType</td><td>1033</td><td>{&amp;MSSansBold8}Setup Type</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsSetupTypeMinDlg_Typical</td><td>1033</td><td>{&amp;MSSansBold8}&amp;Typical</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsUserExit_ClickFinish</td><td>1033</td><td>Click Finish to exit the wizard.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsUserExit_Finish</td><td>1033</td><td>&amp;Finish</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsUserExit_KeepOrRestore</td><td>1033</td><td>You can either keep any existing installed elements on your system to continue this installation at a later time or you can restore your system to its original state prior to the installation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsUserExit_NotModified</td><td>1033</td><td>Your system has not been modified. To install this program at a later time, please run the installation again.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsUserExit_RestoreOrContinue</td><td>1033</td><td>Click Restore or Continue Later to exit the wizard.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsUserExit_WizardCompleted</td><td>1033</td><td>{&amp;TahomaBold10}InstallShield Wizard Completed</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsUserExit_WizardInterrupted</td><td>1033</td><td>The wizard was interrupted before [ProductName] could be completely installed.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsUserNameLabel</td><td>1033</td><td>&amp;User name:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_BackOrCancel</td><td>1033</td><td>If you want to review or change any of your installation settings, click Back. Click Cancel to exit the wizard.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ClickInstall</td><td>1033</td><td>Click Install to begin the installation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Company</td><td>1033</td><td>Company: [COMPANYNAME]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_CurrentSettings</td><td>1033</td><td>Current Settings:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_DestFolder</td><td>1033</td><td>Destination Folder:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Install</td><td>1033</td><td>&amp;Install</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Installdir</td><td>1033</td><td>[INSTALLDIR]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ModifyReady</td><td>1033</td><td>{&amp;MSSansBold8}Ready to Modify the Program</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ReadyInstall</td><td>1033</td><td>{&amp;MSSansBold8}Ready to Install the Program</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_ReadyRepair</td><td>1033</td><td>{&amp;MSSansBold8}Ready to Repair the Program</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_SelectedSetupType</td><td>1033</td><td>[SelectedSetupType]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_Serial</td><td>1033</td><td>Serial: [ISX_SERIALNUM]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_SetupType</td><td>1033</td><td>Setup Type:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_UserInfo</td><td>1033</td><td>User Information:</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_UserName</td><td>1033</td><td>Name: [USERNAME]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyReadyDlg_WizardReady</td><td>1033</td><td>The wizard is ready to begin installation.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ChoseRemoveProgram</td><td>1033</td><td>You have chosen to remove the program from your system.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ClickBack</td><td>1033</td><td>If you want to review or change any settings, click Back.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_ClickRemove</td><td>1033</td><td>Click Remove to remove [ProductName] from your computer. After removal, this program will no longer be available for use.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_Remove</td><td>1033</td><td>&amp;Remove</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsVerifyRemoveAllDlg_RemoveProgram</td><td>1033</td><td>{&amp;MSSansBold8}Remove the Program</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsWelcomeDlg_InstallProductName</td><td>1033</td><td>The InstallShield(R) Wizard will install [ProductName] on your computer. To continue, click Next.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsWelcomeDlg_WarningCopyright</td><td>1033</td><td>WARNING: This program is protected by copyright law and international treaties.</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__IsWelcomeDlg_WelcomeProductName</td><td>1033</td><td>{&amp;TahomaBold10}Welcome to the InstallShield Wizard for [ProductName]</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__TargetReq_DESC_COLOR</td><td>1033</td><td>The color settings of your system are not adequate for running [ProductName].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__TargetReq_DESC_OS</td><td>1033</td><td>The operating system is not adequate for running [ProductName].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__TargetReq_DESC_PROCESSOR</td><td>1033</td><td>The processor is not adequate for running [ProductName].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__TargetReq_DESC_RAM</td><td>1033</td><td>The amount of RAM is not adequate for running [ProductName].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IDS__TargetReq_DESC_RESOLUTION</td><td>1033</td><td>The screen resolution is not adequate for running [ProductName].</td><td>0</td><td/><td>337857488</td></row>
		<row><td>ID_STRING1</td><td>1033</td><td>http://www.BrittonITLtd.com</td><td>0</td><td/><td>337857488</td></row>
		<row><td>ID_STRING2</td><td>1033</td><td>Britton IT Ltd</td><td>0</td><td/><td>337857488</td></row>
		<row><td>IIDS_UITEXT_FeatureUninstalled</td><td>1033</td><td>This feature will remain uninstalled.</td><td>0</td><td/><td>337857488</td></row>
	</table>

	<table name="ISSwidtagProperty">
		<col key="yes" def="s72">Name</col>
		<col def="s0">Value</col>
		<row><td>UniqueId</td><td>B537CED8-4E24-40C7-970A-9E6BE808A075</td></row>
	</table>

	<table name="ISTargetImage">
		<col key="yes" def="s13">UpgradedImage_</col>
		<col key="yes" def="s13">Name</col>
		<col def="s0">MsiPath</col>
		<col def="i2">Order</col>
		<col def="I4">Flags</col>
		<col def="i2">IgnoreMissingFiles</col>
	</table>

	<table name="ISUpgradeMsiItem">
		<col key="yes" def="s72">UpgradeItem</col>
		<col def="s0">ObjectSetupPath</col>
		<col def="S255">ISReleaseFlags</col>
		<col def="i2">ISAttributes</col>
	</table>

	<table name="ISUpgradedImage">
		<col key="yes" def="s13">Name</col>
		<col def="s0">MsiPath</col>
		<col def="s8">Family</col>
	</table>

	<table name="ISVirtualDirectory">
		<col key="yes" def="s72">Directory_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualPackage">
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualRegistry">
		<col key="yes" def="s72">Registry_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualRelease">
		<col key="yes" def="s72">ISRelease_</col>
		<col key="yes" def="s72">ISProductConfiguration_</col>
		<col key="yes" def="s255">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISVirtualShortcut">
		<col key="yes" def="s72">Shortcut_</col>
		<col key="yes" def="s72">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="ISXmlElement">
		<col key="yes" def="s72">ISXmlElement</col>
		<col def="s72">ISXmlFile_</col>
		<col def="S72">ISXmlElement_Parent</col>
		<col def="L0">XPath</col>
		<col def="L0">Content</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISXmlElementAttrib">
		<col key="yes" def="s72">ISXmlElementAttrib</col>
		<col key="yes" def="s72">ISXmlElement_</col>
		<col def="L255">Name</col>
		<col def="L0">Value</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="ISXmlFile">
		<col key="yes" def="s72">ISXmlFile</col>
		<col def="l255">FileName</col>
		<col def="s72">Component_</col>
		<col def="s72">Directory</col>
		<col def="I4">ISAttributes</col>
		<col def="S0">SelectionNamespaces</col>
		<col def="S255">Encoding</col>
	</table>

	<table name="ISXmlLocator">
		<col key="yes" def="s72">Signature_</col>
		<col key="yes" def="S72">Parent</col>
		<col def="S255">Element</col>
		<col def="S255">Attribute</col>
		<col def="I2">ISAttributes</col>
	</table>

	<table name="Icon">
		<col key="yes" def="s72">Name</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
		<col def="I2">ISIconIndex</col>
		<row><td>ARPPRODUCTICON.exe</td><td/><td>&lt;ISProductFolder&gt;\redist\Language Independent\OS Independent\setupicon.ico</td><td>0</td></row>
	</table>

	<table name="IniFile">
		<col key="yes" def="s72">IniFile</col>
		<col def="l255">FileName</col>
		<col def="S72">DirProperty</col>
		<col def="l255">Section</col>
		<col def="l128">Key</col>
		<col def="s255">Value</col>
		<col def="i2">Action</col>
		<col def="s72">Component_</col>
	</table>

	<table name="IniLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="s255">FileName</col>
		<col def="s96">Section</col>
		<col def="s128">Key</col>
		<col def="I2">Field</col>
		<col def="I2">Type</col>
	</table>

	<table name="InstallExecuteSequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AllocateRegistrySpace</td><td>NOT Installed</td><td>1550</td><td>AllocateRegistrySpace</td><td/></row>
		<row><td>AppSearch</td><td/><td>400</td><td>AppSearch</td><td/></row>
		<row><td>BindImage</td><td/><td>4300</td><td>BindImage</td><td/></row>
		<row><td>CCPSearch</td><td>CCP_TEST</td><td>500</td><td>CCPSearch</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>CreateFolders</td><td/><td>3700</td><td>CreateFolders</td><td/></row>
		<row><td>CreateShortcuts</td><td/><td>4500</td><td>CreateShortcuts</td><td/></row>
		<row><td>DeleteServices</td><td>VersionNT</td><td>2000</td><td>DeleteServices</td><td/></row>
		<row><td>DuplicateFiles</td><td/><td>4210</td><td>DuplicateFiles</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>FindRelatedProducts</td><td>NOT ISSETUPDRIVEN</td><td>420</td><td>FindRelatedProducts</td><td/></row>
		<row><td>ISPreventDowngrade</td><td>ISFOUNDNEWERPRODUCTVERSION</td><td>450</td><td>ISPreventDowngrade</td><td/></row>
		<row><td>ISRunSetupTypeAddLocalEvent</td><td>Not Installed And Not ISRUNSETUPTYPEADDLOCALEVENT</td><td>1050</td><td>ISRunSetupTypeAddLocalEvent</td><td/></row>
		<row><td>ISSelfRegisterCosting</td><td/><td>2201</td><td/><td/></row>
		<row><td>ISSelfRegisterFiles</td><td/><td>5601</td><td/><td/></row>
		<row><td>ISSelfRegisterFinalize</td><td/><td>6601</td><td/><td/></row>
		<row><td>ISUnSelfRegisterFiles</td><td/><td>2202</td><td/><td/></row>
		<row><td>InstallFiles</td><td/><td>4000</td><td>InstallFiles</td><td/></row>
		<row><td>InstallFinalize</td><td/><td>6600</td><td>InstallFinalize</td><td/></row>
		<row><td>InstallInitialize</td><td/><td>1501</td><td>InstallInitialize</td><td/></row>
		<row><td>InstallODBC</td><td/><td>5400</td><td>InstallODBC</td><td/></row>
		<row><td>InstallServices</td><td>VersionNT</td><td>5800</td><td>InstallServices</td><td/></row>
		<row><td>InstallValidate</td><td/><td>1400</td><td>InstallValidate</td><td/></row>
		<row><td>IsolateComponents</td><td/><td>950</td><td>IsolateComponents</td><td/></row>
		<row><td>LaunchConditions</td><td>Not Installed</td><td>410</td><td>LaunchConditions</td><td/></row>
		<row><td>MigrateFeatureStates</td><td/><td>1010</td><td>MigrateFeatureStates</td><td/></row>
		<row><td>MoveFiles</td><td/><td>3800</td><td>MoveFiles</td><td/></row>
		<row><td>MsiConfigureServices</td><td>VersionMsi &gt;= "5.00"</td><td>5850</td><td>MSI5 MsiConfigureServices</td><td/></row>
		<row><td>MsiPublishAssemblies</td><td/><td>6250</td><td>MsiPublishAssemblies</td><td/></row>
		<row><td>MsiUnpublishAssemblies</td><td/><td>1750</td><td>MsiUnpublishAssemblies</td><td/></row>
		<row><td>PatchFiles</td><td/><td>4090</td><td>PatchFiles</td><td/></row>
		<row><td>ProcessComponents</td><td/><td>1600</td><td>ProcessComponents</td><td/></row>
		<row><td>PublishComponents</td><td/><td>6200</td><td>PublishComponents</td><td/></row>
		<row><td>PublishFeatures</td><td/><td>6300</td><td>PublishFeatures</td><td/></row>
		<row><td>PublishProduct</td><td/><td>6400</td><td>PublishProduct</td><td/></row>
		<row><td>RMCCPSearch</td><td>Not CCP_SUCCESS And CCP_TEST</td><td>600</td><td>RMCCPSearch</td><td/></row>
		<row><td>RegisterClassInfo</td><td/><td>4600</td><td>RegisterClassInfo</td><td/></row>
		<row><td>RegisterComPlus</td><td/><td>5700</td><td>RegisterComPlus</td><td/></row>
		<row><td>RegisterExtensionInfo</td><td/><td>4700</td><td>RegisterExtensionInfo</td><td/></row>
		<row><td>RegisterFonts</td><td/><td>5300</td><td>RegisterFonts</td><td/></row>
		<row><td>RegisterMIMEInfo</td><td/><td>4900</td><td>RegisterMIMEInfo</td><td/></row>
		<row><td>RegisterProduct</td><td/><td>6100</td><td>RegisterProduct</td><td/></row>
		<row><td>RegisterProgIdInfo</td><td/><td>4800</td><td>RegisterProgIdInfo</td><td/></row>
		<row><td>RegisterTypeLibraries</td><td/><td>5500</td><td>RegisterTypeLibraries</td><td/></row>
		<row><td>RegisterUser</td><td/><td>6000</td><td>RegisterUser</td><td/></row>
		<row><td>RemoveDuplicateFiles</td><td/><td>3400</td><td>RemoveDuplicateFiles</td><td/></row>
		<row><td>RemoveEnvironmentStrings</td><td/><td>3300</td><td>RemoveEnvironmentStrings</td><td/></row>
		<row><td>RemoveExistingProducts</td><td/><td>1410</td><td>RemoveExistingProducts</td><td/></row>
		<row><td>RemoveFiles</td><td/><td>3500</td><td>RemoveFiles</td><td/></row>
		<row><td>RemoveFolders</td><td/><td>3600</td><td>RemoveFolders</td><td/></row>
		<row><td>RemoveIniValues</td><td/><td>3100</td><td>RemoveIniValues</td><td/></row>
		<row><td>RemoveODBC</td><td/><td>2400</td><td>RemoveODBC</td><td/></row>
		<row><td>RemoveRegistryValues</td><td/><td>2600</td><td>RemoveRegistryValues</td><td/></row>
		<row><td>RemoveShortcuts</td><td/><td>3200</td><td>RemoveShortcuts</td><td/></row>
		<row><td>ResolveSource</td><td>Not Installed</td><td>850</td><td>ResolveSource</td><td/></row>
		<row><td>ScheduleReboot</td><td>ISSCHEDULEREBOOT</td><td>6410</td><td>ScheduleReboot</td><td/></row>
		<row><td>SelfRegModules</td><td/><td>5600</td><td>SelfRegModules</td><td/></row>
		<row><td>SelfUnregModules</td><td/><td>2200</td><td>SelfUnregModules</td><td/></row>
		<row><td>SetARPINSTALLLOCATION</td><td/><td>1100</td><td>SetARPINSTALLLOCATION</td><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>VersionNT = 400</td><td>970</td><td/><td/></row>
		<row><td>SetODBCFolders</td><td/><td>1200</td><td>SetODBCFolders</td><td/></row>
		<row><td>StartServices</td><td>VersionNT</td><td>5900</td><td>StartServices</td><td/></row>
		<row><td>StopServices</td><td>VersionNT</td><td>1900</td><td>StopServices</td><td/></row>
		<row><td>UnpublishComponents</td><td/><td>1700</td><td>UnpublishComponents</td><td/></row>
		<row><td>UnpublishFeatures</td><td/><td>1800</td><td>UnpublishFeatures</td><td/></row>
		<row><td>UnregisterClassInfo</td><td/><td>2700</td><td>UnregisterClassInfo</td><td/></row>
		<row><td>UnregisterComPlus</td><td/><td>2100</td><td>UnregisterComPlus</td><td/></row>
		<row><td>UnregisterExtensionInfo</td><td/><td>2800</td><td>UnregisterExtensionInfo</td><td/></row>
		<row><td>UnregisterFonts</td><td/><td>2500</td><td>UnregisterFonts</td><td/></row>
		<row><td>UnregisterMIMEInfo</td><td/><td>3000</td><td>UnregisterMIMEInfo</td><td/></row>
		<row><td>UnregisterProgIdInfo</td><td/><td>2900</td><td>UnregisterProgIdInfo</td><td/></row>
		<row><td>UnregisterTypeLibraries</td><td/><td>2300</td><td>UnregisterTypeLibraries</td><td/></row>
		<row><td>ValidateProductID</td><td/><td>700</td><td>ValidateProductID</td><td/></row>
		<row><td>WriteEnvironmentStrings</td><td/><td>5200</td><td>WriteEnvironmentStrings</td><td/></row>
		<row><td>WriteIniValues</td><td/><td>5100</td><td>WriteIniValues</td><td/></row>
		<row><td>WriteRegistryValues</td><td/><td>5000</td><td>WriteRegistryValues</td><td/></row>
		<row><td>setAllUsersProfile2K</td><td>VersionNT &gt;= 500</td><td>980</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>VersionNT</td><td>960</td><td/><td/></row>
	</table>

	<table name="InstallShield">
		<col key="yes" def="s72">Property</col>
		<col def="S0">Value</col>
		<row><td>ActiveLanguage</td><td>1033</td></row>
		<row><td>Comments</td><td/></row>
		<row><td>CurrentMedia</td><td dt:dt="bin.base64" md5="de9f554a3bc05c12be9c31b998217995">
UwBpAG4AZwBsAGUASQBtAGEAZwBlAAEARQB4AHAAcgBlAHMAcwA=
			</td></row>
		<row><td>DefaultProductConfiguration</td><td>Express</td></row>
		<row><td>EnableSwidtag</td><td>1</td></row>
		<row><td>ISCompilerOption_CompileBeforeBuild</td><td>1</td></row>
		<row><td>ISCompilerOption_Debug</td><td>0</td></row>
		<row><td>ISCompilerOption_IncludePath</td><td/></row>
		<row><td>ISCompilerOption_LibraryPath</td><td/></row>
		<row><td>ISCompilerOption_MaxErrors</td><td>50</td></row>
		<row><td>ISCompilerOption_MaxWarnings</td><td>50</td></row>
		<row><td>ISCompilerOption_OutputPath</td><td>&lt;ISProjectDataFolder&gt;\Script Files</td></row>
		<row><td>ISCompilerOption_PreProcessor</td><td>_ISSCRIPT_NEW_STYLE_DLG_DEFS</td></row>
		<row><td>ISCompilerOption_WarningLevel</td><td>3</td></row>
		<row><td>ISCompilerOption_WarningsAsErrors</td><td>1</td></row>
		<row><td>ISTheme</td><td>InstallShield Blue.theme</td></row>
		<row><td>ISUSLock</td><td>{BE3C6264-65AA-4368-8531-657D7BDA96BA}</td></row>
		<row><td>ISUSSignature</td><td>{D8A21A67-536C-427A-8EAB-7B399785B945}</td></row>
		<row><td>ISVisitedViews</td><td>viewAssistant</td></row>
		<row><td>Limited</td><td>1</td></row>
		<row><td>LockPermissionMode</td><td>1</td></row>
		<row><td>MsiExecCmdLineOptions</td><td/></row>
		<row><td>MsiLogFile</td><td/></row>
		<row><td>OnUpgrade</td><td>0</td></row>
		<row><td>Owner</td><td/></row>
		<row><td>PatchFamily</td><td>MyPatchFamily1</td></row>
		<row><td>PatchSequence</td><td>1.0.0</td></row>
		<row><td>SaveAsSchema</td><td/></row>
		<row><td>SccEnabled</td><td>0</td></row>
		<row><td>SccPath</td><td/></row>
		<row><td>SchemaVersion</td><td>774</td></row>
		<row><td>Type</td><td>MSIE</td></row>
	</table>

	<table name="InstallUISequence">
		<col key="yes" def="s72">Action</col>
		<col def="S255">Condition</col>
		<col def="I2">Sequence</col>
		<col def="S255">ISComments</col>
		<col def="I4">ISAttributes</col>
		<row><td>AppSearch</td><td/><td>400</td><td>AppSearch</td><td/></row>
		<row><td>CCPSearch</td><td>CCP_TEST</td><td>500</td><td>CCPSearch</td><td/></row>
		<row><td>CostFinalize</td><td/><td>1000</td><td>CostFinalize</td><td/></row>
		<row><td>CostInitialize</td><td/><td>800</td><td>CostInitialize</td><td/></row>
		<row><td>ExecuteAction</td><td/><td>1300</td><td>ExecuteAction</td><td/></row>
		<row><td>FileCost</td><td/><td>900</td><td>FileCost</td><td/></row>
		<row><td>FindRelatedProducts</td><td/><td>430</td><td>FindRelatedProducts</td><td/></row>
		<row><td>ISPreventDowngrade</td><td>ISFOUNDNEWERPRODUCTVERSION</td><td>450</td><td>ISPreventDowngrade</td><td/></row>
		<row><td>InstallWelcome</td><td>Not Installed</td><td>1210</td><td>InstallWelcome</td><td/></row>
		<row><td>IsolateComponents</td><td/><td>950</td><td>IsolateComponents</td><td/></row>
		<row><td>LaunchConditions</td><td>Not Installed</td><td>410</td><td>LaunchConditions</td><td/></row>
		<row><td>MaintenanceWelcome</td><td>Installed And Not RESUME And Not Preselected And Not PATCH</td><td>1230</td><td>MaintenanceWelcome</td><td/></row>
		<row><td>MigrateFeatureStates</td><td/><td>1200</td><td>MigrateFeatureStates</td><td/></row>
		<row><td>PatchWelcome</td><td>Installed And PATCH And Not IS_MAJOR_UPGRADE</td><td>1205</td><td>Patch Panel</td><td/></row>
		<row><td>RMCCPSearch</td><td>Not CCP_SUCCESS And CCP_TEST</td><td>600</td><td>RMCCPSearch</td><td/></row>
		<row><td>ResolveSource</td><td>Not Installed</td><td>990</td><td>ResolveSource</td><td/></row>
		<row><td>SetAllUsersProfileNT</td><td>VersionNT = 400</td><td>970</td><td/><td/></row>
		<row><td>SetupCompleteError</td><td/><td>-3</td><td>SetupCompleteError</td><td/></row>
		<row><td>SetupCompleteSuccess</td><td/><td>-1</td><td>SetupCompleteSuccess</td><td/></row>
		<row><td>SetupInitialization</td><td/><td>420</td><td>SetupInitialization</td><td/></row>
		<row><td>SetupInterrupted</td><td/><td>-2</td><td>SetupInterrupted</td><td/></row>
		<row><td>SetupProgress</td><td/><td>1240</td><td>SetupProgress</td><td/></row>
		<row><td>SetupResume</td><td>Installed And (RESUME Or Preselected) And Not PATCH</td><td>1220</td><td>SetupResume</td><td/></row>
		<row><td>ValidateProductID</td><td/><td>700</td><td>ValidateProductID</td><td/></row>
		<row><td>setAllUsersProfile2K</td><td>VersionNT &gt;= 500</td><td>980</td><td/><td/></row>
		<row><td>setUserProfileNT</td><td>VersionNT</td><td>960</td><td/><td/></row>
	</table>

	<table name="IsolatedComponent">
		<col key="yes" def="s72">Component_Shared</col>
		<col key="yes" def="s72">Component_Application</col>
	</table>

	<table name="LaunchCondition">
		<col key="yes" def="s255">Condition</col>
		<col def="l255">Description</col>
		<row><td>DOTNETVERSION40CLIENT&gt;="#1"</td><td>##IDPROP_EXPRESS_LAUNCH_CONDITION_DOTNETVERSION40CLIENT##</td></row>
	</table>

	<table name="ListBox">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
	</table>

	<table name="ListView">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="L64">Text</col>
		<col def="S72">Binary_</col>
	</table>

	<table name="LockPermissions">
		<col key="yes" def="s72">LockObject</col>
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="S255">Domain</col>
		<col key="yes" def="s255">User</col>
		<col def="I4">Permission</col>
	</table>

	<table name="MIME">
		<col key="yes" def="s64">ContentType</col>
		<col def="s255">Extension_</col>
		<col def="S38">CLSID</col>
	</table>

	<table name="Media">
		<col key="yes" def="i2">DiskId</col>
		<col def="i2">LastSequence</col>
		<col def="L64">DiskPrompt</col>
		<col def="S255">Cabinet</col>
		<col def="S32">VolumeLabel</col>
		<col def="S32">Source</col>
	</table>

	<table name="MoveFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="L255">SourceName</col>
		<col def="L255">DestName</col>
		<col def="S72">SourceFolder</col>
		<col def="s72">DestFolder</col>
		<col def="i2">Options</col>
	</table>

	<table name="MsiAssembly">
		<col key="yes" def="s72">Component_</col>
		<col def="s38">Feature_</col>
		<col def="S72">File_Manifest</col>
		<col def="S72">File_Application</col>
		<col def="I2">Attributes</col>
	</table>

	<table name="MsiAssemblyName">
		<col key="yes" def="s72">Component_</col>
		<col key="yes" def="s255">Name</col>
		<col def="s255">Value</col>
	</table>

	<table name="MsiDigitalCertificate">
		<col key="yes" def="s72">DigitalCertificate</col>
		<col def="v0">CertData</col>
	</table>

	<table name="MsiDigitalSignature">
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="s72">SignObject</col>
		<col def="s72">DigitalCertificate_</col>
		<col def="V0">Hash</col>
	</table>

	<table name="MsiDriverPackages">
		<col key="yes" def="s72">Component</col>
		<col def="i4">Flags</col>
		<col def="I4">Sequence</col>
		<col def="S0">ReferenceComponents</col>
	</table>

	<table name="MsiEmbeddedChainer">
		<col key="yes" def="s72">MsiEmbeddedChainer</col>
		<col def="S255">Condition</col>
		<col def="S255">CommandLine</col>
		<col def="s72">Source</col>
		<col def="I4">Type</col>
	</table>

	<table name="MsiEmbeddedUI">
		<col key="yes" def="s72">MsiEmbeddedUI</col>
		<col def="s255">FileName</col>
		<col def="i2">Attributes</col>
		<col def="I4">MessageFilter</col>
		<col def="V0">Data</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="MsiFileHash">
		<col key="yes" def="s72">File_</col>
		<col def="i2">Options</col>
		<col def="i4">HashPart1</col>
		<col def="i4">HashPart2</col>
		<col def="i4">HashPart3</col>
		<col def="i4">HashPart4</col>
	</table>

	<table name="MsiLockPermissionsEx">
		<col key="yes" def="s72">MsiLockPermissionsEx</col>
		<col def="s72">LockObject</col>
		<col def="s32">Table</col>
		<col def="s0">SDDLText</col>
		<col def="S255">Condition</col>
	</table>

	<table name="MsiPackageCertificate">
		<col key="yes" def="s72">PackageCertificate</col>
		<col def="s72">DigitalCertificate_</col>
	</table>

	<table name="MsiPatchCertificate">
		<col key="yes" def="s72">PatchCertificate</col>
		<col def="s72">DigitalCertificate_</col>
	</table>

	<table name="MsiPatchMetadata">
		<col key="yes" def="s72">PatchConfiguration_</col>
		<col key="yes" def="S72">Company</col>
		<col key="yes" def="s72">Property</col>
		<col def="S0">Value</col>
	</table>

	<table name="MsiPatchOldAssemblyFile">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="S72">Assembly_</col>
	</table>

	<table name="MsiPatchOldAssemblyName">
		<col key="yes" def="s72">Assembly</col>
		<col key="yes" def="s255">Name</col>
		<col def="S255">Value</col>
	</table>

	<table name="MsiPatchSequence">
		<col key="yes" def="s72">PatchConfiguration_</col>
		<col key="yes" def="s0">PatchFamily</col>
		<col key="yes" def="S0">Target</col>
		<col def="s0">Sequence</col>
		<col def="i2">Supersede</col>
	</table>

	<table name="MsiServiceConfig">
		<col key="yes" def="s72">MsiServiceConfig</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="i4">ConfigType</col>
		<col def="S0">Argument</col>
		<col def="s72">Component_</col>
	</table>

	<table name="MsiServiceConfigFailureActions">
		<col key="yes" def="s72">MsiServiceConfigFailureActions</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="I4">ResetPeriod</col>
		<col def="L255">RebootMessage</col>
		<col def="L255">Command</col>
		<col def="S0">Actions</col>
		<col def="S0">DelayActions</col>
		<col def="s72">Component_</col>
	</table>

	<table name="MsiShortcutProperty">
		<col key="yes" def="s72">MsiShortcutProperty</col>
		<col def="s72">Shortcut_</col>
		<col def="s0">PropertyKey</col>
		<col def="s0">PropVariantValue</col>
	</table>

	<table name="ODBCAttribute">
		<col key="yes" def="s72">Driver_</col>
		<col key="yes" def="s40">Attribute</col>
		<col def="S255">Value</col>
	</table>

	<table name="ODBCDataSource">
		<col key="yes" def="s72">DataSource</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s255">DriverDescription</col>
		<col def="i2">Registration</col>
	</table>

	<table name="ODBCDriver">
		<col key="yes" def="s72">Driver</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s72">File_</col>
		<col def="S72">File_Setup</col>
	</table>

	<table name="ODBCSourceAttribute">
		<col key="yes" def="s72">DataSource_</col>
		<col key="yes" def="s32">Attribute</col>
		<col def="S255">Value</col>
	</table>

	<table name="ODBCTranslator">
		<col key="yes" def="s72">Translator</col>
		<col def="s72">Component_</col>
		<col def="s255">Description</col>
		<col def="s72">File_</col>
		<col def="S72">File_Setup</col>
	</table>

	<table name="Patch">
		<col key="yes" def="s72">File_</col>
		<col key="yes" def="i2">Sequence</col>
		<col def="i4">PatchSize</col>
		<col def="i2">Attributes</col>
		<col def="V0">Header</col>
		<col def="S38">StreamRef_</col>
		<col def="S255">ISBuildSourcePath</col>
	</table>

	<table name="PatchPackage">
		<col key="yes" def="s38">PatchId</col>
		<col def="i2">Media_</col>
	</table>

	<table name="ProgId">
		<col key="yes" def="s255">ProgId</col>
		<col def="S255">ProgId_Parent</col>
		<col def="S38">Class_</col>
		<col def="L255">Description</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="Property">
		<col key="yes" def="s72">Property</col>
		<col def="L0">Value</col>
		<col def="S255">ISComments</col>
		<row><td>ALLUSERS</td><td>1</td><td/></row>
		<row><td>ARPINSTALLLOCATION</td><td/><td/></row>
		<row><td>ARPPRODUCTICON</td><td>ARPPRODUCTICON.exe</td><td/></row>
		<row><td>ARPSIZE</td><td/><td/></row>
		<row><td>ARPURLINFOABOUT</td><td>##ID_STRING1##</td><td/></row>
		<row><td>AgreeToLicense</td><td>No</td><td/></row>
		<row><td>ApplicationUsers</td><td>AllUsers</td><td/></row>
		<row><td>DWUSINTERVAL</td><td>30</td><td/></row>
		<row><td>DWUSLINK</td><td>CECC40A8D9DCA08FFEACA7EFB98C978FDEBC008FCEABB0B8CEBCE0CF194CC048891B67E889AC</td><td/></row>
		<row><td>DefaultUIFont</td><td>ExpressDefault</td><td/></row>
		<row><td>DialogCaption</td><td>InstallShield for Windows Installer</td><td/></row>
		<row><td>DiskPrompt</td><td>[1]</td><td/></row>
		<row><td>DiskSerial</td><td>1234-5678</td><td/></row>
		<row><td>DisplayNameCustom</td><td>##IDS__DisplayName_Custom##</td><td/></row>
		<row><td>DisplayNameMinimal</td><td>##IDS__DisplayName_Minimal##</td><td/></row>
		<row><td>DisplayNameTypical</td><td>##IDS__DisplayName_Typical##</td><td/></row>
		<row><td>Display_IsBitmapDlg</td><td>1</td><td/></row>
		<row><td>ErrorDialog</td><td>SetupError</td><td/></row>
		<row><td>INSTALLLEVEL</td><td>200</td><td/></row>
		<row><td>ISCHECKFORPRODUCTUPDATES</td><td>1</td><td/></row>
		<row><td>ISENABLEDWUSFINISHDIALOG</td><td/><td/></row>
		<row><td>ISSHOWMSILOG</td><td/><td/></row>
		<row><td>ISVROOT_PORT_NO</td><td>0</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_COST</td><td>##IDS_COMPLUS_PROGRESSTEXT_COST##</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_INSTALL</td><td>##IDS_COMPLUS_PROGRESSTEXT_INSTALL##</td><td/></row>
		<row><td>IS_COMPLUS_PROGRESSTEXT_UNINSTALL</td><td>##IDS_COMPLUS_PROGRESSTEXT_UNINSTALL##</td><td/></row>
		<row><td>IS_PREVENT_DOWNGRADE_EXIT</td><td>##IDS_PREVENT_DOWNGRADE_EXIT##</td><td/></row>
		<row><td>IS_PROGMSG_TEXTFILECHANGS_REPLACE</td><td>##IDS_PROGMSG_TEXTFILECHANGS_REPLACE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_COSTING</td><td>##IDS_PROGMSG_XML_COSTING##</td><td/></row>
		<row><td>IS_PROGMSG_XML_CREATE_FILE</td><td>##IDS_PROGMSG_XML_CREATE_FILE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_FILES</td><td>##IDS_PROGMSG_XML_FILES##</td><td/></row>
		<row><td>IS_PROGMSG_XML_REMOVE_FILE</td><td>##IDS_PROGMSG_XML_REMOVE_FILE##</td><td/></row>
		<row><td>IS_PROGMSG_XML_ROLLBACK_FILES</td><td>##IDS_PROGMSG_XML_ROLLBACK_FILES##</td><td/></row>
		<row><td>IS_PROGMSG_XML_UPDATE_FILE</td><td>##IDS_PROGMSG_XML_UPDATE_FILE##</td><td/></row>
		<row><td>IS_SQLSERVER_AUTHENTICATION</td><td>0</td><td/></row>
		<row><td>IS_SQLSERVER_DATABASE</td><td/><td/></row>
		<row><td>IS_SQLSERVER_PASSWORD</td><td/><td/></row>
		<row><td>IS_SQLSERVER_SERVER</td><td/><td/></row>
		<row><td>IS_SQLSERVER_USERNAME</td><td>sa</td><td/></row>
		<row><td>InstallChoice</td><td>AR</td><td/></row>
		<row><td>LAUNCHPROGRAM</td><td>1</td><td/></row>
		<row><td>LAUNCHREADME</td><td>1</td><td/></row>
		<row><td>Manufacturer</td><td>##COMPANY_NAME##</td><td/></row>
		<row><td>PIDKEY</td><td/><td/></row>
		<row><td>PIDTemplate</td><td>12345&lt;###-%%%%%%%&gt;@@@@@</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEAPPPOOL</td><td>##IDS_PROGMSG_IIS_CREATEAPPPOOL##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEAPPPOOLS</td><td>##IDS_PROGMSG_IIS_CREATEAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEVROOT</td><td>##IDS_PROGMSG_IIS_CREATEVROOT##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEVROOTS</td><td>##IDS_PROGMSG_IIS_CREATEVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSERVICEEXTENSION</td><td>##IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSION##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_CREATEWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSITE</td><td>##IDS_PROGMSG_IIS_CREATEWEBSITE##</td><td/></row>
		<row><td>PROGMSG_IIS_CREATEWEBSITES</td><td>##IDS_PROGMSG_IIS_CREATEWEBSITES##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACT</td><td>##IDS_PROGMSG_IIS_EXTRACT##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTDONE</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTDONEz</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_EXTRACTzDONE</td><td>##IDS_PROGMSG_IIS_EXTRACTDONE##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEAPPPOOL</td><td>##IDS_PROGMSG_IIS_REMOVEAPPPOOL##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEAPPPOOLS</td><td>##IDS_PROGMSG_IIS_REMOVEAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVESITE</td><td>##IDS_PROGMSG_IIS_REMOVESITE##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEVROOT</td><td>##IDS_PROGMSG_IIS_REMOVEVROOT##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEVROOTS</td><td>##IDS_PROGMSG_IIS_REMOVEVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSION##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>PROGMSG_IIS_REMOVEWEBSITES</td><td>##IDS_PROGMSG_IIS_REMOVEWEBSITES##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKAPPPOOLS</td><td>##IDS_PROGMSG_IIS_ROLLBACKAPPPOOLS##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKVROOTS</td><td>##IDS_PROGMSG_IIS_ROLLBACKVROOTS##</td><td/></row>
		<row><td>PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS</td><td>##IDS_PROGMSG_IIS_ROLLBACKWEBSERVICEEXTENSIONS##</td><td/></row>
		<row><td>ProductCode</td><td>{F888693B-68EE-4EE1-A84F-FABD594C97D0}</td><td/></row>
		<row><td>ProductName</td><td>CrewChiefV2_with_sound_pack</td><td/></row>
		<row><td>ProductVersion</td><td>2.0.0</td><td/></row>
		<row><td>ProgressType0</td><td>install</td><td/></row>
		<row><td>ProgressType1</td><td>Installing</td><td/></row>
		<row><td>ProgressType2</td><td>installed</td><td/></row>
		<row><td>ProgressType3</td><td>installs</td><td/></row>
		<row><td>RebootYesNo</td><td>Yes</td><td/></row>
		<row><td>ReinstallFileVersion</td><td>o</td><td/></row>
		<row><td>ReinstallModeText</td><td>omus</td><td/></row>
		<row><td>ReinstallRepair</td><td>r</td><td/></row>
		<row><td>RestartManagerOption</td><td>CloseRestart</td><td/></row>
		<row><td>SERIALNUMBER</td><td/><td/></row>
		<row><td>SERIALNUMVALSUCCESSRETVAL</td><td>1</td><td/></row>
		<row><td>SecureCustomProperties</td><td>ISFOUNDNEWERPRODUCTVERSION;USERNAME;COMPANYNAME;ISX_SERIALNUM;SUPPORTDIR;DOTNETVERSION40CLIENT</td><td/></row>
		<row><td>SelectedSetupType</td><td>##IDS__DisplayName_Typical##</td><td/></row>
		<row><td>SetupType</td><td>Typical</td><td/></row>
		<row><td>UpgradeCode</td><td>{3C75B52F-B3C0-4186-BF3C-45EBE1E991EE}</td><td/></row>
		<row><td>_IsMaintenance</td><td>Change</td><td/></row>
		<row><td>_IsSetupTypeMin</td><td>Typical</td><td/></row>
	</table>

	<table name="PublishComponent">
		<col key="yes" def="s38">ComponentId</col>
		<col key="yes" def="s255">Qualifier</col>
		<col key="yes" def="s72">Component_</col>
		<col def="L0">AppData</col>
		<col def="s38">Feature_</col>
	</table>

	<table name="RadioButton">
		<col key="yes" def="s72">Property</col>
		<col key="yes" def="i2">Order</col>
		<col def="s64">Value</col>
		<col def="i2">X</col>
		<col def="i2">Y</col>
		<col def="i2">Width</col>
		<col def="i2">Height</col>
		<col def="L64">Text</col>
		<col def="L50">Help</col>
		<col def="I4">ISControlId</col>
		<row><td>AgreeToLicense</td><td>1</td><td>No</td><td>0</td><td>15</td><td>291</td><td>15</td><td>##IDS__AgreeToLicense_0##</td><td/><td/></row>
		<row><td>AgreeToLicense</td><td>2</td><td>Yes</td><td>0</td><td>0</td><td>291</td><td>15</td><td>##IDS__AgreeToLicense_1##</td><td/><td/></row>
		<row><td>ApplicationUsers</td><td>1</td><td>AllUsers</td><td>1</td><td>7</td><td>290</td><td>14</td><td>##IDS__IsRegisterUserDlg_Anyone##</td><td/><td/></row>
		<row><td>ApplicationUsers</td><td>2</td><td>OnlyCurrentUser</td><td>1</td><td>23</td><td>290</td><td>14</td><td>##IDS__IsRegisterUserDlg_OnlyMe##</td><td/><td/></row>
		<row><td>RestartManagerOption</td><td>1</td><td>CloseRestart</td><td>6</td><td>9</td><td>331</td><td>14</td><td>##IDS__IsMsiRMFilesInUse_CloseRestart##</td><td/><td/></row>
		<row><td>RestartManagerOption</td><td>2</td><td>Reboot</td><td>6</td><td>21</td><td>331</td><td>14</td><td>##IDS__IsMsiRMFilesInUse_RebootAfter##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>1</td><td>Change</td><td>0</td><td>0</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Modify##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>2</td><td>Reinstall</td><td>0</td><td>60</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Repair##</td><td/><td/></row>
		<row><td>_IsMaintenance</td><td>3</td><td>Remove</td><td>0</td><td>120</td><td>290</td><td>14</td><td>##IDS__IsMaintenanceDlg_Remove##</td><td/><td/></row>
		<row><td>_IsSetupTypeMin</td><td>1</td><td>Typical</td><td>1</td><td>6</td><td>264</td><td>14</td><td>##IDS__IsSetupTypeMinDlg_Typical##</td><td/><td/></row>
	</table>

	<table name="RegLocator">
		<col key="yes" def="s72">Signature_</col>
		<col def="i2">Root</col>
		<col def="s255">Key</col>
		<col def="S255">Name</col>
		<col def="I2">Type</col>
		<row><td>DotNet40Client</td><td>2</td><td>SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Client</td><td>Install</td><td>2</td></row>
	</table>

	<table name="Registry">
		<col key="yes" def="s72">Registry</col>
		<col def="i2">Root</col>
		<col def="s255">Key</col>
		<col def="S255">Name</col>
		<col def="S0">Value</col>
		<col def="s72">Component_</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="RemoveFile">
		<col key="yes" def="s72">FileKey</col>
		<col def="s72">Component_</col>
		<col def="L255">FileName</col>
		<col def="s72">DirProperty</col>
		<col def="i2">InstallMode</col>
	</table>

	<table name="RemoveIniFile">
		<col key="yes" def="s72">RemoveIniFile</col>
		<col def="l255">FileName</col>
		<col def="S72">DirProperty</col>
		<col def="l96">Section</col>
		<col def="l128">Key</col>
		<col def="L255">Value</col>
		<col def="i2">Action</col>
		<col def="s72">Component_</col>
	</table>

	<table name="RemoveRegistry">
		<col key="yes" def="s72">RemoveRegistry</col>
		<col def="i2">Root</col>
		<col def="l255">Key</col>
		<col def="L255">Name</col>
		<col def="s72">Component_</col>
	</table>

	<table name="ReserveCost">
		<col key="yes" def="s72">ReserveKey</col>
		<col def="s72">Component_</col>
		<col def="S72">ReserveFolder</col>
		<col def="i4">ReserveLocal</col>
		<col def="i4">ReserveSource</col>
	</table>

	<table name="SFPCatalog">
		<col key="yes" def="s255">SFPCatalog</col>
		<col def="V0">Catalog</col>
		<col def="S0">Dependency</col>
	</table>

	<table name="SelfReg">
		<col key="yes" def="s72">File_</col>
		<col def="I2">Cost</col>
	</table>

	<table name="ServiceControl">
		<col key="yes" def="s72">ServiceControl</col>
		<col def="s255">Name</col>
		<col def="i2">Event</col>
		<col def="S255">Arguments</col>
		<col def="I2">Wait</col>
		<col def="s72">Component_</col>
	</table>

	<table name="ServiceInstall">
		<col key="yes" def="s72">ServiceInstall</col>
		<col def="s255">Name</col>
		<col def="L255">DisplayName</col>
		<col def="i4">ServiceType</col>
		<col def="i4">StartType</col>
		<col def="i4">ErrorControl</col>
		<col def="S255">LoadOrderGroup</col>
		<col def="S255">Dependencies</col>
		<col def="S255">StartName</col>
		<col def="S255">Password</col>
		<col def="S255">Arguments</col>
		<col def="s72">Component_</col>
		<col def="L255">Description</col>
	</table>

	<table name="Shortcut">
		<col key="yes" def="s72">Shortcut</col>
		<col def="s72">Directory_</col>
		<col def="l128">Name</col>
		<col def="s72">Component_</col>
		<col def="s255">Target</col>
		<col def="S255">Arguments</col>
		<col def="L255">Description</col>
		<col def="I2">Hotkey</col>
		<col def="S72">Icon_</col>
		<col def="I2">IconIndex</col>
		<col def="I2">ShowCmd</col>
		<col def="S72">WkDir</col>
		<col def="S255">DisplayResourceDLL</col>
		<col def="I2">DisplayResourceId</col>
		<col def="S255">DescriptionResourceDLL</col>
		<col def="I2">DescriptionResourceId</col>
		<col def="S255">ISComments</col>
		<col def="S255">ISShortcutName</col>
		<col def="I4">ISAttributes</col>
	</table>

	<table name="Signature">
		<col key="yes" def="s72">Signature</col>
		<col def="s255">FileName</col>
		<col def="S20">MinVersion</col>
		<col def="S20">MaxVersion</col>
		<col def="I4">MinSize</col>
		<col def="I4">MaxSize</col>
		<col def="I4">MinDate</col>
		<col def="I4">MaxDate</col>
		<col def="S255">Languages</col>
	</table>

	<table name="TextStyle">
		<col key="yes" def="s72">TextStyle</col>
		<col def="s32">FaceName</col>
		<col def="i2">Size</col>
		<col def="I4">Color</col>
		<col def="I2">StyleBits</col>
		<row><td>Arial8</td><td>Arial</td><td>8</td><td/><td/></row>
		<row><td>Arial9</td><td>Arial</td><td>9</td><td/><td/></row>
		<row><td>ArialBlue10</td><td>Arial</td><td>10</td><td>16711680</td><td/></row>
		<row><td>ArialBlueStrike10</td><td>Arial</td><td>10</td><td>16711680</td><td>8</td></row>
		<row><td>CourierNew8</td><td>Courier New</td><td>8</td><td/><td/></row>
		<row><td>CourierNew9</td><td>Courier New</td><td>9</td><td/><td/></row>
		<row><td>ExpressDefault</td><td>Tahoma</td><td>8</td><td/><td/></row>
		<row><td>MSGothic9</td><td>MS Gothic</td><td>9</td><td/><td/></row>
		<row><td>MSSGreySerif8</td><td>MS Sans Serif</td><td>8</td><td>8421504</td><td/></row>
		<row><td>MSSWhiteSerif8</td><td>Tahoma</td><td>8</td><td>16777215</td><td/></row>
		<row><td>MSSansBold8</td><td>Tahoma</td><td>8</td><td/><td>1</td></row>
		<row><td>MSSansSerif8</td><td>MS Sans Serif</td><td>8</td><td/><td/></row>
		<row><td>MSSansSerif9</td><td>MS Sans Serif</td><td>9</td><td/><td/></row>
		<row><td>Tahoma10</td><td>Tahoma</td><td>10</td><td/><td/></row>
		<row><td>Tahoma8</td><td>Tahoma</td><td>8</td><td/><td/></row>
		<row><td>Tahoma9</td><td>Tahoma</td><td>9</td><td/><td/></row>
		<row><td>TahomaBold10</td><td>Tahoma</td><td>10</td><td/><td>1</td></row>
		<row><td>TahomaBold8</td><td>Tahoma</td><td>8</td><td/><td>1</td></row>
		<row><td>Times8</td><td>Times New Roman</td><td>8</td><td/><td/></row>
		<row><td>Times9</td><td>Times New Roman</td><td>9</td><td/><td/></row>
		<row><td>TimesItalic12</td><td>Times New Roman</td><td>12</td><td/><td>2</td></row>
		<row><td>TimesItalicBlue10</td><td>Times New Roman</td><td>10</td><td>16711680</td><td>2</td></row>
		<row><td>TimesRed16</td><td>Times New Roman</td><td>16</td><td>255</td><td/></row>
		<row><td>VerdanaBold14</td><td>Verdana</td><td>13</td><td/><td>1</td></row>
	</table>

	<table name="TypeLib">
		<col key="yes" def="s38">LibID</col>
		<col key="yes" def="i2">Language</col>
		<col key="yes" def="s72">Component_</col>
		<col def="I4">Version</col>
		<col def="L128">Description</col>
		<col def="S72">Directory_</col>
		<col def="s38">Feature_</col>
		<col def="I4">Cost</col>
	</table>

	<table name="UIText">
		<col key="yes" def="s72">Key</col>
		<col def="L255">Text</col>
		<row><td>AbsentPath</td><td/></row>
		<row><td>GB</td><td>##IDS_UITEXT_GB##</td></row>
		<row><td>KB</td><td>##IDS_UITEXT_KB##</td></row>
		<row><td>MB</td><td>##IDS_UITEXT_MB##</td></row>
		<row><td>MenuAbsent</td><td>##IDS_UITEXT_FeatureNotAvailable##</td></row>
		<row><td>MenuAdvertise</td><td>##IDS_UITEXT_FeatureInstalledWhenRequired2##</td></row>
		<row><td>MenuAllCD</td><td>##IDS_UITEXT_FeatureInstalledCD##</td></row>
		<row><td>MenuAllLocal</td><td>##IDS_UITEXT_FeatureInstalledLocal##</td></row>
		<row><td>MenuAllNetwork</td><td>##IDS_UITEXT_FeatureInstalledNetwork##</td></row>
		<row><td>MenuCD</td><td>##IDS_UITEXT_FeatureInstalledCD2##</td></row>
		<row><td>MenuLocal</td><td>##IDS_UITEXT_FeatureInstalledLocal2##</td></row>
		<row><td>MenuNetwork</td><td>##IDS_UITEXT_FeatureInstalledNetwork2##</td></row>
		<row><td>NewFolder</td><td>##IDS_UITEXT_Folder##</td></row>
		<row><td>SelAbsentAbsent</td><td>##IDS_UITEXT_GB##</td></row>
		<row><td>SelAbsentAdvertise</td><td>##IDS_UITEXT_FeatureInstalledWhenRequired##</td></row>
		<row><td>SelAbsentCD</td><td>##IDS_UITEXT_FeatureOnCD##</td></row>
		<row><td>SelAbsentLocal</td><td>##IDS_UITEXT_FeatureLocal##</td></row>
		<row><td>SelAbsentNetwork</td><td>##IDS_UITEXT_FeatureNetwork##</td></row>
		<row><td>SelAdvertiseAbsent</td><td>##IDS_UITEXT_FeatureUnavailable##</td></row>
		<row><td>SelAdvertiseAdvertise</td><td>##IDS_UITEXT_FeatureInstalledRequired##</td></row>
		<row><td>SelAdvertiseCD</td><td>##IDS_UITEXT_FeatureOnCD2##</td></row>
		<row><td>SelAdvertiseLocal</td><td>##IDS_UITEXT_FeatureLocal2##</td></row>
		<row><td>SelAdvertiseNetwork</td><td>##IDS_UITEXT_FeatureNetwork2##</td></row>
		<row><td>SelCDAbsent</td><td>##IDS_UITEXT_FeatureWillBeUninstalled##</td></row>
		<row><td>SelCDAdvertise</td><td>##IDS_UITEXT_FeatureWasCD##</td></row>
		<row><td>SelCDCD</td><td>##IDS_UITEXT_FeatureRunFromCD##</td></row>
		<row><td>SelCDLocal</td><td>##IDS_UITEXT_FeatureWasCDLocal##</td></row>
		<row><td>SelChildCostNeg</td><td>##IDS_UITEXT_FeatureFreeSpace##</td></row>
		<row><td>SelChildCostPos</td><td>##IDS_UITEXT_FeatureRequiredSpace##</td></row>
		<row><td>SelCostPending</td><td>##IDS_UITEXT_CompilingFeaturesCost##</td></row>
		<row><td>SelLocalAbsent</td><td>##IDS_UITEXT_FeatureCompletelyRemoved##</td></row>
		<row><td>SelLocalAdvertise</td><td>##IDS_UITEXT_FeatureRemovedUnlessRequired##</td></row>
		<row><td>SelLocalCD</td><td>##IDS_UITEXT_FeatureRemovedCD##</td></row>
		<row><td>SelLocalLocal</td><td>##IDS_UITEXT_FeatureRemainLocal##</td></row>
		<row><td>SelLocalNetwork</td><td>##IDS_UITEXT_FeatureRemoveNetwork##</td></row>
		<row><td>SelNetworkAbsent</td><td>##IDS_UITEXT_FeatureUninstallNoNetwork##</td></row>
		<row><td>SelNetworkAdvertise</td><td>##IDS_UITEXT_FeatureWasOnNetworkInstalled##</td></row>
		<row><td>SelNetworkLocal</td><td>##IDS_UITEXT_FeatureWasOnNetworkLocal##</td></row>
		<row><td>SelNetworkNetwork</td><td>##IDS_UITEXT_FeatureContinueNetwork##</td></row>
		<row><td>SelParentCostNegNeg</td><td>##IDS_UITEXT_FeatureSpaceFree##</td></row>
		<row><td>SelParentCostNegPos</td><td>##IDS_UITEXT_FeatureSpaceFree2##</td></row>
		<row><td>SelParentCostPosNeg</td><td>##IDS_UITEXT_FeatureSpaceFree3##</td></row>
		<row><td>SelParentCostPosPos</td><td>##IDS_UITEXT_FeatureSpaceFree4##</td></row>
		<row><td>TimeRemaining</td><td>##IDS_UITEXT_TimeRemaining##</td></row>
		<row><td>VolumeCostAvailable</td><td>##IDS_UITEXT_Available##</td></row>
		<row><td>VolumeCostDifference</td><td>##IDS_UITEXT_Differences##</td></row>
		<row><td>VolumeCostRequired</td><td>##IDS_UITEXT_Required##</td></row>
		<row><td>VolumeCostSize</td><td>##IDS_UITEXT_DiskSize##</td></row>
		<row><td>VolumeCostVolume</td><td>##IDS_UITEXT_Volume##</td></row>
		<row><td>bytes</td><td>##IDS_UITEXT_Bytes##</td></row>
	</table>

	<table name="Upgrade">
		<col key="yes" def="s38">UpgradeCode</col>
		<col key="yes" def="S20">VersionMin</col>
		<col key="yes" def="S20">VersionMax</col>
		<col key="yes" def="S255">Language</col>
		<col key="yes" def="i4">Attributes</col>
		<col def="S255">Remove</col>
		<col def="s72">ActionProperty</col>
		<col def="S72">ISDisplayName</col>
		<row><td>{00000000-0000-0000-0000-000000000000}</td><td>***ALL_VERSIONS***</td><td></td><td></td><td>2</td><td/><td>ISFOUNDNEWERPRODUCTVERSION</td><td>ISPreventDowngrade</td></row>
	</table>

	<table name="Verb">
		<col key="yes" def="s255">Extension_</col>
		<col key="yes" def="s32">Verb</col>
		<col def="I2">Sequence</col>
		<col def="L255">Command</col>
		<col def="L255">Argument</col>
	</table>

	<table name="_Validation">
		<col key="yes" def="s32">Table</col>
		<col key="yes" def="s32">Column</col>
		<col def="s4">Nullable</col>
		<col def="I4">MinValue</col>
		<col def="I4">MaxValue</col>
		<col def="S255">KeyTable</col>
		<col def="I2">KeyColumn</col>
		<col def="S32">Category</col>
		<col def="S255">Set</col>
		<col def="S255">Description</col>
		<row><td>ActionText</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to be described.</td></row>
		<row><td>ActionText</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description displayed in progress dialog and log when action is executing.</td></row>
		<row><td>ActionText</td><td>Template</td><td>Y</td><td/><td/><td/><td/><td>Template</td><td/><td>Optional localized format template used to format action data records for display during action execution.</td></row>
		<row><td>AdminExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdminExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdminExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdminExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdminExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdminUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdminUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdminUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdminUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdminUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdvtExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdvtExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdvtExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AdvtUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>AdvtUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>AdvtUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>AdvtUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>AdvtUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>AppId</td><td>ActivateAtStorage</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td/></row>
		<row><td>AppId</td><td>AppId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td/></row>
		<row><td>AppId</td><td>DllSurrogate</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppId</td><td>LocalService</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppId</td><td>RemoteServerName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>AppId</td><td>RunAsInteractiveUser</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td/></row>
		<row><td>AppId</td><td>ServiceParameters</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>AppSearch</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The property associated with a Signature</td></row>
		<row><td>AppSearch</td><td>Signature_</td><td>N</td><td/><td/><td>ISXmlLocator;Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>BBControl</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>BBControl</td><td>BBControl</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the control. This name must be unique within a billboard, but can repeat on different billboard.</td></row>
		<row><td>BBControl</td><td>Billboard_</td><td>N</td><td/><td/><td>Billboard</td><td>1</td><td>Identifier</td><td/><td>External key to the Billboard table, name of the billboard.</td></row>
		<row><td>BBControl</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>BBControl</td><td>Type</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The type of the control.</td></row>
		<row><td>BBControl</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>BBControl</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>Billboard</td><td>Action</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of an action. The billboard is displayed during the progress messages received from this action.</td></row>
		<row><td>Billboard</td><td>Billboard</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the billboard.</td></row>
		<row><td>Billboard</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>An external key to the Feature Table. The billboard is shown only if this feature is being installed.</td></row>
		<row><td>Billboard</td><td>Ordering</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>A positive integer. If there is more than one billboard corresponding to an action they will be shown in the order defined by this column.</td></row>
		<row><td>Binary</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>Binary</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>Binary</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique key identifying the binary data.</td></row>
		<row><td>BindImage</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>The index into the File table. This must be an executable file.</td></row>
		<row><td>BindImage</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>Paths</td><td/><td>A list of ;  delimited paths that represent the paths to be searched for the import DLLS. The list is usually a list of properties each enclosed within square brackets [] .</td></row>
		<row><td>CCPSearch</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>CheckBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to the item.</td></row>
		<row><td>CheckBox</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with the item.</td></row>
		<row><td>Class</td><td>AppId_</td><td>Y</td><td/><td/><td>AppId</td><td>1</td><td>Guid</td><td/><td>Optional AppID containing DCOM information for associated application (string GUID).</td></row>
		<row><td>Class</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>optional argument for LocalServers.</td></row>
		<row><td>Class</td><td>Attributes</td><td>Y</td><td/><td>32767</td><td/><td/><td/><td/><td>Class registration attributes.</td></row>
		<row><td>Class</td><td>CLSID</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The CLSID of an OLE factory.</td></row>
		<row><td>Class</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>Class</td><td>Context</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The numeric server context for this server. CLSCTX_xxxx</td></row>
		<row><td>Class</td><td>DefInprocHandler</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td>1;2;3</td><td>Optional default inproc handler.  Only optionally provided if Context=CLSCTX_LOCAL_SERVER.  Typically "ole32.dll" or "mapi32.dll"</td></row>
		<row><td>Class</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description for the Class.</td></row>
		<row><td>Class</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the CLSID factory to be operational.</td></row>
		<row><td>Class</td><td>FileTypeMask</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Optional string containing information for the HKCRthis CLSID) key. If multiple patterns exist, they must be delimited by a semicolon, and numeric subkeys will be generated: 0,1,2...</td></row>
		<row><td>Class</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index.</td></row>
		<row><td>Class</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Optional foreign key into the Icon Table, specifying the icon file associated with this CLSID. Will be written under the DefaultIcon key.</td></row>
		<row><td>Class</td><td>ProgId_Default</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>Optional ProgId associated with this CLSID.</td></row>
		<row><td>ComboBox</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list.	The integers do not have to be consecutive.</td></row>
		<row><td>ComboBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same combobox.</td></row>
		<row><td>ComboBox</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ComboBox</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>CompLocator</td><td>ComponentId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID unique to this component, version, and language.</td></row>
		<row><td>CompLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>CompLocator</td><td>Type</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td>A boolean value that determines if the registry value is a filename or a directory location.</td></row>
		<row><td>Complus</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the ComPlus component.</td></row>
		<row><td>Complus</td><td>ExpType</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>ComPlus component attributes.</td></row>
		<row><td>Component</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Remote execution option, one of irsEnum</td></row>
		<row><td>Component</td><td>Component</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>Component</td><td>ComponentId</td><td>Y</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID unique to this component, version, and language.</td></row>
		<row><td>Component</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A conditional statement that will disable this component if the specified condition evaluates to the 'True' state. If a component is disabled, it will not be installed, regardless of the 'Action' state associated with the component.</td></row>
		<row><td>Component</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Required key of a Directory table record. This is actually a property name whose value contains the actual path, set either by the AppSearch action or with the default setting obtained from the Directory table.</td></row>
		<row><td>Component</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a component.</td></row>
		<row><td>Component</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsCommit</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsInstall</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsRollback</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISDotNetInstallerArgsUninstall</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Arguments passed to the key file of the component if if implements the .NET Installer class</td></row>
		<row><td>Component</td><td>ISRegFileToMergeAtBuild</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path and File name of a .REG file to merge into the component at build time.</td></row>
		<row><td>Component</td><td>ISScanAtBuildFile</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File used by the Dot Net scanner to populate dependant assemblies' File_Application field.</td></row>
		<row><td>Component</td><td>KeyPath</td><td>Y</td><td/><td/><td>File;ODBCDataSource;Registry</td><td>1</td><td>Identifier</td><td/><td>Either the primary key into the File table, Registry table, or ODBCDataSource table. This extract path is stored when the component is installed, and is used to detect the presence of the component and to return the path to it.</td></row>
		<row><td>Condition</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Expression evaluated to determine if Level in the Feature table is to change.</td></row>
		<row><td>Condition</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Reference to a Feature entry in Feature table.</td></row>
		<row><td>Condition</td><td>Level</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>New selection Level to set in Feature table if Condition evaluates to TRUE.</td></row>
		<row><td>Control</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>Control</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>External key to the Binary table.</td></row>
		<row><td>Control</td><td>Control</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the control. This name must be unique within a dialog, but can repeat on different dialogs.</td></row>
		<row><td>Control</td><td>Control_Next</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>The name of an other control on the same dialog. This link defines the tab order of the controls. The links have to form one or more cycles!</td></row>
		<row><td>Control</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>External key to the Dialog table, name of the dialog.</td></row>
		<row><td>Control</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>Help</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The help strings used with the button. The text is optional.</td></row>
		<row><td>Control</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to .rtf file for scrollable text control</td></row>
		<row><td>Control</td><td>ISControlId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A number used to represent the control ID of the Control, Used in Dialog export</td></row>
		<row><td>Control</td><td>ISWindowStyle</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies non-MSI window styles to be applied to this control.</td></row>
		<row><td>Control</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of a defined property to be linked to this control.</td></row>
		<row><td>Control</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>Control</td><td>Type</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The type of the control.</td></row>
		<row><td>Control</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>Control</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ControlCondition</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>Default;Disable;Enable;Hide;Show</td><td>The desired action to be taken on the specified control.</td></row>
		<row><td>ControlCondition</td><td>Condition</td><td>N</td><td/><td/><td/><td/><td>Condition</td><td/><td>A standard conditional statement that specifies under which conditions the action should be triggered.</td></row>
		<row><td>ControlCondition</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control.</td></row>
		<row><td>ControlCondition</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the dialog.</td></row>
		<row><td>ControlEvent</td><td>Argument</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A value to be used as a modifier when triggering a particular event.</td></row>
		<row><td>ControlEvent</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A standard conditional statement that specifies under which conditions an event should be triggered.</td></row>
		<row><td>ControlEvent</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control</td></row>
		<row><td>ControlEvent</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the dialog.</td></row>
		<row><td>ControlEvent</td><td>Event</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>An identifier that specifies the type of the event that should take place when the user interacts with control specified by the first two entries.</td></row>
		<row><td>ControlEvent</td><td>Ordering</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>An integer used to order several events tied to the same control. Can be left blank.</td></row>
		<row><td>CreateFolder</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table.</td></row>
		<row><td>CreateFolder</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Primary key, could be foreign key into the Directory table.</td></row>
		<row><td>CustomAction</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, name of action, normally appears in sequence table unless private use.</td></row>
		<row><td>CustomAction</td><td>ExtendedType</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The numeric custom action type info flags.</td></row>
		<row><td>CustomAction</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments for this custom action.</td></row>
		<row><td>CustomAction</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>CustomSource</td><td/><td>The table reference of the source of the code.</td></row>
		<row><td>CustomAction</td><td>Target</td><td>Y</td><td/><td/><td>ISDLLWrapper;ISInstallScriptAction</td><td>1</td><td>Formatted</td><td/><td>Excecution parameter, depends on the type of custom action</td></row>
		<row><td>CustomAction</td><td>Type</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>The numeric custom action type, consisting of source location, code type, entry, option flags.</td></row>
		<row><td>Dialog</td><td>Attributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this dialog.</td></row>
		<row><td>Dialog</td><td>Control_Cancel</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the cancel control. Hitting escape or clicking on the close icon on the dialog is equivalent to pushing this button.</td></row>
		<row><td>Dialog</td><td>Control_Default</td><td>Y</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the default control. Hitting return is equivalent to pushing this button.</td></row>
		<row><td>Dialog</td><td>Control_First</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Defines the control that has the focus when the dialog is created.</td></row>
		<row><td>Dialog</td><td>Dialog</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the dialog.</td></row>
		<row><td>Dialog</td><td>HCentering</td><td>N</td><td>0</td><td>100</td><td/><td/><td/><td/><td>Horizontal position of the dialog on a 0-100 scale. 0 means left end, 100 means right end of the screen, 50 center.</td></row>
		<row><td>Dialog</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the dialog.</td></row>
		<row><td>Dialog</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments for this dialog.</td></row>
		<row><td>Dialog</td><td>ISResourceId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A Number the Specifies the Dialog ID to be used in Dialog Export</td></row>
		<row><td>Dialog</td><td>ISWindowStyle</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies non-MSI window styles to be applied to this control. This is only used in Script Based Setups.</td></row>
		<row><td>Dialog</td><td>TextStyle_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign Key into TextStyle table, only used in Script Based Projects.</td></row>
		<row><td>Dialog</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A text string specifying the title to be displayed in the title bar of the dialog's window.</td></row>
		<row><td>Dialog</td><td>VCentering</td><td>N</td><td>0</td><td>100</td><td/><td/><td/><td/><td>Vertical position of the dialog on a 0-100 scale. 0 means top end, 100 means bottom end of the screen, 50 center.</td></row>
		<row><td>Dialog</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the dialog.</td></row>
		<row><td>Directory</td><td>DefaultDir</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The default sub-path under parent's path.</td></row>
		<row><td>Directory</td><td>Directory</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for directory entry, primary key. If a property by this name is defined, it contains the full path to the directory.</td></row>
		<row><td>Directory</td><td>Directory_Parent</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Reference to the entry in this table specifying the default parent directory. A record parented to itself or with a Null parent represents a root of the install tree.</td></row>
		<row><td>Directory</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3;4;5;6;7</td><td>This is used to store Installshield custom properties of a directory.  Currently the only one is Shortcut.</td></row>
		<row><td>Directory</td><td>ISDescription</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of folder</td></row>
		<row><td>Directory</td><td>ISFolderName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is used in Pro projects because the pro identifier used in the tree wasn't necessarily unique.</td></row>
		<row><td>DrLocator</td><td>Depth</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The depth below the path to which the Signature_ is recursively searched. If absent, the depth is assumed to be 0.</td></row>
		<row><td>DrLocator</td><td>Parent</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The parent file signature. It is also a foreign key in the Signature table. If null and the Path column does not expand to a full path, then all the fixed drives of the user system are searched using the Path.</td></row>
		<row><td>DrLocator</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>AnyPath</td><td/><td>The path on the user system. This is a either a subpath below the value of the Parent or a full path. The path may contain properties enclosed within [ ] that will be expanded.</td></row>
		<row><td>DrLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>DuplicateFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the duplicate file.</td></row>
		<row><td>DuplicateFile</td><td>DestFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full pathname to a destination folder.</td></row>
		<row><td>DuplicateFile</td><td>DestName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Filename to be given to the duplicate file.</td></row>
		<row><td>DuplicateFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular file entry</td></row>
		<row><td>DuplicateFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing the source file to be duplicated.</td></row>
		<row><td>Environment</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the environmental value.</td></row>
		<row><td>Environment</td><td>Environment</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for the environmental variable setting</td></row>
		<row><td>Environment</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the environmental value.</td></row>
		<row><td>Environment</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to set in the environmental settings.</td></row>
		<row><td>Error</td><td>Error</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer error number, obtained from header file IError(...) macros.</td></row>
		<row><td>Error</td><td>Message</td><td>Y</td><td/><td/><td/><td/><td>Template</td><td/><td>Error formatting template, obtained from user ed. or localizers.</td></row>
		<row><td>EventMapping</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The name of the control attribute, that is set when this event is received.</td></row>
		<row><td>EventMapping</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>A foreign key to the Control table, name of the control.</td></row>
		<row><td>EventMapping</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the Dialog table, name of the Dialog.</td></row>
		<row><td>EventMapping</td><td>Event</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>An identifier that specifies the type of the event that the control subscribes to.</td></row>
		<row><td>Extension</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>Extension</td><td>Extension</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The extension associated with the table row.</td></row>
		<row><td>Extension</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the CLSID factory to be operational.</td></row>
		<row><td>Extension</td><td>MIME_</td><td>Y</td><td/><td/><td>MIME</td><td>1</td><td>Text</td><td/><td>Optional Context identifier, typically "type/format" associated with the extension</td></row>
		<row><td>Extension</td><td>ProgId_</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>Optional ProgId associated with this extension.</td></row>
		<row><td>Feature</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2;4;5;6;8;9;10;16;17;18;20;21;22;24;25;26;32;33;34;36;37;38;48;49;50;52;53;54</td><td>Feature attributes</td></row>
		<row><td>Feature</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Longer descriptive text describing a visible feature item.</td></row>
		<row><td>Feature</td><td>Directory_</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>UpperCase</td><td/><td>The name of the Directory that can be configured by the UI. A non-null value will enable the browse button.</td></row>
		<row><td>Feature</td><td>Display</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Numeric sort order, used to force a specific display ordering.</td></row>
		<row><td>Feature</td><td>Feature</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular feature record.</td></row>
		<row><td>Feature</td><td>Feature_Parent</td><td>Y</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Optional key of a parent record in the same table. If the parent is not selected, then the record will not be installed. Null indicates a root item.</td></row>
		<row><td>Feature</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Comments</td></row>
		<row><td>Feature</td><td>ISFeatureCabName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Name of CAB used when compressing CABs by Feature. Used to override build generated name for CAB file.</td></row>
		<row><td>Feature</td><td>ISProFeatureName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the feature used by pro projects.  This doesn't have to be unique.</td></row>
		<row><td>Feature</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Release Flags that specify whether this  feature will be built in a particular release.</td></row>
		<row><td>Feature</td><td>Level</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The install level at which record will be initially selected. An install level of 0 will disable an item and prevent its display.</td></row>
		<row><td>Feature</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Short text identifying a visible feature item.</td></row>
		<row><td>FeatureComponents</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>FeatureComponents</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>File</td><td>Attributes</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer containing bit flags representing file attributes (with the decimal value of each bit position in parentheses)</td></row>
		<row><td>File</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file.</td></row>
		<row><td>File</td><td>File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token, must match identifier in cabinet.  For uncompressed files, this field is ignored.</td></row>
		<row><td>File</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>File name used for installation.  This may contain a "short name|long name" pair.  It may be just a long name, hence it cannot be of the Filename data type.</td></row>
		<row><td>File</td><td>FileSize</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>File</td><td>ISAttributes</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>This field contains the following attributes: UseSystemSettings(0x1)</td></row>
		<row><td>File</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>File</td><td>ISComponentSubFolder_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key referencing component subfolder containing this file.  Only for Pro.</td></row>
		<row><td>File</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>List of decimal language Ids, comma-separated if more than one.</td></row>
		<row><td>File</td><td>Sequence</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Sequence with respect to the media images; order must track cabinet order.</td></row>
		<row><td>File</td><td>Version</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Version</td><td/><td>Version string for versioned files;  Blank for unversioned files.</td></row>
		<row><td>FileSFPCatalog</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>File associated with the catalog</td></row>
		<row><td>FileSFPCatalog</td><td>SFPCatalog_</td><td>N</td><td/><td/><td>SFPCatalog</td><td>1</td><td>Text</td><td/><td>Catalog associated with the file</td></row>
		<row><td>Font</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, foreign key into File table referencing font file.</td></row>
		<row><td>Font</td><td>FontTitle</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Font name.</td></row>
		<row><td>ISAssistantTag</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISAssistantTag</td><td>Tag</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Color</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Duration</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Effect</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Font</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>ISBillboard</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Origin</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Sequence</td><td>N</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Style</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Target</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Title</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISBillBoard</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Display name for the chained package. Used only in the IDE.</td></row>
		<row><td>ISChainPackage</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>InstallCondition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>InstallProperties</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Options</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Order</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>Package</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>ProductCode</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackage</td><td>RemoveCondition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>RemoveProperties</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackage</td><td>SourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackageData</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>ISChainPackageData</td><td>File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>ISChainPackageData</td><td>FilePath</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>ISChainPackageData</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>ISChainPackageData</td><td>Options</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISChainPackageData</td><td>Package_</td><td>N</td><td/><td/><td>ISChainPackage</td><td>1</td><td>Identifier</td><td/><td/></row>
		<row><td>ISClrWrap</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into CustomAction table</td></row>
		<row><td>ISClrWrap</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property associated with this Action</td></row>
		<row><td>ISClrWrap</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value associated with this Property</td></row>
		<row><td>ISComCatalogAttribute</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogAttribute</td><td>ItemName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The named attribute for a catalog object.</td></row>
		<row><td>ISComCatalogAttribute</td><td>ItemValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A value associated with the attribute defined in the ItemName column.</td></row>
		<row><td>ISComCatalogCollection</td><td>CollectionName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>A catalog collection name.</td></row>
		<row><td>ISComCatalogCollection</td><td>ISComCatalogCollection</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComCatalogCollection table.</td></row>
		<row><td>ISComCatalogCollection</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogCollectionObjects</td><td>ISComCatalogCollection_</td><td>N</td><td/><td/><td>ISComCatalogCollection</td><td>1</td><td>Identifier</td><td/><td>A unique key for the ISComCatalogCollection table.</td></row>
		<row><td>ISComCatalogCollectionObjects</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComCatalogObject</td><td>DisplayName</td><td>N</td><td/><td/><td/><td/><td/><td/><td>The display name of a catalog object.</td></row>
		<row><td>ISComCatalogObject</td><td>ISComCatalogObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplication</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table that a COM+ application belongs to.</td></row>
		<row><td>ISComPlusApplication</td><td>ComputerName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Computer name that a COM+ application belongs to.</td></row>
		<row><td>ISComPlusApplication</td><td>DepFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List of the dependent files.</td></row>
		<row><td>ISComPlusApplication</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>InstallShield custom attributes associated with a COM+ application.</td></row>
		<row><td>ISComPlusApplication</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>AlterDLL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Alternate filename of the COM+ application component. Will be used for a .NET serviced component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>CLSID</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>CLSID of the COM+ application component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>DLL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Filename of the COM+ application component.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComCatalogObject_</td><td>N</td><td/><td/><td>ISComCatalogObject</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComCatalogObject table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComPlusApplicationDLL</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusApplicationDLL</td><td>ProgId</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>ProgId of the COM+ application component.</td></row>
		<row><td>ISComPlusProxy</td><td>Component_</td><td>Y</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table that a COM+ application proxy belongs to.</td></row>
		<row><td>ISComPlusProxy</td><td>DepFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List of the dependent files.</td></row>
		<row><td>ISComPlusProxy</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>InstallShield custom attributes associated with a COM+ application proxy.</td></row>
		<row><td>ISComPlusProxy</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table that a COM+ application proxy belongs to.</td></row>
		<row><td>ISComPlusProxy</td><td>ISComPlusProxy</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key for the ISComPlusProxy table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusProxyDepFile</td><td>ISPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the dependent file.</td></row>
		<row><td>ISComPlusProxyFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusProxyFile</td><td>ISComPlusApplicationDLL_</td><td>N</td><td/><td/><td>ISComPlusApplicationDLL</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>ISComPlusApplication_</td><td>N</td><td/><td/><td>ISComPlusApplication</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplication table.</td></row>
		<row><td>ISComPlusServerDepFile</td><td>ISPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the dependent file.</td></row>
		<row><td>ISComPlusServerFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table.</td></row>
		<row><td>ISComPlusServerFile</td><td>ISComPlusApplicationDLL_</td><td>N</td><td/><td/><td>ISComPlusApplicationDLL</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISComPlusApplicationDLL table.</td></row>
		<row><td>ISComponentExtended</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>ISComponentExtended</td><td>FTPLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>FTP Location</td></row>
		<row><td>ISComponentExtended</td><td>FilterProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property to set if you want to filter a component</td></row>
		<row><td>ISComponentExtended</td><td>HTTPLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HTTP Location</td></row>
		<row><td>ISComponentExtended</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Language</td></row>
		<row><td>ISComponentExtended</td><td>Miscellaneous</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Miscellaneous</td></row>
		<row><td>ISComponentExtended</td><td>OS</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>bitwise addition of OSs</td></row>
		<row><td>ISComponentExtended</td><td>Platforms</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>bitwise addition of Platforms.</td></row>
		<row><td>ISCustomActionReference</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into theICustomAction table.</td></row>
		<row><td>ISCustomActionReference</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Contents of the file speciifed in ISCAReferenceFilePath. This column is only used by MSI.</td></row>
		<row><td>ISCustomActionReference</td><td>FileType</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>file type of the file specified  ISCAReferenceFilePath. This column is only used by MSI.</td></row>
		<row><td>ISCustomActionReference</td><td>ISCAReferenceFilePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.  This column only exists in ISM.</td></row>
		<row><td>ISDIMDependency</td><td>ISDIMReference_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISDIMDependency table</td></row>
		<row><td>ISDIMDependency</td><td>RequiredBuildVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the build version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredMajorVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the major version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredMinorVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the minor version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredRevisionVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>the revision version identifying the required DIM</td></row>
		<row><td>ISDIMDependency</td><td>RequiredUUID</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>the UUID identifying the required DIM</td></row>
		<row><td>ISDIMReference</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISDIMReference</td><td>ISDIMReference</td><td>N</td><td/><td/><td>ISDIMDependency</td><td>1</td><td>Identifier</td><td/><td>This is the primary key to the ISDIMReference table</td></row>
		<row><td>ISDIMReferenceDependencies</td><td>ISDIMDependency_</td><td>N</td><td/><td/><td>ISDIMDependency</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMDependency table.</td></row>
		<row><td>ISDIMReferenceDependencies</td><td>ISDIMReference_Parent</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISDIMVariable</td><td>ISDIMReference_</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISDIMVariable</td><td>ISDIMVariable</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISDIMVariable table</td></row>
		<row><td>ISDIMVariable</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of a variable defined in the .dim file</td></row>
		<row><td>ISDIMVariable</td><td>NewValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>New value that you want to override with</td></row>
		<row><td>ISDIMVariable</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type of the variable. 0: Build Variable, 1: Runtime Variable</td></row>
		<row><td>ISDLLWrapper</td><td>EntryPoint</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the target column in the CustomAction table</td></row>
		<row><td>ISDLLWrapper</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This is column points to the source file for the DLLWrapper Custom Action</td></row>
		<row><td>ISDLLWrapper</td><td>Target</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The function signature</td></row>
		<row><td>ISDLLWrapper</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type</td></row>
		<row><td>ISDRMFile</td><td>File_</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into File table.  A null value will cause a build warning.</td></row>
		<row><td>ISDRMFile</td><td>ISDRMFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for this item.</td></row>
		<row><td>ISDRMFile</td><td>ISDRMLicense_</td><td>Y</td><td/><td/><td>ISDRMLicense</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing License that packages this file.</td></row>
		<row><td>ISDRMFile</td><td>Shell</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text indicating the activation shell used at runtime.</td></row>
		<row><td>ISDRMFileAttribute</td><td>ISDRMFile_</td><td>N</td><td/><td/><td>ISDRMFile</td><td>1</td><td>Identifier</td><td/><td>Primary foreign key into ISDRMFile table.</td></row>
		<row><td>ISDRMFileAttribute</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the attribute</td></row>
		<row><td>ISDRMFileAttribute</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The value of the attribute</td></row>
		<row><td>ISDRMLicense</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Bitwise field used to specify binary attributes of this license.</td></row>
		<row><td>ISDRMLicense</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>An internal description of this license.</td></row>
		<row><td>ISDRMLicense</td><td>ISDRMLicense</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique key identifying the license record.</td></row>
		<row><td>ISDRMLicense</td><td>LicenseNumber</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The license number.</td></row>
		<row><td>ISDRMLicense</td><td>ProjectVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The version of the project that this license is tied to.</td></row>
		<row><td>ISDRMLicense</td><td>RequestCode</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The request code.</td></row>
		<row><td>ISDRMLicense</td><td>ResponseCode</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The response code.</td></row>
		<row><td>ISDependency</td><td>Exclude</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISDependency</td><td>ISDependency</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISDisk1File</td><td>Disk</td><td>Y</td><td/><td/><td/><td/><td/><td>-1;0;1</td><td>Used to differentiate between disk1(1), last disk(-1), and other(0).</td></row>
		<row><td>ISDisk1File</td><td>ISBuildSourcePath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of file to be copied to Disk1 folder</td></row>
		<row><td>ISDisk1File</td><td>ISDisk1File</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for ISDisk1File table</td></row>
		<row><td>ISDynamicFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file.</td></row>
		<row><td>ISDynamicFile</td><td>ExcludeFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Wildcards for excluded files.</td></row>
		<row><td>ISDynamicFile</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3;4;5;6;7;8;9;10;11;12;13;14;15</td><td>This is used to store Installshield custom properties of a dynamic filet.  Currently the only one is SelfRegister.</td></row>
		<row><td>ISDynamicFile</td><td>IncludeFiles</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Wildcards for included files.</td></row>
		<row><td>ISDynamicFile</td><td>IncludeFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Include flags.</td></row>
		<row><td>ISDynamicFile</td><td>SourceFolder</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISFeatureDIMReferences</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureDIMReferences</td><td>ISDIMReference_</td><td>N</td><td/><td/><td>ISDIMReference</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISDIMReference table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>Feature_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>Language</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModuleExcludes</td><td>ModuleID</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>ISMergeModule_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>1</td><td>Text</td><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureMergeModules</td><td>Language_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>2</td><td/><td/><td>Foreign key into ISMergeModule table.</td></row>
		<row><td>ISFeatureSetupPrerequisites</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISFeatureSetupPrerequisites</td><td>ISSetupPrerequisites_</td><td>N</td><td/><td/><td>ISSetupPrerequisites</td><td>1</td><td/><td/><td/></row>
		<row><td>ISFileManifests</td><td>File_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into File table.</td></row>
		<row><td>ISFileManifests</td><td>Manifest_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into File table.</td></row>
		<row><td>ISIISItem</td><td>Component_</td><td>Y</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key to Component table.</td></row>
		<row><td>ISIISItem</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localizable Item Name.</td></row>
		<row><td>ISIISItem</td><td>ISIISItem</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for each item.</td></row>
		<row><td>ISIISItem</td><td>ISIISItem_Parent</td><td>Y</td><td/><td/><td>ISIISItem</td><td>1</td><td>Identifier</td><td/><td>This record's parent record.</td></row>
		<row><td>ISIISItem</td><td>Type</td><td>N</td><td/><td/><td/><td/><td/><td/><td>IIS resource type.</td></row>
		<row><td>ISIISProperty</td><td>FriendlyName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS property name.</td></row>
		<row><td>ISIISProperty</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Flags.</td></row>
		<row><td>ISIISProperty</td><td>ISIISItem_</td><td>N</td><td/><td/><td>ISIISItem</td><td>1</td><td>Identifier</td><td/><td>Primary key for table, foreign key into ISIISItem.</td></row>
		<row><td>ISIISProperty</td><td>ISIISProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key for table.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property attributes.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataProp</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property ID.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property data type.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataUserType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>IIS property user data type.</td></row>
		<row><td>ISIISProperty</td><td>MetaDataValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS property value.</td></row>
		<row><td>ISIISProperty</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Order sequencing.</td></row>
		<row><td>ISIISProperty</td><td>Schema</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>IIS7 schema information.</td></row>
		<row><td>ISInstallScriptAction</td><td>EntryPoint</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the target column in the CustomAction table</td></row>
		<row><td>ISInstallScriptAction</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This is column points to the source file for the DLLWrapper Custom Action</td></row>
		<row><td>ISInstallScriptAction</td><td>Target</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The function signature</td></row>
		<row><td>ISInstallScriptAction</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Type</td></row>
		<row><td>ISLanguage</td><td>ISLanguage</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the language ID.</td></row>
		<row><td>ISLanguage</td><td>Included</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1</td><td>Specify whether this language should be included.</td></row>
		<row><td>ISLinkerLibrary</td><td>ISLinkerLibrary</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Unique identifier for the link library.</td></row>
		<row><td>ISLinkerLibrary</td><td>Library</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path of the object library (.obl file).</td></row>
		<row><td>ISLinkerLibrary</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Order of the Library</td></row>
		<row><td>ISLocalControl</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this control.</td></row>
		<row><td>ISLocalControl</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>External key to the Binary table.</td></row>
		<row><td>ISLocalControl</td><td>Control_</td><td>N</td><td/><td/><td>Control</td><td>2</td><td>Identifier</td><td/><td>Name of the control. This name must be unique within a dialog, but can repeat on different dialogs.</td></row>
		<row><td>ISLocalControl</td><td>Dialog_</td><td>N</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>External key to the Dialog table, name of the dialog.</td></row>
		<row><td>ISLocalControl</td><td>Height</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Height of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to .rtf file for scrollable text control</td></row>
		<row><td>ISLocalControl</td><td>ISLanguage_</td><td>N</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalControl</td><td>Width</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Width of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>X</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Horizontal coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalControl</td><td>Y</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Vertical coordinate of the upper left corner of the bounding rectangle of the control.</td></row>
		<row><td>ISLocalDialog</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A 32-bit word that specifies the attribute flags to be applied to this dialog.</td></row>
		<row><td>ISLocalDialog</td><td>Dialog_</td><td>Y</td><td/><td/><td>Dialog</td><td>1</td><td>Identifier</td><td/><td>Name of the dialog.</td></row>
		<row><td>ISLocalDialog</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Height of the bounding rectangle of the dialog.</td></row>
		<row><td>ISLocalDialog</td><td>ISLanguage_</td><td>Y</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalDialog</td><td>TextStyle_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign Key into TextStyle table, only used in Script Based Projects.</td></row>
		<row><td>ISLocalDialog</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Width of the bounding rectangle of the dialog.</td></row>
		<row><td>ISLocalRadioButton</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The height of the button.</td></row>
		<row><td>ISLocalRadioButton</td><td>ISLanguage_</td><td>N</td><td/><td/><td>ISLanguage</td><td>1</td><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISLocalRadioButton</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td>RadioButton</td><td>2</td><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ISLocalRadioButton</td><td>Property</td><td>N</td><td/><td/><td>RadioButton</td><td>1</td><td>Identifier</td><td/><td>A named property to be tied to this radio button. All the buttons tied to the same property become part of the same group.</td></row>
		<row><td>ISLocalRadioButton</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The width of the button.</td></row>
		<row><td>ISLocalRadioButton</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The horizontal coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>ISLocalRadioButton</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The vertical coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>ISLockPermissions</td><td>Attributes</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permissions attributes mask, 1==Deny access; 2==No inherit, 4==Ignore apply failures, 8==Target object is 64-bit</td></row>
		<row><td>ISLockPermissions</td><td>Domain</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Domain name for user whose permissions are being set.</td></row>
		<row><td>ISLockPermissions</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into CreateFolder, Registry, or File table</td></row>
		<row><td>ISLockPermissions</td><td>Permission</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permission Access mask.</td></row>
		<row><td>ISLockPermissions</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>CreateFolder;File;Registry</td><td>Reference to another table name</td></row>
		<row><td>ISLockPermissions</td><td>User</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>User for permissions to be set. This can be a property, hardcoded named, or SID string</td></row>
		<row><td>ISLogicalDisk</td><td>Cabinet</td><td>Y</td><td/><td/><td/><td/><td>Cabinet</td><td/><td>If some or all of the files stored on the media are compressed in a cabinet, the name of that cabinet.</td></row>
		<row><td>ISLogicalDisk</td><td>DiskId</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Primary key, integer to determine sort order for table.</td></row>
		<row><td>ISLogicalDisk</td><td>DiskPrompt</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk name: the visible text actually printed on the disk.  This will be used to prompt the user when this disk needs to be inserted.</td></row>
		<row><td>ISLogicalDisk</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISLogicalDisk</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISLogicalDisk</td><td>LastSequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the last file for this media.</td></row>
		<row><td>ISLogicalDisk</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>Property</td><td/><td>The property defining the location of the cabinet file.</td></row>
		<row><td>ISLogicalDisk</td><td>VolumeLabel</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The label attributed to the volume.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>Feature_</td><td>Y</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table,</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties, like Compressed, etc.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISLogicalDisk_</td><td>N</td><td>1</td><td>32767</td><td>ISLogicalDisk</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the ISLogicalDisk table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISLogicalDiskFeatures</td><td>Sequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the file for this media.</td></row>
		<row><td>ISMergeModule</td><td>Destination</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Destination.</td></row>
		<row><td>ISMergeModule</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a merge module.</td></row>
		<row><td>ISMergeModule</td><td>ISMergeModule</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The GUID identifying the merge module.</td></row>
		<row><td>ISMergeModule</td><td>Language</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Default decimal language of module.</td></row>
		<row><td>ISMergeModule</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the merge module.</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Attributes (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ContextData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>ContextData  (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>DefaultValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>DefaultValue  (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>DisplayName (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Format</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Format (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>HelpKeyword</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HelpKeyword (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>HelpLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>HelpLocation (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ISMergeModule_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>1</td><td>Text</td><td/><td>The module signature, a foreign key into the ISMergeModule table</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Language_</td><td>N</td><td/><td/><td>ISMergeModule</td><td>2</td><td/><td/><td>Default decimal language of module.</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>ModuleConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Identifier, foreign key into ModuleConfiguration table (ModuleConfiguration.Name)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Type (from configurable merge module)</td></row>
		<row><td>ISMergeModuleCfgValues</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for this item.</td></row>
		<row><td>ISObject</td><td>Language</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObject</td><td>ObjectName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>IncludeInBuild</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Boolean, 0 for false non 0 for true</td></row>
		<row><td>ISObjectProperty</td><td>ObjectName</td><td>Y</td><td/><td/><td>ISObject</td><td>1</td><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISObjectProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>ISPatchConfigImage</td><td>PatchConfiguration_</td><td>Y</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISPatchConfigurationTable</td></row>
		<row><td>ISPatchConfigImage</td><td>UpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISUpgradedImageTable</td></row>
		<row><td>ISPatchConfiguration</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>PatchConfiguration attributes</td></row>
		<row><td>ISPatchConfiguration</td><td>CanPCDiffer</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether Product Codes may differ</td></row>
		<row><td>ISPatchConfiguration</td><td>CanPVDiffer</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether the Major Product Version may differ</td></row>
		<row><td>ISPatchConfiguration</td><td>EnablePatchCache</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to Enable Patch cacheing</td></row>
		<row><td>ISPatchConfiguration</td><td>Flags</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Patching API Flags</td></row>
		<row><td>ISPatchConfiguration</td><td>IncludeWholeFiles</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to build a binary level patch</td></row>
		<row><td>ISPatchConfiguration</td><td>LeaveDecompressed</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to leave intermediate files devcompressed when finished</td></row>
		<row><td>ISPatchConfiguration</td><td>MinMsiVersion</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Minimum Required MSI Version</td></row>
		<row><td>ISPatchConfiguration</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the Patch Configuration</td></row>
		<row><td>ISPatchConfiguration</td><td>OptimizeForSize</td><td>N</td><td/><td/><td/><td/><td/><td/><td>This is determine whether to Optimize for large files</td></row>
		<row><td>ISPatchConfiguration</td><td>OutputPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Build Location</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchCacheDir</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Directory to recieve the Patch Cache information</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchGuid</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Unique Patch Identifier</td></row>
		<row><td>ISPatchConfiguration</td><td>PatchGuidsToReplace</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>List Of Patch Guids to unregister</td></row>
		<row><td>ISPatchConfiguration</td><td>TargetProductCodes</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>List Of target Product Codes</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>ISPatchConfiguration_</td><td>Y</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Name of the Patch Configuration</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the Patch Configuration Property value</td></row>
		<row><td>ISPatchConfigurationProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value of the Patch Configuration Property</td></row>
		<row><td>ISPatchExternalFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Filekey</td></row>
		<row><td>ISPatchExternalFile</td><td>FilePath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Filepath</td></row>
		<row><td>ISPatchExternalFile</td><td>ISUpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to the isupgraded image table</td></row>
		<row><td>ISPatchExternalFile</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Uniqu name to identify this record.</td></row>
		<row><td>ISPatchWholeFile</td><td>Component</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Component containing file key</td></row>
		<row><td>ISPatchWholeFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Key of file to be included as whole</td></row>
		<row><td>ISPatchWholeFile</td><td>UpgradedImage</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>Foreign key to ISUpgradedImage Table</td></row>
		<row><td>ISPathVariable</td><td>ISPathVariable</td><td>N</td><td/><td/><td/><td/><td/><td/><td>The name of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>TestValue</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The test value of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>Type</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;4;8</td><td>The type of the path variable.</td></row>
		<row><td>ISPathVariable</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The value of the path variable.</td></row>
		<row><td>ISPowerShellWrap</td><td>Action_</td><td>N</td><td/><td/><td>CustomAction</td><td>1</td><td>Identifier</td><td/><td>Foreign key into CustomAction table</td></row>
		<row><td>ISPowerShellWrap</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property associated with this Action</td></row>
		<row><td>ISPowerShellWrap</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value associated with this Property</td></row>
		<row><td>ISProductConfiguration</td><td>GeneratePackageCode</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td>0;1</td><td>Indicates whether or not to generate a package code.</td></row>
		<row><td>ISProductConfiguration</td><td>ISProductConfiguration</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the product configuration.</td></row>
		<row><td>ISProductConfiguration</td><td>ProductConfigurationFlags</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Product configuration (release) flags.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>InstanceId</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Identifies the instance number of this instance. This value is stored in the Property InstanceId.</td></row>
		<row><td>ISProductConfigurationInstance</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Product Congiuration property name</td></row>
		<row><td>ISProductConfigurationInstance</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>ISProductConfigurationProperty</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISProductConfigurationProperty</td><td>Property</td><td>N</td><td/><td/><td>Property</td><td>1</td><td>Text</td><td/><td>Product Congiuration property name</td></row>
		<row><td>ISProductConfigurationProperty</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property. Never null or empty.</td></row>
		<row><td>ISRelease</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding boolean values for various release attributes.</td></row>
		<row><td>ISRelease</td><td>BuildLocation</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Build location.</td></row>
		<row><td>ISRelease</td><td>CDBrowser</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Demoshield browser location.</td></row>
		<row><td>ISRelease</td><td>DefaultLanguage</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Default language for setup.</td></row>
		<row><td>ISRelease</td><td>DigitalPVK</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing private key (.pvk) file.</td></row>
		<row><td>ISRelease</td><td>DigitalSPC</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing Software Publisher Certificate (.spc) file.</td></row>
		<row><td>ISRelease</td><td>DigitalURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital signing URL.</td></row>
		<row><td>ISRelease</td><td>DiskClusterSize</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Disk cluster size.</td></row>
		<row><td>ISRelease</td><td>DiskSize</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk size.</td></row>
		<row><td>ISRelease</td><td>DiskSizeUnit</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2</td><td>Disk size units (KB or MB).</td></row>
		<row><td>ISRelease</td><td>DiskSpanning</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;2</td><td>Disk spanning (automatic, enforce size, etc.).</td></row>
		<row><td>ISRelease</td><td>DotNetBuildConfiguration</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Build Configuration for .NET solutions.</td></row>
		<row><td>ISRelease</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISRelease</td><td>ISRelease</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISRelease</td><td>ISSetupPrerequisiteLocation</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2;3</td><td>Location the Setup Prerequisites will be placed in</td></row>
		<row><td>ISRelease</td><td>MediaLocation</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Media location on disk.</td></row>
		<row><td>ISRelease</td><td>MsiCommandLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command line passed to the msi package from setup.exe</td></row>
		<row><td>ISRelease</td><td>MsiSourceType</td><td>N</td><td>-1</td><td>4</td><td/><td/><td/><td/><td>MSI media source type.</td></row>
		<row><td>ISRelease</td><td>PackageName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Package name.</td></row>
		<row><td>ISRelease</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Password.</td></row>
		<row><td>ISRelease</td><td>Platforms</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Platforms supported (Intel, Alpha, etc.).</td></row>
		<row><td>ISRelease</td><td>ReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Release flags.</td></row>
		<row><td>ISRelease</td><td>ReleaseType</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;4</td><td>Release type (single, uncompressed, etc.).</td></row>
		<row><td>ISRelease</td><td>SupportedLanguagesData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Languages supported (for component filtering).</td></row>
		<row><td>ISRelease</td><td>SupportedLanguagesUI</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>UI languages supported.</td></row>
		<row><td>ISRelease</td><td>SupportedOSs</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Indicate which operating systmes are supported.</td></row>
		<row><td>ISRelease</td><td>SynchMsi</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>MSI file to synchronize file keys and other data with (patch-like functionality).</td></row>
		<row><td>ISRelease</td><td>Type</td><td>N</td><td>0</td><td>6</td><td/><td/><td/><td/><td>Release type (CDROM, Network, etc.).</td></row>
		<row><td>ISRelease</td><td>URLLocation</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Media location via URL.</td></row>
		<row><td>ISRelease</td><td>VersionCopyright</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Version stamp information.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISRelease table.</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>Property</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>AS Repository property name</td></row>
		<row><td>ISReleaseASPublishInfo</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>AS Repository property value</td></row>
		<row><td>ISReleaseExtended</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding boolean values for various release attributes.</td></row>
		<row><td>ISReleaseExtended</td><td>CertPassword</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Digital certificate password</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificateDBaseNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to cerificate database for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificateIdNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to cerificate ID for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DigitalCertificatePasswordNS</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Password for Netscape digital  signature</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetBaseLanguage</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Base Languge of .NET Redist</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetFxCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to DotNetFx.exe</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetLangPackCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to LangPack.exe</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetLangaugePacks</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>.NET Redist language packs to include</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetRedistLocation</td><td>Y</td><td>0</td><td>3</td><td/><td/><td/><td/><td>Location of .NET framework Redist (Web, SetupExe, Source, None)</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetRedistURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to .NET framework Redist</td></row>
		<row><td>ISReleaseExtended</td><td>DotNetVersion</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Version of .NET framework Redist (1.0, 1.1)</td></row>
		<row><td>ISReleaseExtended</td><td>EngineLocation</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Location of msi engine (Web, SetupExe...)</td></row>
		<row><td>ISReleaseExtended</td><td>ISEngineLocation</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Location of ISScript  engine (Web, SetupExe...)</td></row>
		<row><td>ISReleaseExtended</td><td>ISEngineURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to InstallShield scripting engine</td></row>
		<row><td>ISReleaseExtended</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleaseExtended</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISReleaseExtended</td><td>JSharpCmdLine</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Command Line to pass to vjredist.exe</td></row>
		<row><td>ISReleaseExtended</td><td>JSharpRedistLocation</td><td>Y</td><td>0</td><td>3</td><td/><td/><td/><td/><td>Location of J# framework Redist (Web, SetupExe, Source, None)</td></row>
		<row><td>ISReleaseExtended</td><td>MsiEngineVersion</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding selected MSI engine versions included in this release</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickCabName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File name of generated cabfile</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickHtmlName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>File name of generated html page</td></row>
		<row><td>ISReleaseExtended</td><td>OneClickTargetBrowser</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Target browser (IE, Netscape, both...)</td></row>
		<row><td>ISReleaseExtended</td><td>WebCabSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of the cabfile</td></row>
		<row><td>ISReleaseExtended</td><td>WebLocalCachePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Directory to cache downloaded package</td></row>
		<row><td>ISReleaseExtended</td><td>WebType</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>Type of web install (One Executable, Downloader...)</td></row>
		<row><td>ISReleaseExtended</td><td>WebURL</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to .msi package</td></row>
		<row><td>ISReleaseExtended</td><td>Win9xMsiUrl</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to Ansi MSI engine</td></row>
		<row><td>ISReleaseExtended</td><td>WinMsi30Url</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to MSI 3.0 engine</td></row>
		<row><td>ISReleaseExtended</td><td>WinNTMsiUrl</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>URL to Unicode MSI engine</td></row>
		<row><td>ISReleaseProperty</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISProductConfiguration table.</td></row>
		<row><td>ISReleaseProperty</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISRelease table.</td></row>
		<row><td>ISReleaseProperty</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property name</td></row>
		<row><td>ISReleaseProperty</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISReleasePublishInfo</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item description</td></row>
		<row><td>ISReleasePublishInfo</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item display name</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Bitfield holding various attributes</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td>ISProductConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key into the ISProductConfiguration table.</td></row>
		<row><td>ISReleasePublishInfo</td><td>ISRelease_</td><td>N</td><td/><td/><td>ISRelease</td><td>1</td><td>Text</td><td/><td>The name of the release.</td></row>
		<row><td>ISReleasePublishInfo</td><td>Publisher</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository item publisher</td></row>
		<row><td>ISReleasePublishInfo</td><td>Repository</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Repository which to  publish the built merge module</td></row>
		<row><td>ISSQLConnection</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Authentication</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>BatchSeparator</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>CmdTimeout</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Database</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ISSQLConnection</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLConnection record.</td></row>
		<row><td>ISSQLConnection</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Password</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ScriptVersion_Column</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>ScriptVersion_Table</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>Server</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnection</td><td>UserName</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLConnectionDBServer</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLConnectionDBServer record.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>ISSQLDBMetaData_</td><td>N</td><td/><td/><td>ISSQLDBMetaData</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLDBMetaData table.</td></row>
		<row><td>ISSQLConnectionDBServer</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLConnectionScript</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLConnectionScript</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLConnectionScript</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnAdditional</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnDatabase</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnDriver</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnNetLibrary</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnPassword</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnPort</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnServer</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnUserID</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoCxnWindowsSecurity</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>AdoDriverName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>CreateDbCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>CreateTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>DsnODBCName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ISSQLDBMetaData</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLDBMetaData record.</td></row>
		<row><td>ISSQLDBMetaData</td><td>InsertRecordCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>LocalInstanceNames</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>QueryDatabasesCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_Column</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_ColumnType</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>ScriptVersion_Table</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>SelectTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>SwitchDbCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestDatabaseCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestTableCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>TestTableCmd2</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionBeginToken</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionEndToken</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>VersionInfoCmd</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLDBMetaData</td><td>WinAuthentUserId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>ISSQLConnectionDBServer_</td><td>Y</td><td/><td/><td>ISSQLConnectionDBServer</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnectionDBServer table.</td></row>
		<row><td>ISSQLRequirement</td><td>ISSQLConnection_</td><td>N</td><td/><td/><td>ISSQLConnection</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLConnection table.</td></row>
		<row><td>ISSQLRequirement</td><td>ISSQLRequirement</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLRequirement record.</td></row>
		<row><td>ISSQLRequirement</td><td>MajorVersion</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLRequirement</td><td>ServicePackLevel</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ErrHandling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ErrNumber</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptError</td><td>ISSQLScriptFile_</td><td>Y</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table</td></row>
		<row><td>ISSQLScriptError</td><td>Message</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Custom end-user message. Reserved for future use.</td></row>
		<row><td>ISSQLScriptFile</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Comments</td></row>
		<row><td>ISSQLScriptFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the SQL script.</td></row>
		<row><td>ISSQLScriptFile</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>A conditional statement that will disable this script if the specified condition evaluates to the 'False' state. If a script is disabled, it will not be installed regardless of the 'Action' state associated with the component.</td></row>
		<row><td>ISSQLScriptFile</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Display name for the SQL script file.</td></row>
		<row><td>ISSQLScriptFile</td><td>ErrorHandling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path, the category is of Text instead of Path because of potential use of path variables.</td></row>
		<row><td>ISSQLScriptFile</td><td>ISSQLScriptFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISSQLScriptFile table</td></row>
		<row><td>ISSQLScriptFile</td><td>InstallText</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Feedback end-user text at install</td></row>
		<row><td>ISSQLScriptFile</td><td>Scheduling</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptFile</td><td>UninstallText</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Feedback end-user text at Uninstall</td></row>
		<row><td>ISSQLScriptFile</td><td>Version</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Schema Version (#####.#####.#####.#####)</td></row>
		<row><td>ISSQLScriptImport</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Authentication</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Database</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>ExcludeTables</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLScriptImport</td><td>IncludeTables</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>Server</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptImport</td><td>UserName</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>Attributes</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>ISSQLScriptFile_</td><td>N</td><td/><td/><td>ISSQLScriptFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSQLScriptFile table.</td></row>
		<row><td>ISSQLScriptReplace</td><td>ISSQLScriptReplace</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular ISSQLScriptReplace record.</td></row>
		<row><td>ISSQLScriptReplace</td><td>Replace</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSQLScriptReplace</td><td>Search</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISScriptFile</td><td>ISScriptFile</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the full path of the script file. The path portion may be expressed in path variable form.</td></row>
		<row><td>ISSelfReg</td><td>CmdLine</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSelfReg</td><td>Cost</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSelfReg</td><td>FileKey</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key to the file table</td></row>
		<row><td>ISSelfReg</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupFile</td><td>FileName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is the file name to use when streaming the file to the support files location</td></row>
		<row><td>ISSetupFile</td><td>ISSetupFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>This is the primary key to the ISSetupFile table</td></row>
		<row><td>ISSetupFile</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Four digit language identifier.  0 for Language Neutral</td></row>
		<row><td>ISSetupFile</td><td>Path</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Link to the source file on the build machine</td></row>
		<row><td>ISSetupFile</td><td>Splash</td><td>Y</td><td/><td/><td/><td/><td>Short</td><td/><td>Boolean value indication whether his setup file entry belongs in the Splasc Screen section</td></row>
		<row><td>ISSetupFile</td><td>Stream</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The bits to stream to the support location</td></row>
		<row><td>ISSetupPrerequisites</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupPrerequisites</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Release Flags that specify whether this prereq  will be included in a particular release.</td></row>
		<row><td>ISSetupPrerequisites</td><td>ISSetupLocation</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2</td><td/></row>
		<row><td>ISSetupPrerequisites</td><td>ISSetupPrerequisites</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupPrerequisites</td><td>Order</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISSetupType</td><td>Comments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>ISSetupType</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Longer descriptive text describing a visible feature item.</td></row>
		<row><td>ISSetupType</td><td>Display</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Numeric sort order, used to force a specific display ordering.</td></row>
		<row><td>ISSetupType</td><td>Display_Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>A string used to set the initial text contained within a control (if appropriate).</td></row>
		<row><td>ISSetupType</td><td>ISSetupType</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular feature record.</td></row>
		<row><td>ISSetupTypeFeatures</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>ISSetupTypeFeatures</td><td>ISSetupType_</td><td>N</td><td/><td/><td>ISSetupType</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISSetupType table.</td></row>
		<row><td>ISStorages</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Path to the file to stream into sub-storage</td></row>
		<row><td>ISStorages</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Name of the sub-storage key</td></row>
		<row><td>ISString</td><td>Comment</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Comment</td></row>
		<row><td>ISString</td><td>Encoded</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Encoding for multi-byte strings.</td></row>
		<row><td>ISString</td><td>ISLanguage_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is a foreign key to the ISLanguage table.</td></row>
		<row><td>ISString</td><td>ISString</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>String id.</td></row>
		<row><td>ISString</td><td>TimeStamp</td><td>Y</td><td/><td/><td/><td/><td>Time/Date</td><td/><td>Time Stamp. MSI's Time/Date column type is just an int, with bits packed in a certain order.</td></row>
		<row><td>ISString</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>real string value.</td></row>
		<row><td>ISSwidtagProperty</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISSwidtagProperty</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Property value</td></row>
		<row><td>ISTargetImage</td><td>Flags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>relative order of the target image</td></row>
		<row><td>ISTargetImage</td><td>IgnoreMissingFiles</td><td>N</td><td/><td/><td/><td/><td/><td/><td>If true, ignore missing source files when creating patch</td></row>
		<row><td>ISTargetImage</td><td>MsiPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to the target image</td></row>
		<row><td>ISTargetImage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the TargetImage</td></row>
		<row><td>ISTargetImage</td><td>Order</td><td>N</td><td/><td/><td/><td/><td/><td/><td>relative order of the target image</td></row>
		<row><td>ISTargetImage</td><td>UpgradedImage_</td><td>N</td><td/><td/><td>ISUpgradedImage</td><td>1</td><td>Text</td><td/><td>foreign key to the upgraded Image table</td></row>
		<row><td>ISUpgradeMsiItem</td><td>ISAttributes</td><td>N</td><td/><td/><td/><td/><td/><td>0;1</td><td/></row>
		<row><td>ISUpgradeMsiItem</td><td>ISReleaseFlags</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>ISUpgradeMsiItem</td><td>ObjectSetupPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The path to the setup you want to upgrade.</td></row>
		<row><td>ISUpgradeMsiItem</td><td>UpgradeItem</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the Upgrade Item.</td></row>
		<row><td>ISUpgradedImage</td><td>Family</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the image family</td></row>
		<row><td>ISUpgradedImage</td><td>MsiPath</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Path to the upgraded image</td></row>
		<row><td>ISUpgradedImage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the UpgradedImage</td></row>
		<row><td>ISVirtualDirectory</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Directory table.</td></row>
		<row><td>ISVirtualDirectory</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualDirectory</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into File  table.</td></row>
		<row><td>ISVirtualFile</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualFile</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualPackage</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualPackage</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualRegistry</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualRegistry</td><td>Registry_</td><td>N</td><td/><td/><td>Registry</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Registry table.</td></row>
		<row><td>ISVirtualRegistry</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualRelease</td><td>ISProductConfiguration_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISProductConfiguration table.</td></row>
		<row><td>ISVirtualRelease</td><td>ISRelease_</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key into ISRelease table.</td></row>
		<row><td>ISVirtualRelease</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property name</td></row>
		<row><td>ISVirtualRelease</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISVirtualShortcut</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Property name</td></row>
		<row><td>ISVirtualShortcut</td><td>Shortcut_</td><td>N</td><td/><td/><td>Shortcut</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Shortcut table.</td></row>
		<row><td>ISVirtualShortcut</td><td>Value</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Property value</td></row>
		<row><td>ISXmlElement</td><td>Content</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Element contents</td></row>
		<row><td>ISXmlElement</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML element attributes</td></row>
		<row><td>ISXmlElement</td><td>ISXmlElement</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized, internal token for Xml element</td></row>
		<row><td>ISXmlElement</td><td>ISXmlElement_Parent</td><td>Y</td><td/><td/><td>ISXmlElement</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISXMLElement table.</td></row>
		<row><td>ISXmlElement</td><td>ISXmlFile_</td><td>N</td><td/><td/><td>ISXmlFile</td><td>1</td><td>Identifier</td><td/><td>Foreign key into XmlFile table.</td></row>
		<row><td>ISXmlElement</td><td>XPath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>XPath fragment including any operators</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML elementattib attributes</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISXmlElementAttrib</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized, internal token for Xml element attribute</td></row>
		<row><td>ISXmlElementAttrib</td><td>ISXmlElement_</td><td>N</td><td/><td/><td>ISXmlElement</td><td>1</td><td>Identifier</td><td/><td>Foreign key into ISXMLElement table.</td></row>
		<row><td>ISXmlElementAttrib</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized attribute name</td></row>
		<row><td>ISXmlElementAttrib</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized attribute value</td></row>
		<row><td>ISXmlFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>ISXmlFile</td><td>Directory</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Directory table.</td></row>
		<row><td>ISXmlFile</td><td>Encoding</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>XML File Encoding</td></row>
		<row><td>ISXmlFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized XML file name</td></row>
		<row><td>ISXmlFile</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td>Number</td><td/><td>Internal XML file attributes</td></row>
		<row><td>ISXmlFile</td><td>ISXmlFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized,internal token for Xml file</td></row>
		<row><td>ISXmlFile</td><td>SelectionNamespaces</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Selection namespaces</td></row>
		<row><td>ISXmlLocator</td><td>Attribute</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>The name of an attribute within the XML element.</td></row>
		<row><td>ISXmlLocator</td><td>Element</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>XPath query that will locate an element in an XML file.</td></row>
		<row><td>ISXmlLocator</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td>0;1;2</td><td/></row>
		<row><td>ISXmlLocator</td><td>Parent</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The parent file signature. It is also a foreign key in the Signature table.</td></row>
		<row><td>ISXmlLocator</td><td>Signature_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The Signature_ represents a unique file signature and is also the foreign key in the Signature,  RegLocator, IniLocator, ISXmlLocator, CompLocator and the DrLocator tables.</td></row>
		<row><td>Icon</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The binary icon data in PE (.DLL or .EXE) or icon (.ICO) format.</td></row>
		<row><td>Icon</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to the ICO or EXE file.</td></row>
		<row><td>Icon</td><td>ISIconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index to be extracted.</td></row>
		<row><td>Icon</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key. Name of the icon file.</td></row>
		<row><td>IniFile</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>0;1;3</td><td>The type of modification to be made, one of iifEnum</td></row>
		<row><td>IniFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the .INI value.</td></row>
		<row><td>IniFile</td><td>DirProperty</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the .INI file is.</td></row>
		<row><td>IniFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name in which to write the information</td></row>
		<row><td>IniFile</td><td>IniFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>IniFile</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file key below Section.</td></row>
		<row><td>IniFile</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file Section.</td></row>
		<row><td>IniFile</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to be written.</td></row>
		<row><td>IniLocator</td><td>Field</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The field in the .INI line. If Field is null or 0 the entire line is read.</td></row>
		<row><td>IniLocator</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name.</td></row>
		<row><td>IniLocator</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Key value (followed by an equals sign in INI file).</td></row>
		<row><td>IniLocator</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Section name within in file (within square brackets in INI file).</td></row>
		<row><td>IniLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table.</td></row>
		<row><td>IniLocator</td><td>Type</td><td>Y</td><td>0</td><td>2</td><td/><td/><td/><td/><td>An integer value that determines if the .INI value read is a filename or a directory location or to be used as is w/o interpretation.</td></row>
		<row><td>InstallExecuteSequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>InstallExecuteSequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>InstallExecuteSequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>InstallExecuteSequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>InstallExecuteSequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>InstallShield</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property, uppercase if settable by launcher or loader.</td></row>
		<row><td>InstallShield</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>InstallUISequence</td><td>Action</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of action to invoke, either in the engine or the handler DLL.</td></row>
		<row><td>InstallUISequence</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td>Optional expression which skips the action if evaluates to expFalse.If the expression syntax is invalid, the engine will terminate, returning iesBadActionData.</td></row>
		<row><td>InstallUISequence</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store MM Custom Action Types</td></row>
		<row><td>InstallUISequence</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Sequence.</td></row>
		<row><td>InstallUISequence</td><td>Sequence</td><td>Y</td><td>-4</td><td>32767</td><td/><td/><td/><td/><td>Number that determines the sort order in which the actions are to be executed.  Leave blank to suppress action.</td></row>
		<row><td>IsolatedComponent</td><td>Component_Application</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Key to Component table item for application</td></row>
		<row><td>IsolatedComponent</td><td>Component_Shared</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Key to Component table item to be isolated</td></row>
		<row><td>LaunchCondition</td><td>Condition</td><td>N</td><td/><td/><td/><td/><td>Condition</td><td/><td>Expression which must evaluate to TRUE in order for install to commence.</td></row>
		<row><td>LaunchCondition</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Localizable text to display when condition fails and install must abort.</td></row>
		<row><td>ListBox</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ListBox</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same listbox.</td></row>
		<row><td>ListBox</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ListBox</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>ListView</td><td>Binary_</td><td>Y</td><td/><td/><td>Binary</td><td>1</td><td>Identifier</td><td/><td>The name of the icon to be displayed with the icon. The binary information is looked up from the Binary Table.</td></row>
		<row><td>ListView</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>ListView</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this item. All the items tied to the same property become part of the same listview.</td></row>
		<row><td>ListView</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible text to be assigned to the item. Optional. If this entry or the entire column is missing, the text is the same as the value.</td></row>
		<row><td>ListView</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The value string associated with this item. Selecting the line will set the associated property to this value.</td></row>
		<row><td>LockPermissions</td><td>Domain</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Domain name for user whose permissions are being set. (usually a property)</td></row>
		<row><td>LockPermissions</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Registry or File table</td></row>
		<row><td>LockPermissions</td><td>Permission</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Permission Access mask.  Full Control = 268435456 (GENERIC_ALL = 0x10000000)</td></row>
		<row><td>LockPermissions</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>Directory;File;Registry</td><td>Reference to another table name</td></row>
		<row><td>LockPermissions</td><td>User</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>User for permissions to be set.  (usually a property)</td></row>
		<row><td>MIME</td><td>CLSID</td><td>Y</td><td/><td/><td>Class</td><td>1</td><td>Guid</td><td/><td>Optional associated CLSID.</td></row>
		<row><td>MIME</td><td>ContentType</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Primary key. Context identifier, typically "type/format".</td></row>
		<row><td>MIME</td><td>Extension_</td><td>N</td><td/><td/><td>Extension</td><td>1</td><td>Text</td><td/><td>Optional associated extension (without dot)</td></row>
		<row><td>Media</td><td>Cabinet</td><td>Y</td><td/><td/><td/><td/><td>Cabinet</td><td/><td>If some or all of the files stored on the media are compressed in a cabinet, the name of that cabinet.</td></row>
		<row><td>Media</td><td>DiskId</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>Primary key, integer to determine sort order for table.</td></row>
		<row><td>Media</td><td>DiskPrompt</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Disk name: the visible text actually printed on the disk.  This will be used to prompt the user when this disk needs to be inserted.</td></row>
		<row><td>Media</td><td>LastSequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>File sequence number for the last file for this media.</td></row>
		<row><td>Media</td><td>Source</td><td>Y</td><td/><td/><td/><td/><td>Property</td><td/><td>The property defining the location of the cabinet file.</td></row>
		<row><td>Media</td><td>VolumeLabel</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The label attributed to the volume.</td></row>
		<row><td>MoveFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>If this component is not "selected" for installation or removal, no action will be taken on the associated MoveFile entry</td></row>
		<row><td>MoveFile</td><td>DestFolder</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the destination directory</td></row>
		<row><td>MoveFile</td><td>DestName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name to be given to the original file after it is moved or copied.  If blank, the destination file will be given the same name as the source file</td></row>
		<row><td>MoveFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key that uniquely identifies a particular MoveFile record</td></row>
		<row><td>MoveFile</td><td>Options</td><td>N</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Integer value specifying the MoveFile operating mode, one of imfoEnum</td></row>
		<row><td>MoveFile</td><td>SourceFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the source directory</td></row>
		<row><td>MoveFile</td><td>SourceName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the source file(s) to be moved or copied.  Can contain the '*' or '?' wildcards.</td></row>
		<row><td>MsiAssembly</td><td>Attributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Assembly attributes</td></row>
		<row><td>MsiAssembly</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>MsiAssembly</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Feature table.</td></row>
		<row><td>MsiAssembly</td><td>File_Application</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into File table, denoting the application context for private assemblies. Null for global assemblies.</td></row>
		<row><td>MsiAssembly</td><td>File_Manifest</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the manifest file for the assembly.</td></row>
		<row><td>MsiAssemblyName</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into Component table.</td></row>
		<row><td>MsiAssemblyName</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name part of the name-value pairs for the assembly name.</td></row>
		<row><td>MsiAssemblyName</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The value part of the name-value pairs for the assembly name.</td></row>
		<row><td>MsiDigitalCertificate</td><td>CertData</td><td>N</td><td/><td/><td/><td/><td>Binary</td><td/><td>A certificate context blob for a signer certificate</td></row>
		<row><td>MsiDigitalCertificate</td><td>DigitalCertificate</td><td>N</td><td/><td/><td>MsiPackageCertificate</td><td>2</td><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiDigitalSignature</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td>MsiDigitalCertificate</td><td>1</td><td>Identifier</td><td/><td>Foreign key to MsiDigitalCertificate table identifying the signer certificate</td></row>
		<row><td>MsiDigitalSignature</td><td>Hash</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>The encoded hash blob from the digital signature</td></row>
		<row><td>MsiDigitalSignature</td><td>SignObject</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Foreign key to Media table</td></row>
		<row><td>MsiDigitalSignature</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Reference to another table name (only Media table is supported)</td></row>
		<row><td>MsiDriverPackages</td><td>Component</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Primary key used to identify a particular component record.</td></row>
		<row><td>MsiDriverPackages</td><td>Flags</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Driver package flags</td></row>
		<row><td>MsiDriverPackages</td><td>ReferenceComponents</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiDriverPackages</td><td>Sequence</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>Installation sequence number</td></row>
		<row><td>MsiEmbeddedChainer</td><td>CommandLine</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Condition</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>MsiEmbeddedChainer</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Source</td><td>N</td><td/><td/><td/><td/><td>CustomSource</td><td/><td/></row>
		<row><td>MsiEmbeddedChainer</td><td>Type</td><td>Y</td><td/><td/><td/><td/><td>Integer</td><td>2;18;50</td><td/></row>
		<row><td>MsiEmbeddedUI</td><td>Attributes</td><td>N</td><td>0</td><td>3</td><td/><td/><td>Integer</td><td/><td>Information about the data in the Data column.</td></row>
		<row><td>MsiEmbeddedUI</td><td>Data</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>This column contains binary information.</td></row>
		<row><td>MsiEmbeddedUI</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Filename</td><td/><td>The name of the file that receives the binary information in the Data column.</td></row>
		<row><td>MsiEmbeddedUI</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>MsiEmbeddedUI</td><td>MessageFilter</td><td>Y</td><td>0</td><td>234913791</td><td/><td/><td>Integer</td><td/><td>Specifies the types of messages that are sent to the user interface DLL. This column is only relevant for rows with the msidbEmbeddedUI attribute.</td></row>
		<row><td>MsiEmbeddedUI</td><td>MsiEmbeddedUI</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The primary key for the table.</td></row>
		<row><td>MsiFileHash</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, foreign key into File table referencing file with this hash</td></row>
		<row><td>MsiFileHash</td><td>HashPart1</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart2</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart3</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>HashPart4</td><td>N</td><td/><td/><td/><td/><td/><td/><td>Size of file in bytes (long integer).</td></row>
		<row><td>MsiFileHash</td><td>Options</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Various options and attributes for this hash.</td></row>
		<row><td>MsiLockPermissionsEx</td><td>Condition</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Expression which must evaluate to TRUE in order for this set of permissions to be applied</td></row>
		<row><td>MsiLockPermissionsEx</td><td>LockObject</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into Registry, File, CreateFolder, or ServiceInstall table</td></row>
		<row><td>MsiLockPermissionsEx</td><td>MsiLockPermissionsEx</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiLockPermissionsEx</td><td>SDDLText</td><td>N</td><td/><td/><td/><td/><td>FormattedSDDLText</td><td/><td>String to indicate permissions to be applied to the LockObject</td></row>
		<row><td>MsiLockPermissionsEx</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td>CreateFolder;File;Registry;ServiceInstall</td><td>Reference to another table name</td></row>
		<row><td>MsiPackageCertificate</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A foreign key to the digital certificate table</td></row>
		<row><td>MsiPackageCertificate</td><td>PackageCertificate</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiPatchCertificate</td><td>DigitalCertificate_</td><td>N</td><td/><td/><td>MsiDigitalCertificate</td><td>1</td><td>Identifier</td><td/><td>A foreign key to the digital certificate table</td></row>
		<row><td>MsiPatchCertificate</td><td>PatchCertificate</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique identifier for the row</td></row>
		<row><td>MsiPatchMetadata</td><td>Company</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Optional company name</td></row>
		<row><td>MsiPatchMetadata</td><td>PatchConfiguration_</td><td>N</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the ISPatchConfiguration table</td></row>
		<row><td>MsiPatchMetadata</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the metadata</td></row>
		<row><td>MsiPatchMetadata</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value of the metadata</td></row>
		<row><td>MsiPatchOldAssemblyFile</td><td>Assembly_</td><td>Y</td><td/><td/><td>MsiPatchOldAssemblyName</td><td>1</td><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyFile</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Assembly</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Name</td><td>N</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchOldAssemblyName</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td/><td/><td/></row>
		<row><td>MsiPatchSequence</td><td>PatchConfiguration_</td><td>N</td><td/><td/><td>ISPatchConfiguration</td><td>1</td><td>Text</td><td/><td>Foreign key to the patch configuration table</td></row>
		<row><td>MsiPatchSequence</td><td>PatchFamily</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the family to which this patch belongs</td></row>
		<row><td>MsiPatchSequence</td><td>Sequence</td><td>N</td><td/><td/><td/><td/><td>Version</td><td/><td>The version of this patch in this family</td></row>
		<row><td>MsiPatchSequence</td><td>Supersede</td><td>N</td><td/><td/><td/><td/><td>Integer</td><td/><td>Supersede</td></row>
		<row><td>MsiPatchSequence</td><td>Target</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Target product codes for this patch family</td></row>
		<row><td>MsiServiceConfig</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Argument(s) for service configuration. Value depends on the content of the ConfigType field</td></row>
		<row><td>MsiServiceConfig</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the configuration of the service</td></row>
		<row><td>MsiServiceConfig</td><td>ConfigType</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Service Configuration Option</td></row>
		<row><td>MsiServiceConfig</td><td>Event</td><td>N</td><td>0</td><td>7</td><td/><td/><td/><td/><td>Bit field:   0x1 = Install, 0x2 = Uninstall, 0x4 = Reinstall</td></row>
		<row><td>MsiServiceConfig</td><td>MsiServiceConfig</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>MsiServiceConfig</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Actions</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A list of integer actions separated by [~] delimiters: 0 = SC_ACTION_NONE, 1 = SC_ACTION_RESTART, 2 = SC_ACTION_REBOOT, 3 = SC_ACTION_RUN_COMMAND. Terminate with [~][~]</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Command</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Command line of the process to CreateProcess function to execute</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the configuration of the service</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>DelayActions</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A list of delays (time in milli-seconds), separated by [~] delmiters, to wait before taking the corresponding Action. Terminate with [~][~]</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Event</td><td>N</td><td>0</td><td>7</td><td/><td/><td/><td/><td>Bit field:   0x1 = Install, 0x2 = Uninstall, 0x4 = Reinstall</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>MsiServiceConfigFailureActions</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>RebootMessage</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Message to be broadcast to server users before rebooting</td></row>
		<row><td>MsiServiceConfigFailureActions</td><td>ResetPeriod</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Time in seconds after which to reset the failure count to zero. Leave blank if it should never be reset</td></row>
		<row><td>MsiShortcutProperty</td><td>MsiShortcutProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token</td></row>
		<row><td>MsiShortcutProperty</td><td>PropVariantValue</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>String representation of the value in the property</td></row>
		<row><td>MsiShortcutProperty</td><td>PropertyKey</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Canonical string representation of the Property Key being set</td></row>
		<row><td>MsiShortcutProperty</td><td>Shortcut_</td><td>N</td><td/><td/><td>Shortcut</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Shortcut table</td></row>
		<row><td>ODBCAttribute</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of ODBC driver attribute</td></row>
		<row><td>ODBCAttribute</td><td>Driver_</td><td>N</td><td/><td/><td>ODBCDriver</td><td>1</td><td>Identifier</td><td/><td>Reference to ODBC driver in ODBCDriver table</td></row>
		<row><td>ODBCAttribute</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for ODBC driver attribute</td></row>
		<row><td>ODBCDataSource</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCDataSource</td><td>DataSource</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for data source</td></row>
		<row><td>ODBCDataSource</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for data source</td></row>
		<row><td>ODBCDataSource</td><td>DriverDescription</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Reference to driver description, may be existing driver</td></row>
		<row><td>ODBCDataSource</td><td>Registration</td><td>N</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Registration option: 0=machine, 1=user, others t.b.d.</td></row>
		<row><td>ODBCDriver</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCDriver</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for driver, non-localized</td></row>
		<row><td>ODBCDriver</td><td>Driver</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for driver</td></row>
		<row><td>ODBCDriver</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Reference to key driver file</td></row>
		<row><td>ODBCDriver</td><td>File_Setup</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Optional reference to key driver setup DLL</td></row>
		<row><td>ODBCSourceAttribute</td><td>Attribute</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of ODBC data source attribute</td></row>
		<row><td>ODBCSourceAttribute</td><td>DataSource_</td><td>N</td><td/><td/><td>ODBCDataSource</td><td>1</td><td>Identifier</td><td/><td>Reference to ODBC data source in ODBCDataSource table</td></row>
		<row><td>ODBCSourceAttribute</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Value for ODBC data source attribute</td></row>
		<row><td>ODBCTranslator</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reference to associated component</td></row>
		<row><td>ODBCTranslator</td><td>Description</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>Text used as registered name for translator</td></row>
		<row><td>ODBCTranslator</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Reference to key translator file</td></row>
		<row><td>ODBCTranslator</td><td>File_Setup</td><td>Y</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Optional reference to key translator setup DLL</td></row>
		<row><td>ODBCTranslator</td><td>Translator</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized.internal token for translator</td></row>
		<row><td>Patch</td><td>Attributes</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Integer containing bit flags representing patch attributes</td></row>
		<row><td>Patch</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Primary key, non-localized token, foreign key to File table, must match identifier in cabinet.</td></row>
		<row><td>Patch</td><td>Header</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>Binary stream. The patch header, used for patch validation.</td></row>
		<row><td>Patch</td><td>ISBuildSourcePath</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Full path to patch header.</td></row>
		<row><td>Patch</td><td>PatchSize</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Size of patch in bytes (long integer).</td></row>
		<row><td>Patch</td><td>Sequence</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Primary key, sequence with respect to the media images; order must track cabinet order.</td></row>
		<row><td>Patch</td><td>StreamRef_</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>External key into the MsiPatchHeaders table specifying the row that contains the patch header stream.</td></row>
		<row><td>PatchPackage</td><td>Media_</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Foreign key to DiskId column of Media table. Indicates the disk containing the patch package.</td></row>
		<row><td>PatchPackage</td><td>PatchId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A unique string GUID representing this patch.</td></row>
		<row><td>ProgId</td><td>Class_</td><td>Y</td><td/><td/><td>Class</td><td>1</td><td>Guid</td><td/><td>The CLSID of an OLE factory corresponding to the ProgId.</td></row>
		<row><td>ProgId</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Localized description for the Program identifier.</td></row>
		<row><td>ProgId</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a component, like ExtractIcon, etc.</td></row>
		<row><td>ProgId</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>Optional icon index.</td></row>
		<row><td>ProgId</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Optional foreign key into the Icon Table, specifying the icon file associated with this ProgId. Will be written under the DefaultIcon key.</td></row>
		<row><td>ProgId</td><td>ProgId</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The Program Identifier. Primary key.</td></row>
		<row><td>ProgId</td><td>ProgId_Parent</td><td>Y</td><td/><td/><td>ProgId</td><td>1</td><td>Text</td><td/><td>The Parent Program Identifier. If specified, the ProgId column becomes a version independent prog id.</td></row>
		<row><td>Property</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>User Comments.</td></row>
		<row><td>Property</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property, uppercase if settable by launcher or loader.</td></row>
		<row><td>Property</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>String value for property.</td></row>
		<row><td>PublishComponent</td><td>AppData</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>This is localisable Application specific data that can be associated with a Qualified Component.</td></row>
		<row><td>PublishComponent</td><td>ComponentId</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>A string GUID that represents the component id that will be requested by the alien product.</td></row>
		<row><td>PublishComponent</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table.</td></row>
		<row><td>PublishComponent</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Feature table.</td></row>
		<row><td>PublishComponent</td><td>Qualifier</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>This is defined only when the ComponentId column is an Qualified Component Id. This is the Qualifier for ProvideComponentIndirect.</td></row>
		<row><td>RadioButton</td><td>Height</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The height of the button.</td></row>
		<row><td>RadioButton</td><td>Help</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The help strings used with the button. The text is optional.</td></row>
		<row><td>RadioButton</td><td>ISControlId</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>A number used to represent the control ID of the Control, Used in Dialog export</td></row>
		<row><td>RadioButton</td><td>Order</td><td>N</td><td>1</td><td>32767</td><td/><td/><td/><td/><td>A positive integer used to determine the ordering of the items within one list..The integers do not have to be consecutive.</td></row>
		<row><td>RadioButton</td><td>Property</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A named property to be tied to this radio button. All the buttons tied to the same property become part of the same group.</td></row>
		<row><td>RadioButton</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The visible title to be assigned to the radio button.</td></row>
		<row><td>RadioButton</td><td>Value</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value string associated with this button. Selecting the button will set the associated property to this value.</td></row>
		<row><td>RadioButton</td><td>Width</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The width of the button.</td></row>
		<row><td>RadioButton</td><td>X</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The horizontal coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>RadioButton</td><td>Y</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The vertical coordinate of the upper left corner of the bounding rectangle of the radio button.</td></row>
		<row><td>RegLocator</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>RegLocator</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>RegLocator</td><td>Root</td><td>N</td><td>0</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum.</td></row>
		<row><td>RegLocator</td><td>Signature_</td><td>N</td><td/><td/><td>Signature</td><td>1</td><td>Identifier</td><td/><td>The table key. The Signature_ represents a unique file signature and is also the foreign key in the Signature table. If the type is 0, the registry values refers a directory, and _Signature is not a foreign key.</td></row>
		<row><td>RegLocator</td><td>Type</td><td>Y</td><td>0</td><td>18</td><td/><td/><td/><td/><td>An integer value that determines if the registry value is a filename or a directory location or to be used as is w/o interpretation.</td></row>
		<row><td>Registry</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the installing of the registry value.</td></row>
		<row><td>Registry</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a registry item.  Currently the only one is Automatic.</td></row>
		<row><td>Registry</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>Registry</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>Registry</td><td>Registry</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>Registry</td><td>Root</td><td>N</td><td>-1</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum.</td></row>
		<row><td>Registry</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The registry value.</td></row>
		<row><td>RemoveFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key referencing Component that controls the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>DirProperty</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full pathname to the folder of the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>FileKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key used to identify a particular file entry</td></row>
		<row><td>RemoveFile</td><td>FileName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Name of the file to be removed.</td></row>
		<row><td>RemoveFile</td><td>InstallMode</td><td>N</td><td/><td/><td/><td/><td/><td>1;2;3</td><td>Installation option, one of iimEnum.</td></row>
		<row><td>RemoveIniFile</td><td>Action</td><td>N</td><td/><td/><td/><td/><td/><td>2;4</td><td>The type of modification to be made, one of iifEnum.</td></row>
		<row><td>RemoveIniFile</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the deletion of the .INI value.</td></row>
		<row><td>RemoveIniFile</td><td>DirProperty</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the .INI file is.</td></row>
		<row><td>RemoveIniFile</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The .INI file name in which to delete the information</td></row>
		<row><td>RemoveIniFile</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file key below Section.</td></row>
		<row><td>RemoveIniFile</td><td>RemoveIniFile</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>RemoveIniFile</td><td>Section</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The .INI file Section.</td></row>
		<row><td>RemoveIniFile</td><td>Value</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The value to be deleted. The value is required when Action is iifIniRemoveTag</td></row>
		<row><td>RemoveRegistry</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table referencing component that controls the deletion of the registry value.</td></row>
		<row><td>RemoveRegistry</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>RegPath</td><td/><td>The key for the registry value.</td></row>
		<row><td>RemoveRegistry</td><td>Name</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The registry value name.</td></row>
		<row><td>RemoveRegistry</td><td>RemoveRegistry</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>RemoveRegistry</td><td>Root</td><td>N</td><td>-1</td><td>3</td><td/><td/><td/><td/><td>The predefined root key for the registry value, one of rrkEnum</td></row>
		<row><td>ReserveCost</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Reserve a specified amount of space if this component is to be installed.</td></row>
		<row><td>ReserveCost</td><td>ReserveFolder</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of a property whose value is assumed to resolve to the full path to the destination directory</td></row>
		<row><td>ReserveCost</td><td>ReserveKey</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key that uniquely identifies a particular ReserveCost record</td></row>
		<row><td>ReserveCost</td><td>ReserveLocal</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Disk space to reserve if linked component is installed locally.</td></row>
		<row><td>ReserveCost</td><td>ReserveSource</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>Disk space to reserve if linked component is installed to run from the source location.</td></row>
		<row><td>SFPCatalog</td><td>Catalog</td><td>Y</td><td/><td/><td/><td/><td>Binary</td><td/><td>SFP Catalog</td></row>
		<row><td>SFPCatalog</td><td>Dependency</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Parent catalog - only used by SFP</td></row>
		<row><td>SFPCatalog</td><td>SFPCatalog</td><td>N</td><td/><td/><td/><td/><td>Filename</td><td/><td>File name for the catalog.</td></row>
		<row><td>SelfReg</td><td>Cost</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The cost of registering the module.</td></row>
		<row><td>SelfReg</td><td>File_</td><td>N</td><td/><td/><td>File</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the module that needs to be registered.</td></row>
		<row><td>ServiceControl</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Arguments for the service.  Separate by [~].</td></row>
		<row><td>ServiceControl</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the startup of the service</td></row>
		<row><td>ServiceControl</td><td>Event</td><td>N</td><td>0</td><td>187</td><td/><td/><td/><td/><td>Bit field:  Install:  0x1 = Start, 0x2 = Stop, 0x8 = Delete, Uninstall: 0x10 = Start, 0x20 = Stop, 0x80 = Delete</td></row>
		<row><td>ServiceControl</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Name of a service. /, \, comma and space are invalid</td></row>
		<row><td>ServiceControl</td><td>ServiceControl</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>ServiceControl</td><td>Wait</td><td>Y</td><td>0</td><td>1</td><td/><td/><td/><td/><td>Boolean for whether to wait for the service to fully start</td></row>
		<row><td>ServiceInstall</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Arguments to include in every start of the service, passed to WinMain</td></row>
		<row><td>ServiceInstall</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table that controls the startup of the service</td></row>
		<row><td>ServiceInstall</td><td>Dependencies</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Other services this depends on to start.  Separate by [~], and end with [~][~]</td></row>
		<row><td>ServiceInstall</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of service.</td></row>
		<row><td>ServiceInstall</td><td>DisplayName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>External Name of the Service</td></row>
		<row><td>ServiceInstall</td><td>ErrorControl</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Severity of error if service fails to start</td></row>
		<row><td>ServiceInstall</td><td>LoadOrderGroup</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>LoadOrderGroup</td></row>
		<row><td>ServiceInstall</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Internal Name of the Service</td></row>
		<row><td>ServiceInstall</td><td>Password</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>password to run service with.  (with StartName)</td></row>
		<row><td>ServiceInstall</td><td>ServiceInstall</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>ServiceInstall</td><td>ServiceType</td><td>N</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Type of the service</td></row>
		<row><td>ServiceInstall</td><td>StartName</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>User or object name to run service as</td></row>
		<row><td>ServiceInstall</td><td>StartType</td><td>N</td><td>0</td><td>4</td><td/><td/><td/><td/><td>Type of the service</td></row>
		<row><td>Shortcut</td><td>Arguments</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The command-line arguments for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Component table denoting the component whose selection gates the the shortcut creation/deletion.</td></row>
		<row><td>Shortcut</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The description for the shortcut.</td></row>
		<row><td>Shortcut</td><td>DescriptionResourceDLL</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This field contains a Formatted string value for the full path to the language neutral file that contains the MUI manifest.</td></row>
		<row><td>Shortcut</td><td>DescriptionResourceId</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The description name index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Directory_</td><td>N</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the Directory table denoting the directory where the shortcut file is created.</td></row>
		<row><td>Shortcut</td><td>DisplayResourceDLL</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>This field contains a Formatted string value for the full path to the language neutral file that contains the MUI manifest.</td></row>
		<row><td>Shortcut</td><td>DisplayResourceId</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The display name index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Hotkey</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The hotkey for the shortcut. It has the virtual-key code for the key in the low-order byte, and the modifier flags in the high-order byte.</td></row>
		<row><td>Shortcut</td><td>ISAttributes</td><td>Y</td><td/><td/><td/><td/><td/><td/><td>This is used to store Installshield custom properties of a shortcut.  Mainly used in pro project types.</td></row>
		<row><td>Shortcut</td><td>ISComments</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Author’s comments on this Shortcut.</td></row>
		<row><td>Shortcut</td><td>ISShortcutName</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>A non-unique name for the shortcut.  Mainly used by pro pro project types.</td></row>
		<row><td>Shortcut</td><td>IconIndex</td><td>Y</td><td>-32767</td><td>32767</td><td/><td/><td/><td/><td>The icon index for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Icon_</td><td>Y</td><td/><td/><td>Icon</td><td>1</td><td>Identifier</td><td/><td>Foreign key into the File table denoting the external icon file for the shortcut.</td></row>
		<row><td>Shortcut</td><td>Name</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the shortcut to be created.</td></row>
		<row><td>Shortcut</td><td>Shortcut</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Primary key, non-localized token.</td></row>
		<row><td>Shortcut</td><td>ShowCmd</td><td>Y</td><td/><td/><td/><td/><td/><td>1;3;7</td><td>The show command for the application window.The following values may be used.</td></row>
		<row><td>Shortcut</td><td>Target</td><td>N</td><td/><td/><td/><td/><td>Shortcut</td><td/><td>The shortcut target. This is usually a property that is expanded to a file or a folder that the shortcut points to.</td></row>
		<row><td>Shortcut</td><td>WkDir</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of property defining location of working directory.</td></row>
		<row><td>Signature</td><td>FileName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The name of the file. This may contain a "short name|long name" pair.</td></row>
		<row><td>Signature</td><td>Languages</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>The languages supported by the file.</td></row>
		<row><td>Signature</td><td>MaxDate</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The maximum creation date of the file.</td></row>
		<row><td>Signature</td><td>MaxSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The maximum size of the file.</td></row>
		<row><td>Signature</td><td>MaxVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The maximum version of the file.</td></row>
		<row><td>Signature</td><td>MinDate</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The minimum creation date of the file.</td></row>
		<row><td>Signature</td><td>MinSize</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The minimum size of the file.</td></row>
		<row><td>Signature</td><td>MinVersion</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The minimum version of the file.</td></row>
		<row><td>Signature</td><td>Signature</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>The table key. The Signature represents a unique file signature.</td></row>
		<row><td>TextStyle</td><td>Color</td><td>Y</td><td>0</td><td>16777215</td><td/><td/><td/><td/><td>A long integer indicating the color of the string in the RGB format (Red, Green, Blue each 0-255, RGB = R + 256*G + 256^2*B).</td></row>
		<row><td>TextStyle</td><td>FaceName</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>A string indicating the name of the font used. Required. The string must be at most 31 characters long.</td></row>
		<row><td>TextStyle</td><td>Size</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The size of the font used. This size is given in our units (1/12 of the system font height). Assuming that the system font is set to 12 point size, this is equivalent to the point size.</td></row>
		<row><td>TextStyle</td><td>StyleBits</td><td>Y</td><td>0</td><td>15</td><td/><td/><td/><td/><td>A combination of style bits.</td></row>
		<row><td>TextStyle</td><td>TextStyle</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of the style. The primary key of this table. This name is embedded in the texts to indicate a style change.</td></row>
		<row><td>TypeLib</td><td>Component_</td><td>N</td><td/><td/><td>Component</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Component Table, specifying the component for which to return a path when called through LocateComponent.</td></row>
		<row><td>TypeLib</td><td>Cost</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The cost associated with the registration of the typelib. This column is currently optional.</td></row>
		<row><td>TypeLib</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td/></row>
		<row><td>TypeLib</td><td>Directory_</td><td>Y</td><td/><td/><td>Directory</td><td>1</td><td>Identifier</td><td/><td>Optional. The foreign key into the Directory table denoting the path to the help file for the type library.</td></row>
		<row><td>TypeLib</td><td>Feature_</td><td>N</td><td/><td/><td>Feature</td><td>1</td><td>Identifier</td><td/><td>Required foreign key into the Feature Table, specifying the feature to validate or install in order for the type library to be operational.</td></row>
		<row><td>TypeLib</td><td>Language</td><td>N</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>The language of the library.</td></row>
		<row><td>TypeLib</td><td>LibID</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The GUID that represents the library.</td></row>
		<row><td>TypeLib</td><td>Version</td><td>Y</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The version of the library. The major version is in the upper 8 bits of the short integer. The minor version is in the lower 8 bits.</td></row>
		<row><td>UIText</td><td>Key</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>A unique key that identifies the particular string.</td></row>
		<row><td>UIText</td><td>Text</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The localized version of the string.</td></row>
		<row><td>Upgrade</td><td>ActionProperty</td><td>N</td><td/><td/><td/><td/><td>UpperCase</td><td/><td>The property to set when a product in this set is found.</td></row>
		<row><td>Upgrade</td><td>Attributes</td><td>N</td><td>0</td><td>2147483647</td><td/><td/><td/><td/><td>The attributes of this product set.</td></row>
		<row><td>Upgrade</td><td>ISDisplayName</td><td>Y</td><td/><td/><td>ISUpgradeMsiItem</td><td>1</td><td/><td/><td/></row>
		<row><td>Upgrade</td><td>Language</td><td>Y</td><td/><td/><td/><td/><td>Language</td><td/><td>A comma-separated list of languages for either products in this set or products not in this set.</td></row>
		<row><td>Upgrade</td><td>Remove</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The list of features to remove when uninstalling a product from this set.  The default is "ALL".</td></row>
		<row><td>Upgrade</td><td>UpgradeCode</td><td>N</td><td/><td/><td/><td/><td>Guid</td><td/><td>The UpgradeCode GUID belonging to the products in this set.</td></row>
		<row><td>Upgrade</td><td>VersionMax</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The maximum ProductVersion of the products in this set.  The set may or may not include products with this particular version.</td></row>
		<row><td>Upgrade</td><td>VersionMin</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>The minimum ProductVersion of the products in this set.  The set may or may not include products with this particular version.</td></row>
		<row><td>Verb</td><td>Argument</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>Optional value for the command arguments.</td></row>
		<row><td>Verb</td><td>Command</td><td>Y</td><td/><td/><td/><td/><td>Formatted</td><td/><td>The command text.</td></row>
		<row><td>Verb</td><td>Extension_</td><td>N</td><td/><td/><td>Extension</td><td>1</td><td>Text</td><td/><td>The extension associated with the table row.</td></row>
		<row><td>Verb</td><td>Sequence</td><td>Y</td><td>0</td><td>32767</td><td/><td/><td/><td/><td>Order within the verbs for a particular extension. Also used simply to specify the default verb.</td></row>
		<row><td>Verb</td><td>Verb</td><td>N</td><td/><td/><td/><td/><td>Text</td><td/><td>The verb for the command.</td></row>
		<row><td>_Validation</td><td>Category</td><td>Y</td><td/><td/><td/><td/><td/><td>"Text";"Formatted";"Template";"Condition";"Guid";"Path";"Version";"Language";"Identifier";"Binary";"UpperCase";"LowerCase";"Filename";"Paths";"AnyPath";"WildCardFilename";"RegPath";"KeyFormatted";"CustomSource";"Property";"Cabinet";"Shortcut";"URL";"DefaultDir"</td><td>String category</td></row>
		<row><td>_Validation</td><td>Column</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of column</td></row>
		<row><td>_Validation</td><td>Description</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Description of column</td></row>
		<row><td>_Validation</td><td>KeyColumn</td><td>Y</td><td>1</td><td>32</td><td/><td/><td/><td/><td>Column to which foreign key connects</td></row>
		<row><td>_Validation</td><td>KeyTable</td><td>Y</td><td/><td/><td/><td/><td>Identifier</td><td/><td>For foreign key, Name of table to which data must link</td></row>
		<row><td>_Validation</td><td>MaxValue</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Maximum value allowed</td></row>
		<row><td>_Validation</td><td>MinValue</td><td>Y</td><td>-2147483647</td><td>2147483647</td><td/><td/><td/><td/><td>Minimum value allowed</td></row>
		<row><td>_Validation</td><td>Nullable</td><td>N</td><td/><td/><td/><td/><td/><td>Y;N;@</td><td>Whether the column is nullable</td></row>
		<row><td>_Validation</td><td>Set</td><td>Y</td><td/><td/><td/><td/><td>Text</td><td/><td>Set of values that are permitted</td></row>
		<row><td>_Validation</td><td>Table</td><td>N</td><td/><td/><td/><td/><td>Identifier</td><td/><td>Name of table</td></row>
	</table>
</msi>
