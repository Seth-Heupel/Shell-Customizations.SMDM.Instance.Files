<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMPackagingRule">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMPackagingRule" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="DM_PACKAGING_RULE" />
        <FIELD name="TYPE" value="PROPERTY" />
        <FIELD name="DESCRIPTION" value="Data Manager Packaging Rule" />
        <FIELD name="TITLE" value="Data Manager Packaging Rule" />
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
        <prompt name="DmPackagingRuleName">
          <location>
            <x>120</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>268</width>
          <anchor>Top Left Right</anchor>
          <tooltip>Name of the Packaging Rule.</tooltip>
          <property>DmPackagingRuleName</property>
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
        <prompt name="Description">
          <location>
            <x>12</x>
            <y>64</y>
          </location>
          <width>376</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Description of the Packaging Rule.</tooltip>
          <caption>Description</caption>
          <property>Description</property>
          <propertylength>0</propertylength>
          <viewname />
        </prompt>
        <line name="Line1">
          <location>
            <x>12</x>
            <y>170</y>
          </location>
          <height>12</height>
          <width>376</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="GroupId">
          <location>
            <x>12</x>
            <y>188</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Select a group to restrict access to the Packaging Rule record.
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
            <y>215</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Date the Packaging Rule record was last modified.</tooltip>
          <caption>Modified On</caption>
          <property>ModifiedOn</property>
          <propertylength>0</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="ModifiedBy">
          <location>
            <x>12</x>
            <y>242</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Operator who performed the last modification to the Packaging Rule record.</tooltip>
          <caption>Modified By</caption>
          <property>ModifiedBy</property>
          <propertylength>0</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <line name="Line2">
          <location>
            <x>12</x>
            <y>269</y>
          </location>
          <height>12</height>
          <width>376</width>
          <tabindex>8</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="Modifiable">
          <location>
            <x>12</x>
            <y>287</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>9</tabindex>
          <tooltip>If checked, any user with the necessary role and group access can modify the Packaging Rule record.
If cleared, only a user with system-level authority can modify the record.</tooltip>
          <caption>Modifiable</caption>
          <property>Modifiable</property>
          <propertylength>0</propertylength>
          <viewname />
        </prompt>
      </controls>
    </form>
    <form name="DefinitionPage">
      <height>500</height>
      <width>500</width>
      <caption>Definition</caption>
      <components>
        <entityBrowseDefinition name="SyntaxBrowse">
          <query>SyntaxQuery</query>
          <entity>SYNTAX</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <dataquery name="SyntaxQuery">
          <entity>SYNTAX</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>TableName</property>
              <operand>Equals</operand>
              <value>DM_DATA_PACKAGE</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
        <entityBrowseDefinition name="DataPackageWorkflows">
          <query>DataPackageWorkflowQuery</query>
          <entity>WORKFLOW</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>No</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <dataquery name="DataPackageWorkflowQuery">
          <entity>WORKFLOW</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>TableName</property>
              <operand>Equals</operand>
              <value>DM_DATA_PACKAGE</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>WorkflowType</property>
              <operand>Equals</operand>
              <value>DATAPACKAG</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
        <entityBrowseDefinition name="DataItemWorkflows">
          <query>DataItemWorkflowQuery</query>
          <entity>WORKFLOW</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>No</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <dataquery name="DataItemWorkflowQuery">
          <entity>WORKFLOW</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>TableName</property>
              <operand>Equals</operand>
              <value>DM_DATA_ITEM</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>WorkflowType</property>
              <operand>Equals</operand>
              <value>DATAITEM</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
        <ServerValidatorDefinition name="KeyFileSpecValidator">
          <ControlName>KeyFileSpec</ControlName>
        </ServerValidatorDefinition>
      </components>
      <minimumsize>
        <height>500</height>
        <width>500</width>
      </minimumsize>
      <controls>
        <prompt name="ZipCompressionLevel">
        <location>
        <x>13</x>
        <y>436</y>
        </location>
        <height>21</height>
        <width>476</width>
        <tabindex>13</tabindex>
        <anchor>Top Left Right</anchor>
        <tooltip>The compression level for the uploaded zip file containing the raw data.
For large binary files, setting compression to None will increase performance.</tooltip>
        <caption>Zip compression</caption>
        <property>ZipCompressionLevel</property>
        <viewname />
        </prompt>
        <PromptEntityBrowseDefinition name="Workflow">
          <location>
            <x>13</x>
            <y>174</y>
          </location>
          <height>23</height>
          <width>476</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Select the workflow to be used when a package is created.</tooltip>
          <caption>Package Workflow</caption>
          <property>Workflow</property>
          <propertylength>2147483647</propertylength>
          <readonly>false</readonly>
          <Browse>DataPackageWorkflows</Browse>
          <forcevalid>true</forcevalid>
        </PromptEntityBrowseDefinition>
        <prompt name="PackagingGroup">
          <location>
            <x>13</x>
            <y>148</y>
          </location>
          <height>21</height>
          <width>476</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Select a group to restrict access to the Data Packages created by this rule.
If no group is specified, all operators have access.
		  </tooltip>
          <caption>Packaging Group</caption>
          <property>PackagingGroupId</property>
          <propertylength>100</propertylength>
          <viewname />
        </prompt>
        <PromptEntityBrowseDefinition name="SyntaxId">
          <location>
            <x>13</x>
            <y>376</y>
          </location>
          <height>23</height>
          <width>476</width>
          <tabindex>10</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Select the syntax to be used when creating the Data Package name.</tooltip>
          <caption>Syntax</caption>
          <property>SyntaxId</property>
          <propertylength>100</propertylength>
          <mandatory>true</mandatory>
          <readonly>false</readonly>
          <Browse>SyntaxBrowse</Browse>
          <forcevalid>true</forcevalid>
        </PromptEntityBrowseDefinition>
        <TextEdit name="UploadRule">
          <location>
            <x>13</x>
            <y>122</y>
          </location>
          <height>20</height>
          <width>476</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The specification of additional files which should be added to the Key File to form a Data Package.
Consult the documentation for the syntax of an Upload Rule.</tooltip>
          <caption>Upload Rule</caption>
          <property>UploadRule</property>
          <propertylength>255</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>false</readonly>
        </TextEdit>
        <TextEdit name="PackageClass">
          <location>
            <x>13</x>
            <y>96</y>
          </location>
          <height>20</height>
          <width>476</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Package Class</caption>
          <property>PackageClass</property>
          <propertylength>255</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>true</readonly>
        </TextEdit>
        <line name="Line4">
          <location>
            <x>10</x>
            <y>204</y>
          </location>
          <height>14</height>
          <width>476</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Conversion </caption>
        </line>
        <line name="Line3">
          <location>
            <x>11</x>
            <y>46</y>
          </location>
          <height>14</height>
          <width>476</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Packaging </caption>
        </line>
        <line name="DestinationLine">
          <location>
            <x>10</x>
            <y>355</y>
          </location>
          <height>14</height>
          <width>476</width>
          <tabindex>9</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Storage </caption>
        </line>
        <prompt name="StoreNeutral">
          <location>
            <x>13</x>
            <y>465</y>
          </location>
          <height>21</height>
          <width>164</width>
          <tabindex>12</tabindex>
          <tooltip>Check if the Neutral Files should be saved.
If cleared, only the Raw Data will be stored.</tooltip>
          <caption>Store neutral file</caption>
          <property>StoreNeutral</property>
          <propertylength>2147483647</propertylength>
          <captionwidth>150</captionwidth>
          <viewname />
        </prompt>
        <prompt name="DmDataDestinationId">
          <location>
            <x>13</x>
            <y>407</y>
          </location>
          <height>21</height>
          <width>476</width>
          <tabindex>11</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Select the Data Destination where the Data Packages will be stored.</tooltip>
          <caption>Data Destination</caption>
          <property>DmDataDestination</property>
          <propertylength>2147483647</propertylength>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <datagridcontrol name="GridDmConverters">
          <location>
            <x>11</x>
            <y>224</y>
          </location>
          <height>125</height>
          <width>475</width>
          <tabindex>8</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Converters</caption>
          <showbuttons>true</showbuttons>
          <autosizecolumns>true</autosizecolumns>
          <MultiSelect>false</MultiSelect>
          <showiconcolumn>false</showiconcolumn>
          <showindicator>true</showindicator>
          <showhorzlines>true</showhorzlines>
          <showvertlines>true</showvertlines>
          <allowsort>false</allowsort>
          <fixedcolumns>0</fixedcolumns>
          <gridcolumns>
            <GridColumnDefinition name="ColumnDmRuleTemplate">
              <location />
              <width>100</width>
              <caption>Template</caption>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>DmRuleTemplate</Property>
            </GridColumnDefinition>
            <GridColumnDefinition name="ColumnConverterClass">
              <location />
              <width>100</width>
              <caption>Converter Class</caption>
              <readonly>false</readonly>
              <IsMandatory>true</IsMandatory>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>ConverterClass</Property>
            </GridColumnDefinition>
            <GridColumnDefinition name="ColumnConverterName">
              <location />
              <width>100</width>
              <caption>Converter Name</caption>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>ConverterName</Property>
            </GridColumnDefinition>
            <GridColumnDefinition name="ColumnConverterExtension">
              <location />
              <width>100</width>
              <caption>Extensions</caption>
              <readonly>false</readonly>
              <IsMandatory>true</IsMandatory>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>ConverterExtension</Property>
            </GridColumnDefinition>
            <GridColumnDefinition name="ColumnDmPropertyScript">
              <location />
              <width>100</width>
              <caption>Property Script</caption>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>DmPropertyScript</Property>
            </GridColumnDefinition>
            <GridColumnDefinition name="ColumnWorkflow">
              <location />
              <width>100</width>
              <caption>Item Workflow</caption>
              <BrowseType>DataItemWorkflows</BrowseType>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>Workflow</Property>
            </GridColumnDefinition>
            <GridColumnDefinition name="CreateResultData">
              <location />
              <width>100</width>
              <caption>Result Data</caption>
              <readonly>false</readonly>
              <datatype>Boolean</datatype>
              <showbutton>false</showbutton>
              <Property>CreateResultData</Property>
            </GridColumnDefinition>
          </gridcolumns>
          <readonly>false</readonly>
          <supportedoperations>Add Delete</supportedoperations>
          <defaultview>Horizontal</defaultview>
          <property>DmConverters</property>
        </datagridcontrol>
        <TextEdit name="KeyFileSpec">
          <location>
            <x>13</x>
            <y>70</y>
          </location>
          <height>20</height>
          <width>476</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>An identifying file for a data set.  Automatic packaging will search for files of this type.
The '?' and '*' wildcards can be used.  Not used if Package class is set.</tooltip>
          <caption>Key File Spec</caption>
          <property>KeyFileSpec</property>
          <propertylength>255</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>false</readonly>
        </TextEdit>
        <prompt name="DmRuleTemplate">
          <location>
            <x>13</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>476</width>
          <anchor>Top Left Right</anchor>
          <tooltip>Select from the list of supported data types to set default values for the Packaging Rule fields.
This is an optional field.  The fields in the rule may be modified after the template has been selected.</tooltip>
          <caption>Primary Template</caption>
          <property>DmRuleTemplate</property>
          <propertylength>2147483647</propertylength>
          <viewname />
        </prompt>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>
