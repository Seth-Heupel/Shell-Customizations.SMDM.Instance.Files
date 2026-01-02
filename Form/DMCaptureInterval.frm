<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMCaptureInterval">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMCaptureInterval" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="DM_CAPTURE_INTERVAL" />
        <FIELD name="TYPE" value="PROPERTY" />
        <FIELD name="DESCRIPTION" value="Data Manager Capture Interval" />
        <FIELD name="TITLE" value="Data Manager Capture Interval" />
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
          <sizemode>AutoSize</sizemode>
        </EntityImage>
        <prompt name="DmCaptureIntervalName">
          <location>
            <x>120</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>268</width>
          <anchor>Top Left Right</anchor>
          <tooltip>Name of the Capture Interval.</tooltip>
          <property>DmCaptureIntervalName</property>
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
          <tooltip>Description of the Capture Interval.</tooltip>
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
          <tooltip>Select a group to restrict access to the Capture Interval record.
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
          <tooltip>Date the Capture Interval record was last modified.</tooltip>
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
          <tooltip>Operator who performed the last modification to the Capture Interval record.</tooltip>
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
          <tooltip>If checked, any user with the necessary role and group access can modify the Capture Interval record.
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
        <prompt name="PackageFileEvent">
          <location>
            <x>12</x>
            <y>46</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The event from which the Package Interval is measured.</tooltip>
          <caption>File Status</caption>
          <property>PackageFileEvent</property>
          <propertylength>2147483647</propertylength>
          <viewname />
        </prompt>
        <panel name="DeletePanel">
          <location>
            <y>113</y>
          </location>
          <height>90</height>
          <width>400</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Panel1</caption>
          <controls>
            <prompt name="DeleteFileEvent">
              <location>
                <x>12</x>
                <y>35</y>
              </location>
              <height>21</height>
              <width>376</width>
              <tabindex>1</tabindex>
              <anchor>Top Left Right</anchor>
              <tooltip>The event from which the Delete Interval is measured.</tooltip>
              <caption>Delete File Status</caption>
              <property>DeleteFileEvent</property>
              <propertylength>255</propertylength>
              <viewname />
            </prompt>
            <prompt name="DeleteInterval">
              <location>
                <x>12</x>
                <y>8</y>
              </location>
              <height>21</height>
              <width>376</width>
              <anchor>Top Left Right</anchor>
              <tooltip>The interval after the Deleted File Status event that makes the files eligible for deletion.</tooltip>
              <caption>Delete Interval</caption>
              <property>DeleteInterval</property>
              <propertylength>0</propertylength>
              <viewname />
            </prompt>
            <prompt name="DeleteDir">
              <location>
                <x>12</x>
                <y>61</y>
              </location>
              <height>21</height>
              <width>122</width>
              <tabindex>2</tabindex>
              <tooltip>If set, the directories conatining the packaged files will be deleted if all files in the directories were packaged.</tooltip>
              <caption>Delete Directory</caption>
              <property>DeleteDir</property>
              <propertylength>0</propertylength>
              <viewname />
            </prompt>
          </controls>
          <enabledproperty>DeleteAfterPackage</enabledproperty>
        </panel>
        <line name="OptionsLine">
          <location>
            <x>12</x>
            <y>202</y>
          </location>
          <height>14</height>
          <width>376</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <line name="DeleteLine">
          <location>
            <x>12</x>
            <y>74</y>
          </location>
          <height>14</height>
          <width>376</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="PackageInterval">
          <location>
            <x>12</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>376</width>
          <anchor>Top Left Right</anchor>
          <tooltip>The interval after the File Status event that makes the data eligible for packaging.</tooltip>
          <caption>Package Interval</caption>
          <property>PackageInterval</property>
          <propertylength>2147483647</propertylength>
          <viewname />
        </prompt>
        <prompt name="DeleteAfterPackage">
          <location>
            <x>12</x>
            <y>94</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>3</tabindex>
		  <tooltip>If checked, packaged files will be deleted from the source system if the criteria has been met.</tooltip>
          <caption>Delete Files</caption>
          <property>DeleteAfterPackage</property>
          <propertylength>0</propertylength>
          <viewname />
        </prompt>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>
