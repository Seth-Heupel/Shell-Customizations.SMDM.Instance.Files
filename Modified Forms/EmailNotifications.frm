<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="EmailNotifications">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="EmailNotifications" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="EMAIL_NOTIFICATION" />
        <FIELD name="TYPE" value="PROPERTY" />
        <FIELD name="DESCRIPTION" value="Email Notification" />
        <FIELD name="TITLE" value="E-Mail Notifications" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="smp$textfiles" />
        <FIELD name="FILE_EXTENSION" value="ema" />
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
      <height>454</height>
      <width>590</width>
      <caption>General</caption>
      <components>
        <browsestringcollection name="BrowseTypes">
          <strings>HTML</strings>
          <strings>PDF</strings>
          <strings>RTF</strings>
        </browsestringcollection>
        <browsetablename name="BrowseTableName1" />
        <entityBrowseDefinition name="EntityBrowseTester">
          <entity>EMAIL_NOTIFICATION</entity>
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
      </components>
      <minimumsize>
        <height>400</height>
        <width>400</width>
      </minimumsize>
      <controls>
        <groupbox name="GroupBox1">
          <location>
            <x>12</x>
            <y>301</y>
          </location>
          <height>140</height>
          <width>566</width>
          <tabindex>17</tabindex>
          <anchor>Top Bottom Left Right</anchor>
          <caption>Notification Test </caption>
          <padding>
            <All>3</All>
            <Bottom>3</Bottom>
            <Left>3</Left>
            <Right>3</Right>
            <Top>3</Top>
          </padding>
          <controls>
            <TextEdit name="TestBody">
              <location>
                <x>6</x>
                <y>74</y>
              </location>
              <height>60</height>
              <width>554</width>
              <tabindex>17</tabindex>
              <anchor>Top Bottom Left Right</anchor>
              <caption>Body</caption>
              <defaultvalue xsi:type="xsd:string" />
              <readonly>true</readonly>
              <multiline>true</multiline>
            </TextEdit>
            <TextEdit name="TestSubject">
              <location>
                <x>6</x>
                <y>48</y>
              </location>
              <height>20</height>
              <width>554</width>
              <tabindex>16</tabindex>
              <anchor>Top Left Right</anchor>
              <caption>Subject</caption>
              <defaultvalue xsi:type="xsd:string" />
              <readonly>true</readonly>
            </TextEdit>
            <ButtonEditDefinition name="ButtonTest">
              <location>
                <x>485</x>
                <y>19</y>
              </location>
              <height>23</height>
              <width>75</width>
              <tabindex>15</tabindex>
              <anchor>Top Right</anchor>
              <caption>Test</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <PromptEntityBrowseDefinition name="PromptTestEntity">
              <location>
                <x>6</x>
                <y>19</y>
              </location>
              <height>20</height>
              <width>461</width>
              <tabindex>14</tabindex>
              <anchor>Top Left Right</anchor>
              <caption>Test Entity</caption>
              <Browse>EntityBrowseTester</Browse>
              <forcevalid>true</forcevalid>
            </PromptEntityBrowseDefinition>
          </controls>
        </groupbox>
        <TextEdit name="PromptBody">
          <location>
            <x>12</x>
            <y>264</y>
          </location>
          <height>20</height>
          <width>566</width>
          <tabindex>13</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>E-Mail Body</caption>
          <property>Body</property>
          <propertylength>1000</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <showbutton>true</showbutton>
        </TextEdit>
        <TextEdit name="PromptSubject">
          <location>
            <x>12</x>
            <y>238</y>
          </location>
          <height>20</height>
          <width>566</width>
          <tabindex>12</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>E-Mail Subject</caption>
          <property>Subject</property>
          <propertylength>234</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <showbutton>true</showbutton>
        </TextEdit>
        <prompt name="Ccdistribution">
          <location>
            <x>12</x>
            <y>197</y>
          </location>
          <height>35</height>
          <width>566</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>CC Distribution</caption>
          <property>CcDistribution</property>
          <propertylength>500</propertylength>
          <viewname />
        </prompt>
        <PromptTableNameBrowseDefinition name="PromptTableName">
          <location>
            <x>261</x>
            <y>121</y>
          </location>
          <height>20</height>
          <width>317</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Table Name</caption>
          <property>TableName</property>
          <propertylength>50</propertylength>
          <captionwidth>80</captionwidth>
          <Browse>BrowseTableName1</Browse>
          <multiselect>false</multiselect>
          <forcevalid>true</forcevalid>
        </PromptTableNameBrowseDefinition>
        <PromptStringBrowseDefinition name="PromptOutputType">
          <location>
            <x>12</x>
            <y>121</y>
          </location>
          <height>20</height>
          <width>234</width>
          <tabindex>3</tabindex>
          <caption>Output Type</caption>
          <property>OutputType</property>
          <propertylength>10</propertylength>
          <Browse>BrowseTypes</Browse>
          <multiselect>false</multiselect>
          <forcevalid>true</forcevalid>
        </PromptStringBrowseDefinition>
        <prompt name="NotificationReport">
          <location>
            <x>12</x>
            <y>94</y>
          </location>
          <height>21</height>
          <width>566</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Notification Report</caption>
          <property>NotificationReport</property>
          <propertylength>100</propertylength>
          <viewname />
        </prompt>
        <prompt name="Description">
          <location>
            <x>12</x>
            <y>64</y>
          </location>
          <height>24</height>
          <width>566</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Description</caption>
          <property>Description</property>
          <propertylength>234</propertylength>
          <viewname />
        </prompt>
        <prompt name="EmailDistribution">
          <location>
            <x>12</x>
            <y>148</y>
          </location>
          <height>43</height>
          <width>566</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Email Distribution</caption>
          <property>EmailDistribution</property>
          <propertylength>500</propertylength>
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
        <prompt name="Identity">
          <location>
            <x>120</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>458</width>
          <anchor>Top Left Right</anchor>
          <property>Identity</property>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <line name="Line">
          <location>
            <x>12</x>
            <y>46</y>
          </location>
          <height>12</height>
          <width>566</width>
          <tabindex>11</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>