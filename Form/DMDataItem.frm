<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMDataItem">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMDataItem" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="DM_DATA_ITEM" />
        <FIELD name="TYPE" value="PROPERTY" />
        <FIELD name="DESCRIPTION" value="Data Manager Data Item Property Sheet" />
        <FIELD name="TITLE" value="Data Manager Data Item" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="smp$textfiles" />
        <FIELD name="FILE_EXTENSION" value="dm_" />
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
        <prompt name="DmPropertyScript">
          <location>
            <x>12</x>
            <y>228</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>9</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Property Script</caption>
          <property>DmPropertyScript</property>
          <propertylength>2147483647</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="ConverterFile">
          <location>
            <x>12</x>
            <y>118</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Converter File</caption>
          <property>ConverterFile</property>
          <propertylength>255</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="DmDataPackage">
          <location>
            <x>12</x>
            <y>174</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Data Package</caption>
          <property>DmDataPackage</property>
          <propertylength>2147483647</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="DmPackagingRule">
          <location>
            <x>12</x>
            <y>201</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>8</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Packaging Rule</caption>
          <property>DmDataPackage.DmPackagingRule</property>
          <propertylength>2147483647</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="ModifiedOn">
          <location>
            <x>12</x>
            <y>91</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Modified On</caption>
          <property>ModifiedOn</property>
          <propertylength>2147483647</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="CreatedOn">
          <location>
            <x>12</x>
            <y>64</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Created On</caption>
          <property>CreatedOn</property>
          <propertylength>2147483647</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <EntityImage name="EntityImage1">
          <location>
            <x>12</x>
            <y>12</y>
          </location>
          <height>32</height>
          <width>32</width>
        </EntityImage>
        <line name="Line">
          <location>
            <x>12</x>
            <y>46</y>
          </location>
          <height>12</height>
          <width>376</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="DmDataItemName">
          <location>
            <x>120</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>268</width>
          <anchor>Top Left Right</anchor>
          <property>DmDataItemName</property>
          <propertylength>100</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <line name="Line1">
          <location>
            <x>12</x>
            <y>154</y>
          </location>
          <height>12</height>
          <width>376</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="GroupId">
          <location>
            <x>12</x>
            <y>255</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>10</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Group</caption>
          <property>GroupId</property>
          <propertylength>0</propertylength>
          <viewname />
        </prompt>
      </controls>
    </form>
    <form name="DataPropertiesPage">
      <caption>Data Properties</caption>
      <minimumsize>
        <height>400</height>
        <width>400</width>
      </minimumsize>
      <controls>
        <datagridcontrol name="GridDmDataItemProperties">
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
          <allowsort>true</allowsort>
          <fixedcolumns>0</fixedcolumns>
          <gridcolumns>
            <GridColumnDefinition name="PropertyName">
              <location />
              <caption>Name</caption>
              <readonly>true</readonly>
              <IsGreyBackground>true</IsGreyBackground>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>DmDataItemPropertyName</Property>
            </GridColumnDefinition>
            <GridColumnDefinition name="PropertyValue">
              <location />
              <width>100</width>
              <caption>Value</caption>
              <AllowSort>false</AllowSort>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>PropertyValue</Property>
            </GridColumnDefinition>
          </gridcolumns>
          <readonly>false</readonly>
          <supportedoperations>None</supportedoperations>
          <defaultview>Horizontal</defaultview>
          <property>DmDataItemProperties</property>
        </datagridcontrol>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>