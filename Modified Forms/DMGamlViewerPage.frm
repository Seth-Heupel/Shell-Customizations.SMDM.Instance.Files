<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMGamlViewerPage">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMGamlViewerPage" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="" />
        <FIELD name="TYPE" value="PAGE" />
        <FIELD name="DESCRIPTION" value="Data Manager GAML file viewer" />
        <FIELD name="TITLE" value="GAML File Viewer" />
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
        <FIELD name="PAGE_EXTENSION" value="DMGamlViewerPage" />
      </RECORD>
    </TABLE>
    <PAGES />
  </DATA>
  <DEFINITION><![CDATA[<?xml version="1.0" encoding="utf-16"?>
<interface xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://www.thermo.com/informatics/xmlns/interface/1.0">
  <forms>
    <form name="GamlViewerFormDefinition">
      <height>710</height>
      <width>1262</width>
      <caption>General</caption>
      <components>
        <browsestringcollection name="GamlFilesBrowseStringCollection" />
      </components>
      <controls>
        <panel name="DmGamlPanel2">
          <location>
            <x>213</x>
            <y>64</y>
          </location>
          <height>637</height>
          <width>1040</width>
          <tabindex>7</tabindex>
          <dock>Fill</dock>
          <caption>DmGamlPanel2</caption>
          <controls>
            <XYChart name="GamlTraceXYChart">
              <location>
                <y>319</y>
              </location>
              <height>318</height>
              <width>1040</width>
              <tabindex>3</tabindex>
              <dock>Fill</dock>
              <caption>GamlTraceXYChart</caption>
              <showlegend>false</showlegend>
              <legendShowMarkers>false</legendShowMarkers>
              <dataSeries />
              <defaultXAxis name="PrimaryXAxis">
                <labelStaggered>false</labelStaggered>
                <dateTimeValueAccuracy>Second</dateTimeValueAccuracy>
                <dateTimeTickAccuracy>Hour</dateTimeTickAccuracy>
              </defaultXAxis>
              <defaultYAxis name="PrimaryYAxis">
                <labelStaggered>false</labelStaggered>
                <dateTimeValueAccuracy>Second</dateTimeValueAccuracy>
                <dateTimeTickAccuracy>Hour</dateTimeTickAccuracy>
              </defaultYAxis>
            </XYChart>
            <splitter name="DmGamlSplitter3">
              <location>
                <y>315</y>
              </location>
              <height>4</height>
              <width>1040</width>
              <tabindex>2</tabindex>
              <dock>Top</dock>
              <anchor>None</anchor>
              <position>315</position>
            </splitter>
            <tabcontrol name="GamlTabControl">
              <location />
              <height>315</height>
              <width>1040</width>
              <tabindex>1</tabindex>
              <dock>Top</dock>
              <caption>TabControl1</caption>
              <pageborderstyle>Default</pageborderstyle>
              <headerlocation>Top</headerlocation>
              <multiline>false</multiline>
              <tabpages>
                <tabpage name="GamlParmsTabPage">
                  <location>
                    <x>4</x>
                    <y>25</y>
                  </location>
                  <height>286</height>
                  <width>1032</width>
                  <visible>false</visible>
                  <caption>GAML</caption>
                  <controls>
                    <unboundgridcontrol name="GamlParmValuesGrid">
                      <location />
                      <height>286</height>
                      <width>1032</width>
                      <tabindex>2</tabindex>
                      <dock>Fill</dock>
                      <caption>Parameters</caption>
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
                        <GridColumnDefinition name="ParmNameGridColumn">
                          <location />
                          <width>100</width>
                          <caption>Name</caption>
                          <readonly>true</readonly>
                          <datatype>Text</datatype>
                          <showbutton>false</showbutton>
                        </GridColumnDefinition>
                        <GridColumnDefinition name="ParmLabelGridColumn">
                          <location />
                          <width>100</width>
                          <caption>Label</caption>
                          <readonly>true</readonly>
                          <datatype>Text</datatype>
                          <showbutton>false</showbutton>
                        </GridColumnDefinition>
                        <GridColumnDefinition name="ParmValueGridColumn">
                          <location />
                          <width>100</width>
                          <caption>Value</caption>
                          <readonly>true</readonly>
                          <datatype>Text</datatype>
                          <showbutton>false</showbutton>
                        </GridColumnDefinition>
                      </gridcolumns>
                      <readonly>true</readonly>
                      <supportedoperations>Transpose</supportedoperations>
                      <defaultview>Horizontal</defaultview>
                    </unboundgridcontrol>
                  </controls>
                </tabpage>
                <tabpage name="SmEntityTabPage">
                  <location>
                    <x>4</x>
                    <y>25</y>
                  </location>
                  <height>286</height>
                  <width>1032</width>
                  <tabindex>1</tabindex>
                  <visible>false</visible>
                  <caption>SampleManager</caption>
                  <controls>
                    <unboundgridcontrol name="SmLinkedEntitiesGrid">
                      <location />
                      <height>286</height>
                      <width>1032</width>
                      <dock>Fill</dock>
                      <caption>Linked Entities</caption>
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
                        <GridColumnDefinition name="SmEntityNameGridColumn">
                          <location />
                          <width>100</width>
                          <caption>Entity</caption>
                          <readonly>true</readonly>
                          <datatype>Text</datatype>
                          <showbutton>false</showbutton>
                        </GridColumnDefinition>
                        <GridColumnDefinition name="SmEntityFieldGridColumn">
                          <location />
                          <width>100</width>
                          <caption>Field</caption>
                          <readonly>true</readonly>
                          <datatype>Text</datatype>
                          <showbutton>false</showbutton>
                        </GridColumnDefinition>
                        <GridColumnDefinition name="SmEntityFieldValueGridColumn">
                          <location />
                          <width>100</width>
                          <caption>Value</caption>
                          <readonly>true</readonly>
                          <datatype>Text</datatype>
                          <showbutton>false</showbutton>
                        </GridColumnDefinition>
                      </gridcolumns>
                      <readonly>true</readonly>
                      <supportedoperations>Move Transpose</supportedoperations>
                      <defaultview>Horizontal</defaultview>
                    </unboundgridcontrol>
                  </controls>
                </tabpage>
              </tabpages>
            </tabcontrol>
          </controls>
        </panel>
        <splitter name="DmGamlSplitter1">
          <location>
            <x>213</x>
            <y>60</y>
          </location>
          <height>4</height>
          <width>1040</width>
          <tabindex>6</tabindex>
          <dock>Top</dock>
          <anchor>None</anchor>
          <position>51</position>
        </splitter>
        <panel name="DmGamlPanel1">
          <location>
            <x>213</x>
            <y>9</y>
          </location>
          <height>51</height>
          <width>1040</width>
          <tabindex>5</tabindex>
          <dock>Top</dock>
          <caption>DmGamlPanel1</caption>
          <controls>
            <PromptStringBrowseDefinition name="GamlFilesPromptStringBrowse">
              <location>
                <x>17</x>
                <y>12</y>
              </location>
              <height>23</height>
              <width>856</width>
              <anchor>Top Left Right</anchor>
              <caption>GAML Files</caption>
              <Browse>GamlFilesBrowseStringCollection</Browse>
              <multiselect>true</multiselect>
              <forcevalid>true</forcevalid>
            </PromptStringBrowseDefinition>
          </controls>
        </panel>
        <splitter name="DmGamlSplitter2">
          <location>
            <x>209</x>
            <y>9</y>
          </location>
          <height>692</height>
          <width>4</width>
          <tabindex>4</tabindex>
          <dock>Left</dock>
          <anchor>None</anchor>
          <position>200</position>
        </splitter>
        <panel name="DmGamlLeftPanel">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>692</height>
          <tabindex>2</tabindex>
          <dock>Left</dock>
          <caption>DmGamlPanel1</caption>
          <controls>
            <simpletreelist name="GamlFilesTree">
              <location />
              <height>692</height>
              <tabindex>1</tabindex>
              <dock>Fill</dock>
              <caption>GAML Navigator</caption>
              <readonly>false</readonly>
              <treeoperations>CanExpandCollapseAll</treeoperations>
              <openexpanded>true</openexpanded>
              <showroot>true</showroot>
              <autofocusnewnode>false</autofocusnewnode>
              <showimages>true</showimages>
              <nodes />
              <showheader>true</showheader>
              <allowdragdrop>false</allowdragdrop>
            </simpletreelist>
          </controls>
        </panel>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>