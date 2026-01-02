<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMEventViewer">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMEventViewer" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="" />
        <FIELD name="TITLE" value="Data Manager Event Viewer" />
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
      <width>650</width>
      <caption>General</caption>
      <components>
        <dataquery name="EventEntryQuery">
          <entity>DM_EVENT_ENTRY</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>SourceComputerName</property>
              <operand>Equals</operand>
              <value>NOT_DEFINED</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
        <entityBrowseDefinition name="EventEntryBrowse">
          <query>EventEntryQuery</query>
          <entity>DM_EVENT_ENTRY</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns>
            <EntityBrowseColumnDefinition name="EventIdColumn">
              <Title>Event Id</Title>
              <Width>75</Width>
              <Column>EventId</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EventTypeColumn">
              <Title>Event Type</Title>
              <Width>60</Width>
              <Column>EventType</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EventDateColumn">
              <Title>Event Date</Title>
              <Width>75</Width>
              <Column>EventDate</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="SourceComputerColumn">
              <Title>Source Computer</Title>
              <Width>75</Width>
              <Column>SourceComputerName</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="ComponentColumn">
              <Title>Component</Title>
              <Width>75</Width>
              <Column>ComponentName</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="CaptureSourceColumn">
              <Title>Capture Source</Title>
              <Width>75</Width>
              <Column>CaptureSourceName</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EventTitleColumn">
              <Title>Event Title</Title>
              <Width>100</Width>
              <Column>EventTitle</Column>
            </EntityBrowseColumnDefinition>
          </ExplorerColumns>
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
      </components>
      <minimumsize>
        <height>400</height>
        <width>650</width>
      </minimumsize>
      <controls>
        <splitter name="Splitter1">
          <location>
            <x>9</x>
            <y>287</y>
          </location>
          <height>4</height>
          <width>632</width>
          <tabindex>4</tabindex>
          <dock>Bottom</dock>
          <anchor>None</anchor>
          <position>100</position>
        </splitter>
        <explorergridcontrol name="EventsGrid">
          <location>
            <x>9</x>
            <y>89</y>
          </location>
          <height>202</height>
          <width>632</width>
          <tabindex>3</tabindex>
          <dock>Fill</dock>
          <Browse>EventEntryBrowse</Browse>
          <multipleselection>false</multipleselection>
          <findalwaysvisible>true</findalwaysvisible>
          <allowdragoutside>false</allowdragoutside>
        </explorergridcontrol>
        <TextEdit name="DetailsText">
          <location>
            <x>9</x>
            <y>291</y>
          </location>
          <width>632</width>
          <tabindex>2</tabindex>
          <dock>Bottom</dock>
          <propertylength>0</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>true</readonly>
          <multiline>true</multiline>
        </TextEdit>
        <ToolBarDefinition name="GridToolbar">
          <location>
            <x>9</x>
            <y>64</y>
          </location>
          <height>25</height>
          <width>632</width>
          <tabindex>1</tabindex>
          <dock>Top</dock>
          <caption>ToolBar1</caption>
          <Buttons>
            <ToolBarButtonDefinition name="RefreshButton">
              <location />
              <tooltip>Refresh </tooltip>
              <sizemode>Normal</sizemode>
              <begingroup>false</begingroup>
              <alignment>Left</alignment>
              <normaliconname>INT_REFRESH</normaliconname>
              <canappearpressed>false</canappearpressed>
              <ispressed>false</ispressed>
            </ToolBarButtonDefinition>
            <ToolBarButtonDefinition name="SaveButton">
              <location />
              <tooltip>Save Records</tooltip>
              <sizemode>Normal</sizemode>
              <begingroup>true</begingroup>
              <alignment>Left</alignment>
              <normaliconname>INT_SAVE</normaliconname>
              <canappearpressed>false</canappearpressed>
              <ispressed>false</ispressed>
            </ToolBarButtonDefinition>
            <ToolBarButtonDefinition name="DeleteButton">
              <location />
              <tooltip>Delete Records</tooltip>
              <sizemode>Normal</sizemode>
              <begingroup>true</begingroup>
              <alignment>Left</alignment>
              <normaliconname>INT_REMOVE</normaliconname>
              <canappearpressed>false</canappearpressed>
              <ispressed>false</ispressed>
            </ToolBarButtonDefinition>
          </Buttons>
        </ToolBarDefinition>
        <groupbox name="ShowGroupBox">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>55</height>
          <width>632</width>
          <dock>Top</dock>
          <caption>Show</caption>
          <padding>
            <All>3</All>
            <Bottom>3</Bottom>
            <Left>3</Left>
            <Right>3</Right>
            <Top>3</Top>
          </padding>
          <controls>
            <radiobutton name="All">
              <location>
                <x>374</x>
                <y>20</y>
              </location>
              <height>19</height>
              <width>100</width>
              <tabindex>4</tabindex>
              <tooltip>Show all of the Events.</tooltip>
              <caption>All</caption>
              <propertylength>0</propertylength>
              <readonly>false</readonly>
              <value />
              <radiogroupindex>1</radiogroupindex>
              <CheckAlign>Left</CheckAlign>
            </radiobutton>
            <radiobutton name="LastMonth">
              <location>
                <x>286</x>
                <y>20</y>
              </location>
              <height>19</height>
              <width>100</width>
              <tabindex>3</tabindex>
              <tooltip>Show only the events that have been entered in the past month.</tooltip>
              <caption>Last 30 days</caption>
              <propertylength>0</propertylength>
              <readonly>false</readonly>
              <value />
              <radiogroupindex>1</radiogroupindex>
              <CheckAlign>Left</CheckAlign>
            </radiobutton>
            <radiobutton name="LastWeek">
              <location>
                <x>199</x>
                <y>20</y>
              </location>
              <height>19</height>
              <width>100</width>
              <tabindex>2</tabindex>
              <tooltip>Show only the events that have been entered in the past week.</tooltip>
              <caption>Last 7 days</caption>
              <propertylength>0</propertylength>
              <readonly>false</readonly>
              <value />
              <radiogroupindex>1</radiogroupindex>
              <CheckAlign>Left</CheckAlign>
            </radiobutton>
            <radiobutton name="Last24Hours">
              <location>
                <x>103</x>
                <y>20</y>
              </location>
              <height>19</height>
              <width>100</width>
              <tabindex>1</tabindex>
              <tooltip>Show only the events that have been entered in the past 24 hours.</tooltip>
              <caption>Last 24 hours</caption>
              <propertylength>0</propertylength>
              <readonly>false</readonly>
              <value />
              <radiogroupindex>1</radiogroupindex>
              <CheckAlign>Left</CheckAlign>
            </radiobutton>
            <radiobutton name="Last12Hours">
              <location>
                <x>7</x>
                <y>20</y>
              </location>
              <height>19</height>
              <width>100</width>
              <tooltip>x</tooltip>
              <caption>Last 12 hours</caption>
              <propertylength>0</propertylength>
              <defaultvalue xsi:type="xsd:string" />
              <readonly>false</readonly>
              <value />
              <radiogroupindex>1</radiogroupindex>
              <CheckAlign>Left</CheckAlign>
            </radiobutton>
          </controls>
        </groupbox>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>
