<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMAgentComputerStatusDash">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMAgentComputerStatusDash" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="Data Manager Agent Computer Status Dashboard" />
        <FIELD name="TITLE" value="Data Manager Agent Computer Status" />
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
      <height>600</height>
      <width>800</width>
      <caption>General</caption>
      <controls>
        <panel name="AgentsPanel">
          <location>
            <x>9</x>
            <y>58</y>
          </location>
          <height>533</height>
          <width>782</width>
          <tabindex>3</tabindex>
          <dock>Fill</dock>
          <caption>Panel1</caption>
          <controls>
            <unboundgridcontrol name="AgentStatusGrid">
              <location>
                <y>209</y>
              </location>
              <height>324</height>
              <width>782</width>
              <tabindex>6</tabindex>
              <dock>Fill</dock>
              <caption>Agent Status - (times shown relative to the local agent times)</caption>
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
                <GridColumnDefinition name="AgentComputer">
                  <location />
                  <width>100</width>
                  <caption>Agent Computer</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="ComputerName">
                  <location />
                  <width>100</width>
                  <caption>Computer Name</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="CurrentStatus">
                  <location />
                  <width>100</width>
                  <caption>Current Status</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="NextSweepDate">
                  <location />
                  <width>100</width>
                  <caption>Next Sweep Date</caption>
                  <readonly>false</readonly>
                  <datatype>DateTime</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="LastSweepStartDate">
                  <location />
                  <width>100</width>
                  <caption>Last Sweep Start Date</caption>
                  <readonly>false</readonly>
                  <datatype>DateTime</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="LastSweepEndDate">
                  <location />
                  <width>100</width>
                  <caption>Last Sweep End Date</caption>
                  <readonly>false</readonly>
                  <datatype>DateTime</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="LastScheduleReadDate">
                  <location />
                  <width>100</width>
                  <caption>Last Schedule Read Date</caption>
                  <readonly>false</readonly>
                  <datatype>DateTime</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="LastSweepTimeSpan">
                  <location />
                  <width>100</width>
                  <caption>Last Sweep Time Span</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="LastDataPackage">
                  <location />
                  <width>100</width>
                  <caption>Last Data Package</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
              </gridcolumns>
              <readonly>true</readonly>
              <supportedoperations>Transpose</supportedoperations>
              <defaultview>Horizontal</defaultview>
            </unboundgridcontrol>
            <splitter name="Splitter1">
              <location>
                <y>205</y>
              </location>
              <height>4</height>
              <width>782</width>
              <tabindex>5</tabindex>
              <dock>Top</dock>
              <anchor>None</anchor>
              <position>205</position>
            </splitter>
            <unboundgridcontrol name="AgentServiceGrid">
              <location />
              <height>205</height>
              <width>782</width>
              <tabindex>4</tabindex>
              <dock>Top</dock>
              <caption>Packaging Agent Services - (times shown relative to your local client time)</caption>
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
                <GridColumnDefinition name="AgentComputer">
                  <location />
                  <width>100</width>
                  <caption>Agent Computer</caption>
                  <readonly>true</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="ComputerName">
                  <location />
                  <width>100</width>
                  <caption>Computer Name</caption>
                  <readonly>true</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="Timezone">
                  <location />
                  <width>100</width>
                  <caption>Timezone</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="ServiceStatus">
                  <location />
                  <width>100</width>
                  <caption>Service Status</caption>
                  <readonly>true</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="LastUpdate">
                  <location />
                  <width>100</width>
                  <caption>Last Update</caption>
                  <readonly>true</readonly>
                  <datatype>DateTime</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
              </gridcolumns>
              <readonly>false</readonly>
              <supportedoperations>Transpose</supportedoperations>
              <defaultview>Horizontal</defaultview>
            </unboundgridcontrol>
          </controls>
        </panel>
        <panel name="TopPanel">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>49</height>
          <width>782</width>
          <dock>Top</dock>
          <caption>Panel3</caption>
          <controls>
            <line name="Line1">
              <location>
                <x>5</x>
                <y>32</y>
              </location>
              <height>14</height>
              <width>772</width>
              <tabindex>2</tabindex>
              <anchor>Top Left Right</anchor>
            </line>
            <label name="MessagingStatus">
              <location>
                <x>5</x>
                <y>7</y>
              </location>
              <height>20</height>
              <width>772</width>
              <tabindex>1</tabindex>
              <anchor>Top Left Right</anchor>
            </label>
          </controls>
        </panel>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>