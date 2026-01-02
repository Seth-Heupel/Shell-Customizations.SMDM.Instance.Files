<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="SqcSubgroupOperations">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="SqcSubgroupOperations" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="Lets user to do various operations on subgroup within SQC control chart." />
        <FIELD name="TITLE" value="Subgroup Operations" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="" />
        <FIELD name="FILE_EXTENSION" value="" />
        <FIELD name="FORM_XML" value="" />
        <FIELD name="CATEGORY" value="GENERAL" />
        <FIELD name="DEFAULT_ICON" value="SQC_SUBGROUP" />
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
      <height>241</height>
      <width>559</width>
      <caption>General</caption>
      <controls>
        <ActionButtonDefinition name="ActionButton2">
          <location>
            <x>472</x>
            <y>206</y>
          </location>
          <height>23</height>
          <width>75</width>
          <tabindex>2</tabindex>
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
            <x>390</x>
            <y>206</y>
          </location>
          <height>23</height>
          <width>75</width>
          <tabindex>1</tabindex>
          <anchor>Bottom Right</anchor>
          <caption>&amp;OK</caption>
          <size>
            <Width>75</Width>
            <Height>23</Height>
          </size>
          <formresult>OK</formresult>
          <accept>false</accept>
          <cancel>false</cancel>
          <save>false</save>
        </ActionButtonDefinition>
        <unboundgridcontrol name="UnboundGridDesign1">
          <location>
            <x>12</x>
            <y>12</y>
          </location>
          <height>188</height>
          <width>535</width>
          <anchor>Top Bottom Left Right</anchor>
          <showbuttons>false</showbuttons>
          <autosizecolumns>true</autosizecolumns>
          <MultiSelect>false</MultiSelect>
          <showiconcolumn>false</showiconcolumn>
          <showindicator>false</showindicator>
          <showhorzlines>true</showhorzlines>
          <showvertlines>true</showvertlines>
          <allowsort>false</allowsort>
          <fixedcolumns>0</fixedcolumns>
          <gridcolumns>
            <GridColumnDefinition name="GridDesignColumnIndex">
              <location />
              <width>30</width>
              <caption>Index</caption>
              <AllowSort>false</AllowSort>
              <readonly>true</readonly>
              <IsUnique>true</IsUnique>
              <IsGreyBackground>true</IsGreyBackground>
              <allowfocus>false</allowfocus>
              <datatype>Integer</datatype>
              <showbutton>false</showbutton>
            </GridColumnDefinition>
            <GridColumnDefinition name="GridDesignColumnAbad">
              <location />
              <width>40</width>
              <caption>Excluded(Mean)</caption>
              <AllowSort>false</AllowSort>
              <readonly>false</readonly>
              <allowfocus>false</allowfocus>
              <datatype>Boolean</datatype>
              <showbutton>false</showbutton>
            </GridColumnDefinition>
            <GridColumnDefinition name="GridDesignColumnComments">
              <location />
              <caption>Comments</caption>
              <AllowSort>false</AllowSort>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
            </GridColumnDefinition>
          </gridcolumns>
          <readonly>false</readonly>
          <supportedoperations>Add Delete</supportedoperations>
          <defaultview>Horizontal</defaultview>
        </unboundgridcontrol>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>