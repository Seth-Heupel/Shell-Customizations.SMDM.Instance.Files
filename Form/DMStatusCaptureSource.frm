<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMStatusCaptureSource">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMStatusCaptureSource" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="DM_STATUS_CAPTURE_SOURCE" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="Data Manager Capture Source status" />
        <FIELD name="TITLE" value="Data Manager Capture Source Status" />
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
    <form name="StatusCaptureSourceForm">
      <height>449</height>
      <width>756</width>
      <caption>General</caption>
      <components>
        <entityBrowseDefinition name="StatusCaptureSourceBrowse">
          <query>CaptureSourceStatusQuery</query>
          <entity>DM_STATUS_CAPTURE_SOURCE</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns>
            <EntityBrowseColumnDefinition name="AgentComputerName">
              <Title>Agent</Title>
              <Width>75</Width>
              <Column>AgentComputerName</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="CaptureSourceName">
              <Title>Name</Title>
              <Width>100</Width>
              <Column>CaptureSourceName</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="CaptureSourceDescription">
              <Title>Description</Title>
              <Width>100</Width>
              <Column>CaptureSourceDescription</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="KeyfileFoundCount">
              <Title>Found</Title>
              <Width>50</Width>
              <Column>KeyfileFoundCount</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="PackagesCreatedCount">
              <Title>Created</Title>
              <Width>50</Width>
              <Column>PackagesCreatedCount</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="AlreadyPackagedCount">
              <Title>Existing</Title>
              <Width>50</Width>
              <Column>AlreadyPackagedCount</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="NotEligibleCount">
              <Title>Not Eligible</Title>
              <Width>50</Width>
              <Column>NotEligibleCount</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="PackagingErrorCount">
              <Title>Package Errors</Title>
              <Width>50</Width>
              <Column>PackagingErrorCount</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="ConversionErrorCount">
              <Title>Conversion Errors</Title>
              <Width>50</Width>
              <Column>ConversionErrorCount</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="LastSweepStartDate">
              <Title>Last Start</Title>
              <Width>75</Width>
              <Column>LastSweepStartDate</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="LastSweepTimeSpan">
              <Title>Duration</Title>
              <Width>75</Width>
              <Column>LastSweepTimeSpan</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="AgentTimezone">
              <Title>Agent Timezone</Title>
              <Width>75</Width>
              <Column>AgentComputerTimezone</Column>
            </EntityBrowseColumnDefinition>
          </ExplorerColumns>
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <dataquery name="StatusCaptureSourceQuery">
          <entity>DM_STATUS_CAPTURE_SOURCE</entity>
          <conditions />
        </dataquery>
      </components>
      <controls>
        <explorergridcontrol name="StatusCaptureSourceGrid">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>431</height>
          <width>738</width>
          <dock>Fill</dock>
          <Browse>StatusCaptureSourceBrowse</Browse>
          <multipleselection>false</multipleselection>
          <findalwaysvisible>true</findalwaysvisible>
          <allowdragoutside>false</allowdragoutside>
        </explorergridcontrol>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>