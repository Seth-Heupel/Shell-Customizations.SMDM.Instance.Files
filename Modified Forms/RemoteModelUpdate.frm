<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="RemoteModelUpdate">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="RemoteModelUpdate" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="REMOTE_MODEL" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="for remote cal file delivery" />
        <FIELD name="TITLE" value="Remote Model Update" />
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
      <height>693</height>
      <width>1208</width>
      <caption>General</caption>
      <components>
        <dataqueryentitycollection name="DataEntityCollectionRemoteModel">
          <entity>REMOTE_MODEL</entity>
          <query>DataQueryRemoteModel</query>
        </dataqueryentitycollection>
        <dataquery name="DataQueryRemoteModel">
          <entity>REMOTE_MODEL</entity>
          <conditions />
        </dataquery>
        <browsephrase name="BrowsePhraseModelStatus">
          <phraseType>MODEL_STAT</phraseType>
        </browsephrase>
        <dataquery name="DataQueryLocalModel">
          <entity>REMOTE_MODEL_MODELS_JOIN</entity>
          <conditions />
        </dataquery>
        <dataqueryentitycollection name="DataEntityCollectionLocalModel">
          <entity>REMOTE_MODEL_MODELS_JOIN</entity>
          <query>DataQueryLocalModel</query>
        </dataqueryentitycollection>
      </components>
      <controls>
        <masterdetailgridcontrol name="SMMasterDetailLocalModel">
          <location>
            <x>9</x>
            <y>419</y>
          </location>
          <height>276</height>
          <width>1190</width>
          <tabindex>4</tabindex>
          <dock>Top</dock>
          <caption>Model Comparison - Current Model CM to Remote Model RM</caption>
          <datasource>DataEntityCollectionLocalModel</datasource>
          <allowcolumnreorder>true</allowcolumnreorder>
          <readonly>false</readonly>
          <showiconcolumn>false</showiconcolumn>
          <gridcolumns>
            <gridcolumn name="Identity">
              <location />
              <width>60</width>
              <caption>Identity</caption>
              <Property>Identity</Property>
              <ReadOnly>true</ReadOnly>
              <IsUnique>true</IsUnique>
              <IsMandatory>true</IsMandatory>
            </gridcolumn>
            <gridcolumn name="SamplePoint">
              <location />
              <width>60</width>
              <caption>Sample Point</caption>
              <Property>SamplePoint</Property>
              <ReadOnly>true</ReadOnly>
            </gridcolumn>
            <gridcolumn name="CompName">
              <location />
              <width>80</width>
              <caption>Comp Name</caption>
              <Property>CompName</Property>
              <ReadOnly>true</ReadOnly>
            </gridcolumn>
            <gridcolumn name="CmUpdatedate">
              <location />
              <width>80</width>
              <caption>CMUpdatedate</caption>
              <Property>CmUpdatedate</Property>
              <ReadOnly>true</ReadOnly>
            </gridcolumn>
            <gridcolumn name="CmAuthor">
              <location />
              <width>60</width>
              <caption>CM Author</caption>
              <Property>CmAuthor</Property>
              <ReadOnly>true</ReadOnly>
            </gridcolumn>
            <gridcolumn name="CmRsquared">
              <location />
              <width>60</width>
              <caption>CM Rsquared</caption>
              <Property>CmRsquared</Property>
              <ReadOnly>true</ReadOnly>
            </gridcolumn>
            <gridcolumn name="RmRsquared">
              <location />
              <width>60</width>
              <caption>RM Rsquared</caption>
              <Property>RmRsquared</Property>
              <ReadOnly>true</ReadOnly>
            </gridcolumn>
            <gridcolumn name="CmSecv">
              <location />
              <width>60</width>
              <caption>CM Secv</caption>
              <Property>CmSecv</Property>
              <ReadOnly>true</ReadOnly>
            </gridcolumn>
            <gridcolumn name="RmSecv">
              <location />
              <width>60</width>
              <caption>RM Secv</caption>
              <Property>RmSecv</Property>
              <ReadOnly>true</ReadOnly>
            </gridcolumn>
            <gridcolumn name="CmFactors">
              <location />
              <width>60</width>
              <caption>CM Factors</caption>
              <Property>CmFactors</Property>
              <ReadOnly>true</ReadOnly>
            </gridcolumn>
            <gridcolumn name="RmFactors">
              <location />
              <width>60</width>
              <caption>RM Factors</caption>
              <Property>RmFactors</Property>
              <ReadOnly>true</ReadOnly>
            </gridcolumn>
            <gridcolumn name="CmTotalsamples">
              <location />
              <width>60</width>
              <caption>CM Totalsamples</caption>
              <Property>CmTotalsamples</Property>
              <ReadOnly>true</ReadOnly>
            </gridcolumn>
            <gridcolumn name="RmTotalnumsamples">
              <location />
              <width>60</width>
              <caption>RM TotalSamples</caption>
              <Property>RmTotalnumsamples</Property>
              <ReadOnly>true</ReadOnly>
            </gridcolumn>
          </gridcolumns>
          <customGridbuttons />
          <gridbuttons>None</gridbuttons>
          <userinterface />
          <showindicator>true</showindicator>
          <fixedcolumns>0</fixedcolumns>
          <autosizecolumns>true</autosizecolumns>
          <showfocusedrow>false</showfocusedrow>
          <borderwidth>0</borderwidth>
          <MultiSelect>false</MultiSelect>
          <AllowFill>false</AllowFill>
          <allowsort>false</allowsort>
          <detailgrids />
          <showtabs>false</showtabs>
        </masterdetailgridcontrol>
        <splitter name="Splitter2">
          <location>
            <x>9</x>
            <y>415</y>
          </location>
          <height>4</height>
          <width>1190</width>
          <tabindex>3</tabindex>
          <dock>Top</dock>
          <anchor>None</anchor>
          <locked>true</locked>
          <position>274</position>
        </splitter>
        <masterdetailgridcontrol name="SMMasterDetailGridRemoteModel">
          <location>
            <x>9</x>
            <y>141</y>
          </location>
          <height>274</height>
          <width>1190</width>
          <tabindex>2</tabindex>
          <dock>Top</dock>
          <caption>Remote Model for Delivery</caption>
          <datasource>DataEntityCollectionRemoteModel</datasource>
          <allowcolumnreorder>true</allowcolumnreorder>
          <readonly>false</readonly>
          <showiconcolumn>false</showiconcolumn>
          <gridcolumns>
            <gridcolumn name="Select">
              <location />
              <width>40</width>
              <caption>Select</caption>
              <UnboundDataType>Boolean</UnboundDataType>
            </gridcolumn>
            <gridcolumn name="SamplePoint">
              <location />
              <width>60</width>
              <caption>Sample Point</caption>
              <Property>SamplePoint</Property>
              <ReadOnly>true</ReadOnly>
              <IsGrayBackground>true</IsGrayBackground>
            </gridcolumn>
            <gridcolumn name="CompName">
              <location />
              <width>60</width>
              <caption>Comp Name</caption>
              <Property>CompName</Property>
              <ReadOnly>true</ReadOnly>
              <IsGrayBackground>true</IsGrayBackground>
            </gridcolumn>
            <gridcolumn name="Factors">
              <location />
              <width>40</width>
              <caption>Factors</caption>
              <Property>Factors</Property>
              <ReadOnly>true</ReadOnly>
              <IsGrayBackground>true</IsGrayBackground>
            </gridcolumn>
            <gridcolumn name="Secv">
              <location />
              <width>40</width>
              <caption>Secv</caption>
              <Property>Secv</Property>
              <ReadOnly>true</ReadOnly>
              <IsGrayBackground>true</IsGrayBackground>
            </gridcolumn>
            <gridcolumn name="Rsquared">
              <location />
              <width>40</width>
              <caption>Rsquared</caption>
              <Property>Rsquared</Property>
              <ReadOnly>true</ReadOnly>
              <IsGrayBackground>true</IsGrayBackground>
            </gridcolumn>
            <gridcolumn name="Status">
              <location />
              <width>40</width>
              <caption>Status</caption>
              <Property>Status</Property>
              <ReadOnly>true</ReadOnly>
              <IsGrayBackground>true</IsGrayBackground>
            </gridcolumn>
            <gridcolumn name="RemotePath">
              <location />
              <width>100</width>
              <visible>false</visible>
              <caption>Remote Path</caption>
              <Property>RemotePath</Property>
              <ReadOnly>true</ReadOnly>
              <IsGrayBackground>true</IsGrayBackground>
            </gridcolumn>
            <gridcolumn name="Notes">
              <location />
              <width>60</width>
              <caption>Notes</caption>
              <Property>Notes</Property>
            </gridcolumn>
            <gridcolumn name="CreatedOn">
              <location />
              <width>60</width>
              <caption>Created On</caption>
              <Property>CreatedOn</Property>
              <ReadOnly>true</ReadOnly>
              <IsGrayBackground>true</IsGrayBackground>
            </gridcolumn>
            <gridcolumn name="CreatedBy">
              <location />
              <width>60</width>
              <caption>Created By</caption>
              <Property>CreatedBy</Property>
              <ReadOnly>true</ReadOnly>
              <IsGrayBackground>true</IsGrayBackground>
            </gridcolumn>
            <gridcolumn name="DeliveredOn">
              <location />
              <width>60</width>
              <caption>Delivered On</caption>
              <Property>DeliveredOn</Property>
              <ReadOnly>true</ReadOnly>
              <IsGrayBackground>true</IsGrayBackground>
            </gridcolumn>
            <gridcolumn name="Identity">
              <location />
              <width>40</width>
              <caption>Identity</caption>
              <Property>Identity</Property>
              <ReadOnly>true</ReadOnly>
              <IsUnique>true</IsUnique>
              <IsGrayBackground>true</IsGrayBackground>
              <IsMandatory>true</IsMandatory>
            </gridcolumn>
            <gridcolumn name="Totalnumsamples">
              <location />
              <width>60</width>
              <caption>TotalSamples</caption>
              <Property>Totalnumsamples</Property>
              <ReadOnly>true</ReadOnly>
              <IsGrayBackground>true</IsGrayBackground>
            </gridcolumn>
            <gridcolumn name="Numoutliersamples">
              <location />
              <width>60</width>
              <caption>OutlierSamples</caption>
              <Property>Numoutliersamples</Property>
              <ReadOnly>true</ReadOnly>
              <IsGrayBackground>true</IsGrayBackground>
            </gridcolumn>
            <gridcolumn name="Numcalsamples">
              <location />
              <width>60</width>
              <caption>CalSamples</caption>
              <Property>Numcalsamples</Property>
              <ReadOnly>true</ReadOnly>
              <IsGrayBackground>true</IsGrayBackground>
            </gridcolumn>
          </gridcolumns>
          <customGridbuttons />
          <gridbuttons>None</gridbuttons>
          <userinterface />
          <showindicator>true</showindicator>
          <fixedcolumns>0</fixedcolumns>
          <autosizecolumns>true</autosizecolumns>
          <showfocusedrow>false</showfocusedrow>
          <borderwidth>0</borderwidth>
          <MultiSelect>false</MultiSelect>
          <AllowFill>false</AllowFill>
          <allowsort>false</allowsort>
          <detailgrids />
          <showtabs>false</showtabs>
        </masterdetailgridcontrol>
        <splitter name="Splitter1">
          <location>
            <x>9</x>
            <y>137</y>
          </location>
          <height>4</height>
          <width>1190</width>
          <tabindex>1</tabindex>
          <dock>Top</dock>
          <anchor>None</anchor>
          <position>128</position>
        </splitter>
        <panel name="Panel1">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>128</height>
          <width>1190</width>
          <dock>Top</dock>
          <caption>Panel1</caption>
          <controls>
            <ButtonEditDefinition name="btnOpenFolder">
              <location>
                <x>1015</x>
                <y>72</y>
              </location>
              <height>23</height>
              <width>100</width>
              <tabindex>8</tabindex>
              <visible>false</visible>
              <caption>Open Folder</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <label name="Label2">
              <location>
                <x>677</x>
                <y>87</y>
              </location>
              <height>39</height>
              <width>477</width>
              <tabindex>7</tabindex>
              <visible>false</visible>
              <forecolor>Red</forecolor>
              <font>
                <size>8</size>
                <style>Bold</style>
              </font>
            </label>
            <CheckEdit name="CheckGramsIQ2">
              <location>
                <x>1015</x>
                <y>19</y>
              </location>
              <height>21</height>
              <width>100</width>
              <tabindex>6</tabindex>
              <enabled>false</enabled>
              <visible>false</visible>
              <caption>GramsIQ2</caption>
              <defaultvalue xsi:type="xsd:boolean">true</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <label name="Label1">
              <location>
                <x>86</x>
                <y>87</y>
              </location>
              <height>39</height>
              <width>525</width>
              <tabindex>4</tabindex>
              <caption>Select model(s) , click Deliver Model to update model ,  Cancel to remove remote model .      Click in notes field to expand display</caption>
              <forecolor>Red</forecolor>
              <font>
                <size>8</size>
                <style>Bold</style>
              </font>
            </label>
            <ButtonEditDefinition name="btnExit">
              <location>
                <x>752</x>
                <y>21</y>
              </location>
              <height>23</height>
              <width>75</width>
              <tabindex>3</tabindex>
              <caption>Exit</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <ButtonEditDefinition name="btnCancel">
              <location>
                <x>248</x>
                <y>21</y>
              </location>
              <height>23</height>
              <width>98</width>
              <tabindex>2</tabindex>
              <caption>Cancel Model</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <ButtonEditDefinition name="btnDeliver">
              <location>
                <x>86</x>
                <y>21</y>
              </location>
              <height>23</height>
              <width>99</width>
              <tabindex>1</tabindex>
              <caption>Deliver Model</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <PromptPhraseBrowseDefinition name="PromptPhraseBrowseModelStat">
              <location>
                <x>1015</x>
                <y>46</y>
              </location>
              <height>20</height>
              <width>150</width>
              <enabled>false</enabled>
              <visible>false</visible>
              <caption>Status</caption>
              <property />
              <propertylength>10</propertylength>
              <captionwidth>60</captionwidth>
              <Browse>BrowsePhraseModelStatus</Browse>
              <multiselect>false</multiselect>
              <forcevalid>true</forcevalid>
              <usedescription>true</usedescription>
            </PromptPhraseBrowseDefinition>
          </controls>
        </panel>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>