<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="RamanComponentLookup">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="RamanComponentLookup" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="S_ANALYSIS_LOOKUP" />
        <FIELD name="TYPE" value="PROPERTY" />
        <FIELD name="DESCRIPTION" value="detail table for setting Raman model property values" />
        <FIELD name="TITLE" value="SAnalysis Lookup" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="smp$textfiles" />
        <FIELD name="FILE_EXTENSION" value="s_a" />
        <FIELD name="FORM_XML" value="" />
        <FIELD name="CATEGORY" value="LABTABLE" />
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
    <form name="Page2">
      <height>580</height>
      <width>855</width>
      <caption>Raman Analyses</caption>
      <components>
        <dataquery name="DataQueryDesignComp">
          <entity>COMPONENT_VIEW</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>Analysis</property>
              <operand>Equals</operand>
              <value />
              <propertyvalue>AnalysisId</propertyvalue>
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
        <entityBrowseDefinition name="EntityBrowseCompName">
          <query>DataQueryDesignComp</query>
          <entity>COMPONENT_VIEW</entity>
          <property />
          <returnProperty>ComponentViewName</returnProperty>
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <dataquery name="DataQueryDesignCompUnit">
          <entity>UNIT_HEADER</entity>
          <conditions />
        </dataquery>
        <entityBrowseDefinition name="EntityBrowseCompUnit">
          <query>DataQueryDesignCompUnit</query>
          <entity>UNIT_HEADER</entity>
          <property />
          <returnProperty>Identity</returnProperty>
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <dataqueryentity name="DataEntityAnalysis">
          <entity>VERSIONED_ANALYSIS</entity>
          <query>DataQueryAnalysis</query>
          <forceunique>false</forceunique>
          <multiresultitem>First</multiresultitem>
        </dataqueryentity>
        <dataquery name="DataQueryAnalysis">
          <entity>VERSIONED_ANALYSIS</entity>
          <conditions />
        </dataquery>
      </components>
      <controls>
        <panel name="Panel2">
          <location>
            <x>9</x>
            <y>48</y>
          </location>
          <height>520</height>
          <width>837</width>
          <tabindex>5</tabindex>
          <dock>Top</dock>
          <caption>Panel2</caption>
          <controls>
            <datagridcontrol name="DataGridDesign1">
              <location />
              <height>520</height>
              <width>837</width>
              <tabindex>1</tabindex>
              <dock>Fill</dock>
              <caption>Component -&gt; E2E Property Lookup</caption>
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
                <GridColumnDefinition name="UseGrams">
                  <location />
                  <width>100</width>
                  <caption>Use Grams</caption>
                  <BrowseType />
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                  <Property>UseGrams</Property>
                </GridColumnDefinition>
                <GridColumnDefinition name="SPropertyLookupName">
                  <location />
                  <width>100</width>
                  <caption>Property Lookup Name</caption>
                  <BrowseType>EntityBrowseCompName</BrowseType>
                  <readonly>false</readonly>
                  <IsMandatory>true</IsMandatory>
                  <IsUnique>true</IsUnique>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                  <Property>SPropertyLookupName</Property>
                </GridColumnDefinition>
                <GridColumnDefinition name="Units">
                  <location />
                  <width>100</width>
                  <caption>Units</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                  <Property>Units</Property>
                </GridColumnDefinition>
                <GridColumnDefinition name="Property">
                  <location />
                  <width>100</width>
                  <caption>E2E Property</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                  <Property>Property</Property>
                </GridColumnDefinition>
                <GridColumnDefinition name="PropertyUnits">
                  <location />
                  <width>100</width>
                  <caption>E2E Property Units</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                  <Property>PropertyUnits</Property>
                </GridColumnDefinition>
              </gridcolumns>
              <readonly>false</readonly>
              <supportedoperations>Add Delete</supportedoperations>
              <defaultview>Horizontal</defaultview>
              <property>SPropertyLookups</property>
            </datagridcontrol>
          </controls>
        </panel>
        <splitter name="Splitter1">
          <location>
            <x>9</x>
            <y>44</y>
          </location>
          <height>4</height>
          <width>837</width>
          <tabindex>4</tabindex>
          <dock>Top</dock>
          <anchor>None</anchor>
          <position>35</position>
        </splitter>
        <panel name="Panel1">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>35</height>
          <width>837</width>
          <tabindex>3</tabindex>
          <dock>Top</dock>
          <caption>Panel1</caption>
          <controls>
            <prompt name="SMPrompt1">
              <location>
                <x>3</x>
                <y>3</y>
              </location>
              <height>21</height>
              <width>527</width>
              <tabindex>2</tabindex>
              <caption>Analysis</caption>
              <property>AnalysisId</property>
              <propertylength>10</propertylength>
              <viewname />
            </prompt>
          </controls>
        </panel>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>