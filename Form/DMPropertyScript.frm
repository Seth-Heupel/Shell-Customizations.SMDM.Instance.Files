<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMPropertyScript">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMPropertyScript" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="DM_PROPERTY_SCRIPT" />
        <FIELD name="TYPE" value="PROPERTY" />
        <FIELD name="DESCRIPTION" value="Data Manager Property Script Property Sheet" />
        <FIELD name="TITLE" value="Data Manager Property Script" />
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
        <prompt name="DmPropertyScriptName">
          <location>
            <x>120</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>268</width>
          <anchor>Top Left Right</anchor>
          <tooltip>Name of the Property Script.</tooltip>
          <property>DmPropertyScriptName</property>
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
          <tooltip>Description of the Property Script.</tooltip>
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
          <tooltip>Select a group to restrict access to the Property Script record.
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
          <tooltip>Date the Property Script record was last modified.</tooltip>
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
          <tooltip>Operator who performed the last modification to the Property Script record.</tooltip>
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
          <tooltip>If checked, any user with the necessary role and group access can modify the Property Script record.
If cleared, only a user with system-level authority can modify the record.</tooltip>
          <caption>Modifiable</caption>
          <property>Modifiable</property>
          <propertylength>0</propertylength>
          <viewname />
        </prompt>
      </controls>
    </form>
    <form name="DefinitionPage">
      <caption>Definition</caption>
      <controls>
        <datagridcontrol name="DataGridDesign1">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>382</height>
          <width>382</width>
          <dock>Fill</dock>
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
            <GridColumnDefinition name="OriginalFieldName">
              <location />
              <width>100</width>
              <caption>Original Field</caption>
              <readonly>false</readonly>
              <IsMandatory>true</IsMandatory>
              <IsUnique>true</IsUnique>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>OriginalFieldName</Property>
            </GridColumnDefinition>
            <GridColumnDefinition name="DmPackageProperty">
              <location />
              <width>100</width>
              <caption>Package Property</caption>
              <readonly>false</readonly>
              <IsMandatory>true</IsMandatory>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>DmPackageProperty</Property>
            </GridColumnDefinition>
            <GridColumnDefinition name="Modifiable">
              <location />
              <width>100</width>
              <caption>Modifiable</caption>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>Modifiable</Property>
            </GridColumnDefinition>
            <GridColumnDefinition name="AlwaysCreate">
              <location />
              <width>100</width>
              <caption>Always Create</caption>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>AlwaysCreate</Property>
            </GridColumnDefinition>
            <GridColumnDefinition name="DefaultText">
              <location />
              <width>100</width>
              <caption>Default Value</caption>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>DefaultText</Property>
            </GridColumnDefinition>
            <GridColumnDefinition name="MappingMethod">
              <location />
              <width>100</width>
              <caption>Method</caption>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>MappingMethod</Property>
            </GridColumnDefinition>
          </gridcolumns>
          <readonly>false</readonly>
          <supportedoperations>Add Delete</supportedoperations>
          <defaultview>Horizontal</defaultview>
          <property>DmPropertyScriptEntries</property>
        </datagridcontrol>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>
