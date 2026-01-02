<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="RamanPropertyLookup">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="RamanPropertyLookup" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="S_ANALYSIS_LOOKUP" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="" />
        <FIELD name="TITLE" value="Raman properties" />
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
      <height>665</height>
      <width>854</width>
      <caption>General</caption>
      <components>
        <dataqueryentitycollection name="DataEntityCollectionDesignSAL">
          <entity>S_ANALYSIS_LOOKUP</entity>
          <query>DataQueryDesignSAL</query>
        </dataqueryentitycollection>
        <dataqueryentitycollection name="DataEntityCollectionDesignPL">
          <entity>S_PROPERTY_LOOKUP</entity>
          <query>DataQueryDesignPL</query>
        </dataqueryentitycollection>
        <dataquery name="DataQueryDesignSAL">
          <entity>S_ANALYSIS_LOOKUP</entity>
          <conditions />
        </dataquery>
        <dataquery name="DataQueryDesignPL">
          <entity>S_PROPERTY_LOOKUP</entity>
          <conditions />
        </dataquery>
      </components>
      <controls>
        <panel name="Panel2">
          <location>
            <x>9</x>
            <y>88</y>
          </location>
          <height>565</height>
          <width>836</width>
          <tabindex>3</tabindex>
          <dock>Top</dock>
          <caption>Panel2</caption>
          <controls>
            <masterdetailgridcontrol name="SMMasterDetailGridS_Analysis">
              <location />
              <height>565</height>
              <width>836</width>
              <dock>Fill</dock>
              <caption>Raman Components</caption>
              <datasource>DataEntityCollectionDesignSAL</datasource>
              <allowcolumnreorder>true</allowcolumnreorder>
              <readonly>false</readonly>
              <showiconcolumn>false</showiconcolumn>
              <gridcolumns>
                <gridcolumn name="AnalysisId">
                  <location />
                  <width>100</width>
                  <caption>Analysis</caption>
                  <Property>AnalysisId</Property>
                  <IsUnique>true</IsUnique>
                  <IsMandatory>true</IsMandatory>
                </gridcolumn>
              </gridcolumns>
              <customGridbuttons />
              <gridbuttons>Add Insert Delete</gridbuttons>
              <userinterface />
              <showindicator>true</showindicator>
              <fixedcolumns>0</fixedcolumns>
              <autosizecolumns>true</autosizecolumns>
              <showfocusedrow>false</showfocusedrow>
              <borderwidth>0</borderwidth>
              <MultiSelect>false</MultiSelect>
              <AllowFill>true</AllowFill>
              <allowsort>false</allowsort>
              <detailgrids>
                <masterdetailgridcontrol name="DetailGridSP">
                  <location />
                  <caption>Properties</caption>
                  <property>SPropertyLookups</property>
                  <allowcolumnreorder>true</allowcolumnreorder>
                  <readonly>false</readonly>
                  <showiconcolumn>false</showiconcolumn>
                  <gridcolumns>
                    <gridcolumn name="Analysis">
                      <location />
                      <width>100</width>
                      <caption>Analysis</caption>
                      <Property>Analysis</Property>
                      <ReadOnly>true</ReadOnly>
                      <IsMandatory>true</IsMandatory>
                    </gridcolumn>
                    <gridcolumn name="SPropertyLookupName">
                      <location />
                      <width>100</width>
                      <caption>Local Property Name</caption>
                      <Property>SPropertyLookupName</Property>
                      <IsUnique>true</IsUnique>
                      <IsMandatory>true</IsMandatory>
                    </gridcolumn>
                    <gridcolumn name="Units">
                      <location />
                      <width>100</width>
                      <caption>Units</caption>
                      <Property>Units</Property>
                    </gridcolumn>
                    <gridcolumn name="UseGrams">
                      <location />
                      <width>100</width>
                      <caption>Use Grams</caption>
                      <Property>UseGrams</Property>
                    </gridcolumn>
                    <gridcolumn name="Property">
                      <location />
                      <width>100</width>
                      <caption>Property</caption>
                      <Property>Property</Property>
                    </gridcolumn>
                    <gridcolumn name="PropertyUnits">
                      <location />
                      <width>100</width>
                      <caption>Property Units</caption>
                      <Property>PropertyUnits</Property>
                    </gridcolumn>
                  </gridcolumns>
                  <customGridbuttons />
                  <gridbuttons>Add Insert Delete</gridbuttons>
                  <showindicator>true</showindicator>
                  <fixedcolumns>0</fixedcolumns>
                  <autosizecolumns>true</autosizecolumns>
                  <showfocusedrow>false</showfocusedrow>
                  <borderwidth>0</borderwidth>
                  <MultiSelect>false</MultiSelect>
                  <AllowFill>true</AllowFill>
                  <allowsort>false</allowsort>
                  <detailgrids />
                  <showtabs>false</showtabs>
                </masterdetailgridcontrol>
              </detailgrids>
              <showtabs>false</showtabs>
            </masterdetailgridcontrol>
          </controls>
        </panel>
        <splitter name="Splitter1">
          <location>
            <x>9</x>
            <y>84</y>
          </location>
          <height>4</height>
          <width>836</width>
          <tabindex>2</tabindex>
          <dock>Top</dock>
          <anchor>None</anchor>
          <position>75</position>
        </splitter>
        <panel name="Panel1">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>75</height>
          <width>836</width>
          <tabindex>1</tabindex>
          <dock>Top</dock>
          <caption>Panel1</caption>
          <controls>
            <ButtonEditDefinition name="btnCopyLocal">
              <location>
                <x>281</x>
                <y>18</y>
              </location>
              <height>23</height>
              <width>75</width>
              <tabindex>1</tabindex>
              <enabled>false</enabled>
              <visible>false</visible>
              <caption>Copy Local</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <ButtonEditDefinition name="btnSave">
              <location>
                <x>57</x>
                <y>18</y>
              </location>
              <height>23</height>
              <width>75</width>
              <caption>Save</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
          </controls>
        </panel>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>