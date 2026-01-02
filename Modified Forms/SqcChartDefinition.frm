<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="SqcChartDefinition">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="SqcChartDefinition" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="SQCWIN_HEADER" />
        <FIELD name="TYPE" value="PROPERTY" />
        <FIELD name="DESCRIPTION" value="Define SQC Chart" />
        <FIELD name="TITLE" value="Chart" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="smp$textfiles" />
        <FIELD name="FILE_EXTENSION" value="sqc" />
        <FIELD name="FORM_XML" value="" />
        <FIELD name="CATEGORY" value="LABTABLE" />
        <FIELD name="DEFAULT_ICON" value="SQC_CHART" />
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
    <form name="Page_General">
      <height>600</height>
      <width>800</width>
      <caption>General</caption>
      <minimumsize>
        <height>600</height>
        <width>800</width>
      </minimumsize>
      <controls>
        <prompt name="NameEdit">
          <location>
            <x>12</x>
            <y>64</y>
          </location>
          <height>21</height>
          <width>776</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Name of the chart</tooltip>
          <caption>Name</caption>
          <property>SqcwinHeaderName</property>
          <propertylength>100</propertylength>
          <mandatory>true</mandatory>
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
        <prompt name="Identifier">
          <location>
            <x>120</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>668</width>
          <anchor>Top Left Right</anchor>
          <tooltip>Unique identifier for the chart definition.</tooltip>
          <property>Identifier</property>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <line name="Line">
          <location>
            <x>12</x>
            <y>46</y>
          </location>
          <height>12</height>
          <width>776</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="Description">
          <location>
            <x>12</x>
            <y>99</y>
          </location>
          <width>776</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>A description for the chart.</tooltip>
          <caption>Description</caption>
          <property>Description</property>
          <viewname />
        </prompt>
        <line name="Line1">
          <location>
            <x>12</x>
            <y>209</y>
          </location>
          <height>12</height>
          <width>776</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="GroupId">
          <location>
            <x>12</x>
            <y>234</y>
          </location>
          <height>21</height>
          <width>776</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Group with permission to access the chart.</tooltip>
          <caption>Group Name</caption>
          <property>GroupId</property>
          <viewname />
        </prompt>
        <prompt name="ModifiedOn">
          <location>
            <x>12</x>
            <y>261</y>
          </location>
          <height>21</height>
          <width>776</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The date the chart definition was last modified</tooltip>
          <caption>Modified On</caption>
          <property>ModifiedOn</property>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="ModifiedBy">
          <location>
            <x>12</x>
            <y>288</y>
          </location>
          <height>21</height>
          <width>776</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The identity of the operator who last modified the chart definition</tooltip>
          <caption>Modified By</caption>
          <property>ModifiedBy</property>
          <readonly>true</readonly>
          <viewname />
        </prompt>
      </controls>
    </form>
    <form name="Page_Criteria">
      <height>600</height>
      <width>800</width>
      <caption>Criteria</caption>
      <components>
        <entityBrowseDefinition name="AnalysisBrowse">
          <entity>VERSIONED_ANALYSIS</entity>
          <returnProperty>Identity</returnProperty>
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <entityBrowseDefinition name="ComponentBrowse">
          <query />
          <entity>VERSIONED_COMPONENT</entity>
          <property />
          <returnProperty>VersionedComponentName</returnProperty>
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <entityBrowseDefinition name="ProductBrowse">
          <entity>MLP_HEADER</entity>
          <returnProperty>Identity</returnProperty>
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <browsestringcollection name="BrStrCollectionGrpPhrases" />
        <dataqueryentitycollection name="DataEntityCollectionSqcPoints">
          <entity>SQCWIN_POINT</entity>
          <query />
        </dataqueryentitycollection>
        <browsestringcollection name="BrStrFileFormats" />
        <dataquery name="DataQueryDesignCriteria">
          <entity>CRITERIA_SAVED</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>TableName</property>
              <operand>Equals</operand>
              <value>SQCWIN_A_SAMP_TEST_RESULT</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
        <entityBrowseDefinition name="EntityBrowseCriteria">
          <query>DataQueryDesignCriteria</query>
          <entity>CRITERIA_SAVED</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <entityBrowseDefinition name="EntityBrowseLocation">
          <entity>LOCATION</entity>
          <returnProperty>Identity</returnProperty>
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <ServerValidatorDefinition name="ServerValidator4BasicCriteria">
          <ControlName>prEntBrowseAnalysis</ControlName>
        </ServerValidatorDefinition>
        <entityBrowseDefinition name="EntityBrowseResults">
          <entity>SQCWIN_POINT</entity>
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns>
            <EntityBrowseColumnDefinition name="EbcPointNumber">
              <Title>Index</Title>
              <Width>30</Width>
              <Column>PointNumberInt</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EbcPointDate">
              <Title>Sampled Date</Title>
              <Width>60</Width>
              <Column>PointDate</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EbcPointName">
              <Title>Group Name</Title>
              <Width>50</Width>
              <Column>PointName</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EbcPointValue">
              <Title>Value</Title>
              <Width>45</Width>
              <Column>PointValue</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EbcSampleId">
              <Title>Sample ID</Title>
              <Width>65</Width>
              <Column>SampleId</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EbcPointExcluded">
              <Title>Excluded</Title>
              <Width>40</Width>
              <Column>Bad</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EbcSubgroupExcluded">
              <Title>Subgroup Excluded</Title>
              <Width>65</Width>
              <Column>SubgroupExcluded</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EbcPointComments">
              <Title>Comment</Title>
              <Width>100</Width>
              <Column>Comments</Column>
            </EntityBrowseColumnDefinition>
          </ExplorerColumns>
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>No</ShowRemoved>
        </entityBrowseDefinition>
        <ServerValidatorDefinition name="ServerValidator4DecimalPlaces">
          <ControlName>SpinEditDecimalPlaces</ControlName>
        </ServerValidatorDefinition>
        <browsephrase name="ResultFieldBrowsePhrases">
          <phraseType>SQC_RFIELD</phraseType>
        </browsephrase>
      </components>
      <minimumsize>
        <height>600</height>
        <width>800</width>
      </minimumsize>
      <controls>
        <PromptPhraseBrowseDefinition name="ResultFieldPhraseBrowse">
          <location>
            <x>422</x>
            <y>38</y>
          </location>
          <height>20</height>
          <width>360</width>
          <tabindex>19</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Result Field</caption>
          <property>ResultField</property>
          <Browse>ResultFieldBrowsePhrases</Browse>
          <multiselect>false</multiselect>
          <forcevalid>true</forcevalid>
          <usedescription>true</usedescription>
        </PromptPhraseBrowseDefinition>
        <groupbox name="ExportGroup">
          <location>
            <x>11</x>
            <y>535</y>
          </location>
          <height>53</height>
          <width>777</width>
          <tabindex>18</tabindex>
          <anchor>Bottom Left Right</anchor>
          <caption> Export Results</caption>
          <padding>
            <All>3</All>
            <Bottom>3</Bottom>
            <Left>3</Left>
            <Right>3</Right>
            <Top>3</Top>
          </padding>
          <controls>
            <PromptStringBrowseDefinition name="PrStrBrFileFormats">
              <location>
                <x>5</x>
                <y>22</y>
              </location>
              <height>20</height>
              <width>356</width>
              <tooltip>File format for exported results.</tooltip>
              <caption>File Format</caption>
              <Browse>BrStrFileFormats</Browse>
              <multiselect>false</multiselect>
              <forcevalid>true</forcevalid>
            </PromptStringBrowseDefinition>
            <ButtonEditDefinition name="ButtonExportRawData">
              <location>
                <x>634</x>
                <y>22</y>
              </location>
              <height>23</height>
              <width>137</width>
              <tabindex>2</tabindex>
              <anchor>Top Right</anchor>
              <enabled>false</enabled>
              <tooltip>Export query results...</tooltip>
              <caption>Export Query Results</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <SpinEditDefinition name="SpinEditDecimalPlaces">
              <location>
                <x>384</x>
                <y>22</y>
              </location>
              <height>20</height>
              <width>192</width>
              <tabindex>1</tabindex>
              <tooltip>Number of decimal places for the exported test result values (Ranging from 2 to 15).</tooltip>
              <caption>Decimal Places</caption>
              <property>DecimalPlaces</property>
              <defaultvalue xsi:type="xsd:int">2</defaultvalue>
            </SpinEditDefinition>
          </controls>
        </groupbox>
        <prompt name="CheckEditCommittedDb">
          <location>
            <x>152</x>
            <y>38</y>
          </location>
          <height>21</height>
          <width>209</width>
          <tabindex>2</tabindex>
          <tooltip>Select results from committed database</tooltip>
          <caption>Committed Database</caption>
          <property>UseCommittedDb</property>
          <captionwidth>195</captionwidth>
          <viewname />
        </prompt>
        <prompt name="CheckEditActiveDb">
          <location>
            <x>152</x>
            <y>11</y>
          </location>
          <height>21</height>
          <width>209</width>
          <tabindex>1</tabindex>
          <tooltip>Select results from active database</tooltip>
          <caption>Active Database</caption>
          <property>UseActiveDb</property>
          <captionwidth>195</captionwidth>
          <viewname />
        </prompt>
        <DateEditDefinition comments="Select a starting sampled date." name="DateEditBasicQrySampledDate">
          <location>
            <x>46</x>
            <y>174</y>
          </location>
          <height>20</height>
          <width>360</width>
          <tabindex>12</tabindex>
          <tooltip>Select starting sampled date to be added in the basic criteria where clause</tooltip>
          <caption>From Sampled Date</caption>
          <property>FromSampledDate</property>
        </DateEditDefinition>
        <groupbox name="GroupBoxQueryResults">
          <location>
            <x>11</x>
            <y>272</y>
          </location>
          <height>261</height>
          <width>777</width>
          <tabindex>17</tabindex>
          <anchor>Top Bottom Left Right</anchor>
          <caption>Query Results</caption>
          <padding>
            <All>-1</All>
            <Bottom>3</Bottom>
            <Left>0</Left>
            <Right>3</Right>
            <Top>3</Top>
          </padding>
          <controls>
            <ButtonEditDefinition name="ButtonEditApplyFilter">
              <location>
                <x>634</x>
                <y>231</y>
              </location>
              <height>23</height>
              <width>137</width>
              <tabindex>6</tabindex>
              <anchor>Bottom Right</anchor>
              <tooltip>Apply data filter in results grid.</tooltip>
              <caption>Filter</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <CheckEdit comments="Enable filter data in grid to display a subset of query results." name="CheckEditEnableFilterData">
              <location>
                <x>6</x>
                <y>205</y>
              </location>
              <height>21</height>
              <width>194</width>
              <tabindex>1</tabindex>
              <anchor>Bottom Left</anchor>
              <tooltip>Enable filter data in grid to display a subset of query results.</tooltip>
              <caption>Enable data filter in grid to display:</caption>
              <property>FilterResultviewGrid</property>
              <defaultvalue xsi:type="xsd:boolean">true</defaultvalue>
              <CheckAlign>Left</CheckAlign>
            </CheckEdit>
            <DateEditDefinition comments="View results sampled from this date." name="DateEditFilterSampledDate">
              <location>
                <x>400</x>
                <y>231</y>
              </location>
              <height>20</height>
              <width>176</width>
              <tabindex>5</tabindex>
              <anchor>Bottom Left</anchor>
              <enabled>false</enabled>
              <tooltip>View results sampled from this date.</tooltip>
              <property>FilterResultviewStartdate</property>
              <mandatory>true</mandatory>
              <captionwidth>0</captionwidth>
              <edittime>false</edittime>
            </DateEditDefinition>
            <SpinEditDefinition comments="View last N test results in grid" name="SpinEditLastNDays">
              <location>
                <x>400</x>
                <y>204</y>
              </location>
              <height>20</height>
              <width>176</width>
              <tabindex>3</tabindex>
              <anchor>Bottom Left</anchor>
              <tooltip>View last N test results in grid</tooltip>
              <property>FilterResultviewDaycount</property>
              <mandatory>true</mandatory>
              <captionwidth>0</captionwidth>
              <defaultvalue xsi:type="xsd:int">100</defaultvalue>
              <maxValue>5000</maxValue>
              <increment>10</increment>
            </SpinEditDefinition>
            <radiobutton comments="View results sampled after this date." name="RadioButtonResultsFrmDate">
              <location>
                <x>217</x>
                <y>230</y>
              </location>
              <height>19</height>
              <width>190</width>
              <tabindex>4</tabindex>
              <anchor>Bottom Left</anchor>
              <tooltip>View results sampled after this date.</tooltip>
              <caption>Test results from sampled date</caption>
              <property>FilterResultviewBy</property>
              <value>1</value>
              <radiogroupindex>-1</radiogroupindex>
              <CheckAlign>Left</CheckAlign>
            </radiobutton>
            <explorergridcontrol name="ExplorerGridResults">
              <location>
                <x>6</x>
                <y>24</y>
              </location>
              <height>171</height>
              <width>765</width>
              <anchor>Top Bottom Left Right</anchor>
              <caption>Results</caption>
              <Browse>EntityBrowseResults</Browse>
              <showdefaultmenu>false</showdefaultmenu>
              <allowfindpanel>false</allowfindpanel>
              <allowdragoutside>false</allowdragoutside>
            </explorergridcontrol>
            <radiobutton comments="View last N test results in grid" name="RadioButtonLastNResults">
              <location>
                <x>217</x>
                <y>205</y>
              </location>
              <height>19</height>
              <width>190</width>
              <tabindex>2</tabindex>
              <anchor>Bottom Left</anchor>
              <tooltip>View last N test results in grid</tooltip>
              <caption>Last N number of test results</caption>
              <property>FilterResultviewBy</property>
              <value>0</value>
              <radiogroupindex>-1</radiogroupindex>
              <CheckAlign>Left</CheckAlign>
            </radiobutton>
          </controls>
        </groupbox>
        <prompt name="DataSelection">
          <location>
            <x>498</x>
            <y>11</y>
          </location>
          <height>21</height>
          <width>284</width>
          <tabindex>3</tabindex>
          <anchor>Top Right</anchor>
          <tooltip>Re-fetch data from database each time the chart is displayed.</tooltip>
          <caption>Always reselect test results when chart is displayed </caption>
          <property>DataSelection</property>
          <captionwidth>270</captionwidth>
          <viewname />
        </prompt>
        <PromptEntityBrowseDefinition comments="Select location" name="PromptEntityBrowseLocation">
          <location>
            <x>422</x>
            <y>121</y>
          </location>
          <height>20</height>
          <width>360</width>
          <tabindex>9</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Select a LOCATION entity to be added in the basic criteria where clause</tooltip>
          <caption>Location</caption>
          <property>LocationId</property>
          <propertylength>10</propertylength>
          <Browse>EntityBrowseLocation</Browse>
          <forcevalid>true</forcevalid>
        </PromptEntityBrowseDefinition>
        <PromptEntityBrowseDefinition name="SMPromptAdvancedCriteria">
          <location>
            <x>46</x>
            <y>246</y>
          </location>
          <height>20</height>
          <width>360</width>
          <tabindex>16</tabindex>
          <tooltip>Select a pre-defined criteria</tooltip>
          <caption>Criteria</caption>
          <property>AdvancedCriteria</property>
          <mandatory>true</mandatory>
          <Browse>EntityBrowseCriteria</Browse>
          <forcevalid>true</forcevalid>
        </PromptEntityBrowseDefinition>
        <prompt comments="Select a sample point" name="SMPromptSamplePoint">
          <location>
            <x>46</x>
            <y>147</y>
          </location>
          <height>21</height>
          <width>360</width>
          <tabindex>10</tabindex>
          <tooltip>Select a SAMPLE_POINT entity to be added in the basic criteria where clause</tooltip>
          <caption>Sample Point</caption>
          <property>SamplePoint</property>
          <propertylength>100</propertylength>
          <viewname />
        </prompt>
        <prompt comments="Select test schedule" name="SMPromptTestSchedule">
          <location>
            <x>422</x>
            <y>147</y>
          </location>
          <height>21</height>
          <width>360</width>
          <tabindex>11</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Select a TEST_SCHEDULE entity to be added in the basic criteria where clause</tooltip>
          <caption>Test Schedule</caption>
          <property>TestSchedule</property>
          <propertylength>100</propertylength>
          <viewname />
        </prompt>
        <line name="Line17">
          <location>
            <x>11</x>
            <y>202</y>
          </location>
          <height>13</height>
          <width>777</width>
          <tabindex>14</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <ButtonEditDefinition name="ButtonEditRunBasicCriteria">
          <location>
            <x>645</x>
            <y>173</y>
          </location>
          <height>23</height>
          <width>137</width>
          <tabindex>13</tabindex>
          <anchor>Top Right</anchor>
          <tooltip>Run basic criteria</tooltip>
          <caption>Run Basic Criteria</caption>
          <imageAlign>Left</imageAlign>
          <size>
            <Width>0</Width>
            <Height>0</Height>
          </size>
        </ButtonEditDefinition>
        <PromptEntityBrowseDefinition comments="Select a product" name="prEntBrowseProduct">
          <location>
            <x>46</x>
            <y>121</y>
          </location>
          <height>20</height>
          <width>360</width>
          <tabindex>8</tabindex>
          <tooltip>Select a PRODUCT_SPECIFICATION entity to be added in the basic criteria where clause</tooltip>
          <caption>Product</caption>
          <property>ProductName</property>
          <propertylength>10</propertylength>
          <Browse>ProductBrowse</Browse>
          <forcevalid>true</forcevalid>
        </PromptEntityBrowseDefinition>
        <PromptEntityBrowseDefinition comments="Select component name" name="prEntBrowseComponent">
          <location>
            <x>422</x>
            <y>95</y>
          </location>
          <height>20</height>
          <width>360</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Select a VERSIONED_COMPONENT entity to be added in the basic criteria where clause.</tooltip>
          <caption>Component</caption>
          <property>ComponentName</property>
          <propertylength>40</propertylength>
          <mandatory>true</mandatory>
          <Browse>ComponentBrowse</Browse>
          <forcevalid>true</forcevalid>
        </PromptEntityBrowseDefinition>
        <PromptEntityBrowseDefinition comments="Select analysis" name="prEntBrowseAnalysis">
          <location>
            <x>46</x>
            <y>95</y>
          </location>
          <height>20</height>
          <width>360</width>
          <tabindex>6</tabindex>
          <tooltip>Select a VERSIONED_ANALYSIS entity to be added in the basic criteria where clause.</tooltip>
          <caption>Analysis</caption>
          <property>AnalysisId</property>
          <propertylength>10</propertylength>
          <mandatory>true</mandatory>
          <Browse>AnalysisBrowse</Browse>
          <forcevalid>true</forcevalid>
        </PromptEntityBrowseDefinition>
        <radiobutton name="rbUseAdvancedCrit">
          <location>
            <x>17</x>
            <y>221</y>
          </location>
          <height>19</height>
          <width>431</width>
          <tabindex>15</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Use an advanced (pre-defined) criteria to generate test results.</tooltip>
          <caption>Use Advanced Criteria</caption>
          <property>UsebasicCriteria</property>
          <value>false</value>
          <radiogroupindex>0</radiogroupindex>
          <CheckAlign>Left</CheckAlign>
        </radiobutton>
        <radiobutton name="rbUseBasicCrit">
          <location>
            <x>17</x>
            <y>70</y>
          </location>
          <height>19</height>
          <width>356</width>
          <tabindex>5</tabindex>
          <tooltip>Use basic criteria to generate test results.</tooltip>
          <caption>Use Basic Criteria</caption>
          <property>UsebasicCriteria</property>
          <value>true</value>
          <radiogroupindex>0</radiogroupindex>
          <CheckAlign>Left</CheckAlign>
        </radiobutton>
        <label name="Label2">
          <location>
            <x>17</x>
            <y>12</y>
          </location>
          <height>20</height>
          <width>99</width>
          <caption>Database Type:</caption>
          <textalign>MiddleLeft</textalign>
        </label>
        <line name="Line2">
          <location>
            <x>11</x>
            <y>57</y>
          </location>
          <height>10</height>
          <width>777</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
      </controls>
    </form>
    <form name="Page_Configuration">
      <height>740</height>
      <width>800</width>
      <caption>Configuration</caption>
      <padding>
        <All>-1</All>
        <Bottom>9</Bottom>
        <Left>9</Left>
        <Right>9</Right>
        <Top>4</Top>
      </padding>
      <components>
        <ServerValidatorDefinition name="ValidatorAnyChartActive">
          <ControlName>CheckEditIndAndMovRangeActive</ControlName>
        </ServerValidatorDefinition>
        <browsestringcollection name="BrStrCollectionDefChart" />
        <dataqueryentity name="EntityProcCapChartType">
          <entity>SQCWIN_CHART_TYPE</entity>
          <query />
          <forceunique>false</forceunique>
          <multiresultitem>First</multiresultitem>
        </dataqueryentity>
        <dataqueryentity name="EntityCuSumChartType">
          <entity>SQCWIN_CHART_TYPE</entity>
          <query />
          <forceunique>false</forceunique>
          <multiresultitem>First</multiresultitem>
        </dataqueryentity>
        <dataqueryentity name="EntityMeanAndStdChartType">
          <entity>SQCWIN_CHART_TYPE</entity>
          <query />
          <forceunique>false</forceunique>
          <multiresultitem>First</multiresultitem>
        </dataqueryentity>
        <dataqueryentity name="EntityMeanAndRangeChartType">
          <entity>SQCWIN_CHART_TYPE</entity>
          <query />
          <forceunique>false</forceunique>
          <multiresultitem>First</multiresultitem>
        </dataqueryentity>
        <dataqueryentity name="EntityIndAndMovRangeChartType">
          <entity>SQCWIN_CHART_TYPE</entity>
          <query />
          <forceunique>false</forceunique>
          <multiresultitem>First</multiresultitem>
        </dataqueryentity>
        <dataqueryentity name="EntityEwmaChartType">
          <entity>SQCWIN_CHART_TYPE</entity>
          <query />
          <forceunique>false</forceunique>
          <multiresultitem>First</multiresultitem>
        </dataqueryentity>
        <ServerValidatorDefinition name="ValidatorChartTpeLimits">
          <ControlName>CheckEditMeanAndStdActive</ControlName>
        </ServerValidatorDefinition>
        <ServerValidatorDefinition name="ValidatorEwmaWeight">
          <ControlName>CheckEditEwmaActive</ControlName>
        </ServerValidatorDefinition>
        <browsestringcollection name="BrowseStrCollMLPLevels" />
      </components>
      <minimumsize>
        <height>600</height>
        <width>800</width>
      </minimumsize>
      <controls>
        <groupbox name="GroupBoxViewerOptions">
          <location>
            <x>12</x>
            <y>603</y>
          </location>
          <height>130</height>
          <width>257</width>
          <tabindex>18</tabindex>
          <anchor>Bottom Left</anchor>
          <caption>Viewer Options</caption>
          <padding>
            <All>3</All>
            <Bottom>3</Bottom>
            <Left>3</Left>
            <Right>3</Right>
            <Top>3</Top>
          </padding>
          <controls>
            <CheckEdit name="CheckEditJustifyExcludeSubgroup">
              <location>
                <x>6</x>
                <y>44</y>
              </location>
              <height>21</height>
              <width>218</width>
              <tabindex>1</tabindex>
              <tooltip>If checked, user must enter a comment while excluding a subgroup in chart viewer.</tooltip>
              <caption>Comment Required to Exclude Subgroups</caption>
              <property>JustifySubgroupExclude</property>
              <defaultvalue xsi:type="xsd:boolean">false</defaultvalue>
              <CheckAlign>Right</CheckAlign>
            </CheckEdit>
            <CheckEdit name="SMPromptModifableInView">
              <location>
                <x>6</x>
                <y>20</y>
              </location>
              <height>21</height>
              <width>218</width>
              <tooltip>Option lets user to change configuration in viewer temporarily</tooltip>
              <caption>Modify Configuration in Viewer</caption>
              <property>ModifiableInview</property>
              <defaultvalue xsi:type="xsd:boolean">false</defaultvalue>
              <CheckAlign>Right</CheckAlign>
            </CheckEdit>
            <label name="LabelDefChartLabel">
              <location>
                <x>6</x>
                <y>82</y>
              </location>
              <height>19</height>
              <width>218</width>
              <tabindex>10</tabindex>
              <caption>Default Chart to View</caption>
              <textalign>MiddleLeft</textalign>
            </label>
            <PromptStringBrowseDefinition name="PrStringBrowseDefChart">
              <location>
                <x>6</x>
                <y>103</y>
              </location>
              <height>20</height>
              <width>218</width>
              <tabindex>2</tabindex>
              <tooltip>First/default chart to be displayed when viewer is opened.</tooltip>
              <caption>Default Chart Prompt</caption>
              <property>DefaultChartPrompt</property>
              <captionwidth>0</captionwidth>
              <Browse>BrStrCollectionDefChart</Browse>
              <multiselect>false</multiselect>
              <forcevalid>true</forcevalid>
            </PromptStringBrowseDefinition>
          </controls>
        </groupbox>
        <groupbox name="GroupBoxConfig">
          <location>
            <x>273</x>
            <y>8</y>
          </location>
          <height>722</height>
          <width>520</width>
          <tabindex>6</tabindex>
          <anchor>Top Bottom Left Right</anchor>
          <margin>
            <All>-1</All>
            <Bottom>0</Bottom>
            <Left>1</Left>
            <Right>1</Right>
            <Top>0</Top>
          </margin>
          <padding>
            <All>-1</All>
            <Bottom>0</Bottom>
            <Left>4</Left>
            <Right>4</Right>
            <Top>4</Top>
          </padding>
          <minimumsize>
            <height>610</height>
            <width>520</width>
          </minimumsize>
          <controls>
            <label name="LabelViewConfigMsg">
              <location>
                <x>4</x>
                <y>17</y>
              </location>
              <height>106</height>
              <width>512</width>
              <dock>Top</dock>
              <caption>Select chart type to view its configuration</caption>
              <textalign>MiddleCenter</textalign>
            </label>
            <tabcontrol name="TabControlConfig">
              <location>
                <x>4</x>
                <y>17</y>
              </location>
              <height>699</height>
              <width>512</width>
              <anchor>Top Bottom Left Right</anchor>
              <caption>TabControl1</caption>
              <margin>
                <All>-1</All>
                <Bottom>0</Bottom>
                <Left>2</Left>
                <Right>2</Right>
                <Top>0</Top>
              </margin>
              <pageborderstyle>Default</pageborderstyle>
              <headerlocation>Top</headerlocation>
              <multiline>false</multiline>
              <tabpages>
                <tabpage name="IND_MR">
                  <location>
                    <x>4</x>
                    <y>22</y>
                  </location>
                  <height>673</height>
                  <width>504</width>
                  <tabindex>2</tabindex>
                  <visible>false</visible>
                  <caption>Individual &amp;&amp; Moving Range</caption>
                  <controls>
                    <PromptStringBrowseDefinition name="PromptStringBrowseImaMLP">
                      <location>
                        <x>265</x>
                        <y>78</y>
                      </location>
                      <height>20</height>
                      <width>215</width>
                      <tabindex>8</tabindex>
                      <enabled>false</enabled>
                      <tooltip>MLP Level</tooltip>
                      <caption>Level</caption>
                      <property>MlpLevel</property>
                      <propertylength>10</propertylength>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <datasource>EntityIndAndMovRangeChartType</datasource>
                      <Browse>BrowseStrCollMLPLevels</Browse>
                      <multiselect>false</multiselect>
                      <forcevalid>true</forcevalid>
                    </PromptStringBrowseDefinition>
                    <prompt name="SMPmtUseSubgroupIndex">
                      <location>
                        <x>265</x>
                        <y>31</y>
                      </location>
                      <height>21</height>
                      <width>214</width>
                      <tabindex>1</tabindex>
                      <caption>Use Subgroup Index on X-Axis</caption>
                      <property>XAxisBySubgroup</property>
                      <captionwidth>200</captionwidth>
                      <viewname />
                      <DataSource>EntityIndAndMovRangeChartType</DataSource>
                    </prompt>
                    <panel name="PanelControlLimtis">
                      <location>
                        <x>9</x>
                        <y>213</y>
                      </location>
                      <height>470</height>
                      <width>485</width>
                      <tabindex>46</tabindex>
                      <anchor>Top Bottom Left Right</anchor>
                      <caption>Panel2</caption>
                      <controls>
                        <groupbox name="GroupBoxDisplayOptions">
                          <location>
                            <y>458</y>
                          </location>
                          <height>98</height>
                          <width>483</width>
                          <tabindex>22</tabindex>
                          <dock>Top</dock>
                          <caption>Display Options</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <SpinEditDefinition name="SpinEditIndMovLdp">
                              <location>
                                <x>16</x>
                                <y>64</y>
                              </location>
                              <height>20</height>
                              <width>214</width>
                              <tabindex>4</tabindex>
                              <tooltip>Number of decimal places to round the values displayed in legend.</tooltip>
                              <caption>Decimal Places (Legend Values)</caption>
                              <property>LegendDecimalPlaces</property>
                              <captionwidth>170</captionwidth>
                              <defaultvalue xsi:type="xsd:int">3</defaultvalue>
                              <datasource>EntityIndAndMovRangeChartType</datasource>
                              <maxValue>8</maxValue>
                            </SpinEditDefinition>
                            <prompt name="SMPromptImaDisplay1sd">
                              <location>
                                <x>255</x>
                                <y>41</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <tabindex>3</tabindex>
                              <caption>Display 1 Std. Dev. (USD, LSD)</caption>
                              <property>DisplayOneSigma</property>
                              <captionwidth>200</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptImaShowSpecLimits">
                              <location>
                                <x>16</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <caption>Display Spec Limits (USL, LSL)</caption>
                              <property>DisplaySpec</property>
                              <captionwidth>200</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt26">
                              <location>
                                <x>255</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <tabindex>1</tabindex>
                              <caption>Display Warning Limits (UWL, LWL)</caption>
                              <property>DisplayWarning</property>
                              <captionwidth>200</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt27">
                              <location>
                                <x>16</x>
                                <y>41</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <tabindex>2</tabindex>
                              <caption>Display Control Limits (UCL, LCL)</caption>
                              <property>DisplayControl</property>
                              <captionwidth>200</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBox4">
                          <location>
                            <y>409</y>
                          </location>
                          <height>49</height>
                          <width>483</width>
                          <tabindex>25</tabindex>
                          <dock>Top</dock>
                          <caption>Trend Tables</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <prompt name="SMPrompt30">
                              <location>
                                <x>255</x>
                                <y>19</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Moving Range</caption>
                              <property>TrendChartB</property>
                              <propertylength>10</propertylength>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt31">
                              <location>
                                <x>16</x>
                                <y>20</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <caption>Individual</caption>
                              <property>TrendChartA</property>
                              <propertylength>10</propertylength>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxImaTarget">
                          <location>
                            <y>361</y>
                          </location>
                          <height>48</height>
                          <width>483</width>
                          <tabindex>24</tabindex>
                          <dock>Top</dock>
                          <caption>Limits based on Target Values</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <prompt name="SMPrompt32">
                              <location>
                                <x>254</x>
                                <y>19</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Target (Mov Range)</caption>
                              <property>TargetSigma</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt33">
                              <location>
                                <x>16</x>
                                <y>19</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <caption>Target (Individual)</caption>
                              <property>TargetMean</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxImaMLPB">
                          <location>
                            <y>296</y>
                          </location>
                          <height>65</height>
                          <width>483</width>
                          <tabindex>23</tabindex>
                          <dock>Top</dock>
                          <caption>MLP Limits for Moving Range Chart</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <PromptStringBrowseDefinition name="PromptStringBrowseImaMLPB">
                              <location>
                                <x>16</x>
                                <y>27</y>
                              </location>
                              <height>20</height>
                              <width>215</width>
                              <enabled>false</enabled>
                              <tooltip>MLP Level</tooltip>
                              <caption>Level</caption>
                              <property>MlpLevelB</property>
                              <propertylength>10</propertylength>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <datasource>EntityIndAndMovRangeChartType</datasource>
                              <Browse>BrowseStrCollMLPLevels</Browse>
                              <multiselect>false</multiselect>
                              <forcevalid>true</forcevalid>
                            </PromptStringBrowseDefinition>
                            <prompt name="SMPrompt22">
                              <location>
                                <x>224</x>
                                <y>206</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>2</tabindex>
                              <caption>Upper Control Limit</caption>
                              <property>UpperControlB</property>
                              <captionwidth>120</captionwidth>
                              <readonly>true</readonly>
                              <viewname />
                            </prompt>
                            <prompt name="SMPrompt34">
                              <location>
                                <x>255</x>
                                <y>40</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>2</tabindex>
                              <caption>Upper Control Limit</caption>
                              <property>UpperControlB</property>
                              <captionwidth>120</captionwidth>
                              <readonly>true</readonly>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt35">
                              <location>
                                <x>255</x>
                                <y>16</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Lower Control Limit</caption>
                              <property>LowerControlB</property>
                              <captionwidth>120</captionwidth>
                              <readonly>true</readonly>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxImaSpecLtsB">
                          <location>
                            <y>180</y>
                          </location>
                          <height>116</height>
                          <width>483</width>
                          <tabindex>22</tabindex>
                          <dock>Top</dock>
                          <caption>Specified limits for Moving Range Chart</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <prompt name="SMPromptImaTVB">
                              <location>
                                <x>16</x>
                                <y>89</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>6</tabindex>
                              <caption>Target Value</caption>
                              <property>TargetValueB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptImaUSB">
                              <location>
                                <x>255</x>
                                <y>65</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>5</tabindex>
                              <caption>Upper 1 Std Limit</caption>
                              <property>UpperSigmaB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptImaLSB">
                              <location>
                                <x>16</x>
                                <y>65</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>2</tabindex>
                              <caption>Lower 1 Std Limit</caption>
                              <property>LowerSigmaB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptImaLWB">
                              <location>
                                <x>16</x>
                                <y>41</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Lower Warning Limit</caption>
                              <property>LowerWarningB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptImaUWB">
                              <location>
                                <x>255</x>
                                <y>42</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>4</tabindex>
                              <caption>Upper Warning Limit</caption>
                              <property>UpperWarningB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptImaLCB">
                              <location>
                                <x>16</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <caption>Lower Control Limit</caption>
                              <property>LowerControlB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptImaUCB">
                              <location>
                                <x>255</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>3</tabindex>
                              <caption>Upper Control Limit</caption>
                              <property>UpperControlB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxImaMLPA">
                          <location>
                            <y>115</y>
                          </location>
                          <height>65</height>
                          <width>483</width>
                          <tabindex>21</tabindex>
                          <dock>Top</dock>
                          <caption>MLP Limits for Individual Chart</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <PromptStringBrowseDefinition name="PromptStringBrowseImaMLPA">
                              <location>
                                <x>16</x>
                                <y>24</y>
                              </location>
                              <height>20</height>
                              <width>215</width>
                              <enabled>false</enabled>
                              <tooltip>MLP Level</tooltip>
                              <caption>Level</caption>
                              <property>MlpLevelA</property>
                              <propertylength>10</propertylength>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <datasource>EntityIndAndMovRangeChartType</datasource>
                              <Browse>BrowseStrCollMLPLevels</Browse>
                              <multiselect>false</multiselect>
                              <forcevalid>true</forcevalid>
                            </PromptStringBrowseDefinition>
                            <prompt name="SMPrompt45">
                              <location>
                                <x>255</x>
                                <y>41</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>2</tabindex>
                              <caption>Upper Control Limit</caption>
                              <property>UpperControlA</property>
                              <captionwidth>120</captionwidth>
                              <readonly>true</readonly>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt46">
                              <location>
                                <x>255</x>
                                <y>17</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Lower Control Limit</caption>
                              <property>LowerControlA</property>
                              <captionwidth>120</captionwidth>
                              <readonly>true</readonly>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxImaSpecLtsA">
                          <location />
                          <height>115</height>
                          <width>483</width>
                          <tabindex>20</tabindex>
                          <dock>Top</dock>
                          <caption>Specified limits for Individual Chart</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <prompt name="SMPromptImaTVA">
                              <location>
                                <x>16</x>
                                <y>87</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>6</tabindex>
                              <caption>Target Value</caption>
                              <property>TargetValueA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptImaUSA">
                              <location>
                                <x>255</x>
                                <y>65</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>5</tabindex>
                              <caption>Upper 1 Std Limit</caption>
                              <property>UpperSigmaA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptImaLSA">
                              <location>
                                <x>16</x>
                                <y>64</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>2</tabindex>
                              <caption>Lower 1 Std Limit</caption>
                              <property>LowerSigmaA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptImaLWA">
                              <location>
                                <x>16</x>
                                <y>41</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Lower Warning Limit</caption>
                              <property>LowerWarningA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptImaUWA">
                              <location>
                                <x>255</x>
                                <y>41</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>4</tabindex>
                              <caption>Upper Warning Limit</caption>
                              <property>UpperWarningA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptImaLCA">
                              <location>
                                <x>16</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <caption>Lower Control Limit</caption>
                              <property>LowerControlA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptImaUCA">
                              <location>
                                <x>255</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>3</tabindex>
                              <caption>Upper Control Limit</caption>
                              <property>UpperControlA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityIndAndMovRangeChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                      </controls>
                      <borderstyle>FixedSingle</borderstyle>
                    </panel>
                    <radiobutton name="RadBtnImaClMlpB">
                      <location>
                        <x>418</x>
                        <y>188</y>
                      </location>
                      <height>19</height>
                      <width>69</width>
                      <tabindex>18</tabindex>
                      <caption>MLP</caption>
                      <property>LimitsCalcTypeB</property>
                      <datasource>EntityIndAndMovRangeChartType</datasource>
                      <value>4</value>
                      <radiogroupindex>2</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnImaClSpecifiedB">
                      <location>
                        <x>333</x>
                        <y>188</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>16</tabindex>
                      <caption>Specified</caption>
                      <property>LimitsCalcTypeB</property>
                      <datasource>EntityIndAndMovRangeChartType</datasource>
                      <value>3</value>
                      <radiogroupindex>2</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnImaClTargetB">
                      <location>
                        <x>248</x>
                        <y>188</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>14</tabindex>
                      <caption>Target</caption>
                      <property>LimitsCalcTypeB</property>
                      <datasource>EntityIndAndMovRangeChartType</datasource>
                      <value>2</value>
                      <radiogroupindex>2</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnImaClDataB">
                      <location>
                        <x>163</x>
                        <y>188</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>12</tabindex>
                      <caption>Data</caption>
                      <property>LimitsCalcTypeB</property>
                      <datasource>EntityIndAndMovRangeChartType</datasource>
                      <value>1</value>
                      <radiogroupindex>2</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnImaClMlpA">
                      <location>
                        <x>418</x>
                        <y>166</y>
                      </location>
                      <height>19</height>
                      <width>69</width>
                      <tabindex>17</tabindex>
                      <caption>MLP</caption>
                      <property>LimitsCalcTypeA</property>
                      <datasource>EntityIndAndMovRangeChartType</datasource>
                      <value>4</value>
                      <radiogroupindex>1</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnImaClSpecifiedA">
                      <location>
                        <x>333</x>
                        <y>166</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>15</tabindex>
                      <caption>Specified</caption>
                      <property>LimitsCalcTypeA</property>
                      <datasource>EntityIndAndMovRangeChartType</datasource>
                      <value>3</value>
                      <radiogroupindex>1</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnImaClTargetA">
                      <location>
                        <x>248</x>
                        <y>166</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>13</tabindex>
                      <caption>Target</caption>
                      <property>LimitsCalcTypeA</property>
                      <datasource>EntityIndAndMovRangeChartType</datasource>
                      <value>2</value>
                      <radiogroupindex>1</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnImaClDataA">
                      <location>
                        <x>163</x>
                        <y>166</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>11</tabindex>
                      <caption>Data</caption>
                      <property>LimitsCalcTypeA</property>
                      <datasource>EntityIndAndMovRangeChartType</datasource>
                      <value>1</value>
                      <radiogroupindex>1</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <line name="Line10">
                      <location>
                        <x>14</x>
                        <y>150</y>
                      </location>
                      <height>17</height>
                      <width>480</width>
                      <tabindex>37</tabindex>
                      <anchor>Top Left Right</anchor>
                      <caption>Limits Type  </caption>
                    </line>
                    <prompt name="SMPromptImaSltUpperSpec">
                      <location>
                        <x>265</x>
                        <y>126</y>
                      </location>
                      <height>21</height>
                      <width>215</width>
                      <tabindex>10</tabindex>
                      <caption>Upper Spec Limit</caption>
                      <property>UpperSpec</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityIndAndMovRangeChartType</DataSource>
                    </prompt>
                    <prompt name="SMPromptImaSltLowerSpec">
                      <location>
                        <x>265</x>
                        <y>102</y>
                      </location>
                      <height>21</height>
                      <width>215</width>
                      <tabindex>9</tabindex>
                      <caption>Lower Spec Limit</caption>
                      <property>LowerSpec</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityIndAndMovRangeChartType</DataSource>
                    </prompt>
                    <radiobutton name="RadBtnImaSltDisable">
                      <location>
                        <x>125</x>
                        <y>124</y>
                      </location>
                      <height>19</height>
                      <width>135</width>
                      <tabindex>7</tabindex>
                      <caption>Disable Limits</caption>
                      <property>SpecType</property>
                      <datasource>EntityIndAndMovRangeChartType</datasource>
                      <value>2</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnImaSltMLPLimits">
                      <location>
                        <x>125</x>
                        <y>101</y>
                      </location>
                      <height>19</height>
                      <width>135</width>
                      <tabindex>6</tabindex>
                      <caption>MLP Limits</caption>
                      <property>SpecType</property>
                      <datasource>EntityIndAndMovRangeChartType</datasource>
                      <value>3</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnImaSltUserLimits">
                      <location>
                        <x>125</x>
                        <y>78</y>
                      </location>
                      <height>19</height>
                      <width>135</width>
                      <tabindex>2</tabindex>
                      <caption>User Limits</caption>
                      <property>SpecType</property>
                      <datasource>EntityIndAndMovRangeChartType</datasource>
                      <value>1</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <label name="Label11">
                      <location>
                        <x>31</x>
                        <y>187</y>
                      </location>
                      <height>20</height>
                      <width>126</width>
                      <tabindex>9</tabindex>
                      <caption>Moving Range</caption>
                      <textalign>MiddleLeft</textalign>
                    </label>
                    <label name="Label12">
                      <location>
                        <x>31</x>
                        <y>165</y>
                      </location>
                      <height>20</height>
                      <width>102</width>
                      <tabindex>8</tabindex>
                      <caption>Individual</caption>
                      <textalign>MiddleLeft</textalign>
                    </label>
                    <label name="Label13">
                      <location>
                        <x>14</x>
                        <y>78</y>
                      </location>
                      <height>20</height>
                      <width>100</width>
                      <tabindex>30</tabindex>
                      <caption>Specification Type</caption>
                      <textalign>MiddleLeft</textalign>
                    </label>
                    <line name="Line11">
                      <location>
                        <x>14</x>
                        <y>58</y>
                      </location>
                      <height>17</height>
                      <width>480</width>
                      <tabindex>25</tabindex>
                      <anchor>Top Left Right</anchor>
                      <caption>Control Limits  </caption>
                    </line>
                    <prompt name="SMPromptImaTestLen">
                      <location>
                        <x>14</x>
                        <y>31</y>
                      </location>
                      <height>21</height>
                      <width>214</width>
                      <caption>Test Length</caption>
                      <property>TestLength</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityIndAndMovRangeChartType</DataSource>
                    </prompt>
                    <line name="Line12">
                      <location>
                        <x>14</x>
                        <y>10</y>
                      </location>
                      <height>17</height>
                      <width>480</width>
                      <tabindex>21</tabindex>
                      <anchor>Top Left Right</anchor>
                      <caption>General Parameters  </caption>
                    </line>
                  </controls>
                </tabpage>
                <tabpage name="MEAN_STD">
                  <location>
                    <x>4</x>
                    <y>22</y>
                  </location>
                  <height>767</height>
                  <width>504</width>
                  <visible>false</visible>
                  <caption>Mean &amp;&amp; Std. Dev.</caption>
                  <controls>
                    <PromptStringBrowseDefinition name="PromptStringBrowseMasMLP">
                      <location>
                        <x>265</x>
                        <y>92</y>
                      </location>
                      <height>20</height>
                      <width>215</width>
                      <tabindex>8</tabindex>
                      <enabled>false</enabled>
                      <caption>Level</caption>
                      <property>MlpLevel</property>
                      <propertylength>10</propertylength>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <Browse>BrowseStrCollMLPLevels</Browse>
                      <multiselect>false</multiselect>
                      <forcevalid>true</forcevalid>
                    </PromptStringBrowseDefinition>
                    <radiobutton name="RadioButtonMasGroup">
                      <location>
                        <x>125</x>
                        <y>59</y>
                      </location>
                      <height>19</height>
                      <width>100</width>
                      <tabindex>2</tabindex>
                      <caption>Group</caption>
                      <property>SubgroupChosenBy</property>
                      <propertylength>10</propertylength>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <value>NAME</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadioButtonMasTime">
                      <location>
                        <x>125</x>
                        <y>38</y>
                      </location>
                      <height>19</height>
                      <width>100</width>
                      <tabindex>1</tabindex>
                      <caption>Date</caption>
                      <property>SubgroupChosenBy</property>
                      <propertylength>10</propertylength>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <value>TIME</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadioButtonMasSize">
                      <location>
                        <x>125</x>
                        <y>17</y>
                      </location>
                      <height>19</height>
                      <width>100</width>
                      <caption>Size</caption>
                      <property>SubgroupChosenBy</property>
                      <propertylength>10</propertylength>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <value>SIZE</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <panel name="Panel2">
                      <location>
                        <x>9</x>
                        <y>222</y>
                      </location>
                      <height>545</height>
                      <width>485</width>
                      <tabindex>16</tabindex>
                      <anchor>Top Bottom Left Right</anchor>
                      <caption>Panel2</caption>
                      <controls>
                        <groupbox name="GroupBoxMasDisplayOptions">
                          <location>
                            <y>458</y>
                          </location>
                          <height>93</height>
                          <width>483</width>
                          <tabindex>22</tabindex>
                          <dock>Top</dock>
                          <caption>Display Options</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <SpinEditDefinition name="SpinEditMeanStdLdp">
                              <location>
                                <x>16</x>
                                <y>61</y>
                              </location>
                              <height>20</height>
                              <width>214</width>
                              <tabindex>4</tabindex>
                              <tooltip>Number of decimal places to round the values displayed in legend.</tooltip>
                              <caption>Decimal Places (Legend Values)</caption>
                              <property>LegendDecimalPlaces</property>
                              <captionwidth>170</captionwidth>
                              <defaultvalue xsi:type="xsd:int">3</defaultvalue>
                              <datasource>EntityMeanAndStdChartType</datasource>
                              <maxValue>8</maxValue>
                            </SpinEditDefinition>
                            <prompt name="SMPrompt9">
                              <location>
                                <x>255</x>
                                <y>40</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <tabindex>3</tabindex>
                              <caption>Display 1 Std. Dev. (USD, LSD)</caption>
                              <property>DisplayOneSigma</property>
                              <captionwidth>200</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt8">
                              <location>
                                <x>16</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <caption>Display Spec Limits (USL, LSL)</caption>
                              <property>DisplaySpec</property>
                              <captionwidth>200</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt7">
                              <location>
                                <x>255</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <tabindex>1</tabindex>
                              <caption>Display Warning Limits (UWL, LWL)</caption>
                              <property>DisplayWarning</property>
                              <captionwidth>200</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt6">
                              <location>
                                <x>16</x>
                                <y>40</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <tabindex>2</tabindex>
                              <caption>Display Control Limits (UCL, LCL)</caption>
                              <property>DisplayControl</property>
                              <captionwidth>200</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxMasTrendTables">
                          <location>
                            <y>409</y>
                          </location>
                          <height>49</height>
                          <width>483</width>
                          <tabindex>25</tabindex>
                          <dock>Top</dock>
                          <caption>Trend Tables</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <prompt name="SMPrompt11">
                              <location>
                                <x>255</x>
                                <y>19</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Standard Deviation</caption>
                              <property>TrendChartB</property>
                              <propertylength>10</propertylength>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt10">
                              <location>
                                <x>16</x>
                                <y>20</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <caption>Mean</caption>
                              <property>TrendChartA</property>
                              <propertylength>10</propertylength>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxMasTarget">
                          <location>
                            <y>361</y>
                          </location>
                          <height>48</height>
                          <width>483</width>
                          <tabindex>24</tabindex>
                          <dock>Top</dock>
                          <caption>Limits based on Target Values</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <prompt name="SMPrompt41">
                              <location>
                                <x>255</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Target (Std. Dev.)</caption>
                              <property>TargetSigma</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt40">
                              <location>
                                <x>16</x>
                                <y>19</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <caption>Target (Mean)</caption>
                              <property>TargetMean</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxMasMLPB">
                          <location>
                            <y>296</y>
                          </location>
                          <height>65</height>
                          <width>483</width>
                          <tabindex>23</tabindex>
                          <dock>Top</dock>
                          <caption>MLP Limits for Standard Deviation Chart</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <PromptStringBrowseDefinition name="PromptStringBrowseMasMLPB">
                              <location>
                                <x>16</x>
                                <y>25</y>
                              </location>
                              <height>20</height>
                              <width>214</width>
                              <enabled>false</enabled>
                              <caption>Level</caption>
                              <property>MlpLevelB</property>
                              <propertylength>10</propertylength>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <datasource>EntityMeanAndStdChartType</datasource>
                              <Browse>BrowseStrCollMLPLevels</Browse>
                              <multiselect>false</multiselect>
                              <forcevalid>true</forcevalid>
                            </PromptStringBrowseDefinition>
                            <prompt name="SMPrompt14">
                              <location>
                                <x>255</x>
                                <y>40</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>2</tabindex>
                              <caption>Upper Control Limit</caption>
                              <property>UpperControlB</property>
                              <captionwidth>120</captionwidth>
                              <readonly>true</readonly>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt15">
                              <location>
                                <x>255</x>
                                <y>16</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Lower Control Limit</caption>
                              <property>LowerControlB</property>
                              <captionwidth>120</captionwidth>
                              <readonly>true</readonly>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxMasSpecLtsB">
                          <location>
                            <y>180</y>
                          </location>
                          <height>116</height>
                          <width>483</width>
                          <tabindex>22</tabindex>
                          <dock>Top</dock>
                          <caption>Specified limits for Standard Deviation Chart</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <prompt name="SMPromptMasTVB">
                              <location>
                                <x>16</x>
                                <y>89</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>6</tabindex>
                              <caption>Target Value</caption>
                              <property>TargetValueB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMasUSB">
                              <location>
                                <x>255</x>
                                <y>65</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>5</tabindex>
                              <caption>Upper 1 Std Limit</caption>
                              <property>UpperSigmaB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMasLSB">
                              <location>
                                <x>16</x>
                                <y>65</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>2</tabindex>
                              <caption>Lower 1 Std Limit</caption>
                              <property>LowerSigmaB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMasLWB">
                              <location>
                                <x>16</x>
                                <y>41</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Lower Warning Limit</caption>
                              <property>LowerWarningB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMasUWB">
                              <location>
                                <x>255</x>
                                <y>42</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>4</tabindex>
                              <caption>Upper Warning Limit</caption>
                              <property>UpperWarningB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMasLCB">
                              <location>
                                <x>16</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <caption>Lower Control Limit</caption>
                              <property>LowerControlB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMasUCB">
                              <location>
                                <x>255</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>3</tabindex>
                              <caption>Upper Control Limit</caption>
                              <property>UpperControlB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxMasMLPA">
                          <location>
                            <y>115</y>
                          </location>
                          <height>65</height>
                          <width>483</width>
                          <tabindex>21</tabindex>
                          <dock>Top</dock>
                          <caption>MLP Limits for Mean Chart</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <PromptStringBrowseDefinition name="PromptStringBrowseMasMLPA">
                              <location>
                                <x>16</x>
                                <y>24</y>
                              </location>
                              <height>20</height>
                              <width>215</width>
                              <enabled>false</enabled>
                              <caption>Level</caption>
                              <property>MlpLevelA</property>
                              <propertylength>10</propertylength>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <datasource>EntityMeanAndStdChartType</datasource>
                              <Browse>BrowseStrCollMLPLevels</Browse>
                              <multiselect>false</multiselect>
                              <forcevalid>true</forcevalid>
                            </PromptStringBrowseDefinition>
                            <prompt name="SMPrompt12">
                              <location>
                                <x>255</x>
                                <y>40</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>2</tabindex>
                              <caption>Upper Control Limit</caption>
                              <property>UpperControlA</property>
                              <captionwidth>120</captionwidth>
                              <readonly>true</readonly>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt13">
                              <location>
                                <x>255</x>
                                <y>16</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Lower Control Limit</caption>
                              <property>LowerControlA</property>
                              <captionwidth>120</captionwidth>
                              <readonly>true</readonly>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxMasSpecLtsA">
                          <location />
                          <height>115</height>
                          <width>483</width>
                          <tabindex>20</tabindex>
                          <dock>Top</dock>
                          <caption>Specified limits for Mean Chart</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <prompt name="SMPromptMasTVA">
                              <location>
                                <x>16</x>
                                <y>87</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>6</tabindex>
                              <caption>Target Value</caption>
                              <property>TargetValueA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMasUSA">
                              <location>
                                <x>255</x>
                                <y>65</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>5</tabindex>
                              <caption>Upper 1 Std Limit</caption>
                              <property>UpperSigmaA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMasLSA">
                              <location>
                                <x>16</x>
                                <y>64</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>2</tabindex>
                              <caption>Lower 1 Std Limit</caption>
                              <property>LowerSigmaA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMasLWA">
                              <location>
                                <x>16</x>
                                <y>41</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Lower Warning Limit</caption>
                              <property>LowerWarningA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMasUWA">
                              <location>
                                <x>255</x>
                                <y>41</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>4</tabindex>
                              <caption>Upper Warning Limit</caption>
                              <property>UpperWarningA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMasLCA">
                              <location>
                                <x>16</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <caption>Lower Control Limit</caption>
                              <property>LowerControlA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMasUCA">
                              <location>
                                <x>255</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>3</tabindex>
                              <caption>Upper Control Limit</caption>
                              <property>UpperControlA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndStdChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                      </controls>
                      <borderstyle>FixedSingle</borderstyle>
                    </panel>
                    <radiobutton name="RadBtnMasClMlpB">
                      <location>
                        <x>418</x>
                        <y>195</y>
                      </location>
                      <height>19</height>
                      <width>68</width>
                      <tabindex>18</tabindex>
                      <caption>MLP</caption>
                      <property>LimitsCalcTypeB</property>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <value>4</value>
                      <radiogroupindex>2</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMasClSpecifiedB">
                      <location>
                        <x>333</x>
                        <y>195</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>16</tabindex>
                      <caption>Specified</caption>
                      <property>LimitsCalcTypeB</property>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <value>3</value>
                      <radiogroupindex>2</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMasClTargetB">
                      <location>
                        <x>248</x>
                        <y>195</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>14</tabindex>
                      <caption>Target</caption>
                      <property>LimitsCalcTypeB</property>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <value>2</value>
                      <radiogroupindex>2</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMasClDataB">
                      <location>
                        <x>163</x>
                        <y>195</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>12</tabindex>
                      <caption>Data</caption>
                      <property>LimitsCalcTypeB</property>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <value>1</value>
                      <radiogroupindex>2</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMasClMlpA">
                      <location>
                        <x>418</x>
                        <y>173</y>
                      </location>
                      <height>19</height>
                      <width>69</width>
                      <tabindex>17</tabindex>
                      <caption>MLP</caption>
                      <property>LimitsCalcTypeA</property>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <value>4</value>
                      <radiogroupindex>1</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMasClSpecifiedA">
                      <location>
                        <x>333</x>
                        <y>173</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>15</tabindex>
                      <caption>Specified</caption>
                      <property>LimitsCalcTypeA</property>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <value>3</value>
                      <radiogroupindex>1</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMasClTargetA">
                      <location>
                        <x>248</x>
                        <y>173</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>13</tabindex>
                      <caption>Target</caption>
                      <property>LimitsCalcTypeA</property>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <value>2</value>
                      <radiogroupindex>1</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMasClDataA">
                      <location>
                        <x>163</x>
                        <y>173</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>11</tabindex>
                      <caption>Data</caption>
                      <property>LimitsCalcTypeA</property>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <value>1</value>
                      <radiogroupindex>1</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <line name="Line6">
                      <location>
                        <x>15</x>
                        <y>161</y>
                      </location>
                      <height>13</height>
                      <width>476</width>
                      <tabindex>12</tabindex>
                      <anchor>Top Left Right</anchor>
                      <caption>Limits Type  </caption>
                    </line>
                    <prompt name="SMPromptMasSltUpperSpec">
                      <location>
                        <x>265</x>
                        <y>139</y>
                      </location>
                      <height>21</height>
                      <width>215</width>
                      <tabindex>10</tabindex>
                      <caption>Upper Spec Limit</caption>
                      <property>UpperSpec</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityMeanAndStdChartType</DataSource>
                    </prompt>
                    <prompt name="SMPromptMasSltLowerSpec">
                      <location>
                        <x>265</x>
                        <y>116</y>
                      </location>
                      <height>21</height>
                      <width>215</width>
                      <tabindex>9</tabindex>
                      <caption>Lower Spec Limit</caption>
                      <property>LowerSpec</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityMeanAndStdChartType</DataSource>
                    </prompt>
                    <radiobutton name="RadBtnMasSltDisable">
                      <location>
                        <x>125</x>
                        <y>139</y>
                      </location>
                      <height>19</height>
                      <width>135</width>
                      <tabindex>7</tabindex>
                      <caption>Disable Limits</caption>
                      <property>SpecType</property>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <value>2</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMasSltMLPLimits">
                      <location>
                        <x>125</x>
                        <y>116</y>
                      </location>
                      <height>19</height>
                      <width>135</width>
                      <tabindex>6</tabindex>
                      <caption>MLP Limits</caption>
                      <property>SpecType</property>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <value>3</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMasSltUserLimits">
                      <location>
                        <x>125</x>
                        <y>93</y>
                      </location>
                      <height>19</height>
                      <width>135</width>
                      <tabindex>5</tabindex>
                      <caption>User Limits</caption>
                      <property>SpecType</property>
                      <datasource>EntityMeanAndStdChartType</datasource>
                      <value>1</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <label name="Label7">
                      <location>
                        <x>31</x>
                        <y>194</y>
                      </location>
                      <height>20</height>
                      <width>126</width>
                      <tabindex>5</tabindex>
                      <caption>Standard Deviation</caption>
                      <textalign>MiddleLeft</textalign>
                    </label>
                    <label name="Label6">
                      <location>
                        <x>31</x>
                        <y>172</y>
                      </location>
                      <height>20</height>
                      <width>102</width>
                      <tabindex>5</tabindex>
                      <caption>Mean</caption>
                      <textalign>MiddleLeft</textalign>
                    </label>
                    <label name="Label5">
                      <location>
                        <x>15</x>
                        <y>92</y>
                      </location>
                      <height>20</height>
                      <width>100</width>
                      <tabindex>5</tabindex>
                      <caption>Specification Type</caption>
                      <textalign>MiddleLeft</textalign>
                    </label>
                    <line name="Line5">
                      <location>
                        <x>15</x>
                        <y>74</y>
                      </location>
                      <height>12</height>
                      <width>476</width>
                      <tabindex>4</tabindex>
                      <anchor>Top Left Right</anchor>
                      <caption>Control Limits  </caption>
                    </line>
                    <prompt name="SMPromptMasTestLen">
                      <location>
                        <x>265</x>
                        <y>44</y>
                      </location>
                      <height>21</height>
                      <width>214</width>
                      <tabindex>4</tabindex>
                      <caption>Test Length</caption>
                      <property>TestLength</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityMeanAndStdChartType</DataSource>
                    </prompt>
                    <prompt name="SMPromptMasSgsize">
                      <location>
                        <x>265</x>
                        <y>17</y>
                      </location>
                      <height>21</height>
                      <width>214</width>
                      <tabindex>3</tabindex>
                      <caption>Subgroup Size</caption>
                      <property>SubgroupSizeWanted</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityMeanAndStdChartType</DataSource>
                    </prompt>
                    <line name="Line4">
                      <location>
                        <x>15</x>
                        <y>3</y>
                      </location>
                      <height>15</height>
                      <width>476</width>
                      <anchor>Top Left Right</anchor>
                      <caption>General Parameters  </caption>
                    </line>
                  </controls>
                </tabpage>
                <tabpage name="MEAN_RANGE">
                  <location>
                    <x>4</x>
                    <y>22</y>
                  </location>
                  <height>767</height>
                  <width>504</width>
                  <tabindex>1</tabindex>
                  <visible>false</visible>
                  <caption>Mean &amp;&amp; Range</caption>
                  <controls>
                    <PromptStringBrowseDefinition name="PromptStringBrowseMarMlp">
                      <location>
                        <x>265</x>
                        <y>92</y>
                      </location>
                      <height>20</height>
                      <width>215</width>
                      <tabindex>8</tabindex>
                      <enabled>false</enabled>
                      <caption>Level</caption>
                      <property>MlpLevel</property>
                      <propertylength>10</propertylength>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <Browse>BrowseStrCollMLPLevels</Browse>
                      <multiselect>false</multiselect>
                      <forcevalid>true</forcevalid>
                    </PromptStringBrowseDefinition>
                    <radiobutton name="RadioButtonMARGroup">
                      <location>
                        <x>125</x>
                        <y>59</y>
                      </location>
                      <height>19</height>
                      <width>100</width>
                      <tabindex>2</tabindex>
                      <caption>Group</caption>
                      <property>SubgroupChosenBy</property>
                      <propertylength>10</propertylength>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <value>NAME</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadioButtonMARDate">
                      <location>
                        <x>125</x>
                        <y>38</y>
                      </location>
                      <height>19</height>
                      <width>100</width>
                      <tabindex>1</tabindex>
                      <caption>Date</caption>
                      <property>SubgroupChosenBy</property>
                      <propertylength>10</propertylength>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <value>TIME</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadioButtonMARSize">
                      <location>
                        <x>125</x>
                        <y>17</y>
                      </location>
                      <height>19</height>
                      <width>100</width>
                      <caption>Size</caption>
                      <property>SubgroupChosenBy</property>
                      <propertylength>10</propertylength>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <value>SIZE</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadioButtonMarClMlpB">
                      <location>
                        <x>401</x>
                        <y>197</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>18</tabindex>
                      <caption>MLP</caption>
                      <property>LimitsCalcTypeB</property>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <value>4</value>
                      <radiogroupindex>2</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMarClSpecifiedB">
                      <location>
                        <x>309</x>
                        <y>195</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>16</tabindex>
                      <caption>Specified</caption>
                      <property>LimitsCalcTypeB</property>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <value>3</value>
                      <radiogroupindex>2</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMarClTargetB">
                      <location>
                        <x>217</x>
                        <y>195</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>14</tabindex>
                      <caption>Target</caption>
                      <property>LimitsCalcTypeB</property>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <value>2</value>
                      <radiogroupindex>2</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMarClDataB">
                      <location>
                        <x>125</x>
                        <y>195</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>12</tabindex>
                      <caption>Data</caption>
                      <property>LimitsCalcTypeB</property>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <value>1</value>
                      <radiogroupindex>2</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadioButtonMarClMlpA">
                      <location>
                        <x>401</x>
                        <y>173</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>17</tabindex>
                      <caption>MLP</caption>
                      <property>LimitsCalcTypeA</property>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <value>4</value>
                      <radiogroupindex>1</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMarClSpecifiedA">
                      <location>
                        <x>309</x>
                        <y>173</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>15</tabindex>
                      <caption>Specified</caption>
                      <property>LimitsCalcTypeA</property>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <value>3</value>
                      <radiogroupindex>1</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMarClTargetA">
                      <location>
                        <x>217</x>
                        <y>173</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>13</tabindex>
                      <caption>Target</caption>
                      <property>LimitsCalcTypeA</property>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <value>2</value>
                      <radiogroupindex>1</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnMarClDataA">
                      <location>
                        <x>125</x>
                        <y>173</y>
                      </location>
                      <height>19</height>
                      <width>83</width>
                      <tabindex>11</tabindex>
                      <caption>Data</caption>
                      <property>LimitsCalcTypeA</property>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <value>1</value>
                      <radiogroupindex>1</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <line name="Line7">
                      <location>
                        <x>15</x>
                        <y>161</y>
                      </location>
                      <height>13</height>
                      <width>476</width>
                      <tabindex>37</tabindex>
                      <anchor>Top Left Right</anchor>
                      <caption>Limits Type  </caption>
                    </line>
                    <prompt name="SMPromptMarSltUpperSpec">
                      <location>
                        <x>265</x>
                        <y>139</y>
                      </location>
                      <height>21</height>
                      <width>215</width>
                      <tabindex>10</tabindex>
                      <caption>Upper Spec Limit</caption>
                      <property>UpperSpec</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityMeanAndRangeChartType</DataSource>
                    </prompt>
                    <prompt name="SMPromptMarSltLowerSpec">
                      <location>
                        <x>265</x>
                        <y>116</y>
                      </location>
                      <height>21</height>
                      <width>215</width>
                      <tabindex>9</tabindex>
                      <caption>Lower Spec Limit</caption>
                      <property>LowerSpec</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityMeanAndRangeChartType</DataSource>
                    </prompt>
                    <radiobutton name="RadioButtonMARNoLimits">
                      <location>
                        <x>125</x>
                        <y>139</y>
                      </location>
                      <height>19</height>
                      <width>100</width>
                      <tabindex>7</tabindex>
                      <caption>Disable Limits</caption>
                      <property>SpecType</property>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <value>2</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadioButtonMARMLPLimits">
                      <location>
                        <x>125</x>
                        <y>116</y>
                      </location>
                      <height>19</height>
                      <width>100</width>
                      <tabindex>6</tabindex>
                      <caption>MLP Limits</caption>
                      <property>SpecType</property>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <value>3</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadioButtonMARUserLimits">
                      <location>
                        <x>125</x>
                        <y>93</y>
                      </location>
                      <height>19</height>
                      <width>100</width>
                      <tabindex>5</tabindex>
                      <caption>User Limits</caption>
                      <property>SpecType</property>
                      <datasource>EntityMeanAndRangeChartType</datasource>
                      <value>1</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <label name="Label8">
                      <location>
                        <x>31</x>
                        <y>194</y>
                      </location>
                      <height>20</height>
                      <width>126</width>
                      <tabindex>28</tabindex>
                      <caption>Range</caption>
                      <textalign>MiddleLeft</textalign>
                    </label>
                    <label name="Label9">
                      <location>
                        <x>31</x>
                        <y>172</y>
                      </location>
                      <height>20</height>
                      <width>102</width>
                      <tabindex>27</tabindex>
                      <caption>Mean</caption>
                      <textalign>MiddleLeft</textalign>
                    </label>
                    <label name="Label10">
                      <location>
                        <x>15</x>
                        <y>92</y>
                      </location>
                      <height>20</height>
                      <width>100</width>
                      <tabindex>30</tabindex>
                      <caption>Specification Type</caption>
                      <textalign>MiddleLeft</textalign>
                    </label>
                    <line name="Line8">
                      <location>
                        <x>15</x>
                        <y>76</y>
                      </location>
                      <height>12</height>
                      <width>476</width>
                      <tabindex>25</tabindex>
                      <anchor>Top Left Right</anchor>
                      <caption>Control Limits  </caption>
                    </line>
                    <prompt name="SMPromptMARTestLen">
                      <location>
                        <x>264</x>
                        <y>44</y>
                      </location>
                      <height>21</height>
                      <width>214</width>
                      <tabindex>4</tabindex>
                      <caption>Test Length</caption>
                      <property>TestLength</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityMeanAndRangeChartType</DataSource>
                    </prompt>
                    <prompt name="SMPromptMARSubSize">
                      <location>
                        <x>264</x>
                        <y>17</y>
                      </location>
                      <height>21</height>
                      <width>215</width>
                      <tabindex>3</tabindex>
                      <caption>Subgroup Size</caption>
                      <property>SubgroupSizeWanted</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityMeanAndRangeChartType</DataSource>
                    </prompt>
                    <line name="Line9">
                      <location>
                        <x>15</x>
                        <y>5</y>
                      </location>
                      <height>15</height>
                      <width>476</width>
                      <tabindex>21</tabindex>
                      <anchor>Top Left Right</anchor>
                      <caption>General Parameters  </caption>
                    </line>
                    <panel name="Panel3">
                      <location>
                        <x>9</x>
                        <y>222</y>
                      </location>
                      <height>545</height>
                      <width>485</width>
                      <tabindex>17</tabindex>
                      <anchor>Top Bottom Left Right</anchor>
                      <caption>Panel2</caption>
                      <controls>
                        <groupbox name="GroupBox1">
                          <location>
                            <y>458</y>
                          </location>
                          <height>96</height>
                          <width>483</width>
                          <tabindex>22</tabindex>
                          <dock>Top</dock>
                          <caption>Display Options</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <SpinEditDefinition name="SpinEditMeanRangeLdp">
                              <location>
                                <x>16</x>
                                <y>63</y>
                              </location>
                              <height>20</height>
                              <width>214</width>
                              <tabindex>4</tabindex>
                              <tooltip>Number of decimal places to round the values displayed in legend.</tooltip>
                              <caption>Decimal Places (Legend Values)</caption>
                              <property>LegendDecimalPlaces</property>
                              <captionwidth>170</captionwidth>
                              <defaultvalue xsi:type="xsd:int">3</defaultvalue>
                              <datasource>EntityMeanAndRangeChartType</datasource>
                              <maxValue>8</maxValue>
                            </SpinEditDefinition>
                            <prompt name="SMPrompt1">
                              <location>
                                <x>256</x>
                                <y>39</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <tabindex>3</tabindex>
                              <caption>Display 1 Std. Dev. (USD, LSD)</caption>
                              <property>DisplayOneSigma</property>
                              <captionwidth>200</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt2">
                              <location>
                                <x>16</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <caption>Display Spec Limits (USL, LSL)</caption>
                              <property>DisplaySpec</property>
                              <captionwidth>200</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt3">
                              <location>
                                <x>256</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <tabindex>1</tabindex>
                              <caption>Display Warning Limits (UWL, LWL)</caption>
                              <property>DisplayWarning</property>
                              <captionwidth>200</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt4">
                              <location>
                                <x>16</x>
                                <y>41</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <tabindex>2</tabindex>
                              <caption>Display Control Limits (UCL, LCL)</caption>
                              <property>DisplayControl</property>
                              <captionwidth>200</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBox2">
                          <location>
                            <y>409</y>
                          </location>
                          <height>49</height>
                          <width>483</width>
                          <tabindex>25</tabindex>
                          <dock>Top</dock>
                          <caption>Trend Tables</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <prompt name="SMPrompt5">
                              <location>
                                <x>255</x>
                                <y>19</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Range</caption>
                              <property>TrendChartB</property>
                              <propertylength>10</propertylength>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt16">
                              <location>
                                <x>16</x>
                                <y>20</y>
                              </location>
                              <height>21</height>
                              <width>214</width>
                              <caption>Mean</caption>
                              <property>TrendChartA</property>
                              <propertylength>10</propertylength>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxMARTarget">
                          <location>
                            <y>361</y>
                          </location>
                          <height>48</height>
                          <width>483</width>
                          <tabindex>24</tabindex>
                          <dock>Top</dock>
                          <caption>Limits based on Target Values</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <prompt name="SMPrompt17">
                              <location>
                                <x>255</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Target (Range)</caption>
                              <property>TargetSigma</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt18">
                              <location>
                                <x>16</x>
                                <y>19</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <caption>Target (Mean)</caption>
                              <property>TargetMean</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxMARMLPB">
                          <location>
                            <y>296</y>
                          </location>
                          <height>65</height>
                          <width>483</width>
                          <tabindex>23</tabindex>
                          <dock>Top</dock>
                          <caption>MLP Limits for Range Chart</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <PromptStringBrowseDefinition name="PromptStringBrowseMarMLPB">
                              <location>
                                <x>16</x>
                                <y>25</y>
                              </location>
                              <height>20</height>
                              <width>215</width>
                              <enabled>false</enabled>
                              <caption>Level</caption>
                              <property>MlpLevelB</property>
                              <propertylength>10</propertylength>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <datasource>EntityMeanAndRangeChartType</datasource>
                              <Browse>BrowseStrCollMLPLevels</Browse>
                              <multiselect>false</multiselect>
                              <forcevalid>true</forcevalid>
                            </PromptStringBrowseDefinition>
                            <prompt name="SMPrompt19">
                              <location>
                                <x>255</x>
                                <y>41</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>2</tabindex>
                              <caption>Upper Control Limit</caption>
                              <property>UpperControlB</property>
                              <captionwidth>120</captionwidth>
                              <readonly>true</readonly>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt20">
                              <location>
                                <x>255</x>
                                <y>17</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Lower Control Limit</caption>
                              <property>LowerControlB</property>
                              <captionwidth>120</captionwidth>
                              <readonly>true</readonly>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxMARSpecLtsB">
                          <location>
                            <y>180</y>
                          </location>
                          <height>116</height>
                          <width>483</width>
                          <tabindex>22</tabindex>
                          <dock>Top</dock>
                          <caption>Specified limits for Range Chart</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <prompt name="SMPromptMarTVB">
                              <location>
                                <x>16</x>
                                <y>89</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>6</tabindex>
                              <caption>Target Value</caption>
                              <property>TargetValueB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMarUSB">
                              <location>
                                <x>255</x>
                                <y>65</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>5</tabindex>
                              <caption>Upper 1 Std Limit</caption>
                              <property>UpperSigmaB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMarLSB">
                              <location>
                                <x>16</x>
                                <y>65</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>2</tabindex>
                              <caption>Lower 1 Std Limit</caption>
                              <property>LowerSigmaB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMarLWB">
                              <location>
                                <x>16</x>
                                <y>41</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Lower Warning Limit</caption>
                              <property>LowerWarningB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMarUWB">
                              <location>
                                <x>255</x>
                                <y>42</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>4</tabindex>
                              <caption>Upper Warning Limit</caption>
                              <property>UpperWarningB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMarLCB">
                              <location>
                                <x>16</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <caption>Lower Control Limit</caption>
                              <property>LowerControlB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMarUCB">
                              <location>
                                <x>255</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>3</tabindex>
                              <caption>Upper Control Limit</caption>
                              <property>UpperControlB</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxMARMLPA">
                          <location>
                            <y>115</y>
                          </location>
                          <height>65</height>
                          <width>483</width>
                          <tabindex>21</tabindex>
                          <dock>Top</dock>
                          <caption>MLP Limits for Mean Chart</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <PromptStringBrowseDefinition name="PromptStringBrowseMarMLPA">
                              <location>
                                <x>16</x>
                                <y>24</y>
                              </location>
                              <height>20</height>
                              <width>215</width>
                              <enabled>false</enabled>
                              <caption>Level</caption>
                              <property>MlpLevelA</property>
                              <propertylength>10</propertylength>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <datasource>EntityMeanAndRangeChartType</datasource>
                              <Browse>BrowseStrCollMLPLevels</Browse>
                              <multiselect>false</multiselect>
                              <forcevalid>true</forcevalid>
                            </PromptStringBrowseDefinition>
                            <prompt name="SMPrompt28">
                              <location>
                                <x>255</x>
                                <y>40</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>2</tabindex>
                              <caption>Upper Control Limit</caption>
                              <property>UpperControlA</property>
                              <captionwidth>120</captionwidth>
                              <readonly>true</readonly>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPrompt29">
                              <location>
                                <x>255</x>
                                <y>16</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Lower Control Limit</caption>
                              <property>LowerControlA</property>
                              <captionwidth>120</captionwidth>
                              <readonly>true</readonly>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxMARSpecLtsA">
                          <location />
                          <height>115</height>
                          <width>483</width>
                          <tabindex>20</tabindex>
                          <dock>Top</dock>
                          <caption>Specified limits for Mean Chart</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <prompt name="SMPromptMarTVA">
                              <location>
                                <x>16</x>
                                <y>87</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>6</tabindex>
                              <caption>Target Value</caption>
                              <property>TargetValueA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMarUSA">
                              <location>
                                <x>255</x>
                                <y>65</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>5</tabindex>
                              <caption>Upper 1 Std Limit</caption>
                              <property>UpperSigmaA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMarLSA">
                              <location>
                                <x>16</x>
                                <y>64</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>2</tabindex>
                              <caption>Lower 1 Std Limit</caption>
                              <property>LowerSigmaA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMarLWA">
                              <location>
                                <x>16</x>
                                <y>41</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>1</tabindex>
                              <caption>Lower Warning Limit</caption>
                              <property>LowerWarningA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMarUWA">
                              <location>
                                <x>255</x>
                                <y>41</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>4</tabindex>
                              <caption>Upper Warning Limit</caption>
                              <property>UpperWarningA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMarLCA">
                              <location>
                                <x>16</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <caption>Lower Control Limit</caption>
                              <property>LowerControlA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptMarUCA">
                              <location>
                                <x>255</x>
                                <y>18</y>
                              </location>
                              <height>21</height>
                              <width>215</width>
                              <tabindex>3</tabindex>
                              <caption>Upper Control Limit</caption>
                              <property>UpperControlA</property>
                              <mandatory>true</mandatory>
                              <captionwidth>120</captionwidth>
                              <viewname />
                              <DataSource>EntityMeanAndRangeChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                      </controls>
                      <borderstyle>FixedSingle</borderstyle>
                    </panel>
                  </controls>
                </tabpage>
                <tabpage name="CUSUM">
                  <location>
                    <x>4</x>
                    <y>22</y>
                  </location>
                  <height>767</height>
                  <width>504</width>
                  <tabindex>3</tabindex>
                  <visible>false</visible>
                  <caption>Cumulative Sum</caption>
                  <controls>
                    <prompt name="SMPromptTargetValue">
                      <location>
                        <x>17</x>
                        <y>46</y>
                      </location>
                      <height>21</height>
                      <width>240</width>
                      <tabindex>1</tabindex>
                      <caption>Target Value</caption>
                      <property>TargetCusum</property>
                      <mandatory>true</mandatory>
                      <viewname />
                      <DataSource>EntityCuSumChartType</DataSource>
                    </prompt>
                    <prompt name="SMPromptUseMeanValue">
                      <location>
                        <x>263</x>
                        <y>46</y>
                      </location>
                      <height>21</height>
                      <width>104</width>
                      <tabindex>2</tabindex>
                      <caption>Use Mean Value</caption>
                      <property>CuSumUseMeanValue</property>
                      <captionwidth>90</captionwidth>
                      <viewname />
                      <DataSource>EntityCuSumChartType</DataSource>
                    </prompt>
                    <prompt name="SMPromptDecisionSlope">
                      <location>
                        <x>17</x>
                        <y>139</y>
                      </location>
                      <height>21</height>
                      <width>350</width>
                      <tabindex>5</tabindex>
                      <caption>Decision Slope</caption>
                      <property>YMinChartB</property>
                      <mandatory>true</mandatory>
                      <viewname />
                      <DataSource>EntityCuSumChartType</DataSource>
                    </prompt>
                    <prompt name="SMPromptDecisionInterval">
                      <location>
                        <x>17</x>
                        <y>108</y>
                      </location>
                      <height>21</height>
                      <width>350</width>
                      <tabindex>4</tabindex>
                      <caption>Decision Interval</caption>
                      <property>YMinChartA</property>
                      <mandatory>true</mandatory>
                      <viewname />
                      <DataSource>EntityCuSumChartType</DataSource>
                    </prompt>
                    <prompt name="SMPromptDecisionPt">
                      <location>
                        <x>17</x>
                        <y>77</y>
                      </location>
                      <height>21</height>
                      <width>350</width>
                      <tabindex>3</tabindex>
                      <caption>Decision Point</caption>
                      <property>SubgroupSizeWanted</property>
                      <mandatory>true</mandatory>
                      <viewname />
                      <DataSource>EntityCuSumChartType</DataSource>
                    </prompt>
                    <prompt name="SMPromptTestLength">
                      <location>
                        <x>17</x>
                        <y>15</y>
                      </location>
                      <height>21</height>
                      <width>240</width>
                      <caption>Test Length</caption>
                      <property>TestLength</property>
                      <mandatory>true</mandatory>
                      <viewname />
                      <DataSource>EntityCuSumChartType</DataSource>
                    </prompt>
                  </controls>
                </tabpage>
                <tabpage name="PROC_CAP">
                  <location>
                    <x>4</x>
                    <y>22</y>
                  </location>
                  <height>767</height>
                  <width>504</width>
                  <tabindex>4</tabindex>
                  <visible>false</visible>
                  <caption>Process Capability</caption>
                  <controls>
                    <panel name="Panel1">
                      <location>
                        <x>17</x>
                        <y>130</y>
                      </location>
                      <height>226</height>
                      <width>474</width>
                      <tabindex>16</tabindex>
                      <anchor>Top Left Right</anchor>
                      <caption>Panel1</caption>
                      <margin>
                        <All>-1</All>
                        <Bottom>2</Bottom>
                        <Left>2</Left>
                        <Right>2</Right>
                        <Top>2</Top>
                      </margin>
                      <padding>
                        <All>-1</All>
                        <Bottom>2</Bottom>
                        <Left>2</Left>
                        <Right>2</Right>
                        <Top>2</Top>
                      </padding>
                      <controls>
                        <groupbox name="GroupBoxProcDp">
                          <location>
                            <x>2</x>
                            <y>156</y>
                          </location>
                          <height>63</height>
                          <width>470</width>
                          <tabindex>23</tabindex>
                          <dock>Top</dock>
                          <caption>Display Options</caption>
                          <padding>
                            <All>3</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <SpinEditDefinition name="SMPromptProcLdp">
                              <location>
                                <x>23</x>
                                <y>23</y>
                              </location>
                              <height>20</height>
                              <width>215</width>
                              <tabindex>21</tabindex>
                              <tooltip>Number of decimal places to round the values displayed in legend.</tooltip>
                              <caption>Decimal Places (Legend Values)</caption>
                              <property>LegendDecimalPlaces</property>
                              <captionwidth>170</captionwidth>
                              <defaultvalue xsi:type="xsd:int">3</defaultvalue>
                              <datasource>EntityProcCapChartType</datasource>
                              <maxValue>8</maxValue>
                            </SpinEditDefinition>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxPCUserLimits">
                          <location>
                            <x>2</x>
                            <y>64</y>
                          </location>
                          <height>92</height>
                          <width>470</width>
                          <tabindex>6</tabindex>
                          <dock>Top</dock>
                          <caption>Limits</caption>
                          <margin>
                            <All>-1</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>9</Top>
                          </margin>
                          <padding>
                            <All>-1</All>
                            <Bottom>3</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>6</Top>
                          </padding>
                          <controls>
                            <prompt name="SMPromptPCUpperLimit">
                              <location>
                                <x>23</x>
                                <y>50</y>
                              </location>
                              <height>21</height>
                              <width>372</width>
                              <tabindex>1</tabindex>
                              <caption>Upper Specification</caption>
                              <property>UpperSpec</property>
                              <mandatory>true</mandatory>
                              <captionwidth>130</captionwidth>
                              <viewname />
                              <DataSource>EntityProcCapChartType</DataSource>
                            </prompt>
                            <prompt name="SMPromptPCLowerLimit">
                              <location>
                                <x>23</x>
                                <y>22</y>
                              </location>
                              <height>21</height>
                              <width>372</width>
                              <caption>Lower Specification</caption>
                              <property>LowerSpec</property>
                              <mandatory>true</mandatory>
                              <captionwidth>130</captionwidth>
                              <viewname />
                              <DataSource>EntityProcCapChartType</DataSource>
                            </prompt>
                          </controls>
                        </groupbox>
                        <groupbox name="GroupBoxPCMLPLevel">
                          <location>
                            <x>2</x>
                            <y>2</y>
                          </location>
                          <height>62</height>
                          <width>470</width>
                          <tabindex>5</tabindex>
                          <dock>Top</dock>
                          <caption>MLP</caption>
                          <margin>
                            <All>-1</All>
                            <Bottom>2</Bottom>
                            <Left>2</Left>
                            <Right>2</Right>
                            <Top>2</Top>
                          </margin>
                          <padding>
                            <All>-1</All>
                            <Bottom>9</Bottom>
                            <Left>3</Left>
                            <Right>3</Right>
                            <Top>3</Top>
                          </padding>
                          <controls>
                            <PromptStringBrowseDefinition name="PromptStringBrowseProcCapMLP">
                              <location>
                                <x>23</x>
                                <y>23</y>
                              </location>
                              <height>20</height>
                              <width>215</width>
                              <enabled>false</enabled>
                              <caption>Level</caption>
                              <property>MlpLevel</property>
                              <propertylength>10</propertylength>
                              <mandatory>true</mandatory>
                              <captionwidth>130</captionwidth>
                              <datasource>EntityProcCapChartType</datasource>
                              <Browse>BrowseStrCollMLPLevels</Browse>
                              <multiselect>false</multiselect>
                              <forcevalid>true</forcevalid>
                            </PromptStringBrowseDefinition>
                          </controls>
                        </groupbox>
                      </controls>
                    </panel>
                    <radiobutton name="RadioButtonPCMLPLimits">
                      <location>
                        <x>191</x>
                        <y>104</y>
                      </location>
                      <height>19</height>
                      <width>126</width>
                      <tabindex>3</tabindex>
                      <caption>MLP Limits</caption>
                      <property>SpecType</property>
                      <datasource>EntityProcCapChartType</datasource>
                      <value>3</value>
                      <radiogroupindex>1</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadioButtonPCUserLimits">
                      <location>
                        <x>17</x>
                        <y>104</y>
                      </location>
                      <height>19</height>
                      <width>124</width>
                      <tabindex>2</tabindex>
                      <caption>User Limits</caption>
                      <property>SpecType</property>
                      <datasource>EntityProcCapChartType</datasource>
                      <value>1</value>
                      <radiogroupindex>1</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <label name="Label4">
                      <location>
                        <x>17</x>
                        <y>85</y>
                      </location>
                      <height>20</height>
                      <width>150</width>
                      <tabindex>15</tabindex>
                      <caption>Specification Type</caption>
                    </label>
                    <line name="Line3">
                      <location>
                        <x>17</x>
                        <y>66</y>
                      </location>
                      <height>13</height>
                      <width>474</width>
                      <tabindex>14</tabindex>
                      <anchor>Top Left Right</anchor>
                    </line>
                    <prompt name="SMPromptPCNumOfCells">
                      <location>
                        <x>17</x>
                        <y>42</y>
                      </location>
                      <height>21</height>
                      <width>240</width>
                      <tabindex>1</tabindex>
                      <caption>Number of Cells</caption>
                      <property>NumberOfCells</property>
                      <mandatory>true</mandatory>
                      <viewname />
                      <DataSource>EntityProcCapChartType</DataSource>
                    </prompt>
                    <prompt name="SMPromptPCTestLength">
                      <location>
                        <x>17</x>
                        <y>15</y>
                      </location>
                      <height>21</height>
                      <width>240</width>
                      <caption>Test Length</caption>
                      <property>TestLength</property>
                      <mandatory>true</mandatory>
                      <viewname />
                      <DataSource>EntityProcCapChartType</DataSource>
                    </prompt>
                  </controls>
                </tabpage>
                <tabpage name="EWMA">
                  <location>
                    <x>4</x>
                    <y>22</y>
                  </location>
                  <height>767</height>
                  <width>504</width>
                  <tabindex>5</tabindex>
                  <visible>false</visible>
                  <caption>EWMA</caption>
                  <controls>
                    <PromptStringBrowseDefinition name="PromptStringBrowseEwmaMLP">
                      <location>
                        <x>242</x>
                        <y>162</y>
                      </location>
                      <height>20</height>
                      <width>215</width>
                      <tabindex>10</tabindex>
                      <enabled>false</enabled>
                      <caption>Level</caption>
                      <property>MlpLevel</property>
                      <propertylength>10</propertylength>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <datasource>EntityEwmaChartType</datasource>
                      <Browse>BrowseStrCollMLPLevels</Browse>
                      <multiselect>false</multiselect>
                      <forcevalid>true</forcevalid>
                    </PromptStringBrowseDefinition>
                    <groupbox name="GroupBox5">
                      <location>
                        <x>14</x>
                        <y>248</y>
                      </location>
                      <height>132</height>
                      <width>476</width>
                      <tabindex>36</tabindex>
                      <anchor>Top Left Right</anchor>
                      <caption>Display Options</caption>
                      <padding>
                        <All>3</All>
                        <Bottom>3</Bottom>
                        <Left>3</Left>
                        <Right>3</Right>
                        <Top>3</Top>
                      </padding>
                      <controls>
                        <SpinEditDefinition name="SMPromptEwmaLdp">
                          <location>
                            <x>16</x>
                            <y>96</y>
                          </location>
                          <height>20</height>
                          <width>244</width>
                          <tabindex>3</tabindex>
                          <tooltip>Number of decimal places to round the values displayed in legend.</tooltip>
                          <caption>Decimal Places (Legend Values)</caption>
                          <property>LegendDecimalPlaces</property>
                          <captionwidth>200</captionwidth>
                          <defaultvalue xsi:type="xsd:int">3</defaultvalue>
                          <datasource>EntityEwmaChartType</datasource>
                          <maxValue>8</maxValue>
                        </SpinEditDefinition>
                        <prompt name="SMPrompt38">
                          <location>
                            <x>16</x>
                            <y>21</y>
                          </location>
                          <height>21</height>
                          <width>244</width>
                          <caption>Display Spec Limits (USL, LSL)</caption>
                          <property>DisplaySpec</property>
                          <captionwidth>230</captionwidth>
                          <viewname />
                          <DataSource>EntityEwmaChartType</DataSource>
                        </prompt>
                        <prompt name="SMPrompt39">
                          <location>
                            <x>16</x>
                            <y>71</y>
                          </location>
                          <height>21</height>
                          <width>244</width>
                          <tabindex>2</tabindex>
                          <caption>Display Raw Data</caption>
                          <property>DisplayRawdata</property>
                          <captionwidth>230</captionwidth>
                          <viewname />
                          <DataSource>EntityEwmaChartType</DataSource>
                        </prompt>
                        <prompt name="SMPrompt42">
                          <location>
                            <x>16</x>
                            <y>46</y>
                          </location>
                          <height>21</height>
                          <width>244</width>
                          <tabindex>1</tabindex>
                          <caption>Display Control Limits (UCL, LCL)</caption>
                          <property>DisplayControl</property>
                          <captionwidth>230</captionwidth>
                          <viewname />
                          <DataSource>EntityEwmaChartType</DataSource>
                        </prompt>
                      </controls>
                    </groupbox>
                    <prompt name="SMPromptEwmaSltUpperSpec">
                      <location>
                        <x>242</x>
                        <y>214</y>
                      </location>
                      <height>21</height>
                      <width>215</width>
                      <tabindex>12</tabindex>
                      <caption>Upper Spec Limit</caption>
                      <property>UpperSpec</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityEwmaChartType</DataSource>
                    </prompt>
                    <prompt name="SMPromptEwmaSltLowerSpec">
                      <location>
                        <x>242</x>
                        <y>187</y>
                      </location>
                      <height>21</height>
                      <width>215</width>
                      <tabindex>11</tabindex>
                      <caption>Lower Spec Limit</caption>
                      <property>LowerSpec</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityEwmaChartType</DataSource>
                    </prompt>
                    <radiobutton name="RadBtnEwmaSltDisable">
                      <location>
                        <x>124</x>
                        <y>216</y>
                      </location>
                      <height>19</height>
                      <width>100</width>
                      <tabindex>9</tabindex>
                      <caption>Disable Limits</caption>
                      <property>SpecType</property>
                      <datasource>EntityEwmaChartType</datasource>
                      <value>2</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnEwmaSltMLPLimits">
                      <location>
                        <x>124</x>
                        <y>189</y>
                      </location>
                      <height>19</height>
                      <width>100</width>
                      <tabindex>8</tabindex>
                      <caption>MLP Limits</caption>
                      <property>SpecType</property>
                      <datasource>EntityEwmaChartType</datasource>
                      <value>3</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <radiobutton name="RadBtnEwmaSltUserLimits">
                      <location>
                        <x>124</x>
                        <y>163</y>
                      </location>
                      <height>19</height>
                      <width>100</width>
                      <tabindex>7</tabindex>
                      <caption>User Limits</caption>
                      <property>SpecType</property>
                      <datasource>EntityEwmaChartType</datasource>
                      <value>1</value>
                      <radiogroupindex>0</radiogroupindex>
                      <CheckAlign>Left</CheckAlign>
                    </radiobutton>
                    <label name="Label14">
                      <location>
                        <x>12</x>
                        <y>162</y>
                      </location>
                      <height>20</height>
                      <width>100</width>
                      <tabindex>6</tabindex>
                      <caption>Specification Type</caption>
                      <textalign>MiddleLeft</textalign>
                    </label>
                    <line name="Line13">
                      <location>
                        <x>12</x>
                        <y>87</y>
                      </location>
                      <height>12</height>
                      <width>476</width>
                      <tabindex>3</tabindex>
                      <anchor>Top Left Right</anchor>
                      <caption>EWMA</caption>
                    </line>
                    <line name="Line14">
                      <location>
                        <x>12</x>
                        <y>141</y>
                      </location>
                      <height>12</height>
                      <width>476</width>
                      <tabindex>5</tabindex>
                      <anchor>Top Left Right</anchor>
                      <caption>Control Limits  </caption>
                    </line>
                    <prompt name="SMPromptEwmaWeight">
                      <location>
                        <x>124</x>
                        <y>110</y>
                      </location>
                      <height>21</height>
                      <width>215</width>
                      <tabindex>4</tabindex>
                      <caption>EWMA Weight</caption>
                      <property>ExpWeight</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityEwmaChartType</DataSource>
                    </prompt>
                    <prompt name="SMPromptEwmaTestLen">
                      <location>
                        <x>124</x>
                        <y>60</y>
                      </location>
                      <height>21</height>
                      <width>214</width>
                      <tabindex>2</tabindex>
                      <caption>Test Length</caption>
                      <property>TestLength</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityEwmaChartType</DataSource>
                    </prompt>
                    <prompt name="SMPromptEwmaSgsize">
                      <location>
                        <x>124</x>
                        <y>33</y>
                      </location>
                      <height>21</height>
                      <width>215</width>
                      <tabindex>1</tabindex>
                      <caption>Subgroup Size</caption>
                      <property>SubgroupSizeWanted</property>
                      <mandatory>true</mandatory>
                      <captionwidth>120</captionwidth>
                      <viewname />
                      <DataSource>EntityEwmaChartType</DataSource>
                    </prompt>
                    <line name="Line15">
                      <location>
                        <x>12</x>
                        <y>12</y>
                      </location>
                      <height>15</height>
                      <width>476</width>
                      <anchor>Top Left Right</anchor>
                      <caption>General Parameters  </caption>
                    </line>
                  </controls>
                </tabpage>
              </tabpages>
            </tabcontrol>
          </controls>
        </groupbox>
        <prompt name="CheckEditEwmaActive">
          <location>
            <x>12</x>
            <y>158</y>
          </location>
          <height>21</height>
          <width>214</width>
          <tabindex>5</tabindex>
          <tooltip>Select to activate Exponentially Weighted Moving Average chart.</tooltip>
          <caption>EWMA</caption>
          <property>ChartActive</property>
          <captionwidth>200</captionwidth>
          <viewname />
          <DataSource>EntityEwmaChartType</DataSource>
        </prompt>
        <prompt name="CheckEditProcCapActive">
          <location>
            <x>12</x>
            <y>134</y>
          </location>
          <height>21</height>
          <width>214</width>
          <tabindex>4</tabindex>
          <tooltip>Select to activate Process Capability chart.</tooltip>
          <caption>Process Capability</caption>
          <property>ChartActive</property>
          <captionwidth>200</captionwidth>
          <viewname />
          <DataSource>EntityProcCapChartType</DataSource>
        </prompt>
        <prompt name="CheckEditCuSumActive">
          <location>
            <x>12</x>
            <y>110</y>
          </location>
          <height>21</height>
          <width>214</width>
          <tabindex>3</tabindex>
          <tooltip>Select to activate Cumulative Sum chart.</tooltip>
          <caption>Cumulative Sum</caption>
          <property>ChartActive</property>
          <captionwidth>200</captionwidth>
          <viewname />
          <DataSource>EntityCuSumChartType</DataSource>
        </prompt>
        <prompt name="CheckEditIndAndMovRangeActive">
          <location>
            <x>12</x>
            <y>38</y>
          </location>
          <height>21</height>
          <width>214</width>
          <tooltip>Select to activate Individual and Moving Range chart.</tooltip>
          <caption>Individual &amp;&amp; Moving Range</caption>
          <property>ChartActive</property>
          <captionwidth>200</captionwidth>
          <viewname />
          <DataSource>EntityIndAndMovRangeChartType</DataSource>
        </prompt>
        <prompt name="CheckEditMeanAndRangeActive">
          <location>
            <x>12</x>
            <y>86</y>
          </location>
          <height>21</height>
          <width>214</width>
          <tabindex>2</tabindex>
          <tooltip>Select to activate Mean and Range chart.</tooltip>
          <caption>Mean &amp;&amp; Range</caption>
          <property>ChartActive</property>
          <captionwidth>200</captionwidth>
          <viewname />
          <DataSource>EntityMeanAndRangeChartType</DataSource>
        </prompt>
        <prompt name="CheckEditMeanAndStdActive">
          <location>
            <x>12</x>
            <y>62</y>
          </location>
          <height>21</height>
          <width>214</width>
          <tabindex>1</tabindex>
          <tooltip>Select to activate Mean and Standard Deviation chart.</tooltip>
          <caption>Mean &amp;&amp; Standard Deviation</caption>
          <property>ChartActive</property>
          <captionwidth>200</captionwidth>
          <viewname />
          <DataSource>EntityMeanAndStdChartType</DataSource>
        </prompt>
        <label name="Label1">
          <location>
            <x>12</x>
            <y>12</y>
          </location>
          <height>20</height>
          <width>185</width>
          <tabindex>6</tabindex>
          <caption>Select Chart Types to be included</caption>
        </label>
      </controls>
    </form>
    <form name="Page_Chart">
      <height>600</height>
      <width>800</width>
      <caption>Chart</caption>
      <minimumsize>
        <height>600</height>
        <width>800</width>
      </minimumsize>
      <maximumsize>
        <height>755</height>
        <width>1361</width>
      </maximumsize>
      <controls>
        <panel name="Panel4PairedCharts">
          <location>
            <x>177</x>
            <y>35</y>
          </location>
          <height>552</height>
          <width>611</width>
          <tabindex>7</tabindex>
          <anchor>Top Bottom Left Right</anchor>
          <visible>false</visible>
          <caption>Panel4</caption>
          <controls>
            <XYChart name="XYChartBottom">
              <location>
                <y>292</y>
              </location>
              <height>260</height>
              <width>611</width>
              <tabindex>1</tabindex>
              <dock>Fill</dock>
              <caption>XYChart2</caption>
              <titlealignment>Near</titlealignment>
              <dataSeries />
              <defaultXAxis name="PrimaryXAxis">
                <labelStaggered>false</labelStaggered>
                <dateTimeValueAccuracy>Second</dateTimeValueAccuracy>
                <dateTimeTickAccuracy>Hour</dateTimeTickAccuracy>
              </defaultXAxis>
              <defaultYAxis name="PrimaryYAxis">
                <labelStaggered>false</labelStaggered>
                <dateTimeValueAccuracy>Second</dateTimeValueAccuracy>
                <dateTimeTickAccuracy>Hour</dateTimeTickAccuracy>
              </defaultYAxis>
            </XYChart>
            <splitter name="Splitter1">
              <location>
                <y>288</y>
              </location>
              <height>4</height>
              <width>611</width>
              <tabindex>1</tabindex>
              <dock>Top</dock>
              <anchor>None</anchor>
              <position>288</position>
            </splitter>
            <XYChart name="XYChartTop">
              <location />
              <height>288</height>
              <width>611</width>
              <dock>Top</dock>
              <caption>XYChart1</caption>
              <titlealignment>Near</titlealignment>
              <dataSeries />
              <defaultXAxis name="PrimaryXAxis">
                <labelStaggered>false</labelStaggered>
                <dateTimeValueAccuracy>Second</dateTimeValueAccuracy>
                <dateTimeTickAccuracy>Hour</dateTimeTickAccuracy>
              </defaultXAxis>
              <defaultYAxis name="PrimaryYAxis">
                <labelStaggered>false</labelStaggered>
                <dateTimeValueAccuracy>Second</dateTimeValueAccuracy>
                <dateTimeTickAccuracy>Hour</dateTimeTickAccuracy>
              </defaultYAxis>
            </XYChart>
          </controls>
        </panel>
        <label name="LabelSelectedChart">
          <location>
            <x>179</x>
            <y>9</y>
          </location>
          <height>20</height>
          <width>587</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
          <font>
            <size>9</size>
            <style>Bold</style>
          </font>
          <textalign>MiddleCenter</textalign>
        </label>
        <ToolBoxDefinition name="ToolBoxLeft">
          <location>
            <x>8</x>
            <y>34</y>
          </location>
          <height>554</height>
          <width>163</width>
          <tabindex>5</tabindex>
          <anchor>Top Bottom Left</anchor>
          <caption>ToolBoxLeft</caption>
          <groups>
            <ToolBoxGroupDefinition name="ToolBoxGroupChartTypes">
              <location />
              <tooltip>Chart Types for selected chart</tooltip>
              <caption>Chart Types</caption>
              <items />
            </ToolBoxGroupDefinition>
            <ToolBoxGroupDefinition name="ToolBoxGroupOptions">
              <location />
              <caption>Options</caption>
              <items>
                <ToolBoxItemDefinition name="ToolBoxItemViewReport">
                  <location />
                  <tooltip>View Report for a selected report template.</tooltip>
                  <caption>View Report</caption>
                  <iconname>SQC_REPORT</iconname>
                  <command>OPTION_VIEW_REPORT</command>
                </ToolBoxItemDefinition>
                <ToolBoxItemDefinition name="ToolBoxItemSubgroups">
                  <location />
                  <tooltip>View Subgroups</tooltip>
                  <caption>View Subgroups</caption>
                  <iconname>SQC_SUBGROUP_VIEW</iconname>
                  <command>OPTION_VIEW_SUBGROUPS</command>
                </ToolBoxItemDefinition>
                <ToolBoxItemDefinition name="ToolBoxItemRefresh">
                  <location />
                  <tooltip>Refresh Chart</tooltip>
                  <caption>Refresh</caption>
                  <iconname>INT_REFRESH</iconname>
                  <command>OPTION_VIEW_REFRESH</command>
                </ToolBoxItemDefinition>
              </items>
            </ToolBoxGroupDefinition>
          </groups>
        </ToolBoxDefinition>
        <XYChart name="XYChartMain">
          <location>
            <x>178</x>
            <y>34</y>
          </location>
          <height>554</height>
          <width>608</width>
          <tabindex>2</tabindex>
          <anchor>Top Bottom Left Right</anchor>
          <visible>false</visible>
          <caption>XYChart1</caption>
          <titlealignment>Near</titlealignment>
          <dataSeries />
          <defaultXAxis name="PrimaryXAxis">
            <labelStaggered>false</labelStaggered>
            <dateTimeValueAccuracy>Millisecond</dateTimeValueAccuracy>
            <dateTimeTickAccuracy>Hour</dateTimeTickAccuracy>
          </defaultXAxis>
          <defaultYAxis name="PrimaryYAxis">
            <labelStaggered>false</labelStaggered>
            <dateTimeValueAccuracy>Millisecond</dateTimeValueAccuracy>
            <dateTimeTickAccuracy>Hour</dateTimeTickAccuracy>
          </defaultYAxis>
        </XYChart>
      </controls>
    </form>
    <form name="PageScheduling">
      <height>600</height>
      <width>800</width>
      <caption>Scheduling</caption>
      <components>
        <entityBrowseDefinition name="EntityBrowseOperators">
          <entity>PERSONNEL</entity>
          <returnProperty>Identity</returnProperty>
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <dataqueryentity name="DataEntTrendCheckTimerQ">
          <entity>TIMERQUEUE</entity>
          <query />
          <forceunique>false</forceunique>
          <multiresultitem>First</multiresultitem>
        </dataqueryentity>
        <dataqueryentity name="DataEntDistributeRepTimerQ">
          <entity>TIMERQUEUE</entity>
          <query />
          <forceunique>false</forceunique>
          <multiresultitem>First</multiresultitem>
        </dataqueryentity>
        <entityBrowseDefinition name="EntityBrowseRepTemplates">
          <query>DataQueryDesignRepTemplates</query>
          <entity>REPORT_TEMPLATE</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <dataquery name="DataQueryDesignRepTemplates">
          <entity>REPORT_TEMPLATE</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>DataEntityDefinition</property>
              <operand>Equals</operand>
              <value>SQCWIN_HEADER</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
        <ServerValidatorDefinition name="validator4CTFrequency">
          <ControlName>SMPromptChkTrendFrequency</ControlName>
        </ServerValidatorDefinition>
        <ServerValidatorDefinition name="validator4DrFrequency">
          <ControlName>SMPromptDistRepFrequency</ControlName>
        </ServerValidatorDefinition>
      </components>
      <minimumsize>
        <height>600</height>
        <width>800</width>
      </minimumsize>
      <controls>
        <PromptEntityBrowseDefinition name="PrEntBrDistRepReport">
          <location>
            <x>12</x>
            <y>257</y>
          </location>
          <height>20</height>
          <width>776</width>
          <tabindex>9</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Report</caption>
          <property>DistributionReport</property>
          <mandatory>true</mandatory>
          <captionwidth>130</captionwidth>
          <Browse>EntityBrowseRepTemplates</Browse>
          <forcevalid>true</forcevalid>
        </PromptEntityBrowseDefinition>
        <PromptEntityBrowseDefinition name="PrEntBrChkTrendReport">
          <location>
            <x>12</x>
            <y>141</y>
          </location>
          <height>20</height>
          <width>776</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Report</caption>
          <property>TrendCheckReport</property>
          <captionwidth>130</captionwidth>
          <Browse>EntityBrowseRepTemplates</Browse>
          <forcevalid>true</forcevalid>
        </PromptEntityBrowseDefinition>
        <prompt name="SMPromptDistReport">
          <location>
            <x>12</x>
            <y>176</y>
          </location>
          <height>21</height>
          <width>144</width>
          <tabindex>6</tabindex>
          <caption>Distribute Report</caption>
          <property>DistributeReportSelected</property>
          <captionwidth>130</captionwidth>
          <viewname />
        </prompt>
        <prompt name="SMPromptChkTrending">
          <location>
            <x>12</x>
            <y>60</y>
          </location>
          <height>21</height>
          <width>144</width>
          <tabindex>2</tabindex>
          <caption>Check Trending</caption>
          <property>TrendcheckSelected</property>
          <captionwidth>130</captionwidth>
          <viewname />
        </prompt>
        <prompt name="SMPromptDistRepPrinter">
          <location>
            <x>12</x>
            <y>230</y>
          </location>
          <height>21</height>
          <width>776</width>
          <tabindex>8</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Distribute to</caption>
          <property>DistributeReportPrinter</property>
          <captionwidth>130</captionwidth>
          <viewname />
        </prompt>
        <prompt name="SMPromptChkTrendPrinter">
          <location>
            <x>12</x>
            <y>114</y>
          </location>
          <height>21</height>
          <width>776</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Distribute to</caption>
          <property>TrendCheckPrinter</property>
          <captionwidth>130</captionwidth>
          <viewname />
        </prompt>
        <prompt name="SMPromptDistRepFrequency">
          <location>
            <x>12</x>
            <y>203</y>
          </location>
          <height>21</height>
          <width>776</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Frequency</caption>
          <property>RepeatInterval</property>
          <mandatory>true</mandatory>
          <captionwidth>130</captionwidth>
          <viewname />
          <DataSource>DataEntDistributeRepTimerQ</DataSource>
        </prompt>
        <prompt name="SMPromptChkTrendFrequency">
          <location>
            <x>12</x>
            <y>87</y>
          </location>
          <height>21</height>
          <width>776</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Frequency</caption>
          <property>RepeatInterval</property>
          <mandatory>true</mandatory>
          <captionwidth>130</captionwidth>
          <viewname />
          <DataSource>DataEntTrendCheckTimerQ</DataSource>
        </prompt>
        <line name="Line16">
          <location>
            <x>12</x>
            <y>38</y>
          </location>
          <height>16</height>
          <width>776</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <PromptEntityBrowseDefinition name="PrEntBrowseOperator">
          <location>
            <x>12</x>
            <y>12</y>
          </location>
          <height>20</height>
          <width>776</width>
          <anchor>Top Left Right</anchor>
          <caption>Responsible Operator</caption>
          <property>Operator</property>
          <propertylength>100</propertylength>
          <captionwidth>130</captionwidth>
          <Browse>EntityBrowseOperators</Browse>
          <forcevalid>true</forcevalid>
        </PromptEntityBrowseDefinition>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>