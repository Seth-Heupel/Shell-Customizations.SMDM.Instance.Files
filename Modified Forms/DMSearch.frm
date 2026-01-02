<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMSearch">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMSearch" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="Data Manager Search Form" />
        <FIELD name="TITLE" value="Data Manager Search" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="" />
        <FIELD name="FILE_EXTENSION" value="" />
        <FIELD name="FORM_XML" value="" />
        <FIELD name="CATEGORY" value="GENERAL" />
        <FIELD name="DEFAULT_ICON" value="INT_FORMS" />
        <FIELD name="WINDOW_STYLE" value="DOCK" />
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
      <height>382</height>
      <width>643</width>
      <caption>General</caption>
      <controls>
        <explorergridcontrol name="ResultsGrid">
          <location>
            <x>9</x>
            <y>156</y>
          </location>
          <height>185</height>
          <width>625</width>
          <tabindex>2</tabindex>
          <dock>Fill</dock>
          <Browse />
        </explorergridcontrol>
        <panel name="BottomPanel">
          <location>
            <x>9</x>
            <y>341</y>
          </location>
          <height>32</height>
          <width>625</width>
          <tabindex>1</tabindex>
          <dock>Bottom</dock>
          <caption>Panel1</caption>
          <controls>
            <label name="MatchLabel">
              <location>
                <x>4</x>
                <y>7</y>
              </location>
              <height>20</height>
              <width>618</width>
              <anchor>Top Left Right</anchor>
            </label>
          </controls>
        </panel>
        <panel name="TopPanel">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>147</height>
          <width>625</width>
          <dock>Top</dock>
          <caption>Panel1</caption>
          <controls>
            <ButtonEditDefinition name="CloseButton">
              <location>
                <x>542</x>
                <y>78</y>
              </location>
              <height>23</height>
              <width>75</width>
              <tabindex>2</tabindex>
              <anchor>Top Right</anchor>
              <caption>Close</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <ButtonEditDefinition name="SearchButton">
              <location>
                <x>542</x>
                <y>48</y>
              </location>
              <height>23</height>
              <width>75</width>
              <tabindex>1</tabindex>
              <anchor>Top Right</anchor>
              <caption>Search</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <unboundgridcontrol name="SearchConditionGrid">
              <location>
                <y>3</y>
              </location>
              <height>138</height>
              <width>532</width>
              <anchor>Top Bottom Left Right</anchor>
              <caption>Specify the Criteria(s) to perform the search.</caption>
              <showbuttons>false</showbuttons>
              <autosizecolumns>true</autosizecolumns>
              <MultiSelect>false</MultiSelect>
              <showiconcolumn>false</showiconcolumn>
              <showindicator>true</showindicator>
              <showhorzlines>true</showhorzlines>
              <showvertlines>true</showvertlines>
              <allowsort>false</allowsort>
              <fixedcolumns>0</fixedcolumns>
              <gridcolumns>
                <GridColumnDefinition name="EntityTypeColumn">
                  <location />
                  <width>100</width>
                  <caption>Entity Type</caption>
                  <readonly>true</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="CriteriaColumn">
                  <location />
                  <width>100</width>
                  <caption>Criteria</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
              </gridcolumns>
              <readonly>false</readonly>
              <supportedoperations>None</supportedoperations>
              <defaultview>Horizontal</defaultview>
            </unboundgridcontrol>
          </controls>
        </panel>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>