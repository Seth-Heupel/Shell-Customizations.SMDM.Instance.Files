<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DataItemLinkEntitySelection">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DataItemLinkEntitySelection" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="Allows to select the Entity Type to link to" />
        <FIELD name="TITLE" value="Link Data Item - Entity Type Selection" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="" />
        <FIELD name="FILE_EXTENSION" value="" />
        <FIELD name="FORM_XML" value="" />
        <FIELD name="CATEGORY" value="GENERAL" />
        <FIELD name="DEFAULT_ICON" value="INT_FORMS" />
        <FIELD name="WINDOW_STYLE" value="FLOAT" />
        <FIELD name="SHOW_WELCOME_PAGE" value="True" />
        <FIELD name="HAS_ERRORS" value="False" />
        <FIELD name="PAGE_EXTENSION" value="" />
      </RECORD>
    </TABLE>
    <PAGES />
  </DATA>
  <DEFINITION><![CDATA[<?xml version="1.0" encoding="utf-16"?>
<interface xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://www.thermo.com/informatics/xmlns/interface/1.0">
  <forms>
    <form name="FormDefinition1">
      <height>121</height>
      <width>305</width>
      <caption>General</caption>
      <components>
        <browsetablename name="BrowseTableName" />
        <entityBrowseDefinition name="CriteriaEntityBrowse">
          <query>CriteriaDataQuery</query>
          <entity>CRITERIA_SAVED</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>No</ShowRemoved>
        </entityBrowseDefinition>
        <dataquery name="CriteriaDataQuery">
          <entity>CRITERIA_SAVED</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>TableName</property>
              <operand>Equals</operand>
              <value />
              <propertyvalue />
              <controlvalue>PromptTableName</controlvalue>
            </entityoperandquery>
          </conditions>
        </dataquery>
      </components>
      <controls>
        <ActionButtonDefinition name="ActionButton2">
          <location>
            <x>218</x>
            <y>86</y>
          </location>
          <height>23</height>
          <width>75</width>
          <tabindex>3</tabindex>
          <anchor>Bottom Right</anchor>
          <caption>&amp;Cancel</caption>
          <size>
            <Width>75</Width>
            <Height>23</Height>
          </size>
          <formresult>Cancel</formresult>
          <accept>false</accept>
          <cancel>false</cancel>
          <save>false</save>
        </ActionButtonDefinition>
        <ActionButtonDefinition name="ActionButton1">
          <location>
            <x>137</x>
            <y>86</y>
          </location>
          <height>23</height>
          <width>75</width>
          <tabindex>2</tabindex>
          <anchor>Bottom Right</anchor>
          <caption>&amp;OK</caption>
          <size>
            <Width>75</Width>
            <Height>23</Height>
          </size>
          <formresult>OK</formresult>
          <accept>true</accept>
          <cancel>false</cancel>
          <save>false</save>
        </ActionButtonDefinition>
        <PromptEntityBrowseDefinition name="PromptCriteria">
          <location>
            <x>13</x>
            <y>50</y>
          </location>
          <height>20</height>
          <width>280</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Criteria</caption>
          <propertylength>0</propertylength>
          <readonly>false</readonly>
          <Browse>CriteriaEntityBrowse</Browse>
          <forcevalid>true</forcevalid>
        </PromptEntityBrowseDefinition>
        <PromptTableNameBrowseDefinition name="PromptTableName">
          <location>
            <x>13</x>
            <y>13</y>
          </location>
          <height>20</height>
          <width>280</width>
          <anchor>Top Left Right</anchor>
          <caption>Entity Type</caption>
          <propertylength>0</propertylength>
          <readonly>false</readonly>
          <Browse>BrowseTableName</Browse>
          <multiselect>false</multiselect>
          <forcevalid>true</forcevalid>
        </PromptTableNameBrowseDefinition>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>