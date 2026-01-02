<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMDataDestination">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMDataDestination" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="DM_DATA_DESTINATION" />
        <FIELD name="TYPE" value="PROPERTY" />
        <FIELD name="DESCRIPTION" value="Data Manager Data Destination" />
        <FIELD name="TITLE" value="Data Manager Data Destination" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="" />
        <FIELD name="FILE_EXTENSION" value="" />
        <FIELD name="FORM_XML" value="" />
        <FIELD name="CATEGORY" value="LABTABLE" />
        <FIELD name="DEFAULT_ICON" value="INT_FORMS" />
        <FIELD name="WINDOW_STYLE" value="FLOAT" />
        <FIELD name="SHOW_WELCOME_PAGE" value="True" />
        <FIELD name="HAS_ERRORS" value="False" />
        <FIELD name="PAGE_EXTENSION" value="" />
      </RECORD>
    </TABLE>
    <PAGES>
      <PAGE name="AttachmentPage" />
    </PAGES>
  </DATA>
  <DEFINITION><![CDATA[<?xml version="1.0" encoding="utf-16"?>
<interface xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://www.thermo.com/informatics/xmlns/interface/1.0">
  <forms>
    <form name="GeneralPage">
      <caption>General</caption>
      <minimumsize>
        <height>400</height>
        <width>400</width>
      </minimumsize>
      <controls>
        <EntityImage name="EntityImage1">
          <location>
            <x>12</x>
            <y>12</y>
          </location>
          <height>32</height>
          <width>32</width>
        </EntityImage>
        <prompt name="DmDataDestinationName">
          <location>
            <x>120</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>268</width>
          <anchor>Top Left Right</anchor>
          <tooltip>Name of the Data Destination.</tooltip>
          <property>DmDataDestinationName</property>
          <propertylength>0</propertylength>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <line name="Line">
          <location>
            <x>12</x>
            <y>46</y>
          </location>
          <height>12</height>
          <width>376</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="Description">
          <location>
            <x>12</x>
            <y>64</y>
          </location>
          <width>376</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Description of the Data Destination.</tooltip>
          <caption>Description</caption>
          <property>Description</property>
          <propertylength>0</propertylength>
          <viewname />
        </prompt>
        <line name="Line1">
          <location>
            <x>12</x>
            <y>170</y>
          </location>
          <height>12</height>
          <width>376</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="GroupId">
          <location>
            <x>12</x>
            <y>188</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Select a group to restrict access to the Data Destination record.
If no group is specified, all operators have access.
		  </tooltip>
          <caption>Group</caption>
          <property>GroupId</property>
          <propertylength>0</propertylength>
          <viewname />
        </prompt>
        <prompt name="ModifiedOn">
          <location>
            <x>12</x>
            <y>215</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Date the Data Destination record was last modified.</tooltip>
          <caption>Modified On</caption>
          <property>ModifiedOn</property>
          <propertylength>0</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="ModifiedBy">
          <location>
            <x>12</x>
            <y>242</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Operator who performed the last modification to the Data Destination record.</tooltip>
          <caption>Modified By</caption>
          <property>ModifiedBy</property>
          <propertylength>0</propertylength>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <line name="Line2">
          <location>
            <x>12</x>
            <y>269</y>
          </location>
          <height>12</height>
          <width>376</width>
          <tabindex>8</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="Modifiable">
          <location>
            <x>12</x>
            <y>287</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>9</tabindex>
          <tooltip>If checked, any user with the necessary role and group access can modify the Data Destination record.
If cleared, only a user with system-level authority can modify the record.</tooltip>
          <caption>Modifiable</caption>
          <property>Modifiable</property>
          <propertylength>0</propertylength>
          <viewname />
        </prompt>
      </controls>
    </form>
    <form name="DefinitionPage">
      <caption>Definition</caption>
      <minimumsize>
        <height>400</height>
        <width>400</width>
      </minimumsize>
      <controls>
        <prompt name="ServerComputer">
          <location>
            <x>12</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>376</width>
          <anchor>Top Left Right</anchor>
          <tooltip>The Server Computer used to store the data.
Clicking on this field will open the Server Computer record.</tooltip>
          <caption>Server Computer</caption>
          <property>DmServerComputer</property>
          <propertylength>2147483647</propertylength>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <TextEdit name="FilePath">
          <location>
            <x>12</x>
            <y>46</y>
          </location>
          <height>20</height>
          <width>376</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The full file path to the folder used to store the data on the Server Computer.</tooltip>
          <caption>File Path</caption>
          <property>FilePath</property>
          <propertylength>255</propertylength>
          <mandatory>true</mandatory>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>false</readonly>
        </TextEdit>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>
