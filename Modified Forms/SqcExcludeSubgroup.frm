<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="SqcExcludeSubgroup">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="SqcExcludeSubgroup" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="SQCWIN_SUBGROUP" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="Include or Exclude a Result from a Subgroup" />
        <FIELD name="TITLE" value="Include or Exclude a Result from a Subgroup" />
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
    <form name="FormDefinitionExcludeSubgroup">
      <height>364</height>
      <width>618</width>
      <caption>General</caption>
      <maximumsize>
        <height>485</height>
        <width>783</width>
      </maximumsize>
      <controls>
        <ActionButtonDefinition name="ActionButton2">
          <location>
            <x>531</x>
            <y>329</y>
          </location>
          <height>23</height>
          <width>75</width>
          <tabindex>6</tabindex>
          <anchor>Bottom Right</anchor>
          <caption>&amp;Cancel</caption>
          <size>
            <Width>75</Width>
            <Height>23</Height>
          </size>
          <formresult>Cancel</formresult>
          <accept>false</accept>
          <cancel>true</cancel>
          <save>false</save>
        </ActionButtonDefinition>
        <unboundgridcontrol name="unbGridDesignResults">
          <location>
            <x>12</x>
            <y>12</y>
          </location>
          <height>261</height>
          <width>594</width>
          <tabindex>5</tabindex>
          <anchor>Top Bottom Left Right</anchor>
          <caption>Select the checkbox to exclude the result from the subgroup, or clear the  checkbox to include it.</caption>
          <showbuttons>true</showbuttons>
          <autosizecolumns>false</autosizecolumns>
          <MultiSelect>false</MultiSelect>
          <showiconcolumn>false</showiconcolumn>
          <showindicator>true</showindicator>
          <showhorzlines>true</showhorzlines>
          <showvertlines>true</showvertlines>
          <allowsort>false</allowsort>
          <fixedcolumns>0</fixedcolumns>
          <gridcolumns>
            <GridColumnDefinition name="colSubgroupExcluded">
              <location />
              <width>50</width>
              <caption>Subgroup Excluded</caption>
              <readonly>false</readonly>
              <datatype>Boolean</datatype>
              <showbutton>false</showbutton>
            </GridColumnDefinition>
            <GridColumnDefinition name="colSampleID">
              <location />
              <width>70</width>
              <caption>Sample ID</caption>
              <readonly>true</readonly>
              <allowfocus>false</allowfocus>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
            </GridColumnDefinition>
            <GridColumnDefinition name="colPointDate">
              <location />
              <width>100</width>
              <caption>Sampled Date</caption>
              <readonly>true</readonly>
              <allowfocus>false</allowfocus>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
            </GridColumnDefinition>
            <GridColumnDefinition name="colPointValue">
              <location />
              <width>100</width>
              <caption>Value</caption>
              <readonly>true</readonly>
              <allowfocus>false</allowfocus>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
            </GridColumnDefinition>
          </gridcolumns>
          <readonly>false</readonly>
          <supportedoperations>None</supportedoperations>
          <defaultview>Horizontal</defaultview>
        </unboundgridcontrol>
        <ActionButtonDefinition name="ActionButton1">
          <location>
            <x>450</x>
            <y>329</y>
          </location>
          <height>23</height>
          <width>75</width>
          <tabindex>4</tabindex>
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
        <TextEdit name="TextEditComment">
          <location>
            <x>12</x>
            <y>279</y>
          </location>
          <height>44</height>
          <width>594</width>
          <tabindex>3</tabindex>
          <anchor>Bottom Left Right</anchor>
          <tooltip>Justification for Including/Excluding the Subgroup</tooltip>
          <caption>Subgroup comment</caption>
          <property />
          <propertylength>234</propertylength>
          <captionwidth>140</captionwidth>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>false</readonly>
          <multiline>true</multiline>
        </TextEdit>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>