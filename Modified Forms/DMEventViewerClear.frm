<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMEventViewerClear">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMEventViewerClear" />
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
      <height>175</height>
      <width>350</width>
      <caption>General</caption>
      <minimumsize>
        <height>175</height>
        <width>350</width>
      </minimumsize>
      <maximumsize>
        <height>175</height>
        <width>350</width>
      </maximumsize>
      <controls>
        <line name="Line1">
          <location>
            <x>13</x>
            <y>92</y>
          </location>
          <height>14</height>
          <width>326</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <DateEditDefinition name="OlderThanDate">
          <location>
            <x>101</x>
            <y>63</y>
          </location>
          <height>20</height>
          <width>150</width>
          <tabindex>2</tabindex>
          <propertylength>0</propertylength>
          <readonly>false</readonly>
          <value>2013-09-11T14:28:34.1220642+02:00</value>
          <edittime>true</edittime>
        </DateEditDefinition>
        <radiobutton name="OlderThan">
          <location>
            <x>19</x>
            <y>63</y>
          </location>
          <height>19</height>
          <width>100</width>
          <tabindex>1</tabindex>
          <caption>Older than</caption>
          <propertylength>0</propertylength>
          <readonly>false</readonly>
          <value />
          <radiogroupindex>1</radiogroupindex>
          <CheckAlign>Left</CheckAlign>
        </radiobutton>
        <label name="Label1">
          <location>
            <x>12</x>
            <y>12</y>
          </location>
          <height>20</height>
          <width>327</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Select the range of log entries to delete.</caption>
        </label>
        <CheckEdit name="Export">
          <location>
            <x>19</x>
            <y>106</y>
          </location>
          <height>21</height>
          <width>319</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Export entries before deletion.</caption>
          <propertylength>0</propertylength>
          <defaultvalue xsi:type="xsd:boolean">true</defaultvalue>
          <readonly>false</readonly>
          <CheckAlign>Left</CheckAlign>
        </CheckEdit>
        <radiobutton name="All">
          <location>
            <x>19</x>
            <y>38</y>
          </location>
          <height>19</height>
          <width>100</width>
          <caption>All</caption>
          <propertylength>0</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>false</readonly>
          <value />
          <radiogroupindex>1</radiogroupindex>
          <CheckAlign>Left</CheckAlign>
        </radiobutton>
        <ActionButtonDefinition name="CancelButton">
          <location>
            <x>264</x>
            <y>140</y>
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
          <cancel>false</cancel>
          <save>false</save>
        </ActionButtonDefinition>
        <ActionButtonDefinition name="OKButton">
          <location>
            <x>183</x>
            <y>140</y>
          </location>
          <height>23</height>
          <width>75</width>
          <tabindex>5</tabindex>
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
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>