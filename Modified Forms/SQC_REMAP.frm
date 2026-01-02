<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="SQC_REMAP">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="SQC_REMAP" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="SQC_REMAP" />
        <FIELD name="TYPE" value="PROPERTY" />
        <FIELD name="DESCRIPTION" value="Remap for Components in exception analysis" />
        <FIELD name="TITLE" value="Sqc Remap" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="smp$textfiles" />
        <FIELD name="FILE_EXTENSION" value="sqc" />
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
    <form name="Page_General">
      <caption>General</caption>
      <minimumsize>
        <height>400</height>
        <width>400</width>
      </minimumsize>
      <controls>
        <prompt name="Remap">
          <location>
            <x>120</x>
            <y>84</y>
          </location>
          <height>21</height>
          <width>268</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Remap</caption>
          <property>Remap</property>
          <propertylength>40</propertylength>
          <captionwidth>60</captionwidth>
          <viewname />
        </prompt>
        <EntityImage name="EntityImage1">
          <location>
            <x>12</x>
            <y>12</y>
          </location>
          <height>32</height>
          <width>32</width>
        </EntityImage>
        <prompt name="AnalysisName">
          <location>
            <x>120</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>268</width>
          <anchor>Top Left Right</anchor>
          <caption>Analysis</caption>
          <property>AnalysisName</property>
          <mandatory>true</mandatory>
          <captionwidth>60</captionwidth>
          <viewname />
        </prompt>
        <line name="Line">
          <location>
            <x>12</x>
            <y>46</y>
          </location>
          <height>12</height>
          <width>376</width>
          <anchor>Top Left Right</anchor>
        </line>
      </controls>
    </form>
    <form name="Page_Page_Fields1">
      <caption>Fields</caption>
      <minimumsize>
        <height>400</height>
        <width>400</width>
      </minimumsize>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>