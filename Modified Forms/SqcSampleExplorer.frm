<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="SqcSampleExplorer">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="SqcSampleExplorer" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="List samples for a selected subgroup in SQC chart." />
        <FIELD name="TITLE" value="Subgroup Samples" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="False" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="" />
        <FIELD name="FILE_EXTENSION" value="" />
        <FIELD name="FORM_XML" value="" />
        <FIELD name="CATEGORY" value="GENERAL" />
        <FIELD name="DEFAULT_ICON" value="INT_FORMS" />
        <FIELD name="WINDOW_STYLE" value="" />
        <FIELD name="SHOW_WELCOME_PAGE" value="False" />
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
      <height>292</height>
      <width>565</width>
      <caption>General</caption>
      <components>
        <entityBrowseDefinition name="EntityBrowseSamples">
          <entity>SAMPLE</entity>
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
      </components>
      <minimumsize>
        <height>92</height>
        <width>365</width>
      </minimumsize>
      <controls>
        <explorergridcontrol name="ExplorerGridSamples">
          <location>
            <x>13</x>
            <y>13</y>
          </location>
          <height>238</height>
          <width>540</width>
          <tabindex>3</tabindex>
          <anchor>Top Bottom Left Right</anchor>
          <Browse>EntityBrowseSamples</Browse>
        </explorergridcontrol>
        <ActionButtonDefinition name="OKButton">
          <location>
            <x>477</x>
            <y>257</y>
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
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>