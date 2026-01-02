<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="InterfaceCflFile">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="InterfaceCflFile" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="SAMPLE_POINT" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="Interface Cfl File" />
        <FIELD name="TITLE" value="Interface Cfl File" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="" />
        <FIELD name="FILE_EXTENSION" value="" />
        <FIELD name="FORM_XML" value="" />
        <FIELD name="CATEGORY" value="GENERAL" />
        <FIELD name="DEFAULT_ICON" value="INT_FORMS" />
        <FIELD name="WINDOW_STYLE" value="EXPLORER" />
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
      <height>601</height>
      <width>1154</width>
      <caption>General</caption>
      <components>
        <dataqueryentitycollection name="DataEntityVersioned_Analysis">
          <entity>VERSIONED_ANALYSIS</entity>
          <query />
        </dataqueryentitycollection>
        <dataqueryentitycollection name="DataEntitySampRefView">
          <entity>SAMP_JOB_TEST_RESULT</entity>
          <query />
        </dataqueryentitycollection>
        <entityBrowseDefinition name="EntityBrowseSamplePoint">
          <entity>SAMPLE_POINT</entity>
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <entityBrowseDefinition name="EntityBrowseDmCaptureSource">
          <entity>DM_CAPTURE_SOURCE</entity>
          <returnProperty>DmCaptureSourceName</returnProperty>
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
      </components>
      <controls>
        <panel name="Panel3">
          <location>
            <x>429</x>
            <y>242</y>
          </location>
          <height>350</height>
          <width>645</width>
          <tabindex>31</tabindex>
          <dock>Left</dock>
          <caption>Panel3</caption>
          <controls>
            <masterdetailgridcontrol name="GridAnalysis">
              <location />
              <height>350</height>
              <width>645</width>
              <tabindex>33</tabindex>
              <dock>Fill</dock>
              <caption>Analysis - Components</caption>
              <datasource>DataEntityVersioned_Analysis</datasource>
              <allowcolumnreorder>true</allowcolumnreorder>
              <readonly>false</readonly>
              <showiconcolumn>false</showiconcolumn>
              <gridcolumns>
                <gridcolumn name="SelectAnalysis">
                  <location />
                  <width>10</width>
                  <caption>Select</caption>
                  <UnboundDataType>Boolean</UnboundDataType>
                </gridcolumn>
                <gridcolumn name="Identity">
                  <location />
                  <width>60</width>
                  <visible>false</visible>
                  <caption>Identity</caption>
                  <Property>Identity</Property>
                  <IsUnique>true</IsUnique>
                  <IsMandatory>true</IsMandatory>
                </gridcolumn>
                <gridcolumn name="VersionedAnalysisName">
                  <location />
                  <width>60</width>
                  <caption>Versioned Analysis Name</caption>
                  <Property>VersionedAnalysisName</Property>
                </gridcolumn>
                <gridcolumn name="Description">
                  <location />
                  <width>100</width>
                  <caption>Description</caption>
                  <Property>Description</Property>
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
              <AllowFill>true</AllowFill>
              <allowsort>false</allowsort>
              <detailgrids>
                <masterdetailgridcontrol name="DetailComponents">
                  <location />
                  <caption>Components</caption>
                  <property>Components</property>
                  <allowcolumnreorder>true</allowcolumnreorder>
                  <readonly>false</readonly>
                  <showiconcolumn>false</showiconcolumn>
                  <gridcolumns>
                    <gridcolumn name="SelectComponent">
                      <location />
                      <width>10</width>
                      <UnboundDataType>Boolean</UnboundDataType>
                    </gridcolumn>
                    <gridcolumn name="VersionedComponentName">
                      <location />
                      <width>80</width>
                      <caption>Component Name</caption>
                      <Property>VersionedComponentName</Property>
                      <IsUnique>true</IsUnique>
                      <IsMandatory>true</IsMandatory>
                    </gridcolumn>
                    <gridcolumn name="Secv">
                      <location />
                      <width>20</width>
                      <caption>SecV</caption>
                      <ReadOnly>true</ReadOnly>
                      <UnboundDataType>Real</UnboundDataType>
                    </gridcolumn>
                    <gridcolumn name="Sqcchart">
                      <location />
                      <width>40</width>
                      <visible>false</visible>
                      <caption>Sqc Chart</caption>
                      <ReadOnly>true</ReadOnly>
                    </gridcolumn>
                    <gridcolumn name="Factors">
                      <location />
                      <width>20</width>
                      <caption>Factors</caption>
                      <UnboundDataType>Integer</UnboundDataType>
                    </gridcolumn>
                    <gridcolumn name="Rsquared">
                      <location />
                      <width>20</width>
                    </gridcolumn>
                    <gridcolumn name="UpdateDate">
                      <location />
                      <width>40</width>
                      <caption>Update Date</caption>
                    </gridcolumn>
                    <gridcolumn name="OrderNumber">
                      <location />
                      <width>10</width>
                      <caption>Order Number</caption>
                      <Property>OrderNumber</Property>
                    </gridcolumn>
                    <gridcolumn name="Property">
                      <location />
                      <width>80</width>
                      <caption>Property</caption>
                      <Property>Property</Property>
                    </gridcolumn>
                    <gridcolumn name="UseGrams">
                      <location />
                      <width>20</width>
                      <caption>Use Grams</caption>
                      <Property>UseGrams</Property>
                    </gridcolumn>
                  </gridcolumns>
                  <customGridbuttons />
                  <gridbuttons>None</gridbuttons>
                  <showindicator>true</showindicator>
                  <fixedcolumns>0</fixedcolumns>
                  <autosizecolumns>true</autosizecolumns>
                  <showfocusedrow>false</showfocusedrow>
                  <borderwidth>0</borderwidth>
                  <MultiSelect>false</MultiSelect>
                  <AllowFill>true</AllowFill>
                  <allowsort>false</allowsort>
                  <detailgrids />
                  <showtabs>false</showtabs>
                </masterdetailgridcontrol>
              </detailgrids>
              <showtabs>false</showtabs>
            </masterdetailgridcontrol>
          </controls>
        </panel>
        <panel name="Panel4">
          <location>
            <x>142</x>
            <y>242</y>
          </location>
          <height>350</height>
          <width>287</width>
          <tabindex>29</tabindex>
          <dock>Left</dock>
          <caption>Panel4</caption>
          <controls>
            <unboundgridcontrol name="GridSample">
              <location />
              <height>350</height>
              <width>287</width>
              <tabindex>1</tabindex>
              <dock>Fill</dock>
              <caption>Grid Sample</caption>
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
                <GridColumnDefinition name="SelectSample">
                  <location />
                  <width>10</width>
                  <caption>Select Sample</caption>
                  <readonly>false</readonly>
                  <datatype>Boolean</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="Sample">
                  <location />
                  <width>40</width>
                  <caption>Sample</caption>
                  <readonly>false</readonly>
                  <datatype>PackedDecimal</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="Description">
                  <location />
                  <width>20</width>
                  <visible>false</visible>
                  <caption>Description</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="Sampled_Date">
                  <location />
                  <width>40</width>
                  <caption>Sampled Date</caption>
                  <readonly>false</readonly>
                  <datatype>DateTime</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="Raman">
                  <location />
                  <width>10</width>
                  <visible>false</visible>
                  <caption>Raman</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="FileName">
                  <location />
                  <width>10</width>
                  <visible>false</visible>
                  <caption>FileName</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="Analysis">
                  <location />
                  <width>30</width>
                  <caption>Analysis</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="Sample_Date_Authorised">
                  <location />
                  <width>100</width>
                  <visible>false</visible>
                  <caption>Authorised</caption>
                  <readonly>false</readonly>
                  <datatype>DateTime</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="Sample_Date_Completed">
                  <location />
                  <width>100</width>
                  <visible>false</visible>
                  <caption>Completed</caption>
                  <readonly>false</readonly>
                  <datatype>DateTime</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
              </gridcolumns>
              <readonly>false</readonly>
              <supportedoperations>Fill</supportedoperations>
              <defaultview>Horizontal</defaultview>
            </unboundgridcontrol>
          </controls>
        </panel>
        <panel name="Panel2">
          <location>
            <x>9</x>
            <y>242</y>
          </location>
          <height>350</height>
          <width>133</width>
          <tabindex>26</tabindex>
          <dock>Left</dock>
          <caption>Panel2</caption>
          <controls>
            <unboundgridcontrol name="GridRaman">
              <location>
                <y>196</y>
              </location>
              <height>190</height>
              <width>131</width>
              <tabindex>2</tabindex>
              <caption>Raman</caption>
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
                <GridColumnDefinition name="SelectRaman">
                  <location />
                  <width>20</width>
                  <caption>Select</caption>
                  <readonly>false</readonly>
                  <datatype>Boolean</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="Raman">
                  <location />
                  <width>60</width>
                  <caption>Raman</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
              </gridcolumns>
              <readonly>false</readonly>
              <supportedoperations>Add Delete</supportedoperations>
              <defaultview>Horizontal</defaultview>
            </unboundgridcontrol>
            <unboundgridcontrol name="GridSamplePoint">
              <location />
              <height>350</height>
              <width>133</width>
              <tabindex>1</tabindex>
              <dock>Fill</dock>
              <caption>Sample Point</caption>
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
                <GridColumnDefinition name="SelectSamplePoint">
                  <location />
                  <width>10</width>
                  <caption>Select S Point</caption>
                  <readonly>false</readonly>
                  <datatype>Boolean</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="Primary">
                  <location />
                  <width>10</width>
                  <caption>Destination</caption>
                  <readonly>false</readonly>
                  <datatype>Boolean</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="SamplePoint">
                  <location />
                  <width>80</width>
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
                <GridColumnDefinition name="IsVirtual">
                  <location />
                  <width>100</width>
                  <visible>false</visible>
                  <caption>Virtual</caption>
                  <readonly>false</readonly>
                  <datatype>Boolean</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
              </gridcolumns>
              <readonly>false</readonly>
              <supportedoperations>Fill</supportedoperations>
              <defaultview>Horizontal</defaultview>
            </unboundgridcontrol>
          </controls>
        </panel>
        <splitter name="Splitter1">
          <location>
            <x>9</x>
            <y>238</y>
          </location>
          <height>4</height>
          <width>1136</width>
          <tabindex>25</tabindex>
          <dock>Top</dock>
          <anchor>None</anchor>
          <position>229</position>
        </splitter>
        <panel name="Panel1">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>229</height>
          <width>1136</width>
          <tabindex>24</tabindex>
          <dock>Top</dock>
          <caption>Panel1</caption>
          <controls>
            <TextEdit name="TextRemoteModel">
              <location>
                <x>846</x>
                <y>105</y>
              </location>
              <width>212</width>
              <tabindex>63</tabindex>
              <visible>false</visible>
              <tooltip>Add Remote model notes before 4-Archive Models , limit 234 char</tooltip>
              <caption>Remote Model Note</caption>
              <captionwidth>40</captionwidth>
              <defaultvalue xsi:type="xsd:string" />
              <multiline>true</multiline>
              <maxlines>1</maxlines>
              <maxlength>234</maxlength>
            </TextEdit>
            <ButtonEditDefinition name="ButtonOpenFolder">
              <location>
                <x>558</x>
                <y>117</y>
              </location>
              <height>23</height>
              <width>102</width>
              <tabindex>62</tabindex>
              <tooltip>Optional - Open scratch folder - to view contents , </tooltip>
              <caption>Open Folder</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <ButtonEditDefinition name="btnSaveGramsValues">
              <location>
                <x>906</x>
                <y>200</y>
              </location>
              <height>23</height>
              <width>100</width>
              <tabindex>55</tabindex>
              <enabled>false</enabled>
              <visible>false</visible>
              <caption>Save Grams Values</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <CheckEdit name="CheckGramsIQ2">
              <location>
                <x>1023</x>
                <y>204</y>
              </location>
              <height>19</height>
              <width>82</width>
              <tabindex>49</tabindex>
              <enabled>false</enabled>
              <visible>false</visible>
              <caption>GramsIQ2</caption>
              <defaultvalue xsi:type="xsd:boolean">true</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <groupbox name="GroupBox1">
              <location>
                <x>540</x>
                <y>34</y>
              </location>
              <height>62</height>
              <width>176</width>
              <tabindex>61</tabindex>
              <caption>GramsIQ 9.3.0.5</caption>
              <padding>
                <All>3</All>
                <Bottom>3</Bottom>
                <Left>3</Left>
                <Right>3</Right>
                <Top>3</Top>
              </padding>
              <controls>
                <RealEdit name="RealEditYrangeMin">
                  <location>
                    <x>4</x>
                    <y>19</y>
                  </location>
                  <height>20</height>
                  <width>166</width>
                  <tabindex>53</tabindex>
                  <tooltip>(High Count minus Lowest Count) - Min Acceptable Spectra Range</tooltip>
                  <caption>Min  Range</caption>
                  <property>Yrangemin</property>
                  <captionwidth>90</captionwidth>
                </RealEdit>
                <RealEdit name="RealEditMinYMax">
                  <location>
                    <x>6</x>
                    <y>36</y>
                  </location>
                  <height>20</height>
                  <width>164</width>
                  <tabindex>54</tabindex>
                  <tooltip>(Lowest Count) - Max Distance from Zero Baseline</tooltip>
                  <caption>Max from Baseline</caption>
                  <property>Minymax</property>
                  <captionwidth>90</captionwidth>
                </RealEdit>
              </controls>
            </groupbox>
            <TextEdit name="TextArchiveTime">
              <location>
                <x>716</x>
                <y>165</y>
              </location>
              <height>20</height>
              <width>124</width>
              <tabindex>60</tabindex>
              <caption>Archive Time</caption>
              <captionwidth>80</captionwidth>
              <defaultvalue xsi:type="xsd:string" />
              <readonly>true</readonly>
            </TextEdit>
            <TextEdit name="TextOpenTime">
              <location>
                <x>558</x>
                <y>165</y>
              </location>
              <height>20</height>
              <width>100</width>
              <tabindex>59</tabindex>
              <caption>Open Time</caption>
              <captionwidth>60</captionwidth>
              <defaultvalue xsi:type="xsd:string" />
              <readonly>true</readonly>
            </TextEdit>
            <ProgressBarDefinition name="ProgressBarArchiveModels">
              <location>
                <x>753</x>
                <y>124</y>
              </location>
              <height>23</height>
              <width>63</width>
              <tabindex>58</tabindex>
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
            <ProgressBarDefinition name="ProgressBarOpenFolder">
              <location>
                <x>581</x>
                <y>142</y>
              </location>
              <height>21</height>
              <width>68</width>
              <tabindex>56</tabindex>
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
            <TextEdit name="TextEdit1">
              <location>
                <x>22</x>
                <y>155</y>
              </location>
              <height>20</height>
              <width>99</width>
              <tabindex>52</tabindex>
              <visible>false</visible>
              <caption>IQ2 Path</caption>
              <captionwidth>60</captionwidth>
              <defaultvalue xsi:type="xsd:string" />
            </TextEdit>
            <TextEdit name="TextSPCTime">
              <location>
                <x>390</x>
                <y>143</y>
              </location>
              <height>20</height>
              <width>118</width>
              <tabindex>48</tabindex>
              <caption>Generate Time</caption>
              <captionwidth>80</captionwidth>
              <defaultvalue xsi:type="xsd:string" />
              <readonly>true</readonly>
            </TextEdit>
            <TextEdit name="TextSPCCount">
              <location>
                <x>390</x>
                <y>165</y>
              </location>
              <height>20</height>
              <width>118</width>
              <tabindex>47</tabindex>
              <enabled>false</enabled>
              <caption>SPC count</caption>
              <captionwidth>80</captionwidth>
              <defaultvalue xsi:type="xsd:string" />
              <readonly>true</readonly>
            </TextEdit>
            <TextEdit name="TextAnalysisTime">
              <location>
                <x>266</x>
                <y>144</y>
              </location>
              <height>20</height>
              <width>113</width>
              <tabindex>46</tabindex>
              <caption>Analysis Time</caption>
              <captionwidth>80</captionwidth>
              <defaultvalue xsi:type="xsd:string" />
              <readonly>true</readonly>
            </TextEdit>
            <TextEdit name="TextGSamples">
              <location>
                <x>263</x>
                <y>167</y>
              </location>
              <height>20</height>
              <width>121</width>
              <tabindex>45</tabindex>
              <enabled>false</enabled>
              <caption>Grid Samples</caption>
              <captionwidth>80</captionwidth>
              <defaultvalue xsi:type="xsd:string" />
            </TextEdit>
            <CheckEdit name="CheckDebug">
              <location>
                <x>1036</x>
                <y>50</y>
              </location>
              <height>21</height>
              <width>100</width>
              <tabindex>44</tabindex>
              <visible>false</visible>
              <caption>Debug</caption>
              <defaultvalue xsi:type="xsd:boolean">false</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <CheckEdit name="CheckLastCal">
              <location>
                <x>406</x>
                <y>73</y>
              </location>
              <height>21</height>
              <width>100</width>
              <tabindex>43</tabindex>
              <caption>Last Cal Date</caption>
              <defaultvalue xsi:type="xsd:boolean">false</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <CheckEdit name="CheckUpdateSQC">
              <location>
                <x>734</x>
                <y>47</y>
              </location>
              <height>21</height>
              <width>82</width>
              <tabindex>42</tabindex>
              <caption>Update SQC</caption>
              <defaultvalue xsi:type="xsd:boolean">true</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <CheckEdit name="CheckSQCCreate">
              <location>
                <x>734</x>
                <y>29</y>
              </location>
              <height>21</height>
              <width>82</width>
              <tabindex>41</tabindex>
              <caption>Create SQC</caption>
              <defaultvalue xsi:type="xsd:boolean">true</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <CheckEdit name="CheckCopyOnline">
              <location>
                <x>734</x>
                <y>70</y>
              </location>
              <height>21</height>
              <width>100</width>
              <tabindex>40</tabindex>
              <tooltip>Check on to Copy Cal file to online folder</tooltip>
              <caption>Copy to Online</caption>
              <defaultvalue xsi:type="xsd:boolean">false</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <TextEdit name="TextCurrentComp">
              <location>
                <x>835</x>
                <y>8</y>
              </location>
              <height>42</height>
              <width>243</width>
              <tabindex>39</tabindex>
              <caption>Current Comp Path</caption>
              <captionwidth>40</captionwidth>
              <defaultvalue xsi:type="xsd:string" />
              <multiline>true</multiline>
            </TextEdit>
            <ButtonEditDefinition name="ButtonOpentdfx">
              <location>
                <x>558</x>
                <y>95</y>
              </location>
              <height>23</height>
              <width>102</width>
              <tabindex>38</tabindex>
              <tooltip>Open saved tdfx file with Shell version of Grams IQ</tooltip>
              <caption>3-Open Grams IQ</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <ButtonEditDefinition name="ButtonCopyGRAMS">
              <location>
                <x>734</x>
                <y>95</y>
              </location>
              <height>23</height>
              <width>106</width>
              <tabindex>37</tabindex>
              <enabled>false</enabled>
              <tooltip>Archive models, or if Remote user, will copy  models to remote model / staging area</tooltip>
              <caption>4-Archive Models</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <groupbox name="GroupBoxComp">
              <location>
                <x>22</x>
                <y>105</y>
              </location>
              <height>44</height>
              <width>164</width>
              <tabindex>36</tabindex>
              <enabled>false</enabled>
              <caption>Components - Output Files</caption>
              <padding>
                <All>3</All>
                <Bottom>3</Bottom>
                <Left>3</Left>
                <Right>3</Right>
                <Top>3</Top>
              </padding>
              <controls>
                <radiobutton name="rdoCompMulti">
                  <location>
                    <x>66</x>
                    <y>19</y>
                  </location>
                  <height>19</height>
                  <width>93</width>
                  <tabindex>1</tabindex>
                  <caption>Multi - Archive</caption>
                  <value />
                  <radiogroupindex>2</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="rdoCompSingle">
                  <location>
                    <x>6</x>
                    <y>19</y>
                  </location>
                  <height>19</height>
                  <width>54</width>
                  <caption>Single</caption>
                  <defaultvalue xsi:type="xsd:string" />
                  <value />
                  <radiogroupindex>2</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
              </controls>
            </groupbox>
            <CheckEdit name="CheckOneSpc">
              <location>
                <x>1033</x>
                <y>70</y>
              </location>
              <height>21</height>
              <width>117</width>
              <tabindex>35</tabindex>
              <enabled>false</enabled>
              <visible>false</visible>
              <caption>1 SPC to 1 Sample</caption>
              <defaultvalue xsi:type="xsd:boolean">true</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <CheckEdit name="CheckArchive">
              <location>
                <x>406</x>
                <y>29</y>
              </location>
              <height>21</height>
              <width>87</width>
              <tabindex>34</tabindex>
              <visible>false</visible>
              <caption>Archive Files</caption>
              <defaultvalue xsi:type="xsd:boolean">false</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <CheckEdit name="CheckStd">
              <location>
                <x>266</x>
                <y>29</y>
              </location>
              <height>21</height>
              <width>100</width>
              <tabindex>33</tabindex>
              <enabled>false</enabled>
              <visible>false</visible>
              <tooltip>Check on to pull Standard files</tooltip>
              <caption>Standard Files</caption>
              <defaultvalue xsi:type="xsd:boolean">false</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <CheckEdit name="CheckLab">
              <location>
                <x>266</x>
                <y>73</y>
              </location>
              <height>21</height>
              <width>100</width>
              <tabindex>32</tabindex>
              <tooltip>Include lab spc files</tooltip>
              <caption>Lab Files</caption>
              <defaultvalue xsi:type="xsd:boolean">false</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <CheckEdit name="CheckOnline">
              <location>
                <x>266</x>
                <y>49</y>
              </location>
              <height>21</height>
              <width>100</width>
              <tabindex>31</tabindex>
              <caption>Online Files</caption>
              <defaultvalue xsi:type="xsd:boolean">true</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <CheckEdit name="CheckDeleteFolder">
              <location>
                <x>406</x>
                <y>50</y>
              </location>
              <height>21</height>
              <width>139</width>
              <tabindex>30</tabindex>
              <tooltip>Clear scratch folder</tooltip>
              <caption>Delete Folder Contents</caption>
              <defaultvalue xsi:type="xsd:boolean">false</defaultvalue>
              <forecolor>Red</forecolor>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <TextEdit name="TextFile">
              <location>
                <x>306</x>
                <y>3</y>
              </location>
              <height>20</height>
              <width>275</width>
              <tabindex>28</tabindex>
              <caption>Sample Point</caption>
              <captionwidth>70</captionwidth>
              <defaultvalue xsi:type="xsd:string" />
            </TextEdit>
            <TextEdit name="TextDir">
              <location>
                <x>3</x>
                <y>3</y>
              </location>
              <height>20</height>
              <width>251</width>
              <tabindex>27</tabindex>
              <enabled>false</enabled>
              <caption>Cfl Folder</caption>
              <captionwidth>60</captionwidth>
              <defaultvalue xsi:type="xsd:string" />
            </TextEdit>
            <DateEditDefinition name="DateTo">
              <location>
                <x>13</x>
                <y>76</y>
              </location>
              <height>20</height>
              <width>217</width>
              <tabindex>25</tabindex>
              <caption>Date To</caption>
              <captionwidth>70</captionwidth>
            </DateEditDefinition>
            <DateEditDefinition name="DateFrom">
              <location>
                <x>13</x>
                <y>50</y>
              </location>
              <height>20</height>
              <width>217</width>
              <tabindex>24</tabindex>
              <caption>Date From</caption>
              <captionwidth>70</captionwidth>
            </DateEditDefinition>
            <ButtonEditDefinition name="ButtonRefresh">
              <location>
                <x>266</x>
                <y>95</y>
              </location>
              <height>23</height>
              <width>99</width>
              <tabindex>6</tabindex>
              <caption>1-Get Analyses</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <ButtonEditDefinition name="ButtonExit">
              <location>
                <x>637</x>
                <y>3</y>
              </location>
              <height>23</height>
              <width>67</width>
              <tabindex>9</tabindex>
              <caption>Exit</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <ProgressBarDefinition name="ProgressBarOrder">
              <location>
                <x>423</x>
                <y>119</y>
              </location>
              <height>24</height>
              <width>68</width>
              <tabindex>22</tabindex>
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
            <ProgressBarDefinition name="ProgressBarLoadAnalyses">
              <location>
                <x>284</x>
                <y>119</y>
              </location>
              <height>21</height>
              <width>68</width>
              <tabindex>20</tabindex>
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
            <ButtonEditDefinition name="ButtonGenerate">
              <location>
                <x>406</x>
                <y>95</y>
              </location>
              <height>23</height>
              <width>102</width>
              <tabindex>7</tabindex>
              <tooltip>Generate cfl file and copy spc files</tooltip>
              <caption>2-Generate</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
          </controls>
        </panel>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>