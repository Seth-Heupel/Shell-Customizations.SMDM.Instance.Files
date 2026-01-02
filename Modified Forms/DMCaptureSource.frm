<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMCaptureSource">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMCaptureSource" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="DM_CAPTURE_SOURCE" />
        <FIELD name="TYPE" value="PROPERTY" />
        <FIELD name="DESCRIPTION" value="Data Manager Capture Source Property Sheet" />
        <FIELD name="TITLE" value="Data Manager Capture Source" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="smp$textfiles" />
        <FIELD name="FILE_EXTENSION" value="dm_" />
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
        <prompt name="DmCaptureSourceName">
          <location>
            <x>120</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>268</width>
          <anchor>Top Left Right</anchor>
          <tooltip>Name of the Capture Source.</tooltip>
          <property>DmCaptureSourceName</property>
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
          <tooltip>Description of the Capture Source.</tooltip>
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
          <tooltip>Select a group to restrict access to the Capture Source record.
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
          <tooltip>Date the Capture Source record was last modified.</tooltip>
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
          <tooltip>Operator who performed the last modification to the Capture Source record.</tooltip>
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
          <tooltip>If checked, any user with the necessary role and group access can modify the Capture Source record.
If cleared, only a user with system-level authority can modify the record.</tooltip>
          <caption>Modifiable</caption>
          <property>Modifiable</property>
          <propertylength>0</propertylength>
          <viewname />
        </prompt>
      </controls>
    </form>
    <form name="DefinitionPage">
      <height>490</height>
      <caption>Definition</caption>
      <minimumsize>
        <height>490</height>
        <width>400</width>
      </minimumsize>
      <controls>
        <prompt name="DatabaseServer">
          <location>
            <x>12</x>
            <y>288</y>
          </location>
          <height>21</height>
          <width>375</width>
          <tabindex>12</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The database server for a Custom Packaging Class.</tooltip>
          <caption>Database Server</caption>
          <property>DatabaseServer</property>
          <propertylength>100</propertylength>
          <viewname />
        </prompt>
        <ButtonEditDefinition name="PasswordButton">
          <location>
            <x>312</x>
            <y>367</y>
          </location>
          <height>23</height>
          <width>75</width>
          <tabindex>16</tabindex>
          <anchor>Top Right</anchor>
          <tooltip>Press to enter or modify the database password.</tooltip>
          <caption>Edit</caption>
          <imageAlign>Left</imageAlign>
          <size>
            <Width>0</Width>
            <Height>0</Height>
          </size>
        </ButtonEditDefinition>
        <TextEdit name="DatabasePassword">
          <location>
            <x>12</x>
            <y>369</y>
          </location>
          <height>20</height>
          <width>294</width>
          <tabindex>15</tabindex>
          <anchor>Top Left Right</anchor>
          <enabled>false</enabled>
          <tooltip>The database password (this field is masked to hide the password).</tooltip>
          <caption>Database Password</caption>
          <propertylength>0</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>true</readonly>
          <updatestate>false</updatestate>
        </TextEdit>
        <prompt name="Enabled">
          <location>
            <x>12</x>
            <y>120</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>4</tabindex>
          <tooltip>Indicates that this Capture Source should be included in the Agent Computer sweeps.
This field can also be modified from the grid on the Agent Computer definition form.</tooltip>
          <caption>Enabled</caption>
          <property>Enabled</property>
          <propertylength>2147483647</propertylength>
          <viewname />
        </prompt>
        <prompt name="PackagingGroup">
          <location>
            <x>12</x>
            <y>93</y>
          </location>
          <height>21</height>
          <width>375</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Select a group to restrict access to the Data Packages created by this rule.
If no group is specified, all operators have access.
Note that this setting overrides the Packaging Group in the Packaging Rule if set.</tooltip>
          <caption>Packaging Group</caption>
          <property>PackagingGroupId</property>
          <propertylength>100</propertylength>
          <viewname />
        </prompt>
        <prompt name="DatabaseParameters">
          <location>
            <x>12</x>
            <y>396</y>
          </location>
          <height>76</height>
          <width>374</width>
          <tabindex>17</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Optional additional parameters that may be required for some Custom Package Classes.</tooltip>
          <caption>Database Parameters</caption>
          <property>DatabaseParameters</property>
          <propertylength>255</propertylength>
          <viewname />
        </prompt>
        <prompt name="DatabaseLogin">
          <location>
            <x>12</x>
            <y>342</y>
          </location>
          <height>21</height>
          <width>375</width>
          <tabindex>14</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The database user login for a Custom Packaging class.</tooltip>
          <caption>Database Login</caption>
          <property>DatabaseLogin</property>
          <propertylength>100</propertylength>
          <viewname />
        </prompt>
        <prompt name="DatabaseName">
          <location>
            <x>12</x>
            <y>315</y>
          </location>
          <height>21</height>
          <width>375</width>
          <tabindex>13</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The database name for a Custom Packaging Class.</tooltip>
          <caption>Database Name</caption>
          <property>DatabaseName</property>
          <propertylength>100</propertylength>
          <viewname />
        </prompt>
        <line name="Line4">
          <location>
            <x>12</x>
            <y>269</y>
          </location>
          <height>14</height>
          <width>375</width>
          <tabindex>11</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Custom Source</caption>
        </line>
        <line name="Line3">
          <location>
            <x>12</x>
            <y>150</y>
          </location>
          <height>14</height>
          <width>375</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Filesystem Source</caption>
        </line>
        <prompt name="IncludeHiddenFiles">
          <location>
            <x>12</x>
            <y>223</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>8</tabindex>
          <tooltip>Allow files that have the hidden attribute set to be included in the Data Package.</tooltip>
          <caption>Include Hidden Files</caption>
          <property>IncludeHiddenFiles</property>
          <propertylength>2147483647</propertylength>
          <viewname />
        </prompt>
        <prompt name="PackagingRule">
          <location>
            <x>12</x>
            <y>12</y>
          </location>
          <height>21</height>
          <width>376</width>
          <anchor>Top Left Right</anchor>
          <tooltip>Select the Packaging Rule to be used when packaging and converting the data files.</tooltip>
          <caption>Packaging Rule</caption>
          <property>DmPackagingRule</property>
          <propertylength>2147483647</propertylength>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <prompt name="SetArchivedFlag">
          <location>
            <x>265</x>
            <y>223</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>9</tabindex>
          <anchor>Top Right</anchor>
          <tooltip>Set the Archived Flag on the original files after they have been packaged.</tooltip>
          <caption>Set Archived Flag</caption>
          <property>SetArchivedFlag</property>
          <propertylength>2147483647</propertylength>
          <viewname />
        </prompt>
        <prompt name="SetReadOnly">
          <location>
            <x>265</x>
            <y>249</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>10</tabindex>
          <anchor>Top Right</anchor>
          <tooltip>Set the Read Only Flag on the original files after they have been packaged.</tooltip>
          <caption>Set Read Only</caption>
          <property>SetReadOnly</property>
          <propertylength>2147483647</propertylength>
          <viewname />
        </prompt>
        <prompt name="AgentComputer">
          <location>
            <x>12</x>
            <y>39</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The Agent Computer used to run this Capture Source.</tooltip>
          <caption>Agent Computer</caption>
          <property>DmAgentComputer</property>
          <propertylength>2147483647</propertylength>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <TextEdit name="SearchPath">
          <location>
            <x>12</x>
            <y>170</y>
          </location>
          <height>20</height>
          <width>376</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Full path to the top folder that will be searched on the source computer.</tooltip>
          <caption>File Search Path</caption>
          <property>SearchPath</property>
          <propertylength>255</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>false</readonly>
        </TextEdit>
        <prompt name="CaptureInterval">
          <location>
            <x>12</x>
            <y>66</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Select the Capture Interval to be used when determining if files are eligible for packaging.</tooltip>
          <caption>Capture Interval</caption>
          <property>DmCaptureInterval</property>
          <propertylength>2147483647</propertylength>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <prompt name="Recursive">
          <location>
            <x>12</x>
            <y>196</y>
          </location>
          <height>21</height>
          <width>376</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Indicates how subfolders should be searched.
Yes - search all; No - search only the top folder; Until Found - search until the first Key File is found.</tooltip>
          <caption>Search Subdirectories</caption>
          <property>Recursive</property>
          <propertylength>0</propertylength>
          <viewname />
        </prompt>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>