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
		<row><td>ISX_DEFAULTCOMPONENT</td><td>{2FB70FD5-1F77-44DF-84F9-E25D78CDE318}</td><td>SOUNDS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT1</td><td>{8AC379C6-F320-457E-9B4D-4BFA2CDA3C5A}</td><td>BACKGROUND_SOUNDS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT10</td><td>{2A4687F2-948A-41F1-BC01-52154D0CC5BB}</td><td>OK</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT100</td><td>{873F0F35-15DE-4B2A-9E5D-124DADE123B8}</td><td>PRIMES_TO_OPTIONS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT101</td><td>{D4E6273A-21B9-453E-AAB7-D200836D1F4A}</td><td>YES_STOP_AFTER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT102</td><td>{94E5E6B7-AD1C-4219-98A4-C39425F6AEFE}</td><td>YES_STOP_ON_LAP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT103</td><td>{0B0C1281-CCE5-46F9-8269-CE7D27CF0C9E}</td><td>NUMBERS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT104</td><td>{B842FC8C-F4FA-4657-9FBF-A6581FB791AC}</td><td>_</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT105</td><td>{DFA1CC62-F6DE-492D-B0DB-9FEECC3E460B}</td><td>_1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT106</td><td>{DC6B3FE1-084E-4550-B4AA-AFA0CD71F9ED}</td><td>_2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT107</td><td>{27651BBA-504E-4756-BE7C-1D31174D8C94}</td><td>_3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT108</td><td>{C65C36F1-C9EF-49C4-A7C0-6EC61CCB4B13}</td><td>_4</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT109</td><td>{248D5D75-124D-4D59-BDA7-7039E23960FF}</td><td>_5</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT11</td><td>{4108E7EB-8554-4F41-B4BE-80CB36AFCDFF}</td><td>SPOTTERDISABLED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT110</td><td>{BEFF0C07-9839-46EE-B873-F7F3BF47791A}</td><td>_6</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT111</td><td>{ECADDC85-883C-450D-A6FF-9FB55FDA2B75}</td><td>_7</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT112</td><td>{43668C73-68E7-4135-9BFE-68E2E46C1E58}</td><td>_8</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT113</td><td>{12585389-8BCB-42A0-8B19-1ABC4252EED4}</td><td>_9</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT114</td><td>{EBB7A44B-B807-4A16-B9E3-111B3952C0E8}</td><td>_10</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT115</td><td>{DB2BBB34-C28E-404A-A481-B4A7D1DC959F}</td><td>_0</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT116</td><td>{6A81A75A-965A-4710-B91F-9CCD3C8CDF50}</td><td>_11</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT117</td><td>{EAD54C9D-D6DA-40BF-AC5F-A03FBA596941}</td><td>_21</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT118</td><td>{ED56E44C-000C-46A0-9DE3-1E826B1F4A55}</td><td>_31</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT119</td><td>{9BAC2F12-6BCA-4B21-9C4A-6FD1CF3545F8}</td><td>_41</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT12</td><td>{A52CE49D-F8BE-457C-AD91-D92A12454DF3}</td><td>SPOTTERENABLED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT120</td><td>{016FC0F0-9BCB-4718-A056-4EF3BE68B82C}</td><td>_51</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT121</td><td>{908B56E2-DF57-475A-B195-8F4758F8FBEB}</td><td>_61</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT122</td><td>{8BE21C7B-73BA-496B-A53A-81B4A52671D1}</td><td>_71</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT123</td><td>{B37366F4-3908-4F6C-BEE5-D912E9956C97}</td><td>_81</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT124</td><td>{7D26898C-6892-424C-BDFB-0855552C2785}</td><td>_91</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT125</td><td>{1B4E1AC3-0A9C-4812-BE7E-F53118A65F66}</td><td>_12</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT126</td><td>{9246AB12-EE2D-454C-BE12-0F822BD0CDC1}</td><td>_01</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT127</td><td>{B2DD9298-E005-4FAE-8E40-D7EEC5F1D2DD}</td><td>_13</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT128</td><td>{813FB158-E4E9-44A4-B348-E3CF092C02AD}</td><td>_22</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT129</td><td>{475A99F0-4789-4958-B869-8AA79CFC298E}</td><td>_32</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT13</td><td>{419E78C4-BFB7-43B8-BACD-F6381A2F30B6}</td><td>YES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT130</td><td>{3E359237-FB4D-489C-A981-C25E3CF84D1C}</td><td>_42</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT131</td><td>{1FF08222-2040-429A-BE02-27FFB573BBEC}</td><td>_52</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT132</td><td>{B8170823-7859-44F0-B3BB-7DE3A26005E9}</td><td>_62</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT133</td><td>{11BDF3D9-020D-45B0-9A70-AB438179EFAC}</td><td>_72</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT134</td><td>{8759F09D-617C-4E5D-B2B1-1B11267C221C}</td><td>_82</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT135</td><td>{E1865B37-E8DB-44FB-9B0B-4A9B3F10E0E1}</td><td>_92</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT136</td><td>{CF4216C7-287B-4B1A-AF06-2D01769D578F}</td><td>_14</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT137</td><td>{418BBEC6-4D15-4E4D-BDAC-E1189044FC83}</td><td>_02</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT138</td><td>{C03BC93F-F847-468B-9000-94B2CBDD765F}</td><td>_15</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT139</td><td>{48895F85-A72D-4629-8F80-8549A118FBF7}</td><td>_23</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT14</td><td>{10E7ED8C-8D32-4EBA-9E22-73BAF9B9E329}</td><td>DAMAGE_REPORTING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT140</td><td>{6CE4356C-C814-422D-9EF3-B9E7FC3F766D}</td><td>_33</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT141</td><td>{6AA5533D-2A4A-408D-B48B-E8767CAE4F44}</td><td>_43</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT142</td><td>{0950F5FC-CA91-4A30-A050-BDC473E9BFB4}</td><td>_53</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT143</td><td>{3E5A54B8-B862-4CA2-B073-F73BBEBCA454}</td><td>_63</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT144</td><td>{3668D2FC-B921-4ADB-A09F-EB6D44AD8005}</td><td>_73</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT145</td><td>{273DEDE4-634B-4AD5-9E75-D95717EF9B02}</td><td>_83</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT146</td><td>{76C2DA0B-0148-4B70-AF1C-EB5779236C78}</td><td>_93</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT147</td><td>{75129F87-9B1E-4EDD-BD02-7E85E300FB06}</td><td>_16</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT148</td><td>{67B353C5-12EF-4D3A-A9F5-D435423A11DB}</td><td>_03</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT149</td><td>{DC8F125D-8DF9-46C4-B09F-FA65AD471001}</td><td>_17</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT15</td><td>{23D3AA60-5AC3-4019-BE4A-59D4F9F1191E}</td><td>BUSTED_ENGINE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT150</td><td>{41B4C5F6-7E9A-497F-8528-C4D0AF537A6B}</td><td>_24</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT151</td><td>{72B552AC-3EC8-4EAA-90FB-9F6695EE0286}</td><td>_34</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT152</td><td>{40CC08AF-F27E-4973-A5F4-8E1223A8BE64}</td><td>_44</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT153</td><td>{B611EEC0-0EF3-4162-8E4C-9EFF4B4090FA}</td><td>_54</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT154</td><td>{77C51EFD-C7E1-4EAF-AEB9-9DA549B88422}</td><td>_64</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT155</td><td>{095DB98E-825A-49AC-A3D1-09A8BA6ADB84}</td><td>_74</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT156</td><td>{BB530FD0-CA2F-44D6-BC07-30520C4C5762}</td><td>_84</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT157</td><td>{42D46D25-8657-4A29-939C-C65BB4FAA053}</td><td>_94</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT158</td><td>{65AD43E7-4FC0-4865-9CEF-733A13E38892}</td><td>_18</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT159</td><td>{1936C590-E250-4F46-9113-89376400FC3A}</td><td>_04</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT16</td><td>{357B966B-0CF5-4A50-8CEF-0A12CBEC2228}</td><td>BUSTED_TRANSMISSION</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT160</td><td>{967A04FC-A1A7-42E0-9227-8887316B80BC}</td><td>_19</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT161</td><td>{69531BBD-B7FD-4859-ABE6-9AF00FBC54DA}</td><td>_25</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT162</td><td>{4FF12CCB-122B-4DBD-B0BA-7D6362998BD4}</td><td>_35</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT163</td><td>{1DB92E3D-FC1B-4755-B336-363F6ADD5453}</td><td>_45</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT164</td><td>{F0AE8550-D989-4E8E-B5BB-7E3BCD36412C}</td><td>_55</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT165</td><td>{53F8BC43-A379-4B93-819F-6BA551AE3799}</td><td>_65</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT166</td><td>{62B2AC3B-3D94-481C-99AA-66BD6D400DE1}</td><td>_75</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT167</td><td>{06C60572-0C2A-4DA5-9937-381551EE8AB8}</td><td>_85</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT168</td><td>{95BDE66B-778E-4539-9D80-F6171977E81E}</td><td>_95</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT169</td><td>{2D10C622-F692-4D2E-879C-98B470D45738}</td><td>_20</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT17</td><td>{A7963F5F-8F48-4002-8291-1108B5788E50}</td><td>MINOR_AERO_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT170</td><td>{C27F8EFE-CB61-4082-8E9B-CA571340753D}</td><td>_26</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT171</td><td>{5B46CF48-A06A-44E0-B9CE-0B5DB6238C0F}</td><td>_27</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT172</td><td>{C5B19438-6646-4602-9988-045B1CD01004}</td><td>_28</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT173</td><td>{D93FFB76-F8BA-4759-A4BF-3582D8A3C531}</td><td>OH</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT174</td><td>{44262043-41EF-4BFC-8C69-E0030F04AB8F}</td><td>POINT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT175</td><td>{235F119E-AFE3-4859-AF18-2A104D919B3D}</td><td>ZEROZERO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT176</td><td>{C2B1B5E8-D71C-426A-B7B6-DA4BC8DCA551}</td><td>PEARLS_OF_WISDOM</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT177</td><td>{D40ED07A-B5D6-470C-B6C1-F63C65046CF8}</td><td>KEEP_IT_UP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT178</td><td>{2F7A3A70-EC1C-4659-ADE1-3E14744D504E}</td><td>MUST_DO_BETTER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT179</td><td>{6AF9501E-B9E7-4369-B835-194C3A2F19D7}</td><td>NEUTRAL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT18</td><td>{0300A2C9-E0A1-4821-B7A0-8CCB08973428}</td><td>MINOR_ENGINE_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT180</td><td>{3E165C28-EA26-4F8F-B037-5D549EF6B6D7}</td><td>PENALTIES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT181</td><td>{81DD9D0C-8CC4-41D3-9A44-6AD2A241498B}</td><td>CUT_TRACK_IN_PRAC_OR_QUAL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT182</td><td>{1B67CA3D-D8E9-4DCF-9C46-B063AFB1C05C}</td><td>CUT_TRACK_IN_RACE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT183</td><td>{9DE9B9B3-E734-4E65-89A2-0859C7A3B121}</td><td>LAP_DELETED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT184</td><td>{FB0BDBA9-2036-4BA4-9E1A-0357765747E8}</td><td>NEW_PENALTY_DRIVETHROUGH</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT185</td><td>{21A2F149-3919-4164-BA5A-81AE6016A4CD}</td><td>NEW_PENALTY_STOPGO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT186</td><td>{A21CD241-8CB7-48AA-B3BE-9CBB501237BA}</td><td>PENALTY_DISQUALIFIED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT187</td><td>{AA45AB79-8097-4D71-9536-DBB883566325}</td><td>PENALTY_NOT_SERVED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT188</td><td>{E7A39DBC-A524-467F-B871-18665850FB59}</td><td>PENALTY_ONE_LAP_LEFT_DRIVETHROUGH</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT189</td><td>{8285F6E6-6D87-4107-B813-378711F0EFDE}</td><td>PENALTY_ONE_LAP_LEFT_STOPGO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT19</td><td>{6EFC7794-8E86-4AF3-B6E1-0BAE32DABD12}</td><td>MINOR_TRANSMISSION_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT190</td><td>{42CE6C06-1176-4D43-8031-8CC890490551}</td><td>PENALTY_SERVED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT191</td><td>{03551C49-C68F-481F-910A-C07BC70F0024}</td><td>PENALTY_THREE_LAPS_LEFT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT192</td><td>{1B9F1B33-0F2B-4ABB-A5F1-6792BF387518}</td><td>PENALTY_TWO_LAPS_LEFT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT193</td><td>{BD48DE30-EDDC-4743-89A3-66280FD2D049}</td><td>PIT_NOW_DRIVE_THROUGH</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT194</td><td>{ECC19A57-2070-4702-A63F-140863448CB1}</td><td>PIT_NOW_STOP_GO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT195</td><td>{BBB7709E-0396-4A8D-9966-BDFAF2E17AB6}</td><td>TIME_PENALTY</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT196</td><td>{2C39F42F-C266-4BCB-ACE9-04C1AA66C0A4}</td><td>YOU_DONT_HAVE_A_PENALTY</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT197</td><td>{63367960-37D7-41C6-B80D-FCB8AB9B078A}</td><td>YOU_HAVE_A_PENALTY</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT198</td><td>{2751B2FC-70B4-4537-A55B-BD2BB6F55F0E}</td><td>YOU_STILL_HAVE_A_PENALTY</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT199</td><td>{4CE3E0AC-2386-4513-B34B-8C39FFF95F16}</td><td>POSITION</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT2</td><td>{0C5814A9-580C-4E0D-B901-1E007F5AD515}</td><td>FX</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT20</td><td>{EEEFA522-5DFE-413B-A3B4-2AACA935344B}</td><td>NO_AERO_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT200</td><td>{3E506D3A-7CC8-4E30-9E9D-76069AA9849D}</td><td>BAD_START</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT201</td><td>{EF36FB26-5079-4F08-A631-5AE5C4520A8B}</td><td>CONSISTENTLY_LAST</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT202</td><td>{AAD2591C-8543-4188-94A4-7BC7FD46D3AE}</td><td>GOOD_START</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT203</td><td>{07E38643-41CF-4ABB-B644-7149CB35BAAD}</td><td>LAST</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT204</td><td>{2DE1EE2D-685D-49BD-A8AA-7C8FD4CD7D36}</td><td>LEADING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT205</td><td>{3339810D-3D32-4CA5-93DF-2F1BE2B8E805}</td><td>OK_START</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT206</td><td>{DA6B569A-589E-45A6-A907-3BA1515D1F22}</td><td>P1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT207</td><td>{27403906-C88C-4AC1-BDBF-8F4765F059D3}</td><td>P10</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT208</td><td>{C02CE42F-E4D2-4C80-BA19-2EA7E9768ED3}</td><td>P11</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT209</td><td>{E7B74A7B-88CE-484A-A06D-357439005C25}</td><td>P12</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT21</td><td>{DF1C838D-0C73-46BA-9152-73032EAF6970}</td><td>NO_ENGINE_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT210</td><td>{BC4155A3-EAC6-48CE-B386-9D23279FBDF5}</td><td>P13</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT211</td><td>{B5C76F65-ADDD-4BFA-9A61-F0C6A324C017}</td><td>P14</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT212</td><td>{F5475D4F-DB88-4FA2-BE02-E755DA0EA909}</td><td>P15</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT213</td><td>{79139A59-E316-4001-A74C-0BED987FB7EF}</td><td>P16</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT214</td><td>{4F57097A-FF7D-4794-AA81-904228C365A9}</td><td>P17</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT215</td><td>{E11B406E-DC89-40D1-B678-6D1620E968E5}</td><td>P18</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT216</td><td>{75E6E69E-BB27-4E8A-A1A1-4C8247D2B754}</td><td>P19</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT217</td><td>{F22D4B01-02B7-40F0-A7C5-86E723B01AA0}</td><td>P2</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT218</td><td>{67535155-786D-486A-9F07-E3659B456EAC}</td><td>P20</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT219</td><td>{9B1C3AF1-185D-499E-8B51-C15E7C8F3542}</td><td>P21</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT22</td><td>{C5D3CDB2-FA87-4094-9724-122D33B19C43}</td><td>NO_TRANSMISSION_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT220</td><td>{172A60C5-DAE7-48AC-A985-047C2EC9CE50}</td><td>P22</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT221</td><td>{63864A5B-F708-415B-A2E8-98819A137C1E}</td><td>P23</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT222</td><td>{5764D808-710D-4557-9A53-8D07A4CA5045}</td><td>P24</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT223</td><td>{0F1459FC-594B-4E10-B3C1-43FAD61FEF8F}</td><td>P3</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT224</td><td>{5A7460EA-452C-4A79-A9EA-B40EE5F79D79}</td><td>P4</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT225</td><td>{EBDA21DF-0692-4635-A01B-86FD2A47E1BD}</td><td>P5</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT226</td><td>{BA39C390-98ED-4E37-9BE0-FDFAE1549EB5}</td><td>P6</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT227</td><td>{100B1127-44F3-4572-9D15-F600F8E5BD28}</td><td>P7</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT228</td><td>{71B348CE-7D5F-4491-BA7B-BC6FA5C216CF}</td><td>P8</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT229</td><td>{2DC76098-9F67-4981-A0F6-F655EF1B29E5}</td><td>P9</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT23</td><td>{53389BC6-E34F-47A4-A0AB-90906200B002}</td><td>SEVERE_AERO_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT230</td><td>{C4AD83CD-7AE5-4633-8E7E-F9FE4BF11091}</td><td>POLE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT231</td><td>{B3276A30-2894-443A-922A-06DA2C939C09}</td><td>TERRIBLE_START</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT232</td><td>{1A798E6B-DEBC-4C31-830A-5ECC73625DC8}</td><td>PUSH_NOW</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT233</td><td>{AE67C8BB-CAC0-441F-AE14-FB0BBF912CB9}</td><td>PITS_EXIT_CLEAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT234</td><td>{91702F78-8F75-4D28-88E9-77D0A34824AB}</td><td>PITS_EXIT_TRAFFIC_BEHIND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT235</td><td>{6487244E-AA53-4144-9693-1EBA025A8CCC}</td><td>PUSH_TO_GET_SECOND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT236</td><td>{A6AC5116-FA5E-4A07-896D-0FA49F582945}</td><td>PUSH_TO_GET_THIRD</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT237</td><td>{6095FB5A-F64F-4B56-8CD0-BC7891784B35}</td><td>PUSH_TO_GET_WIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT238</td><td>{8797EAF4-1F7D-4DBD-A88E-40270260836F}</td><td>PUSH_TO_HOLD_POSITION</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT239</td><td>{62CA3716-08B9-4120-969A-8D90FB629BDD}</td><td>PUSH_TO_IMPROVE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT24</td><td>{5DD767AB-4C40-41E1-A62D-54FCF1277FF4}</td><td>SEVERE_ENGINE_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT240</td><td>{86091675-539C-42D7-8A13-7CFCB3A4B53E}</td><td>RACE_TIME</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT241</td><td>{3864F425-E6E6-4B5B-8E1F-B23447671ABD}</td><td>FIFTEEN_MINUTES_LEFT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT242</td><td>{3771456E-176D-40F6-98F4-2032CB275C96}</td><td>FIVE_MINUTES_LEFT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT243</td><td>{215520BE-876B-4D31-9914-48FCB1A32F57}</td><td>FIVE_MINUTES_LEFT_LEADING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT244</td><td>{A126BF87-24EF-4004-AC1B-DBE40424F883}</td><td>INSTALLDIR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT245</td><td>{78494A21-0C14-404D-B307-1260DE3B9898}</td><td>FIVE_MINUTES_LEFT_PODIUM</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT246</td><td>{EEB404E5-BA19-4EB2-B9DF-6EEC1DF537C4}</td><td>HALF_WAY</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT247</td><td>{B25E9D2E-F90D-4177-82CC-4CBE3FD393D5}</td><td>LAPS_REMAINING1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT248</td><td>{B9CF4C7C-4B17-4A40-84FF-9BAEF7E02289}</td><td>LAST_LAP1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT249</td><td>{3618ABF5-DAB9-4046-B009-1E01BD8115F2}</td><td>LAST_LAP_LEADING1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT25</td><td>{DBCA0070-4A88-401A-9582-EC4A7ABC6BC7}</td><td>SEVERE_TRANSMISSION_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT250</td><td>{7C7AD67C-A2A5-4684-ADE0-5278DB56CDA5}</td><td>LAST_LAP_TOP_THREE1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT251</td><td>{C69CD787-1950-4389-B90C-48449B10A90B}</td><td>LESS_THAN_ONE_MINUTE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT252</td><td>{AF352D80-AFAD-47EC-8E8D-C07CF46F8510}</td><td>MINUTES_REMAINING1</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT253</td><td>{6574AB4F-2F44-44BE-932A-26C8EADDF5A2}</td><td>ONE_MINUTE_REMAINING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT254</td><td>{20FA00B9-46AD-478D-A7AA-CBAB18F9AD89}</td><td>ONE_MORE_LAP_AFTER_THIS_ONE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT255</td><td>{A0BEF50E-6E5D-4DCA-A814-D4BF6D9C3601}</td><td>TEN_MINUTES_LEFT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT256</td><td>{0F983737-46E1-4945-ABC2-EF5A5C3A2305}</td><td>THIS_IS_THE_LAST_LAP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT257</td><td>{EA5505E0-A9E2-4398-BCDE-B2BACC424C78}</td><td>TWENTY_MINUTES_LEFT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT258</td><td>{053D7FCC-FD39-4ADF-A0E4-9BC362FD3718}</td><td>TWO_MINUTES_LEFT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT259</td><td>{CEB099A0-B20C-4000-858F-B0ED9BDF75BE}</td><td>RADIO_CHECK</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT26</td><td>{FF757B05-CFF3-4998-BE44-1C6D588770C0}</td><td>TRIVIAL_AERO_DAMAGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT260</td><td>{801EE350-008C-41C0-8452-5B52F90C58C9}</td><td>TEST</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT261</td><td>{351BB5B5-7011-4506-8376-0CD0B182B476}</td><td>SPOTTER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT262</td><td>{97CF4A0D-C2F6-45EB-84F9-9CBB3DA61BFE}</td><td>CLEAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT263</td><td>{F5F34BC2-477D-43DF-823C-CE6A70E0E1DA}</td><td>HOLD_YOUR_LINE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT264</td><td>{0BAB3DAA-3D90-47B1-87CF-797D3ABEE044}</td><td>STILL_THERE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT265</td><td>{8CFF7E5A-1EC6-495D-AA73-EF8FAAB8444A}</td><td>TIMINGS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT266</td><td>{82E9AB53-7599-411F-9D6F-2875D92FEEB3}</td><td>BEING_HELD_UP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT267</td><td>{B49A6C7F-0C05-47FB-A4EA-3E7590E70A41}</td><td>BEING_PRESSURED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT268</td><td>{37A70350-5ABB-40F8-A71D-E3DE77813DCA}</td><td>GAP_BEHIND_DECREASING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT269</td><td>{41B9E755-8FE6-498B-A436-547452C8F104}</td><td>GAP_BEHIND_INCREASING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT27</td><td>{DB0FD2D1-D4CF-446D-98DB-9D60FC99A4D4}</td><td>ENGINE_MONITOR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT270</td><td>{2B67FC3B-7E61-4968-9F05-D166CA6F4559}</td><td>GAP_IN_FRONT_DECREASING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT271</td><td>{8C95ED50-F62F-427B-8F37-E950FCAC4153}</td><td>GAP_IN_FRONT_INCREASING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT272</td><td>{68B8BF5B-93CD-44DA-ACCE-23D5137F09FB}</td><td>SECONDS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT273</td><td>{DE6DC72E-D7DC-41E7-BC97-A461D5C821E1}</td><td>TYRE_MONITOR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT274</td><td>{F38CEAF6-E461-429B-ABC6-2953E983BEC2}</td><td>GOOD_TEMPS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT275</td><td>{DB3D21E6-2C50-4659-8114-171CDA11B0BF}</td><td>GOOD_WEAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT276</td><td>{2772259C-6CE0-4C82-A4B2-B2ECDA3816CA}</td><td>HOT_ALL_ROUND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT277</td><td>{B7614800-E62D-46D0-8A35-E6FDE312FE7F}</td><td>HOT_FRONTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT278</td><td>{F8FDCDA5-5693-42F3-AF41-EAAFBFC86298}</td><td>HOT_LEFTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT279</td><td>{6CBC0CF8-9E1B-4790-BC26-778A6F74EB3E}</td><td>HOT_LEFT_FRONT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT28</td><td>{05099685-91C9-4C3F-8DDF-88295F111FE2}</td><td>ALL_CLEAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT280</td><td>{3B1A5242-783A-48F0-8902-D29D3C46B466}</td><td>HOT_LEFT_REAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT281</td><td>{92534D73-623D-4677-B3C0-C8F0C275A83F}</td><td>HOT_REARS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT282</td><td>{86763222-C623-41D2-AFBE-EE25D592E1B5}</td><td>HOT_RIGHTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT283</td><td>{A1CC1C22-E1AD-48CA-8F02-0DD280C2AFCB}</td><td>HOT_RIGHT_FRONT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT284</td><td>{55B27F32-8363-4067-A9C0-21832BCEC37C}</td><td>HOT_RIGHT_REAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT285</td><td>{54B1AF57-D19A-461D-A627-486B0DCE84D9}</td><td>KNACKERED_ALL_ROUND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT286</td><td>{24C8B7CF-ABFA-4900-86BB-EB4293C8ADC5}</td><td>KNACKERED_FRONTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT287</td><td>{8A1FEFEC-8AE0-464A-91FC-2ACE606DD56B}</td><td>KNACKERED_LEFTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT288</td><td>{8CBFBD2F-76E1-4B83-B75D-A31C1534869D}</td><td>KNACKERED_LEFT_FRONT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT289</td><td>{163E67B6-7E94-4E84-9FE7-8D84D652D39F}</td><td>KNACKERED_LEFT_REAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT29</td><td>{969F22BB-5EE2-41BE-8ECD-092BBFB67F22}</td><td>HOT_OIL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT290</td><td>{72DD7B8C-EF4E-4071-9861-20292D165511}</td><td>KNACKERED_REARS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT291</td><td>{64C0DCFE-720C-4F95-B289-474C81F951DB}</td><td>KNACKERED_RIGHTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT292</td><td>{56D01DF2-8DF0-4EEC-9CDB-A050CF8CA770}</td><td>KNACKERED_RIGHT_FRONT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT293</td><td>{C708BD76-0F67-4344-A933-EFE9FF2CC07E}</td><td>KNACKERED_RIGHT_REAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT294</td><td>{043F4D8C-B447-42F8-9C25-031DD1C9DCA8}</td><td>LAPS_ON_CURRENT_TYRES_INTRO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT295</td><td>{42DE53F1-4C01-4C60-B598-667B07612F20}</td><td>LAPS_ON_CURRENT_TYRES_OUTRO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT296</td><td>{2085622D-658B-4100-BEC5-AA3DEDC20CF1}</td><td>MINUTES_ON_CURRENT_TYRES_INTRO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT297</td><td>{26313FA4-F03C-4359-97E6-7D11100E2768}</td><td>MINUTES_ON_CURRENT_TYRES_OUTRO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT298</td><td>{A8FCC682-3E36-4122-ACEA-42672A91C9E2}</td><td>WORN_ALL_ROUND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT299</td><td>{DFC7B361-B16E-4746-9FBE-6A94ED994CE1}</td><td>WORN_FRONTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT3</td><td>{29300411-FC88-4257-B9CA-27D90A9C645A}</td><td>VOICE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT30</td><td>{D2820040-239E-4FDB-AE71-E0FC7C227F79}</td><td>HOT_OIL_AND_WATER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT300</td><td>{46408897-BA4E-4456-BF76-1CB9955F0137}</td><td>WORN_LEFTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT301</td><td>{E5186320-5660-41A2-936F-2F96E76FFDAB}</td><td>WORN_LEFT_FRONT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT302</td><td>{111746E4-F998-4E22-8873-D9A8440EDB2F}</td><td>WORN_LEFT_REAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT303</td><td>{2F2ACEBD-CCF2-4A22-9533-91DBA1E2BA92}</td><td>WORN_REARS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT304</td><td>{3CA58F1D-6FF5-4DC8-9EED-56687722DEA1}</td><td>WORN_RIGHTS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT305</td><td>{5C905A9C-05FF-497C-9EBD-514870DBCA27}</td><td>WORN_RIGHT_FRONT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT306</td><td>{AE994D0B-726B-4937-8D5A-D75F46CCBD0F}</td><td>WORN_RIGHT_REAR</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT31</td><td>{99A8FFE3-2CBD-436E-B5C9-5E31D0E74872}</td><td>HOT_WATER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT32</td><td>{69F06EF5-098E-43D1-9788-9F85CC7F8FBC}</td><td>FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT33</td><td>{D8D26859-606B-4F9C-BCF8-597AE98CDD7A}</td><td>FIVE_MINUTES_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT34</td><td>{EAC634AB-7919-496B-82D5-8014D7077D41}</td><td>FOUR_LAPS_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT35</td><td>{D144B3F8-B68C-4242-98DD-967EA65D571F}</td><td>HALF_DISTANCE_GOOD_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT36</td><td>{EA670EED-0CCD-4D16-B73F-0DF996EB0EA7}</td><td>HALF_DISTANCE_LOW_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT37</td><td>{DFC6243A-3FD3-4A0C-97E5-CA3A7677A7B4}</td><td>HALF_TANK_WARNING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT38</td><td>{BAA47043-1DDB-40DE-BAC7-955A71D79A3C}</td><td>LAPS_REMAINING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT39</td><td>{073B1F82-FECF-449C-8543-1D0B24D70FAB}</td><td>MINUTES_REMAINING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT4</td><td>{98FB15CF-CEAC-44BB-A72E-4521700C2C51}</td><td>ACKNOWLEDGE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT40</td><td>{BEBE2F36-753B-46F4-8AF9-50ED53BB8976}</td><td>ONE_LAP_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT41</td><td>{57683171-4A7F-46C1-B6AF-480A4E7630D4}</td><td>PLENTY_OF_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT42</td><td>{4B1E71C1-DF8D-4B4F-8EFF-133D17744F25}</td><td>TEN_MINUTES_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT43</td><td>{E59EC5BF-1374-4CF5-86DD-B0BC3A9E8413}</td><td>THREE_LAPS_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT44</td><td>{013BA1C4-F240-49CC-8579-83A0F9C31E5C}</td><td>TWO_LAPS_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT45</td><td>{54BDCDE2-43E1-4BD2-BB7C-F215F303CE66}</td><td>TWO_MINUTES_FUEL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT46</td><td>{AE058D5B-830C-4C72-A5E2-8AF91193181D}</td><td>WE_ESTIMATE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT47</td><td>{5F8BC41E-BE63-46B9-8170-9F15699D7399}</td><td>LAP_COUNTER</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT48</td><td>{C79A9EB3-CB56-41B9-8F11-AF61EF2C837F}</td><td>END_OF_SESSION</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT49</td><td>{10A7596A-C92D-4C21-B5CE-2C1891776A02}</td><td>END_OF_SESSION_POLE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT5</td><td>{54F1A21E-2A34-48F8-8A73-F2D798A3519E}</td><td>DIDNT_UNDERSTAND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT50</td><td>{3A411A2E-AF94-4F3A-BC60-787575A9064D}</td><td>FINISHED_RACE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT51</td><td>{1F19107F-D527-47A1-9225-5A75301E38C1}</td><td>FINISHED_RACE_LAST</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT52</td><td>{76A546E2-68E4-447E-8D39-4F13F7866F44}</td><td>GET_READY</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT53</td><td>{1FDCD7C4-D2D8-4459-AE46-E6F296F7A0FA}</td><td>GREEN_GREEN_GREEN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT54</td><td>{F7880F91-5EE6-4479-B9E7-5700B1F7DCB9}</td><td>LAST_LAP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT55</td><td>{43CF3E18-BBDC-4EAE-91D5-6836E35E59D7}</td><td>LAST_LAP_LEADING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT56</td><td>{9EF21474-DE62-405C-864E-FD366125BBE0}</td><td>LAST_LAP_TOP_THREE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT57</td><td>{53ED5145-DDAE-4208-A481-AAABF491D910}</td><td>PODIUM_FINISH</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT58</td><td>{DCB8CD7B-A1BA-446D-8D23-E6447B57F6A5}</td><td>TWO_TO_GO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT59</td><td>{4F8682A5-F9CC-4752-A3A7-8C424CA3E434}</td><td>TWO_TO_GO_LEADING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT6</td><td>{D7E7FC86-6362-4048-B74A-3F1761054C82}</td><td>KEEPQUIETDISABLED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT60</td><td>{E5C13070-AB32-45E4-8822-20E2DCFFC9B7}</td><td>TWO_TO_GO_TOP_THREE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT61</td><td>{EF2C9976-5BF3-4111-BBEA-922DD898269C}</td><td>WON_RACE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT62</td><td>{B205A9EB-77BF-4D86-9449-17B7EFA35802}</td><td>LAP_TIMES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT63</td><td>{C28D9A74-352C-4934-B44B-2D951A60681C}</td><td>BEST_LAP_IN_RACE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT64</td><td>{F270CE54-54A7-4D97-A53B-A483E4375EE1}</td><td>BEST_LAP_IN_RACE_FOR_CLASS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT65</td><td>{28D79A01-8BC9-47B4-BB3F-8001BDA81E19}</td><td>CONSISTENT</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT66</td><td>{C65A29FB-F243-41C7-BAB3-30C2FECD9202}</td><td>FASTEST_IN_YOUR_CLASS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT67</td><td>{867E0D7B-1A99-414C-8ED2-E9B57F4C35A3}</td><td>GAP_INTRO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT68</td><td>{0F37DDA1-C259-42C9-9C92-02B44200061C}</td><td>GAP_OUTRO_OFF_PACE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT69</td><td>{6544AF73-533D-41D3-B14C-2E55330D0227}</td><td>GOOD_LAP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT7</td><td>{C272FD6C-3060-4F81-93A0-691B76E40C10}</td><td>KEEPQUIETENABLED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT70</td><td>{84AD9537-A911-43C9-AF61-B9EC196904BE}</td><td>IMPROVING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT71</td><td>{472ABF16-3189-4B04-9A01-1BD22E7FDAD4}</td><td>LESS_THAN_A_TENTH_OFF_THE_PACE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT72</td><td>{DDB9ADED-6189-4D29-BF6A-06BBEBA21B36}</td><td>NEED_TO_FIND_A_FEW_MORE_TENTHS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT73</td><td>{BF627D36-1B33-4928-95FA-B34BF37641DF}</td><td>NEED_TO_FIND_A_SECOND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT74</td><td>{97D6BFE0-A2DB-4DC5-9708-ADC0246279E2}</td><td>NEED_TO_FIND_MORE_THAN_A_SECOND</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT75</td><td>{6093B4D2-6AEE-41EC-B29E-47427EECE806}</td><td>NEED_TO_FIND_ONE_MORE_TENTH</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT76</td><td>{60570D75-EF44-4DA5-BFCE-2723C4072808}</td><td>PACE_BAD</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT77</td><td>{B479AE58-C3F5-47AC-B2E4-EB2C47D1F1FA}</td><td>PACE_GOOD</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT78</td><td>{743E791B-7909-4150-8A6A-4BDD161BB918}</td><td>PACE_OK</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT79</td><td>{CE2D705A-4FCA-49EF-B24E-1CC773A7D901}</td><td>PERSONAL_BEST</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT8</td><td>{23DACD13-F018-4CE9-A572-428E913BF07B}</td><td>NO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT80</td><td>{D561D9F7-632D-41A1-AC10-443669B6CE82}</td><td>QUICKER_THAN_SECOND_PLACE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT81</td><td>{27101432-049C-451A-8B22-9045C0AF3BF4}</td><td>QUICKEST_IN_CLASS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT82</td><td>{F3FC0D7A-39B3-455B-AB90-6F13973B152F}</td><td>QUICKEST_OVERALL</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT83</td><td>{0CA231AE-8E29-400E-91E4-5B8D72E824C3}</td><td>TIME_INTRO</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT84</td><td>{9CD8EF03-32F9-4300-85F9-8D6DD7F9F9D5}</td><td>WORSENING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT85</td><td>{9A2E2585-03AA-42E1-9252-D56AAAF168FA}</td><td>MANDATORY_PIT_STOPS</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT86</td><td>{7C3F9490-D015-4728-AC6A-595CBCDCF5E6}</td><td>MINUTES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT87</td><td>{86BE68DA-124B-44EB-823A-DB1D6936DA3A}</td><td>MISSED_STOP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT88</td><td>{873B8244-A8AD-48A4-BA35-E776DE5A6024}</td><td>OPTIONS_TO_PRIMES</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT89</td><td>{46CA0439-4185-4E7B-A9C5-F6C528C9A4A5}</td><td>PIT_NOW</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT9</td><td>{31A25BC1-D8F8-4F2C-8F29-27EE37DD19A4}</td><td>NO_DATA</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT90</td><td>{C1978F11-B808-42D4-9BC6-EAB4FCA8504D}</td><td>PIT_THIS_LAP</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT91</td><td>{1BE2F22A-33C0-4504-BFFD-9C7A9A35143C}</td><td>PIT_THIS_LAP_TOO_LATE</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT92</td><td>{64C86B4E-D2A1-4C8F-A353-012FFC2300E6}</td><td>PIT_WINDOW_CLOSED</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT93</td><td>{1497EDE2-3890-4EE6-AEB6-A229A544CC28}</td><td>PIT_WINDOW_CLOSES_1_MIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT94</td><td>{B831B718-0186-4F1B-AF0B-0B3D65CA5032}</td><td>PIT_WINDOW_CLOSES_2_MIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT95</td><td>{872550C5-AFF1-4450-B478-C9E6E744CC3C}</td><td>PIT_WINDOW_CLOSING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT96</td><td>{0F28FCCC-33AE-4CCF-89B0-67FDDE5E5D2B}</td><td>PIT_WINDOW_OPEN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT97</td><td>{793263E3-7E31-4ABA-B01B-3222546B2DE8}</td><td>PIT_WINDOW_OPENING</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT98</td><td>{C947E059-932F-4201-AA9F-2BB21B81C3F4}</td><td>PIT_WINDOW_OPENS_1_MIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
		<row><td>ISX_DEFAULTCOMPONENT99</td><td>{407214EA-D5E1-46D5-8206-F079C7D371B7}</td><td>PIT_WINDOW_OPENS_2_MIN</td><td>2</td><td/><td/><td>17</td><td/><td/><td/><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td><td>/LogFile=</td></row>
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
		<row><td>_.wav669</td><td>ISX_DEFAULTCOMPONENT263</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav67</td><td>ISX_DEFAULTCOMPONENT26</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\trivial_aero_damage\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav670</td><td>ISX_DEFAULTCOMPONENT263</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav671</td><td>ISX_DEFAULTCOMPONENT263</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav672</td><td>ISX_DEFAULTCOMPONENT263</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav673</td><td>ISX_DEFAULTCOMPONENT263</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\hold_your_line\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav674</td><td>ISX_DEFAULTCOMPONENT264</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav675</td><td>ISX_DEFAULTCOMPONENT264</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav676</td><td>ISX_DEFAULTCOMPONENT264</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav677</td><td>ISX_DEFAULTCOMPONENT264</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav678</td><td>ISX_DEFAULTCOMPONENT264</td><td>5.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\5.wav</td><td>1</td><td/></row>
		<row><td>_.wav679</td><td>ISX_DEFAULTCOMPONENT264</td><td>6.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\spotter\still_there\6.wav</td><td>1</td><td/></row>
		<row><td>_.wav68</td><td>ISX_DEFAULTCOMPONENT26</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\trivial_aero_damage\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav680</td><td>ISX_DEFAULTCOMPONENT266</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\being_held_up\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav681</td><td>ISX_DEFAULTCOMPONENT266</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\being_held_up\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav682</td><td>ISX_DEFAULTCOMPONENT266</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\being_held_up\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav683</td><td>ISX_DEFAULTCOMPONENT267</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\being_pressured\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav684</td><td>ISX_DEFAULTCOMPONENT267</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\being_pressured\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav685</td><td>ISX_DEFAULTCOMPONENT267</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\being_pressured\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav686</td><td>ISX_DEFAULTCOMPONENT268</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_behind_decreasing\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav687</td><td>ISX_DEFAULTCOMPONENT268</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_behind_decreasing\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav688</td><td>ISX_DEFAULTCOMPONENT268</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_behind_decreasing\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav689</td><td>ISX_DEFAULTCOMPONENT269</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_behind_increasing\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav69</td><td>ISX_DEFAULTCOMPONENT26</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\damage_reporting\trivial_aero_damage\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav690</td><td>ISX_DEFAULTCOMPONENT269</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_behind_increasing\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav691</td><td>ISX_DEFAULTCOMPONENT269</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_behind_increasing\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav692</td><td>ISX_DEFAULTCOMPONENT270</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_in_front_decreasing\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav693</td><td>ISX_DEFAULTCOMPONENT270</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_in_front_decreasing\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav694</td><td>ISX_DEFAULTCOMPONENT270</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_in_front_decreasing\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav695</td><td>ISX_DEFAULTCOMPONENT271</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_in_front_increasing\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav696</td><td>ISX_DEFAULTCOMPONENT271</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_in_front_increasing\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav697</td><td>ISX_DEFAULTCOMPONENT271</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\gap_in_front_increasing\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav698</td><td>ISX_DEFAULTCOMPONENT272</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\seconds\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav699</td><td>ISX_DEFAULTCOMPONENT272</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\seconds\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav7</td><td>ISX_DEFAULTCOMPONENT6</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\keepQuietDisabled\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav70</td><td>ISX_DEFAULTCOMPONENT28</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\all_clear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav700</td><td>ISX_DEFAULTCOMPONENT272</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\timings\seconds\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav701</td><td>ISX_DEFAULTCOMPONENT274</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\good_temps\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav702</td><td>ISX_DEFAULTCOMPONENT274</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\good_temps\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav703</td><td>ISX_DEFAULTCOMPONENT274</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\good_temps\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav704</td><td>ISX_DEFAULTCOMPONENT275</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\good_wear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav705</td><td>ISX_DEFAULTCOMPONENT275</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\good_wear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav706</td><td>ISX_DEFAULTCOMPONENT275</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\good_wear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav707</td><td>ISX_DEFAULTCOMPONENT276</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_all_round\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav708</td><td>ISX_DEFAULTCOMPONENT276</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_all_round\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav709</td><td>ISX_DEFAULTCOMPONENT276</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_all_round\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav71</td><td>ISX_DEFAULTCOMPONENT28</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\all_clear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav710</td><td>ISX_DEFAULTCOMPONENT277</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_fronts\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav711</td><td>ISX_DEFAULTCOMPONENT277</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_fronts\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav712</td><td>ISX_DEFAULTCOMPONENT277</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_fronts\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav713</td><td>ISX_DEFAULTCOMPONENT278</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_lefts\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav714</td><td>ISX_DEFAULTCOMPONENT278</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_lefts\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav715</td><td>ISX_DEFAULTCOMPONENT278</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_lefts\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav716</td><td>ISX_DEFAULTCOMPONENT278</td><td>4.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_lefts\4.wav</td><td>1</td><td/></row>
		<row><td>_.wav717</td><td>ISX_DEFAULTCOMPONENT279</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_left_front\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav718</td><td>ISX_DEFAULTCOMPONENT279</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_left_front\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav719</td><td>ISX_DEFAULTCOMPONENT279</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_left_front\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav72</td><td>ISX_DEFAULTCOMPONENT28</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\all_clear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav720</td><td>ISX_DEFAULTCOMPONENT280</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_left_rear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav721</td><td>ISX_DEFAULTCOMPONENT280</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_left_rear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav722</td><td>ISX_DEFAULTCOMPONENT280</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_left_rear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav723</td><td>ISX_DEFAULTCOMPONENT281</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_rears\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav724</td><td>ISX_DEFAULTCOMPONENT281</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_rears\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav725</td><td>ISX_DEFAULTCOMPONENT281</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_rears\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav726</td><td>ISX_DEFAULTCOMPONENT282</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_rights\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav727</td><td>ISX_DEFAULTCOMPONENT282</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_rights\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav728</td><td>ISX_DEFAULTCOMPONENT282</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_rights\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav729</td><td>ISX_DEFAULTCOMPONENT283</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_right_front\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav73</td><td>ISX_DEFAULTCOMPONENT29</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_oil\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav730</td><td>ISX_DEFAULTCOMPONENT283</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_right_front\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav731</td><td>ISX_DEFAULTCOMPONENT283</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_right_front\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav732</td><td>ISX_DEFAULTCOMPONENT284</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_right_rear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav733</td><td>ISX_DEFAULTCOMPONENT284</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_right_rear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav734</td><td>ISX_DEFAULTCOMPONENT284</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\hot_right_rear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav735</td><td>ISX_DEFAULTCOMPONENT285</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_all_round\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav736</td><td>ISX_DEFAULTCOMPONENT285</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_all_round\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav737</td><td>ISX_DEFAULTCOMPONENT285</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_all_round\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav738</td><td>ISX_DEFAULTCOMPONENT286</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_fronts\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav739</td><td>ISX_DEFAULTCOMPONENT286</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_fronts\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav74</td><td>ISX_DEFAULTCOMPONENT29</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_oil\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav740</td><td>ISX_DEFAULTCOMPONENT286</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_fronts\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav741</td><td>ISX_DEFAULTCOMPONENT287</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_lefts\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav742</td><td>ISX_DEFAULTCOMPONENT287</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_lefts\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav743</td><td>ISX_DEFAULTCOMPONENT287</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_lefts\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav744</td><td>ISX_DEFAULTCOMPONENT288</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_left_front\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav745</td><td>ISX_DEFAULTCOMPONENT288</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_left_front\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav746</td><td>ISX_DEFAULTCOMPONENT288</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_left_front\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav747</td><td>ISX_DEFAULTCOMPONENT289</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_left_rear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav748</td><td>ISX_DEFAULTCOMPONENT289</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_left_rear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav749</td><td>ISX_DEFAULTCOMPONENT289</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_left_rear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav75</td><td>ISX_DEFAULTCOMPONENT29</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_oil\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav750</td><td>ISX_DEFAULTCOMPONENT290</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_rears\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav751</td><td>ISX_DEFAULTCOMPONENT290</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_rears\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav752</td><td>ISX_DEFAULTCOMPONENT290</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_rears\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav753</td><td>ISX_DEFAULTCOMPONENT291</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_rights\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav754</td><td>ISX_DEFAULTCOMPONENT291</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_rights\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav755</td><td>ISX_DEFAULTCOMPONENT291</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_rights\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav756</td><td>ISX_DEFAULTCOMPONENT292</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_right_front\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav757</td><td>ISX_DEFAULTCOMPONENT292</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_right_front\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav758</td><td>ISX_DEFAULTCOMPONENT292</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_right_front\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav759</td><td>ISX_DEFAULTCOMPONENT293</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_right_rear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav76</td><td>ISX_DEFAULTCOMPONENT30</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_oil_and_water\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav760</td><td>ISX_DEFAULTCOMPONENT293</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_right_rear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav761</td><td>ISX_DEFAULTCOMPONENT293</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\knackered_right_rear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav762</td><td>ISX_DEFAULTCOMPONENT294</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\laps_on_current_tyres_intro\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav763</td><td>ISX_DEFAULTCOMPONENT294</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\laps_on_current_tyres_intro\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav764</td><td>ISX_DEFAULTCOMPONENT294</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\laps_on_current_tyres_intro\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav765</td><td>ISX_DEFAULTCOMPONENT295</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\laps_on_current_tyres_outro\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav766</td><td>ISX_DEFAULTCOMPONENT295</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\laps_on_current_tyres_outro\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav767</td><td>ISX_DEFAULTCOMPONENT295</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\laps_on_current_tyres_outro\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav768</td><td>ISX_DEFAULTCOMPONENT296</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\minutes_on_current_tyres_intro\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav769</td><td>ISX_DEFAULTCOMPONENT296</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\minutes_on_current_tyres_intro\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav77</td><td>ISX_DEFAULTCOMPONENT30</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_oil_and_water\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav770</td><td>ISX_DEFAULTCOMPONENT296</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\minutes_on_current_tyres_intro\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav771</td><td>ISX_DEFAULTCOMPONENT297</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\minutes_on_current_tyres_outro\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav772</td><td>ISX_DEFAULTCOMPONENT297</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\minutes_on_current_tyres_outro\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav773</td><td>ISX_DEFAULTCOMPONENT297</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\minutes_on_current_tyres_outro\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav774</td><td>ISX_DEFAULTCOMPONENT298</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_all_round\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav775</td><td>ISX_DEFAULTCOMPONENT298</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_all_round\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav776</td><td>ISX_DEFAULTCOMPONENT298</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_all_round\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav777</td><td>ISX_DEFAULTCOMPONENT299</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_fronts\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav778</td><td>ISX_DEFAULTCOMPONENT299</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_fronts\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav779</td><td>ISX_DEFAULTCOMPONENT299</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_fronts\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav78</td><td>ISX_DEFAULTCOMPONENT30</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_oil_and_water\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav780</td><td>ISX_DEFAULTCOMPONENT300</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_lefts\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav781</td><td>ISX_DEFAULTCOMPONENT300</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_lefts\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav782</td><td>ISX_DEFAULTCOMPONENT300</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_lefts\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav783</td><td>ISX_DEFAULTCOMPONENT301</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_left_front\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav784</td><td>ISX_DEFAULTCOMPONENT301</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_left_front\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav785</td><td>ISX_DEFAULTCOMPONENT301</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_left_front\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav786</td><td>ISX_DEFAULTCOMPONENT302</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_left_rear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav787</td><td>ISX_DEFAULTCOMPONENT302</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_left_rear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav788</td><td>ISX_DEFAULTCOMPONENT302</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_left_rear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav789</td><td>ISX_DEFAULTCOMPONENT303</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_rears\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav79</td><td>ISX_DEFAULTCOMPONENT31</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_water\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav790</td><td>ISX_DEFAULTCOMPONENT303</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_rears\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav791</td><td>ISX_DEFAULTCOMPONENT303</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_rears\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav792</td><td>ISX_DEFAULTCOMPONENT304</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_rights\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav793</td><td>ISX_DEFAULTCOMPONENT304</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_rights\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav794</td><td>ISX_DEFAULTCOMPONENT304</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_rights\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav795</td><td>ISX_DEFAULTCOMPONENT305</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_right_front\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav796</td><td>ISX_DEFAULTCOMPONENT305</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_right_front\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav797</td><td>ISX_DEFAULTCOMPONENT305</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_right_front\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav798</td><td>ISX_DEFAULTCOMPONENT306</td><td>1.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_right_rear\1.wav</td><td>1</td><td/></row>
		<row><td>_.wav799</td><td>ISX_DEFAULTCOMPONENT306</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_right_rear\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav8</td><td>ISX_DEFAULTCOMPONENT6</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\acknowledge\keepQuietDisabled\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav80</td><td>ISX_DEFAULTCOMPONENT31</td><td>2.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_water\2.wav</td><td>1</td><td/></row>
		<row><td>_.wav800</td><td>ISX_DEFAULTCOMPONENT306</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\tyre_monitor\worn_right_rear\3.wav</td><td>1</td><td/></row>
		<row><td>_.wav81</td><td>ISX_DEFAULTCOMPONENT31</td><td>3.wav</td><td>0</td><td/><td/><td/><td>1</td><td>C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\voice\engine_monitor\hot_water\3.wav</td><td>1</td><td/></row>
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
		<row><td>ISX_DEFAULTCOMPONENT</td><td/><td/><td>_BC1735B6_C6A5_46C1_BFCC_984E359A0FEE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT1</td><td/><td/><td>_1C43AD78_79AC_4FCC_B315_1853379031A2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT10</td><td/><td/><td>_6232EAEE_FC87_4EE5_BA0F_F13016266735_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT100</td><td/><td/><td>_DB257C29_26BA_43AA_A975_C427BEDE1295_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT101</td><td/><td/><td>_1AA25BF3_100C_4F73_80B4_5502DD792CAF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT102</td><td/><td/><td>_F2393831_BC4A_4C77_8E04_32221D92FA83_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT103</td><td/><td/><td>_1D94B420_00B0_4F83_B59B_02E31EB92AF8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT104</td><td/><td/><td>_6A13EFC5_D018_4723_96EE_4E2DC0B6843E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT105</td><td/><td/><td>_E571CE03_CA8B_4885_8894_EAD7E2428598_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT106</td><td/><td/><td>_83D874E1_45CA_4E90_B47A_927C71E71C5D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT107</td><td/><td/><td>_C58635C8_41A4_4687_BD05_EAB7FF66E040_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT108</td><td/><td/><td>_D3E10C27_3AAF_4F7B_97B2_11B5B6E48680_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT109</td><td/><td/><td>_AB872AFD_3A75_4AD1_B78D_DC9A6ECF38F6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT11</td><td/><td/><td>_0B99BB2B_8F65_45EB_984C_A9968D2B985F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT110</td><td/><td/><td>_899A3B31_FD0E_42DD_B2BF_FAFC33B20BD1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT111</td><td/><td/><td>_6F8C1F07_D103_429E_A005_D79EFC2A16FA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT112</td><td/><td/><td>_31175D31_3BD5_4E25_9FDB_7E033CDD8F86_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT113</td><td/><td/><td>_D56FFA46_464F_4095_8D1D_042F3BD75005_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT114</td><td/><td/><td>_936A7DFC_88AF_42F1_BE5F_710502E8DFF4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT115</td><td/><td/><td>_BBDE7715_60A8_4F85_872A_50E385F8FBD1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT116</td><td/><td/><td>_4642BEF1_68FC_4CB6_8384_F499E28D4C3F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT117</td><td/><td/><td>_77D3980C_EDDB_47C2_A343_BD9330F66AFE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT118</td><td/><td/><td>_47DE19B8_0F4B_4D90_BD9F_4A2D4594B0F0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT119</td><td/><td/><td>_FCF5B8E2_C56A_4973_8D42_FA18083A9833_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT12</td><td/><td/><td>_8414DFFF_A6B7_4B51_887C_31714523E13C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT120</td><td/><td/><td>_03F4D777_82BC_44F5_B2FA_11FFD2A0A7CD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT121</td><td/><td/><td>_C59A28ED_1975_475A_BABE_A9138F971F1B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT122</td><td/><td/><td>_A5FE3F0E_07DD_4FC6_BBA2_35B1F6B2E433_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT123</td><td/><td/><td>_0FB7F187_36D1_4B29_8126_493F2B2FE340_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT124</td><td/><td/><td>_17AEE027_0690_4A4C_B5FC_9C7AC4792AB6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT125</td><td/><td/><td>_A5FB7BA2_2FA8_4C3E_B143_CBAB99774500_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT126</td><td/><td/><td>_A2302A70_5862_4C60_8279_67C286EBE92A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT127</td><td/><td/><td>_1FDA1234_BDD3_4882_943D_F9192236D7AE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT128</td><td/><td/><td>_43393F2F_EA22_4A67_925C_6034514E8B30_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT129</td><td/><td/><td>_D1FCA6E5_E4BD_4C43_B40D_D6473E33D17F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT13</td><td/><td/><td>_28E62E75_F5D2_41D5_AB2C_35F3561DD5FA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT130</td><td/><td/><td>_FB8DB245_1606_4AB7_9256_613ABD19CA0A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT131</td><td/><td/><td>_A7B86409_1D65_4A12_A0EA_051D6949C377_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT132</td><td/><td/><td>_0FD0C767_9C73_4737_88F1_C6688B2FFF8A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT133</td><td/><td/><td>_014243A9_84CD_41F1_A5DC_972BE3642DE5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT134</td><td/><td/><td>_73D04CA6_777F_4C07_86F7_7E2DA6E89C55_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT135</td><td/><td/><td>_F2D81F71_D68C_4320_A0E5_8A34573DFD83_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT136</td><td/><td/><td>_52316E04_8241_4FBA_A154_68CD08C76A6D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT137</td><td/><td/><td>_6A7F9239_320B_46D3_B0F3_157FCF935E96_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT138</td><td/><td/><td>_236CBF61_ADC4_4307_912F_31F834A443C4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT139</td><td/><td/><td>_7BDAC3C8_61BB_4136_B64B_AE1758C7FF03_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT14</td><td/><td/><td>_F80BE345_D743_4DAB_AC54_7DD669DF2A0C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT140</td><td/><td/><td>_7470CF45_3DC8_4D8E_AA19_B7204D44B1F4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT141</td><td/><td/><td>_3FB3A0DA_9715_4E1B_A98B_CC11619F16E0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT142</td><td/><td/><td>_86C97663_FD06_4F0A_8039_9DA706BF03A5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT143</td><td/><td/><td>_05924DEB_49E0_4C37_913F_1EB80FFC0FB3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT144</td><td/><td/><td>_4433FED0_1CD9_4617_B225_81A053DCF8C1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT145</td><td/><td/><td>_C147728F_0B71_4A2E_A6BF_C676739F048B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT146</td><td/><td/><td>_9A4BAF78_E41D_4DB0_9E31_F73B339DF2DE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT147</td><td/><td/><td>_0413842F_7983_40AE_B00F_79910FAFAED3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT148</td><td/><td/><td>_6C28846F_36D8_4A02_8F1B_563A6D385B31_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT149</td><td/><td/><td>_328671C0_31D6_4218_8EFA_BE0044209692_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT15</td><td/><td/><td>_550C9773_DE78_4CB7_9D97_02FAE224E3AA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT150</td><td/><td/><td>_4E578C18_4368_4065_B25C_02CA173864A2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT151</td><td/><td/><td>_A2947F02_BBBC_4F40_BC99_17C7498138FB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT152</td><td/><td/><td>_82D04ED0_6AD2_438C_84F9_AE502845943C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT153</td><td/><td/><td>_9EFE0E47_FE15_4166_82ED_FC0FCA4F72C1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT154</td><td/><td/><td>_AB6614CB_E0EF_4934_886A_D0474673915B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT155</td><td/><td/><td>_945DC379_E8C6_42A5_9567_32682D1A542C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT156</td><td/><td/><td>_5C49601F_0632_4D8A_9B7A_4E7658B3B506_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT157</td><td/><td/><td>_AA9FAA2F_AAA5_4FD4_8283_2AA6A77698B2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT158</td><td/><td/><td>_985705D0_9170_490D_802A_AEC2BFB58BD5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT159</td><td/><td/><td>_4D12404B_81FC_4D82_9D10_B34508475DCA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT16</td><td/><td/><td>_A826E30C_4DCD_4531_9755_9C36D5C8CE04_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT160</td><td/><td/><td>_8FA8F5BA_3E9A_4F24_BCC4_1114C916CA7E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT161</td><td/><td/><td>_4D791F6A_A015_4F28_A7C5_220C4668A178_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT162</td><td/><td/><td>_4BD27F9E_98F7_4EDB_A068_9EB03317B052_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT163</td><td/><td/><td>_87180CEA_2160_4921_A9FC_C2C5C00F91FA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT164</td><td/><td/><td>_3E5AEFA7_889D_4478_AC82_F9548F106198_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT165</td><td/><td/><td>_6DF00748_6096_4410_A3D1_D68845C2D920_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT166</td><td/><td/><td>_40191CE6_7660_4BB1_9A40_5D684456D040_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT167</td><td/><td/><td>_53686E14_A1C7_4FFF_9F89_6F29DC56F04C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT168</td><td/><td/><td>_1B12159D_1092_427B_B519_AB0F081F527C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT169</td><td/><td/><td>_DAF37583_0814_4A4E_85C4_2869EDBABF3A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT17</td><td/><td/><td>_F8CA1079_3920_46BF_B0C3_C7D798F135AE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT170</td><td/><td/><td>_5EACBFDA_3917_434D_A9B7_6CB455D07DBE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT171</td><td/><td/><td>_B0CE5A84_38CB_491C_A75B_D38DF2AC0E50_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT172</td><td/><td/><td>_94FBB830_2669_4648_9785_2AFAA1C9415C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT173</td><td/><td/><td>_6D66A772_99CE_46FB_B175_20A2645BC689_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT174</td><td/><td/><td>_719E0937_3EFE_4E04_900A_A557195BBA54_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT175</td><td/><td/><td>_E4BE3CEE_712D_4A3F_B43D_2DB0449CD019_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT176</td><td/><td/><td>_384763C0_6972_4C39_9432_9ED036A0A79B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT177</td><td/><td/><td>_EF7A0D95_10E0_4F4A_879D_8B47EED0256A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT178</td><td/><td/><td>_767D8FD1_46A0_4FCE_8FA8_F9A8D40332F7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT179</td><td/><td/><td>_0E60854F_6C6B_4169_8599_827E3AA91093_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT18</td><td/><td/><td>_BDCADA38_F1AE_4AAE_A898_6D5BB24526DF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT180</td><td/><td/><td>_623E3848_50FC_41A2_9115_A6C0160812BA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT181</td><td/><td/><td>_0F22BB3E_D4D4_4272_995C_C1BD1768DB65_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT182</td><td/><td/><td>_720471B0_882D_4DFA_A4A2_003DA7D4E86C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT183</td><td/><td/><td>_C70C212C_6963_4E42_916B_7306C9D52349_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT184</td><td/><td/><td>_D497F817_BF32_4E8B_A485_80011B288A64_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT185</td><td/><td/><td>_5E89F964_AC68_45EE_8EFE_EDCC1D554669_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT186</td><td/><td/><td>_1E16084B_A332_4D9D_A972_D01A21C5AD25_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT187</td><td/><td/><td>_FBAA0069_E302_47FB_9373_028E104C7A2E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT188</td><td/><td/><td>_4F7702B3_48C5_4D01_94C2_D8FA34ED6D2F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT189</td><td/><td/><td>_C23D217A_0A29_4CD1_811B_1C8D91AB6B6B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT19</td><td/><td/><td>_CBF438D1_32C2_4F84_B1A1_B6E1B86F60F3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT190</td><td/><td/><td>_A1E2941D_7442_4B62_8196_3D0D120DF136_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT191</td><td/><td/><td>_C7737C96_DE31_4C58_AFA0_C04058396D62_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT192</td><td/><td/><td>_6A223BD0_10F8_4FFB_B960_0A3AC1E7D3E4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT193</td><td/><td/><td>_1A63B689_B8C7_4689_A06B_55FD5B1856AA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT194</td><td/><td/><td>_2D1F174F_AB6D_40F9_BF5A_E47260123A71_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT195</td><td/><td/><td>_E5FF340A_4B9C_4782_A8E6_CDB97019AE01_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT196</td><td/><td/><td>_D66F8235_A432_454D_B69E_604A0F1B3BE8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT197</td><td/><td/><td>_44800C6A_CAA2_4B3A_A5A9_2F469B3153F5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT198</td><td/><td/><td>_BBDDBD93_9EF9_4582_872D_F87DFC463CA1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT199</td><td/><td/><td>_75DADC95_C2D6_4B05_BDEB_355A7CC90F9A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT2</td><td/><td/><td>_1111DAF9_DC7B_471E_A075_A4942C731151_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT20</td><td/><td/><td>_D26DE7EA_D049_4558_A1BD_641A48672C47_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT200</td><td/><td/><td>_68DFF2ED_AA9B_4E73_AD32_FCC5C328D7A5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT201</td><td/><td/><td>_BC57E26E_B088_4D33_954E_F84B8174134F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT202</td><td/><td/><td>_133BB595_5C7C_4495_96FF_EEE0E5E528EF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT203</td><td/><td/><td>_2626C0F2_18AA_46AE_B45A_B190EC1A22F1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT204</td><td/><td/><td>_8DA6477C_DD8F_4AEF_BDE0_876CCE763539_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT205</td><td/><td/><td>_87134CED_0060_48F5_934C_548EE957FF57_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT206</td><td/><td/><td>_ADC14793_B5E8_428D_86E5_BD3664E5A5CE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT207</td><td/><td/><td>_DE08948E_C42A_4AD5_A465_F5B884D33485_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT208</td><td/><td/><td>_7666BAFB_ECF4_4C0D_AD40_278FD2392CCC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT209</td><td/><td/><td>_A4017F64_FAC0_47D2_BD1F_62DCEDC57774_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT21</td><td/><td/><td>_B972CBAF_0F33_4312_8877_CFF36BD8E831_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT210</td><td/><td/><td>_1D2853F0_7C66_4BBB_AA59_B163E44F2992_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT211</td><td/><td/><td>_F422A46B_FFFC_4442_970C_58C96E5AAD67_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT212</td><td/><td/><td>_7B685B3B_0801_45F2_B886_2128AFC4A762_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT213</td><td/><td/><td>_3EE74AA7_4E4E_40D6_9E61_F5FBC9FC8CE2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT214</td><td/><td/><td>_2B6822F6_4117_4D25_8B85_7AAFF8C8C9E9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT215</td><td/><td/><td>_5F872822_BB9A_47D1_8416_05CF302C09E3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT216</td><td/><td/><td>_BF4D5A63_8F8F_4FA3_B569_8E40FE996BC9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT217</td><td/><td/><td>_6DE6EDD2_A722_4292_8766_05432CE2D5E5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT218</td><td/><td/><td>_00C7DC1E_2210_4F04_B4A2_F54551E1F7ED_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT219</td><td/><td/><td>_BCC73E7B_D90C_4AB5_9571_C57BCC1D6FEA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT22</td><td/><td/><td>_654183CD_0E93_4CFE_AA99_80DA613070E9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT220</td><td/><td/><td>_1E2B7845_021F_49BE_9B92_F1415C78A9BF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT221</td><td/><td/><td>_312209C6_3E59_4F9E_A00C_A7E554468E58_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT222</td><td/><td/><td>_CE675826_6A77_4ED8_9AA3_12FA4F904943_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT223</td><td/><td/><td>_B82CBBAA_6691_4232_8BB3_13293E4B4579_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT224</td><td/><td/><td>_9A74F6A8_5016_4C37_A9AC_6F5FDDC4D7AE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT225</td><td/><td/><td>_7535CD39_AE67_4271_97A3_D238F58A67D3_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT226</td><td/><td/><td>_4E598543_0361_4389_B10C_E420E6B6D154_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT227</td><td/><td/><td>_A5258DEC_C5F6_40DE_A338_F5D2F6D008EF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT228</td><td/><td/><td>_845F4B7B_3E13_4E47_9787_03B3F142D295_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT229</td><td/><td/><td>_02292558_FA10_4408_B530_BB7E4C6C92C5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT23</td><td/><td/><td>_77FFD4C0_50D7_433A_9258_BC6C007C7E2F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT230</td><td/><td/><td>_2402D1F3_28DA_4FEE_A40A_40CCDEFA6138_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT231</td><td/><td/><td>_044808DD_E643_45BF_81B7_D62B8BD766B9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT232</td><td/><td/><td>_7A7B1748_5691_4316_A06C_4C1A728209C9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT233</td><td/><td/><td>_005D8567_A642_4F6F_BE76_5DD882592416_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT234</td><td/><td/><td>_B374D414_204B_4758_A63A_4FF49E106F9D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT235</td><td/><td/><td>_73862432_CD4B_4273_BC52_C17D8FB5DCB6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT236</td><td/><td/><td>_5A607CBC_9FC1_4EF0_996E_B7F652F4C4F9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT237</td><td/><td/><td>_B7B90A01_9CE5_4924_93D2_2119187A8C48_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT238</td><td/><td/><td>_C1C87182_8137_4AB4_8468_D7D46B5E5483_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT239</td><td/><td/><td>_1327138E_B0A0_4665_8CAF_4205BB6337DD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT24</td><td/><td/><td>_469B1FBA_D667_47B6_8414_0B06CB37B3C0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT240</td><td/><td/><td>_22AB73E2_B2F1_4C99_95E0_45EDDD31784E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT241</td><td/><td/><td>_1FA75E93_E914_4851_A7E4_739666A14422_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT242</td><td/><td/><td>_7DED0606_1647_4506_B1ED_28073B6F70CA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT243</td><td/><td/><td>_C6D7BE0F_68E3_458C_B8BF_1DF9D5D64BA4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT244</td><td/><td/><td>_02DB6578_F9A7_409F_A7C7_F91D3D19B72C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT245</td><td/><td/><td>_8D4DFD37_20BD_4B91_A26F_90C4298E9BE5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT246</td><td/><td/><td>_A92E30E9_1923_484C_BF6F_69E038D016E7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT247</td><td/><td/><td>_89434F2B_7F5D_49D6_9CEF_F74A7B76CE35_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT248</td><td/><td/><td>_D75E3B2C_F362_435F_8E0A_ABED8439B08F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT249</td><td/><td/><td>_C8F7542F_E82D_4381_83F1_D87D90772D21_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT25</td><td/><td/><td>_96B356B6_D4A2_4622_81A0_EFA00317E02D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT250</td><td/><td/><td>_BDD03991_01BB_453B_96BB_EEC2F3AE3BC6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT251</td><td/><td/><td>_A8507A5E_6C1E_4F1E_8F1C_23F94740DC29_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT252</td><td/><td/><td>_0777AD2E_2E55_4577_921E_0FFB8A1DD9C6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT253</td><td/><td/><td>_FEEED2C1_345E_43C3_8D2F_55C4DEB1F2FE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT254</td><td/><td/><td>_B59C8358_1185_4257_9EA2_49A6927D162A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT255</td><td/><td/><td>_75A9F560_4093_4387_BB9C_16EC964DD879_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT256</td><td/><td/><td>_9EDE6982_4021_40FF_A765_68E1FAB8F26D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT257</td><td/><td/><td>_999F6BF0_1B15_4E7B_BAB9_F8C0CAC50685_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT258</td><td/><td/><td>_2F501FA4_6754_40DE_98F5_BFABBC2B6EE1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT259</td><td/><td/><td>_3D0837EC_6996_4CF4_B7A4_CD115BA35C2C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT26</td><td/><td/><td>_E1FAFC52_635B_4B72_9EC4_B7F03E8DF4D5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT260</td><td/><td/><td>_B08E48C5_0F15_473D_B6CB_39742FE623E4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT261</td><td/><td/><td>_9F4614AC_ABD6_457E_A442_E42185CAD13E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT262</td><td/><td/><td>_6DAF502E_DA9A_4F80_A3BC_E6FDCC9B93DD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT263</td><td/><td/><td>_A9CEAF8F_697A_48BD_9FBD_16F9436A8D3C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT264</td><td/><td/><td>_943CCD6F_FE1D_49A6_A90D_032E38F12B3B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT265</td><td/><td/><td>_7F75DF49_D4C3_4095_9689_3F0D27D20E2A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT266</td><td/><td/><td>_C5580D9F_A5C5_49AD_8B09_393B5F8C4262_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT267</td><td/><td/><td>_25A51813_07EC_40E8_97F4_B50C3681669E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT268</td><td/><td/><td>_C0459F15_05AC_401D_A6B6_D1DB51B07C78_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT269</td><td/><td/><td>_5CEAA10F_CA8F_43D3_AE79_B9F8984AD154_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT27</td><td/><td/><td>_5E2FD769_36B3_4F58_8F81_EA24651FE048_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT270</td><td/><td/><td>_6963CB7A_1891_44C3_B1B6_300E60626F2B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT271</td><td/><td/><td>_715B48C1_298B_4DE9_BFD2_34EA034C9693_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT272</td><td/><td/><td>_00875979_5FAF_40ED_8B27_6B199711F106_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT273</td><td/><td/><td>_C300E8A2_8D35_4E90_A94C_769DE34D1A51_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT274</td><td/><td/><td>_A3B81303_9970_4477_AFDB_DA90516C16E1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT275</td><td/><td/><td>_7CAC15FF_F195_4E06_9052_D3104868890A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT276</td><td/><td/><td>_DAAD8356_D66A_4F5B_A199_C54F171FA2FC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT277</td><td/><td/><td>_8FE4A084_AD4F_4BEE_8C50_91CF502518D7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT278</td><td/><td/><td>_AFA73FEA_3C6C_48EC_BB7C_B6A803A25EE6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT279</td><td/><td/><td>_DE889288_C534_4D6A_B254_F0F4B5C81853_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT28</td><td/><td/><td>_75BF5E2A_4275_46C8_8FA8_4D8664C787EE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT280</td><td/><td/><td>_2F341B90_0088_4F0F_A611_7A0A27803A7B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT281</td><td/><td/><td>_85515D0D_C9F1_4CFF_B3A5_BEE52FCF3C2C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT282</td><td/><td/><td>_ECF744BF_EE2F_42B3_8445_403A503C048D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT283</td><td/><td/><td>_5E333992_06DB_4927_A138_8B65C13F84F6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT284</td><td/><td/><td>_4ADDE212_55D8_4D8D_8ECD_64B34F3EAE89_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT285</td><td/><td/><td>_312DA979_9BEB_4ED4_838E_F76D06B7866F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT286</td><td/><td/><td>_B677B855_9150_490D_86C5_7358FC6C6A0A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT287</td><td/><td/><td>_8A14D33D_6A9A_4472_997E_D8AED1F3DD1A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT288</td><td/><td/><td>_FC76E924_5693_40B0_B08A_353A4344AB3C_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT289</td><td/><td/><td>_2260DD4A_DB56_4419_AE18_197F00E24CB9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT29</td><td/><td/><td>_91F1BEAD_AA27_42AF_A5F9_2036B4615C9A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT290</td><td/><td/><td>_42FB71D4_E662_420B_802E_9F9C798DFE73_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT291</td><td/><td/><td>_874AFCC1_5B7F_47EE_9E44_C18AF8CD4380_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT292</td><td/><td/><td>_EC14F9F6_C048_4D94_B762_71BF423F93B8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT293</td><td/><td/><td>_EED07297_4891_410D_BB41_53EC4ECB3BC8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT294</td><td/><td/><td>_658D92DB_16E0_4245_B910_DA87B33E4B34_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT295</td><td/><td/><td>_32A22262_5EA6_4961_B9E5_07CA68CA9827_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT296</td><td/><td/><td>_5B367757_3C48_4AA7_9FE1_246AFF02CDAF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT297</td><td/><td/><td>_85AD922C_9A81_4149_94BC_596DA0295F84_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT298</td><td/><td/><td>_0DB13962_7CC2_472B_8FC6_DC66599191B5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT299</td><td/><td/><td>_7E2D0D5E_84EB_49BE_A3F2_57CD5B837408_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT3</td><td/><td/><td>_253B7FFB_5FC7_45B9_9BB3_4989F88D9EAB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT30</td><td/><td/><td>_7DF6CFDB_EF74_4906_A0E8_C89FD952DFD8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT300</td><td/><td/><td>_F4A5B6D1_9225_4AC8_9FF4_0ADB26A2D445_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT301</td><td/><td/><td>_0C9050AD_660F_4065_9A5F_257DABDC7DD8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT302</td><td/><td/><td>_09DEAA03_002B_409E_9DDB_DFC749EC5788_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT303</td><td/><td/><td>_908CE195_496E_4B7B_8906_13DA8CF168CD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT304</td><td/><td/><td>_B43697F5_09CF_4237_8910_C6340FC37DFD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT305</td><td/><td/><td>_0F06FE14_A72D_4605_98E7_9CBA6A40CE53_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT306</td><td/><td/><td>_A910D6F9_03B2_42CB_81A7_5B2AC5E4DC63_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT31</td><td/><td/><td>_CAAF281E_462F_4FE3_B358_38AFAE9B7479_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT32</td><td/><td/><td>_9F119959_6683_4271_9F97_34F4CD566EC0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT33</td><td/><td/><td>_4BC0F913_B872_46EC_AB42_302953FE720D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT34</td><td/><td/><td>_545C9141_9EC0_419A_91E7_A379D940363F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT35</td><td/><td/><td>_AE31142E_823B_4FBB_85BB_DC5C6703AD53_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT36</td><td/><td/><td>_CC7D0E7A_DB91_42A9_9F06_7026C8EC27C1_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT37</td><td/><td/><td>_5C7D330B_A04E_4CC4_BB5F_5521049F55D2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT38</td><td/><td/><td>_3D71141D_CB85_4E0C_B41B_B39DCA5579E0_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT39</td><td/><td/><td>_0F29C08A_EA19_4785_8A4A_6465ED025CEC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT4</td><td/><td/><td>_1DE62DFC_B4BF_4854_8B4F_5B1AD3970580_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT40</td><td/><td/><td>_F2B736F2_2C6E_4010_85F0_387F669CECB6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT41</td><td/><td/><td>_0F355CD3_F1FE_4F16_BAA7_B22A8467FBA7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT42</td><td/><td/><td>_090C2724_96EC_43B2_BC6B_BD594FD69B1D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT43</td><td/><td/><td>_D768A8E8_50A4_4547_BF63_5D3710BCC552_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT44</td><td/><td/><td>_F4646865_80A9_4865_8B06_F329C4E6633F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT45</td><td/><td/><td>_9B7F75D3_E071_46F4_9EF9_5E92720C6EA5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT46</td><td/><td/><td>_2F7D0A9A_9C11_4496_AF5C_C06E65317AD5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT47</td><td/><td/><td>_6E7F5663_789B_4770_96A4_FE29EA1BFA52_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT48</td><td/><td/><td>_FF1E881D_6964_44AC_96C7_B037F3B901B2_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT49</td><td/><td/><td>_8B51FA3A_5A64_46AD_AFAA_B727B0981FDA_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT5</td><td/><td/><td>_163554A3_21CC_4EB5_9092_3612C2E65641_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT50</td><td/><td/><td>_850830C5_424A_481A_B091_7F01458B65A5_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT51</td><td/><td/><td>_A652CC1F_DE0D_4BF5_B3C0_3458A5C8ED08_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT52</td><td/><td/><td>_2B5E317B_FC33_4406_8E58_D296F76F72A6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT53</td><td/><td/><td>_934C429B_88E8_4834_B577_FD9AF283CDD9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT54</td><td/><td/><td>_1D601BAA_EAC7_43AD_B9FA_D28E8A383CB6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT55</td><td/><td/><td>_4A17476C_05EF_4DAA_B10B_43E61F7CEB2A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT56</td><td/><td/><td>_178300E1_9291_4787_B6FF_2E49D88EFFDB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT57</td><td/><td/><td>_2BE68213_4561_49BD_AB10_9E6E5A32D3F6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT58</td><td/><td/><td>_0BF15477_B8DD_4487_8951_61C92B0F9871_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT59</td><td/><td/><td>_3621EB31_9A0E_4A64_9B08_CE64116A22C8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT6</td><td/><td/><td>_AF714236_0E94_49EC_B3EE_94622FA30D5E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT60</td><td/><td/><td>_8618EB3E_EF11_4A36_9C53_9198D26B07C6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT61</td><td/><td/><td>_A42482D8_28E5_4FAD_BC84_E17D9FD9B43D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT62</td><td/><td/><td>_E201D4F0_0198_4E79_8DF1_8513F7D1E005_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT63</td><td/><td/><td>_B75325AE_DDBF_48C3_BC3B_071F68AC1F88_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT64</td><td/><td/><td>_CDE58FB8_3188_407C_9A48_65E13BA5B3CE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT65</td><td/><td/><td>_FB12CCDB_40FA_4357_B421_511DCC377E99_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT66</td><td/><td/><td>_93004E06_6A15_4481_8FE9_F29C3A3F5CBB_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT67</td><td/><td/><td>_66F9314D_06CD_4205_AB83_1C4C825DA9E4_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT68</td><td/><td/><td>_580F573E_C102_4869_B118_C38A5AEF70A7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT69</td><td/><td/><td>_97553E9C_3116_419B_B966_0261E28B593D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT7</td><td/><td/><td>_3DE6C40F_1766_4CF0_900E_A9305F9E05A7_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT70</td><td/><td/><td>_CA71906C_DA8A_477E_82AD_F7B0B65C9F5D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT71</td><td/><td/><td>_7B031172_2D36_4FA2_B11E_5A12A7A560AF_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT72</td><td/><td/><td>_3B43E923_FC38_4ACD_8F42_DA370DB96334_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT73</td><td/><td/><td>_0A7B0D9C_94C8_4A36_B40E_4E05C71D2F93_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT74</td><td/><td/><td>_38670785_A9FB_4BD2_8938_5308D1E08D7E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT75</td><td/><td/><td>_6EF40E06_F2C5_40CB_9BAF_15C7BF505E06_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT76</td><td/><td/><td>_B4F88FAD_EE92_43C1_B0D7_C786DBCF3002_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT77</td><td/><td/><td>_F35B9D0F_91A8_4EED_A152_CBB240584E7E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT78</td><td/><td/><td>_6ACC12FB_5BCA_481D_BE71_64D57C7B222E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT79</td><td/><td/><td>_FFEC5604_738B_44F4_8FED_3E0A9E424863_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT8</td><td/><td/><td>_6AFEC879_E6A2_44F6_9960_77AAB3D3B70D_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT80</td><td/><td/><td>_2C7469FA_3103_4CB8_9EEA_89A6EF79AB7F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT81</td><td/><td/><td>_A3AD5ECA_E828_4B07_8D28_4E4A4CB7C756_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT82</td><td/><td/><td>_A5E88E9C_0415_4F66_8E7F_7BE72EBD8E1A_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT83</td><td/><td/><td>_5A0FA991_4932_4B28_91AF_3AB0D276730B_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT84</td><td/><td/><td>_8BFC2587_A179_43B7_A44F_2C095A864896_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT85</td><td/><td/><td>_6F18519D_0373_45A6_BF49_48049E29FBB9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT86</td><td/><td/><td>_5ADEAD9F_7319_46FA_B614_28C126CC0756_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT87</td><td/><td/><td>_5F17BA4D_34AE_431F_9D03_03BA0BE94337_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT88</td><td/><td/><td>_4B89AF67_67BE_4612_939E_02DB92126EC9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT89</td><td/><td/><td>_424006AA_82F1_4017_B45D_975DDD4D35D8_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT9</td><td/><td/><td>_EC396D80_0F70_4A33_A632_4D9AA918E7DC_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT90</td><td/><td/><td>_2BE93EC2_53EF_41C5_9D96_E4EE06F2FADE_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT91</td><td/><td/><td>_506AE975_6FBB_45AB_AE43_ED48B117570E_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT92</td><td/><td/><td>_6601242D_A88F_4E06_84D8_8FBA5CD80C35_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT93</td><td/><td/><td>_6E26488D_935F_454C_A335_08F51896D4FD_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT94</td><td/><td/><td>_A7D94ED9_720E_46C0_9494_BAE83DF79AA6_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT95</td><td/><td/><td>_FDFD337E_B77F_437E_B3FA_96C87DE7A498_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT96</td><td/><td/><td>_F0946FD2_1454_499F_8372_64287599A783_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT97</td><td/><td/><td>_FDABA88B_3915_4F37_888F_878A984F4C3F_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT98</td><td/><td/><td>_FEE2E232_0938_4137_A92E_8ECFB101E1A9_FILTER</td><td/><td/><td/><td/></row>
		<row><td>ISX_DEFAULTCOMPONENT99</td><td/><td/><td>_78DEA8A4_874E_4E67_8027_C9AC4D63388A_FILTER</td><td/><td/><td/><td/></row>
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
