<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DuplicateCalModel">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DuplicateCalModel" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="SAMPLE_POINT" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="Duplicate Cal Model" />
        <FIELD name="TITLE" value="Duplicate Cal Model" />
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
      <height>553</height>
      <width>957</width>
      <caption>General</caption>
      <components>
        <dataqueryentitycollection name="DataEntityGramsJoin">
          <entity>GRAMS_JOIN</entity>
          <query />
        </dataqueryentitycollection>
      </components>
      <controls>
        <panel name="Panel4">
          <location>
            <x>430</x>
            <y>143</y>
          </location>
          <height>401</height>
          <width>515</width>
          <tabindex>4</tabindex>
          <dock>Left</dock>
          <caption>Panel4</caption>
          <controls>
            <masterdetailgridcontrol name="MDGridCalModel">
              <location />
              <height>401</height>
              <width>515</width>
              <tabindex>1</tabindex>
              <dock>Fill</dock>
              <caption>Cal Model</caption>
              <datasource>DataEntityGramsJoin</datasource>
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
                <gridcolumn name="Description">
                  <location />
                  <width>120</width>
                  <caption>Description</caption>
                  <Property>Description</Property>
                </gridcolumn>
                <gridcolumn name="Analysis">
                  <location />
                  <width>100</width>
                  <caption>Analysis</caption>
                  <Property>Analysis</Property>
                  <IsUnique>true</IsUnique>
                  <IsMandatory>true</IsMandatory>
                </gridcolumn>
                <gridcolumn name="ComponentName">
                  <location />
                  <width>80</width>
                  <caption>Component</caption>
                  <Property>ComponentName</Property>
                </gridcolumn>
                <gridcolumn name="Updatedate">
                  <location />
                  <width>100</width>
                  <caption>Update</caption>
                  <Property>Updatedate</Property>
                  <UnboundDataType>DateTime</UnboundDataType>
                </gridcolumn>
                <gridcolumn name="Secv">
                  <location />
                  <width>60</width>
                  <caption>SecV</caption>
                  <Property>Secv</Property>
                </gridcolumn>
                <gridcolumn name="R2">
                  <location />
                  <width>60</width>
                  <caption>R2</caption>
                  <Property>R2</Property>
                </gridcolumn>
                <gridcolumn name="Factors">
                  <location />
                  <width>100</width>
                  <visible>false</visible>
                  <caption>Factors</caption>
                  <Property>Factors</Property>
                  <UnboundDataType>Integer</UnboundDataType>
                </gridcolumn>
                <gridcolumn name="Rangehigh">
                  <location />
                  <width>100</width>
                  <visible>false</visible>
                  <caption>Rangehigh</caption>
                  <Property>Rangehigh</Property>
                </gridcolumn>
                <gridcolumn name="Rangelow">
                  <location />
                  <width>100</width>
                  <caption>Rangelow</caption>
                  <Property>Rangelow</Property>
                </gridcolumn>
              </gridcolumns>
              <customGridbuttons />
              <gridbuttons>Add Insert Delete</gridbuttons>
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
          </controls>
        </panel>
        <panel name="Panel3">
          <location>
            <x>218</x>
            <y>143</y>
          </location>
          <height>401</height>
          <width>212</width>
          <tabindex>3</tabindex>
          <dock>Left</dock>
          <caption>Panel3</caption>
          <controls>
            <unboundgridcontrol name="GridDestSamplePoint">
              <location />
              <height>401</height>
              <width>212</width>
              <dock>Fill</dock>
              <caption>Destination Sampe Point - Select 1 or more</caption>
              <showbuttons>true</showbuttons>
              <autosizecolumns>true</autosizecolumns>
              <MultiSelect>false</MultiSelect>
              <showiconcolumn>false</showiconcolumn>
              <showindicator>true</showindicator>
              <showhorzlines>true</showhorzlines>
              <showvertlines>true</showvertlines>
              <allowsort>false</allowsort>
              <fixedcolumns>0</fixedcolumns>
              <gridcolumns>
                <GridColumnDefinition name="Select">
                  <location />
                  <width>40</width>
                  <caption>Select</caption>
                  <readonly>false</readonly>
                  <datatype>Boolean</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="SamplePoint">
                  <location />
                  <width>120</width>
                  <caption>Sample Point</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="Identity">
                  <location />
                  <width>100</width>
                  <visible>false</visible>
                  <caption>Identity</caption>
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
        </panel>
        <panel name="Panel2">
          <location>
            <x>9</x>
            <y>143</y>
          </location>
          <height>401</height>
          <width>209</width>
          <tabindex>2</tabindex>
          <dock>Left</dock>
          <caption>Panel2</caption>
          <controls>
            <unboundgridcontrol name="GridSourceSamplePoint">
              <location />
              <height>401</height>
              <width>209</width>
              <dock>Fill</dock>
              <caption>Source Sample Point - Select one</caption>
              <showbuttons>true</showbuttons>
              <autosizecolumns>true</autosizecolumns>
              <MultiSelect>false</MultiSelect>
              <showiconcolumn>false</showiconcolumn>
              <showindicator>true</showindicator>
              <showhorzlines>true</showhorzlines>
              <showvertlines>true</showvertlines>
              <allowsort>false</allowsort>
              <fixedcolumns>0</fixedcolumns>
              <gridcolumns>
                <GridColumnDefinition name="Select">
                  <location />
                  <width>40</width>
                  <caption>Select</caption>
                  <readonly>false</readonly>
                  <datatype>Boolean</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="SamplePoint">
                  <location />
                  <width>120</width>
                  <caption>Sample Point</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="Identity">
                  <location />
                  <width>100</width>
                  <visible>false</visible>
                  <caption>Identity</caption>
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
        </panel>
        <splitter name="Splitter1">
          <location>
            <x>9</x>
            <y>139</y>
          </location>
          <height>4</height>
          <width>939</width>
          <tabindex>1</tabindex>
          <dock>Top</dock>
          <anchor>None</anchor>
          <position>130</position>
        </splitter>
        <panel name="Panel1">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>130</height>
          <width>939</width>
          <dock>Top</dock>
          <caption>Panel1</caption>
          <controls>
            <ButtonEditDefinition name="ButtonProgressBar">
              <location>
                <x>356</x>
                <y>103</y>
              </location>
              <height>23</height>
              <width>128</width>
              <tabindex>10</tabindex>
              <caption>Reset Progress Bar</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <ProgressBarDefinition name="ProgressBarOrder">
              <location>
                <x>371</x>
                <y>77</y>
              </location>
              <height>18</height>
              <width>100</width>
              <tabindex>9</tabindex>
              <caption>ProgressBar1</caption>
              <style>Broken</style>
              <minimum>0</minimum>
              <maximum>100</maximum>
              <step>1</step>
              <orientation>Horizontal</orientation>
              <showpercent>true</showpercent>
              <shownumber>true</shownumber>
            </ProgressBarDefinition>
            <ProgressBarDefinition name="ProgressBarLoadAnalyses">
              <location>
                <x>31</x>
                <y>103</y>
              </location>
              <height>18</height>
              <width>100</width>
              <tabindex>8</tabindex>
              <visible>false</visible>
              <caption>ProgressBar1</caption>
              <style>Broken</style>
              <minimum>0</minimum>
              <maximum>100</maximum>
              <step>1</step>
              <orientation>Horizontal</orientation>
              <showpercent>true</showpercent>
              <shownumber>true</shownumber>
            </ProgressBarDefinition>
            <TextEdit name="TextDir">
              <location>
                <x>31</x>
                <y>4</y>
              </location>
              <height>20</height>
              <width>178</width>
              <tabindex>7</tabindex>
              <visible>false</visible>
              <caption>Cfl Folder</caption>
              <captionwidth>60</captionwidth>
              <defaultvalue xsi:type="xsd:string" />
            </TextEdit>
            <TextEdit name="TextCurrentComp">
              <location>
                <x>572</x>
                <y>50</y>
              </location>
              <height>46</height>
              <width>294</width>
              <tabindex>6</tabindex>
              <visible>false</visible>
              <caption>Current Comp Path</caption>
              <defaultvalue xsi:type="xsd:string" />
              <multiline>true</multiline>
            </TextEdit>
            <ButtonEditDefinition name="ButtonExit">
              <location>
                <x>702</x>
              </location>
              <height>23</height>
              <width>75</width>
              <tabindex>5</tabindex>
              <caption>Exit</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <TextEdit name="TextFile">
              <location>
                <x>236</x>
                <y>4</y>
              </location>
              <height>20</height>
              <width>353</width>
              <tabindex>4</tabindex>
              <caption>Source Sample Point</caption>
              <captionwidth>120</captionwidth>
              <defaultvalue xsi:type="xsd:string" />
            </TextEdit>
            <ButtonEditDefinition name="ButtonDuplicateModel">
              <location>
                <x>356</x>
                <y>48</y>
              </location>
              <height>23</height>
              <width>128</width>
              <tabindex>3</tabindex>
              <caption>Duplicate Model</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <CheckEdit name="CheckUpdateSQC">
              <location>
                <x>31</x>
                <y>75</y>
              </location>
              <height>21</height>
              <width>100</width>
              <tabindex>2</tabindex>
              <caption>Update SQC</caption>
              <defaultvalue xsi:type="xsd:boolean">true</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <CheckEdit name="CheckCreateSQC">
              <location>
                <x>31</x>
                <y>48</y>
              </location>
              <height>21</height>
              <width>100</width>
              <tabindex>1</tabindex>
              <caption>Create SQC</caption>
              <defaultvalue xsi:type="xsd:boolean">true</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <CheckEdit name="CheckCopyOnline">
              <location>
                <x>31</x>
                <y>20</y>
              </location>
              <height>21</height>
              <width>100</width>
              <caption>Copy to Online</caption>
              <defaultvalue xsi:type="xsd:boolean">true</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
          </controls>
        </panel>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>