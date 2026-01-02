<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DMRuleTemplate">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DMRuleTemplate" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="DM_RULE_TEMPLATE" />
        <FIELD name="TYPE" value="PROPERTY" />
        <FIELD name="DESCRIPTION" value="Data Manager Rule Template" />
        <FIELD name="TITLE" value="Data Manager Rule Template" />
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
        <prompt name="DmRuleTemplateName">
          <location>
            <x>120</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>268</width>
          <anchor>Top Left Right</anchor>
          <tooltip>Name of the Rule Template.</tooltip>
          <property>DmRuleTemplateName</property>
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
          <tooltip>Description of the Rule Template.</tooltip>
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
          <tooltip>Select a group to restrict access to the Rule Template record.
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
          <tooltip>Date the Rule Template record was last modified.</tooltip>
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
          <tooltip>Operator who performed the last modification to the Rule Template record.</tooltip>
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
          <tooltip>If checked, any user with the necessary role and group access can modify the Rule Template record.
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
        <prompt name="ConverterClass">
          <location>
            <x>14</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>376</width>
          <anchor>Top Left Right</anchor>
          <tooltip>Select the type of conversion to be performed from the list.</tooltip>
          <caption>Converter Class</caption>
          <property>ConverterClass</property>
          <propertylength>2147483647</propertylength>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <TextEdit name="PackageProgid">
          <location>
            <x>14</x>
            <y>220</y>
          </location>
          <height>20</height>
          <width>376</width>
          <tabindex>8</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The ProgID used to locate the Custom Package module in the Registry.</tooltip>
          <caption>Package ProgId</caption>
          <property>PackageProgid</property>
          <propertylength>255</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>false</readonly>
        </TextEdit>
        <TextEdit name="ConverterExtension">
          <location>
            <x>14</x>
            <y>71</y>
          </location>
          <height>20</height>
          <width>376</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The file extensions to search for when performing the conversion.</tooltip>
          <caption>Converter Extension</caption>
          <property>ConverterExtension</property>
          <propertylength>255</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>false</readonly>
        </TextEdit>
        <TextEdit name="KeyFileSpec">
          <location>
            <x>14</x>
            <y>97</y>
          </location>
          <height>20</height>
          <width>376</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>An identifying file for a data set.  Automatic packaging will search for files of this type.
The '?' and '*' wildcards can be used.  Not used if Package class is set.</tooltip>
          <caption>Key File Spec</caption>
          <property>KeyFileSpec</property>
          <propertylength>255</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>false</readonly>
        </TextEdit>
        <TextEdit name="PackageClass">
          <location>
            <x>14</x>
            <y>195</y>
          </location>
          <height>20</height>
          <width>376</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The name of the Custom Package Class.</tooltip>
          <caption>Package Class</caption>
          <property>PackageClass</property>
          <propertylength>255</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>false</readonly>
        </TextEdit>
        <TextEdit name="UploadRule">
          <location>
            <x>14</x>
            <y>123</y>
          </location>
          <height>20</height>
          <width>376</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The specification of additional files which should be added to the Key File to form a Data Package.
Consult the documentation for the syntax of an Upload Rule.</tooltip>
          <caption>Upload Rule</caption>
          <property>UploadRule</property>
          <propertylength>4000</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>false</readonly>
        </TextEdit>
        <TextEdit name="Converter">
          <location>
            <x>14</x>
            <y>45</y>
          </location>
          <height>20</height>
          <width>376</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The name of the converter to be used.  This field is not required for all Converter Classes.
For the GAML class, the entries for this field can be found in the Instrument Data File Converters help file.</tooltip>
          <caption>Converter Name</caption>
          <property>ConverterName</property>
          <propertylength>255</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>false</readonly>
        </TextEdit>
        <CheckEdit name="UsePackageClass">
          <location>
            <x>14</x>
            <y>168</y>
          </location>
          <height>21</height>
          <width>350</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>If selected, a Custom Package Class is used to package the raw data and create the neutral files.</tooltip>
          <caption>Use Custom Package Class</caption>
          <propertylength>0</propertylength>
          <defaultvalue xsi:type="xsd:boolean">false</defaultvalue>
          <readonly>false</readonly>
          <CheckAlign>Left</CheckAlign>
        </CheckEdit>
        <line name="PackageLine">
          <location>
            <x>15</x>
            <y>151</y>
          </location>
          <height>11</height>
          <width>376</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>