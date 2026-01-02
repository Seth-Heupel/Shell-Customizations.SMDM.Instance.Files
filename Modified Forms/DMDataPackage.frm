<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMDataPackage">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMDataPackage" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="DM_DATA_PACKAGE" />
        <FIELD name="TYPE" value="PROPERTY" />
        <FIELD name="DESCRIPTION" value="Data Manager Data Package Property Sheet" />
        <FIELD name="TITLE" value="Data Manager Data Package" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="" />
        <FIELD name="FILE_EXTENSION" value="" />
        <FIELD name="FORM_XML" value="" />
        <FIELD name="CATEGORY" value="LABTABLE" />
        <FIELD name="DEFAULT_ICON" value="INT_FORMS" />
        <FIELD name="WINDOW_STYLE" value="FLOAT" />
        <FIELD name="SHOW_WELCOME_PAGE" value="True" />
        <FIELD name="HAS_ERRORS" value="False" />
        <FIELD name="PAGE_EXTENSION" value="" />
      </RECORD>
    </TABLE>
    <PAGES>
      <PAGE name="AttachmentPage" />
      <PAGE name="VersionPage" />
      <PAGE name="EsigsPage" />
      <PAGE name="DMGamlViewerPage" />
    </PAGES>
  </DATA>
  <DEFINITION><![CDATA[<?xml version="1.0" encoding="utf-16"?>
<interface xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://www.thermo.com/informatics/xmlns/interface/1.0">
  <forms>
    <form name="GeneralPage">
      <caption>General</caption>
      <minimumsize>
        <height>400</height>
        <width>400</width>
      </minimumsize>
      <controls>
        <EntityImage name="EntityImage1">
          <location>
            <x>12</x>
            <y>12</y>
          </location>
          <height>32</height>
          <width>32</width>
          <sizemode>AutoSize</sizemode>
        </EntityImage>
        <prompt name="DmDataPackageName">
          <location>
            <x>120</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>156</width>
          <anchor>Top Left Right</anchor>
          <tooltip>Name of the Data Package.</tooltip>
          <property>DmDataPackageName</property>
          <propertylength>0</propertylength>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <line name="Line">
          <location>
            <x>12</x>
            <y>46</y>
          </location>
          <height>12</height>
          <width>376</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="DmDataPackageVersion">
          <location>
            <x>282</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>106</width>
          <tabindex>1</tabindex>
          <anchor>Top Right</anchor>
          <caption>Version</caption>
          <property>DmDataPackageVersion</property>
          <propertylength>0</propertylength>
          <mandatory>true</mandatory>
          <captionwidth>58</captionwidth>
          <viewname />
        </prompt>
        <prompt name="Description">
          <location>
            <x>12</x>
            <y>64</y>
          </location>
          <height>127</height>
          <width>376</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Description of the Data Package.</tooltip>
          <caption>Description</caption>
          <property>Description</property>
          <propertylength>234</propertylength>
          <viewname />
        </prompt>
        <prompt name="Status">
          <location>
            <x>12</x>
            <y>197</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Status of this version of the Data Package.</tooltip>
          <caption>Status</caption>
          <property>Status</property>
          <propertylength>0</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <line name="Line1">
          <location>
            <x>12</x>
            <y>224</y>
          </location>
          <height>12</height>
          <width>376</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="GroupId">
          <location>
            <x>12</x>
            <y>242</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Select a group to restrict access to the Data Package record.
If no group is specified, all operators have access.
		  </tooltip>
          <caption>Group</caption>
          <property>GroupId</property>
          <propertylength>0</propertylength>
          <viewname />
        </prompt>
        <prompt name="ModifiedOn">
          <location>
            <x>12</x>
            <y>269</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Date the Data Package record was last modified.</tooltip>
          <caption>Modified On</caption>
          <property>ModifiedOn</property>
          <propertylength>0</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="ModifiedBy">
          <location>
            <x>12</x>
            <y>296</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>8</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Operator who performed the last modification to the Data Package record.</tooltip>
          <caption>Modified By</caption>
          <property>ModifiedBy</property>
          <propertylength>0</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <line name="Line2">
          <location>
            <x>12</x>
            <y>323</y>
          </location>
          <height>12</height>
          <width>376</width>
          <tabindex>9</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="Modifiable">
          <location>
            <x>12</x>
            <y>341</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>10</tabindex>
          <tooltip>If checked, any user with the necessary role and group access can modify the Data Package record.
If cleared, only a user with system-level authority can modify the record.</tooltip>
          <caption>Modifiable</caption>
          <property>Modifiable</property>
          <propertylength>0</propertylength>
          <viewname />
        </prompt>
      </controls>
    </form>
    <form name="DefinitionPage">
      <caption>Package Details</caption>
      <minimumsize>
        <height>400</height>
        <width>400</width>
      </minimumsize>
      <controls>
        <prompt name="CaptureSourceName">
          <location>
            <x>12</x>
            <y>129</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>12</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The name of the Capture Source used to package the data.
This field will be empty if the data was added manually with the Package Now command.</tooltip>
          <caption>Capture Source</caption>
          <property>CaptureSourceName</property>
          <propertylength>100</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="DataPackageFileSize">
          <location>
            <x>12</x>
            <y>266</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>11</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The file size (in KB) of the raw data zip file.</tooltip>
          <caption>Zip Size (KB)</caption>
          <property>DataPackageFileSize</property>
          <propertylength>2147483647</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <TextEdit name="DataPackageKeyFile">
          <location>
            <x>12</x>
            <y>156</y>
          </location>
          <height>20</height>
          <width>376</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Key File</caption>
          <property>KeyFileName</property>
          <propertylength>255</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>true</readonly>
        </TextEdit>
        <line name="Line4">
          <location>
            <x>12</x>
            <y>182</y>
          </location>
          <height>14</height>
          <width>374</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Server</caption>
        </line>
        <TextEdit name="DataPackageFile">
          <location>
            <x>12</x>
            <y>240</y>
          </location>
          <height>20</height>
          <width>376</width>
          <tabindex>8</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The file name of the raw data zip file.</tooltip>
          <caption>Zip File</caption>
          <property>DataPackageFile</property>
          <propertylength>255</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>true</readonly>
        </TextEdit>
        <TextEdit name="DataPackageFileChecksum">
          <location>
            <x>12</x>
            <y>292</y>
          </location>
          <height>20</height>
          <width>376</width>
          <tabindex>10</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The SHA Hash checksum of the raw data zip file.</tooltip>
          <caption>Zip Checksum</caption>
          <property>DataPackageFileChecksum</property>
          <propertylength>255</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>true</readonly>
        </TextEdit>
        <line name="Line3">
          <location>
            <x>12</x>
            <y>73</y>
          </location>
          <height>14</height>
          <width>374</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Source</caption>
        </line>
        <prompt name="ComputerName">
          <location>
            <x>12</x>
            <y>102</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The name of the computer from which the data was collected.</tooltip>
          <caption>Computer Name</caption>
          <property>ComputerName</property>
          <propertylength>255</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="DmPackagingRuleId">
          <location>
            <x>12</x>
            <y>12</y>
          </location>
          <height>21</height>
          <width>376</width>
          <anchor>Top Left Right</anchor>
          <tooltip>The name of the Packaging Rule used to create the Data Package.
Clicking on the field will display the Packaging Rule record.</tooltip>
          <caption>Packaging Rule</caption>
          <property>DmPackagingRule</property>
          <propertylength>2147483647</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="PackagedOn">
          <location>
            <x>12</x>
            <y>39</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The date the Data Package was created.</tooltip>
          <caption>Packaged On</caption>
          <property>PackagedOn</property>
          <propertylength>2147483647</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="DmDataDestinationId">
          <location>
            <x>12</x>
            <y>213</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The name of the Data Destination used to store the data.
Clicking on the field will display the Data Destination record.</tooltip>
          <caption>Data Destination</caption>
          <property>DmDataDestination</property>
          <propertylength>2147483647</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
      </controls>
    </form>
    <form name="FilesPage">
      <caption>Raw Files</caption>
      <components>
        <entityBrowseDefinition name="BrowseDataPackageFiles">
          <query />
          <entity>DM_DATA_PACKAGE_FILE</entity>
          <property>DmDataPackageFiles</property>
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns>
            <EntityBrowseColumnDefinition name="FileName">
              <Title>File Name</Title>
              <Width>100</Width>
              <Column>FileName</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="FileCreatedDate">
              <Title>File Created On</Title>
              <Width>75</Width>
              <Column>FileCreatedDate</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="FileModifiedDate">
              <Title>File Modified On</Title>
              <Width>75</Width>
              <Column>FileModifiedDate</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="PackagedOn">
              <Title>Packaged On</Title>
              <Width>75</Width>
              <Column>PackagedOn</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="DeletedOn">
              <Title>Deleted On</Title>
              <Width>75</Width>
              <Column>DeletedOn</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="FileSize">
              <Title>File Size (KB)</Title>
              <Width>75</Width>
              <Column>FileSize</Column>
            </EntityBrowseColumnDefinition>
          </ExplorerColumns>
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
      </components>
      <controls>
        <explorergridcontrol name="GridFiles">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>382</height>
          <width>382</width>
          <dock>Fill</dock>
          <Browse>BrowseDataPackageFiles</Browse>
          <showdefaultmenu>false</showdefaultmenu>
        </explorergridcontrol>
      </controls>
    </form>
    <form name="ItemsPage">
      <caption>Data Items</caption>
      <components>
        <entityBrowseDefinition name="BrowseDataItems">
          <query />
          <entity>DM_DATA_ITEM</entity>
          <property>DmDataItems</property>
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns>
            <EntityBrowseColumnDefinition name="ColumnDmDataItemName">
              <Title>Item Name</Title>
              <Width>100</Width>
              <Column>DmDataItemName</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="ColumnDmConverterClass">
              <Title>Converter Class</Title>
              <Width>100</Width>
              <Column>ConverterClass</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="ColumnConvertFile">
              <Title>Converter File</Title>
              <Width>75</Width>
              <Column>ConverterFile</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="ColumnDmPropertyScript">
              <Title>Property Script</Title>
              <Width>75</Width>
              <Column>DmPropertyScript</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="ColumnDmConverterName">
              <Title>Converter Name</Title>
              <Width>75</Width>
              <Column>DmConverter.ConverterName</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="FileSize">
              <Title>File Size (KB)</Title>
              <Width>75</Width>
              <Column>FileSize</Column>
            </EntityBrowseColumnDefinition>
          </ExplorerColumns>
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
      </components>
      <minimumsize>
        <height>400</height>
        <width>400</width>
      </minimumsize>
      <controls>
        <explorergridcontrol name="GridDmDataItems">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>382</height>
          <width>382</width>
          <dock>Fill</dock>
          <Browse>BrowseDataItems</Browse>
          <showdefaultmenu>false</showdefaultmenu>
        </explorergridcontrol>
      </controls>
    </form>
    <form name="ItemPropertiesPage">
      <caption>Data Item Properties</caption>
      <controls>
        <explorergridcontrol name="GridItemProperties">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>382</height>
          <width>382</width>
          <dock>Fill</dock>
          <Browse />
          <showdefaultmenu>false</showdefaultmenu>
        </explorergridcontrol>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>