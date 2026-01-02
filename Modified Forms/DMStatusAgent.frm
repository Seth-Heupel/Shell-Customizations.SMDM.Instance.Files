<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMStatusAgent">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMStatusAgent" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="DM_STATUS_AGENT" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="Data Manager Agent Status" />
        <FIELD name="TITLE" value="Data Manager Agent Status" />
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
    <form name="StatusAgentForm">
      <height>449</height>
      <width>756</width>
      <caption>General</caption>
      <components>
        <dataquery name="StatusAgentQuery">
          <entity>DM_STATUS_AGENT</entity>
          <conditions />
        </dataquery>
        <entityBrowseDefinition name="StatusAgentBrowse">
          <query>StatusAgentQuery</query>
          <entity>DM_STATUS_AGENT</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns>
            <EntityBrowseColumnDefinition name="AgentComputerName">
              <Title>Name</Title>
              <Width>75</Width>
              <Column>AgentComputerName</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="AgentComputerDescription">
              <Title>Description</Title>
              <Width>100</Width>
              <Column>AgentComputerDescription</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="CurrentStatus">
              <Title>Status</Title>
              <Width>75</Width>
              <Column>CurrentStatus</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="LastSweepStartDate">
              <Title>Sweep Start</Title>
              <Width>75</Width>
              <Column>LastSweepStartDate</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="LastSweepTimeSpan">
              <Title>Sweep Duration</Title>
              <Width>75</Width>
              <Column>LastSweepTimeSpan</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="NextSweepDate">
              <Title>Next Sweep</Title>
              <Width>75</Width>
              <Column>NextSweepDate</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="AgentTimezoneDisplay">
              <Title>Timezone</Title>
              <Width>100</Width>
              <Column>AgentComputerId.AgentTimezoneDisplay</Column>
            </EntityBrowseColumnDefinition>
          </ExplorerColumns>
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
      </components>
      <controls>
        <explorergridcontrol name="StatusAgentGrid">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>431</height>
          <width>738</width>
          <dock>Fill</dock>
          <caption>StatusAgentGrid</caption>
          <Browse>StatusAgentBrowse</Browse>
        </explorergridcontrol>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>