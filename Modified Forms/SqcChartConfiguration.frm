<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="SqcChartConfiguration">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="SqcChartConfiguration" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="Chart configuration tab pages" />
        <FIELD name="TITLE" value="SQC Configuration" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="" />
        <FIELD name="FILE_EXTENSION" value="" />
        <FIELD name="FORM_XML" value="" />
        <FIELD name="CATEGORY" value="GENERAL" />
        <FIELD name="DEFAULT_ICON" value="SQC_VIEW_CONFIG" />
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
    <form name="FormDefinitionConfig">
      <height>863</height>
      <width>577</width>
      <caption>General</caption>
      <components>
        <ServerValidatorDefinition name="ValidatorMeanAndRange">
          <ControlName>CheckEditMeanAndRangeActive</ControlName>
        </ServerValidatorDefinition>
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
        <ServerValidatorDefinition name="ValidatorMeanAndStd">
          <ControlName>CheckEditMeanAndStdActive</ControlName>
        </ServerValidatorDefinition>
        <ServerValidatorDefinition name="ValidatorProcessCapability">
          <ControlName>CheckEditProcCapActive</ControlName>
        </ServerValidatorDefinition>
        <ServerValidatorDefinition name="ValidatorEWMA">
          <ControlName>CheckEditEwmaActive</ControlName>
        </ServerValidatorDefinition>
        <browsestringcollection name="BrowseStrCollMLPLevels" />
      </components>
      <minimumsize>
        <height>728</height>
        <width>577</width>
      </minimumsize>
      <controls>
        <ActionButtonDefinition name="ActionButtonClose">
          <location>
            <x>488</x>
            <y>828</y>
          </location>
          <height>23</height>
          <width>75</width>
          <tabindex>1</tabindex>
          <anchor>Bottom Right</anchor>
          <caption>&amp;Close</caption>
          <size>
            <Width>75</Width>
            <Height>23</Height>
          </size>
          <formresult>Close</formresult>
          <accept>false</accept>
          <cancel>false</cancel>
          <save>false</save>
        </ActionButtonDefinition>
        <tabcontrol name="TabControlConfig">
          <location>
            <x>12</x>
            <y>11</y>
          </location>
          <height>792</height>
          <width>553</width>
          <anchor>Top Bottom Left Right</anchor>
          <caption>TabControl1</caption>
          <pageborderstyle>Default</pageborderstyle>
          <headerlocation>Top</headerlocation>
          <multiline>false</multiline>
          <tabpages>
            <tabpage name="MEAN_STD">
              <location>
                <x>4</x>
                <y>22</y>
              </location>
              <height>766</height>
              <width>545</width>
              <visible>false</visible>
              <caption>Mean &amp;&amp; Std. Dev.</caption>
              <controls>
                <PromptStringBrowseDefinition name="PromptStringBrowseMasMLP">
                  <location>
                    <x>298</x>
                    <y>91</y>
                  </location>
                  <height>20</height>
                  <width>215</width>
                  <tabindex>11</tabindex>
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
                  <tabindex>3</tabindex>
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
                  <tabindex>2</tabindex>
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
                  <tabindex>1</tabindex>
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
                    <x>14</x>
                    <y>222</y>
                  </location>
                  <height>549</height>
                  <width>517</width>
                  <tabindex>16</tabindex>
                  <anchor>Top Left Right</anchor>
                  <caption>Panel2</caption>
                  <controls>
                    <groupbox name="GroupBoxMasDisplayOptions">
                      <location>
                        <y>450</y>
                      </location>
                      <height>94</height>
                      <width>515</width>
                      <tabindex>6</tabindex>
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
                        <SpinEditDefinition name="SMPromptMStdLdp">
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
                          <datasource>EntityMeanAndStdChartType</datasource>
                          <maxValue>8</maxValue>
                        </SpinEditDefinition>
                        <prompt name="SMPrompt9">
                          <location>
                            <x>282</x>
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
                            <x>282</x>
                            <y>19</y>
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
                        <y>401</y>
                      </location>
                      <height>49</height>
                      <width>515</width>
                      <tabindex>5</tabindex>
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
                            <x>282</x>
                            <y>20</y>
                          </location>
                          <height>21</height>
                          <width>215</width>
                          <tabindex>1</tabindex>
                          <caption>Standard Deviation</caption>
                          <property>TrendChartB</property>
                          <propertylength>10</propertylength>
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
                          <viewname />
                          <DataSource>EntityMeanAndStdChartType</DataSource>
                        </prompt>
                      </controls>
                    </groupbox>
                    <groupbox name="GroupBoxMasTarget">
                      <location>
                        <y>353</y>
                      </location>
                      <height>48</height>
                      <width>515</width>
                      <tabindex>4</tabindex>
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
                            <x>282</x>
                            <y>19</y>
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
                        <y>292</y>
                      </location>
                      <height>61</height>
                      <width>515</width>
                      <tabindex>3</tabindex>
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
                          <width>215</width>
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
                            <x>282</x>
                            <y>37</y>
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
                            <x>282</x>
                            <y>12</y>
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
                        <y>176</y>
                      </location>
                      <height>116</height>
                      <width>515</width>
                      <tabindex>2</tabindex>
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
                          <caption>Target Value</caption>
                          <property>TargetValueB</property>
                          <mandatory>true</mandatory>
                          <captionwidth>120</captionwidth>
                          <viewname />
                          <DataSource>EntityMeanAndStdChartType</DataSource>
                        </prompt>
                        <prompt name="SMPromptMasUSB">
                          <location>
                            <x>282</x>
                            <y>65</y>
                          </location>
                          <height>21</height>
                          <width>215</width>
                          <tabindex>6</tabindex>
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
                            <x>282</x>
                            <y>42</y>
                          </location>
                          <height>21</height>
                          <width>215</width>
                          <tabindex>5</tabindex>
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
                            <x>282</x>
                            <y>18</y>
                          </location>
                          <height>21</height>
                          <width>215</width>
                          <tabindex>4</tabindex>
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
                      <height>61</height>
                      <width>515</width>
                      <tabindex>1</tabindex>
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
                            <x>282</x>
                            <y>37</y>
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
                            <x>282</x>
                            <y>12</y>
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
                      <width>515</width>
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
                            <x>282</x>
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
                            <x>282</x>
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
                            <x>282</x>
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
                    <x>446</x>
                    <y>195</y>
                  </location>
                  <height>19</height>
                  <width>83</width>
                  <tabindex>24</tabindex>
                  <caption>MLP</caption>
                  <property>LimitsCalcTypeB</property>
                  <datasource>EntityMeanAndStdChartType</datasource>
                  <value>4</value>
                  <radiogroupindex>2</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnMasClSpecifiedB">
                  <location>
                    <x>346</x>
                    <y>195</y>
                  </location>
                  <height>19</height>
                  <width>83</width>
                  <tabindex>22</tabindex>
                  <caption>Specified</caption>
                  <property>LimitsCalcTypeB</property>
                  <datasource>EntityMeanAndStdChartType</datasource>
                  <value>3</value>
                  <radiogroupindex>2</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnMasClTargetB">
                  <location>
                    <x>252</x>
                    <y>195</y>
                  </location>
                  <height>19</height>
                  <width>83</width>
                  <tabindex>20</tabindex>
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
                  <tabindex>18</tabindex>
                  <caption>Data</caption>
                  <property>LimitsCalcTypeB</property>
                  <datasource>EntityMeanAndStdChartType</datasource>
                  <value>1</value>
                  <radiogroupindex>2</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnMasClMlpA">
                  <location>
                    <x>446</x>
                    <y>173</y>
                  </location>
                  <height>19</height>
                  <width>83</width>
                  <tabindex>23</tabindex>
                  <caption>MLP</caption>
                  <property>LimitsCalcTypeA</property>
                  <datasource>EntityMeanAndStdChartType</datasource>
                  <value>4</value>
                  <radiogroupindex>1</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnMasClSpecifiedA">
                  <location>
                    <x>346</x>
                    <y>173</y>
                  </location>
                  <height>19</height>
                  <width>83</width>
                  <tabindex>21</tabindex>
                  <caption>Specified</caption>
                  <property>LimitsCalcTypeA</property>
                  <datasource>EntityMeanAndStdChartType</datasource>
                  <value>3</value>
                  <radiogroupindex>1</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnMasClTargetA">
                  <location>
                    <x>252</x>
                    <y>173</y>
                  </location>
                  <height>19</height>
                  <width>83</width>
                  <tabindex>19</tabindex>
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
                  <tabindex>17</tabindex>
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
                  <width>517</width>
                  <tabindex>14</tabindex>
                  <anchor>Top Left Right</anchor>
                  <caption>Limits Type  </caption>
                </line>
                <prompt name="SMPromptMasSltUpperSpec">
                  <location>
                    <x>297</x>
                    <y>139</y>
                  </location>
                  <height>21</height>
                  <width>215</width>
                  <tabindex>13</tabindex>
                  <caption>Upper Spec Limit</caption>
                  <property>UpperSpec</property>
                  <mandatory>true</mandatory>
                  <captionwidth>120</captionwidth>
                  <viewname />
                  <DataSource>EntityMeanAndStdChartType</DataSource>
                </prompt>
                <prompt name="SMPromptMasSltLowerSpec">
                  <location>
                    <x>297</x>
                    <y>116</y>
                  </location>
                  <height>21</height>
                  <width>215</width>
                  <tabindex>12</tabindex>
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
                  <tabindex>10</tabindex>
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
                  <tabindex>9</tabindex>
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
                  <tabindex>8</tabindex>
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
                  <tabindex>16</tabindex>
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
                  <tabindex>15</tabindex>
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
                  <tabindex>7</tabindex>
                  <caption>Specification Type</caption>
                  <textalign>MiddleLeft</textalign>
                </label>
                <line name="Line5">
                  <location>
                    <x>15</x>
                    <y>74</y>
                  </location>
                  <height>12</height>
                  <width>517</width>
                  <tabindex>6</tabindex>
                  <anchor>Top Left Right</anchor>
                  <caption>Control Limits  </caption>
                </line>
                <prompt name="SMPromptMasTestLen">
                  <location>
                    <x>298</x>
                    <y>53</y>
                  </location>
                  <height>21</height>
                  <width>214</width>
                  <tabindex>5</tabindex>
                  <caption>Test Length</caption>
                  <property>TestLength</property>
                  <mandatory>true</mandatory>
                  <captionwidth>120</captionwidth>
                  <viewname />
                  <DataSource>EntityMeanAndStdChartType</DataSource>
                </prompt>
                <prompt name="SMPromptMasSgsize">
                  <location>
                    <x>298</x>
                    <y>26</y>
                  </location>
                  <height>21</height>
                  <width>215</width>
                  <tabindex>4</tabindex>
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
                  <width>517</width>
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
              <height>766</height>
              <width>545</width>
              <tabindex>1</tabindex>
              <visible>false</visible>
              <caption>Mean &amp;&amp; Range</caption>
              <controls>
                <PromptStringBrowseDefinition name="PromptStringBrowseMarMLP">
                  <location>
                    <x>298</x>
                    <y>91</y>
                  </location>
                  <height>20</height>
                  <width>215</width>
                  <tabindex>11</tabindex>
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
                  <tabindex>3</tabindex>
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
                  <tabindex>2</tabindex>
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
                  <tabindex>1</tabindex>
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
                    <x>446</x>
                    <y>195</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>24</tabindex>
                  <caption>MLP</caption>
                  <property>LimitsCalcTypeB</property>
                  <datasource>EntityMeanAndRangeChartType</datasource>
                  <value>4</value>
                  <radiogroupindex>2</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnMarClSpecifiedB">
                  <location>
                    <x>346</x>
                    <y>195</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>22</tabindex>
                  <caption>Specified</caption>
                  <property>LimitsCalcTypeB</property>
                  <datasource>EntityMeanAndRangeChartType</datasource>
                  <value>3</value>
                  <radiogroupindex>2</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnMarClTargetB">
                  <location>
                    <x>252</x>
                    <y>195</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>20</tabindex>
                  <caption>Target</caption>
                  <property>LimitsCalcTypeB</property>
                  <datasource>EntityMeanAndRangeChartType</datasource>
                  <value>2</value>
                  <radiogroupindex>2</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnMarClDataB">
                  <location>
                    <x>163</x>
                    <y>195</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>18</tabindex>
                  <caption>Data</caption>
                  <property>LimitsCalcTypeB</property>
                  <datasource>EntityMeanAndRangeChartType</datasource>
                  <value>1</value>
                  <radiogroupindex>2</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadioButtonMarClMlpA">
                  <location>
                    <x>446</x>
                    <y>173</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>23</tabindex>
                  <caption>MLP</caption>
                  <property>LimitsCalcTypeA</property>
                  <datasource>EntityMeanAndRangeChartType</datasource>
                  <value>4</value>
                  <radiogroupindex>1</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnMarClSpecifiedA">
                  <location>
                    <x>346</x>
                    <y>173</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>21</tabindex>
                  <caption>Specified</caption>
                  <property>LimitsCalcTypeA</property>
                  <datasource>EntityMeanAndRangeChartType</datasource>
                  <value>3</value>
                  <radiogroupindex>1</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnMarClTargetA">
                  <location>
                    <x>252</x>
                    <y>173</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>19</tabindex>
                  <caption>Target</caption>
                  <property>LimitsCalcTypeA</property>
                  <datasource>EntityMeanAndRangeChartType</datasource>
                  <value>2</value>
                  <radiogroupindex>1</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnMarClDataA">
                  <location>
                    <x>163</x>
                    <y>173</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>17</tabindex>
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
                  <width>517</width>
                  <tabindex>14</tabindex>
                  <anchor>Top Left Right</anchor>
                  <caption>Limits Type  </caption>
                </line>
                <prompt name="SMPromptMarSltUpperSpec">
                  <location>
                    <x>297</x>
                    <y>139</y>
                  </location>
                  <height>21</height>
                  <width>215</width>
                  <tabindex>13</tabindex>
                  <caption>Upper Spec Limit</caption>
                  <property>UpperSpec</property>
                  <mandatory>true</mandatory>
                  <captionwidth>120</captionwidth>
                  <viewname />
                  <DataSource>EntityMeanAndRangeChartType</DataSource>
                </prompt>
                <prompt name="SMPromptMarSltLowerSpec">
                  <location>
                    <x>297</x>
                    <y>116</y>
                  </location>
                  <height>21</height>
                  <width>215</width>
                  <tabindex>12</tabindex>
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
                  <tabindex>10</tabindex>
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
                  <tabindex>9</tabindex>
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
                  <tabindex>8</tabindex>
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
                  <tabindex>16</tabindex>
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
                  <tabindex>15</tabindex>
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
                  <tabindex>7</tabindex>
                  <caption>Specification Type</caption>
                  <textalign>MiddleLeft</textalign>
                </label>
                <line name="Line8">
                  <location>
                    <x>15</x>
                    <y>74</y>
                  </location>
                  <height>12</height>
                  <width>517</width>
                  <tabindex>6</tabindex>
                  <anchor>Top Left Right</anchor>
                  <caption>Control Limits  </caption>
                </line>
                <prompt name="SMPromptMARTestLen">
                  <location>
                    <x>298</x>
                    <y>53</y>
                  </location>
                  <height>21</height>
                  <width>214</width>
                  <tabindex>5</tabindex>
                  <caption>Test Length</caption>
                  <property>TestLength</property>
                  <mandatory>true</mandatory>
                  <captionwidth>120</captionwidth>
                  <viewname />
                  <DataSource>EntityMeanAndRangeChartType</DataSource>
                </prompt>
                <prompt name="SMPromptMARSubSize">
                  <location>
                    <x>298</x>
                    <y>26</y>
                  </location>
                  <height>21</height>
                  <width>215</width>
                  <tabindex>4</tabindex>
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
                    <y>3</y>
                  </location>
                  <height>15</height>
                  <width>517</width>
                  <anchor>Top Left Right</anchor>
                  <caption>General Parameters  </caption>
                </line>
                <panel name="Panel3">
                  <location>
                    <x>15</x>
                    <y>222</y>
                  </location>
                  <height>551</height>
                  <width>517</width>
                  <tabindex>17</tabindex>
                  <anchor>Top Left Right</anchor>
                  <caption>Panel2</caption>
                  <controls>
                    <groupbox name="GroupBox1">
                      <location>
                        <y>450</y>
                      </location>
                      <height>94</height>
                      <width>515</width>
                      <tabindex>6</tabindex>
                      <dock>Top</dock>
                      <caption>  Display Options</caption>
                      <padding>
                        <All>3</All>
                        <Bottom>3</Bottom>
                        <Left>3</Left>
                        <Right>3</Right>
                        <Top>3</Top>
                      </padding>
                      <controls>
                        <SpinEditDefinition name="SMPromptMeanRngLdp">
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
                            <x>282</x>
                            <y>40</y>
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
                            <x>282</x>
                            <y>19</y>
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
                            <y>40</y>
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
                        <y>401</y>
                      </location>
                      <height>49</height>
                      <width>515</width>
                      <tabindex>5</tabindex>
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
                            <x>282</x>
                            <y>20</y>
                          </location>
                          <height>21</height>
                          <width>215</width>
                          <tabindex>1</tabindex>
                          <caption>Range</caption>
                          <property>TrendChartB</property>
                          <propertylength>10</propertylength>
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
                          <viewname />
                          <DataSource>EntityMeanAndRangeChartType</DataSource>
                        </prompt>
                      </controls>
                    </groupbox>
                    <groupbox name="GroupBoxMARTarget">
                      <location>
                        <y>353</y>
                      </location>
                      <height>48</height>
                      <width>515</width>
                      <tabindex>4</tabindex>
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
                            <x>282</x>
                            <y>19</y>
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
                        <y>292</y>
                      </location>
                      <height>61</height>
                      <width>515</width>
                      <tabindex>3</tabindex>
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
                            <x>282</x>
                            <y>37</y>
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
                            <x>282</x>
                            <y>12</y>
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
                        <y>176</y>
                      </location>
                      <height>116</height>
                      <width>515</width>
                      <tabindex>2</tabindex>
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
                            <x>282</x>
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
                            <x>282</x>
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
                            <x>282</x>
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
                      <height>61</height>
                      <width>515</width>
                      <tabindex>1</tabindex>
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
                            <x>282</x>
                            <y>37</y>
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
                            <x>282</x>
                            <y>12</y>
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
                      <width>515</width>
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
                            <x>282</x>
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
                            <x>282</x>
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
                            <x>282</x>
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
            <tabpage name="IND_MR">
              <location>
                <x>4</x>
                <y>22</y>
              </location>
              <height>766</height>
              <width>545</width>
              <tabindex>2</tabindex>
              <visible>false</visible>
              <caption>Individual &amp;&amp; Moving Range</caption>
              <controls>
                <PromptStringBrowseDefinition name="PromptStringBrowseImaMLP">
                  <location>
                    <x>297</x>
                    <y>87</y>
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
                  <datasource>EntityIndAndMovRangeChartType</datasource>
                  <Browse>BrowseStrCollMLPLevels</Browse>
                  <multiselect>false</multiselect>
                  <forcevalid>true</forcevalid>
                </PromptStringBrowseDefinition>
                <prompt name="SMPmtUseSubgroupIndex">
                  <location>
                    <x>297</x>
                    <y>36</y>
                  </location>
                  <height>21</height>
                  <width>214</width>
                  <tabindex>2</tabindex>
                  <caption>Use Subgroup Index on X-Axis</caption>
                  <property>XAxisBySubgroup</property>
                  <captionwidth>200</captionwidth>
                  <viewname />
                  <DataSource>EntityIndAndMovRangeChartType</DataSource>
                </prompt>
                <panel name="Panel4">
                  <location>
                    <x>14</x>
                    <y>220</y>
                  </location>
                  <height>551</height>
                  <width>517</width>
                  <tabindex>46</tabindex>
                  <anchor>Top Left Right</anchor>
                  <caption>Panel2</caption>
                  <controls>
                    <groupbox name="GroupBox3">
                      <location>
                        <y>450</y>
                      </location>
                      <height>96</height>
                      <width>515</width>
                      <tabindex>6</tabindex>
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
                        <SpinEditDefinition name="SMPromptIndLdp">
                          <location>
                            <x>15</x>
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
                        <prompt name="SMPrompt24">
                          <location>
                            <x>282</x>
                            <y>40</y>
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
                        <prompt name="SMPrompt25">
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
                            <x>282</x>
                            <y>19</y>
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
                            <y>40</y>
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
                        <y>401</y>
                      </location>
                      <height>49</height>
                      <width>515</width>
                      <tabindex>5</tabindex>
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
                            <x>282</x>
                            <y>20</y>
                          </location>
                          <height>21</height>
                          <width>215</width>
                          <tabindex>1</tabindex>
                          <caption>Moving Range</caption>
                          <property>TrendChartB</property>
                          <propertylength>100</propertylength>
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
                          <propertylength>100</propertylength>
                          <viewname />
                          <DataSource>EntityIndAndMovRangeChartType</DataSource>
                        </prompt>
                      </controls>
                    </groupbox>
                    <groupbox name="GroupBoxImaTarget">
                      <location>
                        <y>353</y>
                      </location>
                      <height>48</height>
                      <width>515</width>
                      <tabindex>4</tabindex>
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
                            <x>282</x>
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
                        <y>292</y>
                      </location>
                      <height>61</height>
                      <width>515</width>
                      <tabindex>3</tabindex>
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
                          <datasource>EntityIndAndMovRangeChartType</datasource>
                          <Browse>BrowseStrCollMLPLevels</Browse>
                          <multiselect>false</multiselect>
                          <forcevalid>true</forcevalid>
                        </PromptStringBrowseDefinition>
                        <prompt name="SMPrompt34">
                          <location>
                            <x>282</x>
                            <y>37</y>
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
                            <x>282</x>
                            <y>12</y>
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
                        <y>176</y>
                      </location>
                      <height>116</height>
                      <width>515</width>
                      <tabindex>2</tabindex>
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
                            <x>282</x>
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
                            <x>282</x>
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
                            <x>282</x>
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
                      <height>61</height>
                      <width>515</width>
                      <tabindex>1</tabindex>
                      <dock>Top</dock>
                      <visible>false</visible>
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
                            <x>282</x>
                            <y>37</y>
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
                            <x>282</x>
                            <y>12</y>
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
                      <width>515</width>
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
                            <x>282</x>
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
                            <x>282</x>
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
                            <x>282</x>
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
                    <x>445</x>
                    <y>190</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>21</tabindex>
                  <caption>MLP</caption>
                  <property>LimitsCalcTypeB</property>
                  <datasource>EntityIndAndMovRangeChartType</datasource>
                  <value>4</value>
                  <radiogroupindex>2</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnImaClSpecifiedB">
                  <location>
                    <x>345</x>
                    <y>190</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>19</tabindex>
                  <caption>Specified</caption>
                  <property>LimitsCalcTypeB</property>
                  <datasource>EntityIndAndMovRangeChartType</datasource>
                  <value>3</value>
                  <radiogroupindex>2</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnImaClTargetB">
                  <location>
                    <x>251</x>
                    <y>190</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>17</tabindex>
                  <caption>Target</caption>
                  <property>LimitsCalcTypeB</property>
                  <datasource>EntityIndAndMovRangeChartType</datasource>
                  <value>2</value>
                  <radiogroupindex>2</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnImaClDataB">
                  <location>
                    <x>162</x>
                    <y>190</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>15</tabindex>
                  <caption>Data</caption>
                  <property>LimitsCalcTypeB</property>
                  <datasource>EntityIndAndMovRangeChartType</datasource>
                  <value>1</value>
                  <radiogroupindex>2</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnImaClMlpA">
                  <location>
                    <x>445</x>
                    <y>168</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>20</tabindex>
                  <caption>MLP</caption>
                  <property>LimitsCalcTypeA</property>
                  <datasource>EntityIndAndMovRangeChartType</datasource>
                  <value>4</value>
                  <radiogroupindex>1</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnImaClSpecifiedA">
                  <location>
                    <x>345</x>
                    <y>168</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>18</tabindex>
                  <caption>Specified</caption>
                  <property>LimitsCalcTypeA</property>
                  <datasource>EntityIndAndMovRangeChartType</datasource>
                  <value>3</value>
                  <radiogroupindex>1</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnImaClTargetA">
                  <location>
                    <x>251</x>
                    <y>168</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>16</tabindex>
                  <caption>Target</caption>
                  <property>LimitsCalcTypeA</property>
                  <datasource>EntityIndAndMovRangeChartType</datasource>
                  <value>2</value>
                  <radiogroupindex>1</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadBtnImaClDataA">
                  <location>
                    <x>162</x>
                    <y>168</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>14</tabindex>
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
                    <y>156</y>
                  </location>
                  <height>13</height>
                  <width>517</width>
                  <tabindex>11</tabindex>
                  <anchor>Top Left Right</anchor>
                  <caption>Limits Type  </caption>
                </line>
                <prompt name="SMPromptImaSltUpperSpec">
                  <location>
                    <x>296</x>
                    <y>134</y>
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
                    <x>296</x>
                    <y>111</y>
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
                    <x>124</x>
                    <y>134</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
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
                    <x>124</x>
                    <y>111</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
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
                    <x>124</x>
                    <y>88</y>
                  </location>
                  <height>19</height>
                  <width>100</width>
                  <tabindex>5</tabindex>
                  <caption>User Limits</caption>
                  <property>SpecType</property>
                  <datasource>EntityIndAndMovRangeChartType</datasource>
                  <value>1</value>
                  <radiogroupindex>0</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <label name="Label11">
                  <location>
                    <x>30</x>
                    <y>189</y>
                  </location>
                  <height>20</height>
                  <width>126</width>
                  <tabindex>13</tabindex>
                  <caption>Moving Range</caption>
                  <textalign>MiddleLeft</textalign>
                </label>
                <label name="Label12">
                  <location>
                    <x>30</x>
                    <y>167</y>
                  </location>
                  <height>20</height>
                  <width>102</width>
                  <tabindex>12</tabindex>
                  <caption>Individual</caption>
                  <textalign>MiddleLeft</textalign>
                </label>
                <label name="Label13">
                  <location>
                    <x>14</x>
                    <y>87</y>
                  </location>
                  <height>20</height>
                  <width>100</width>
                  <tabindex>4</tabindex>
                  <caption>Specification Type</caption>
                  <textalign>MiddleLeft</textalign>
                </label>
                <line name="Line11">
                  <location>
                    <x>14</x>
                    <y>69</y>
                  </location>
                  <height>12</height>
                  <width>517</width>
                  <tabindex>3</tabindex>
                  <anchor>Top Left Right</anchor>
                  <caption>Control Limits  </caption>
                </line>
                <prompt name="SMPromptImaTestLen">
                  <location>
                    <x>30</x>
                    <y>36</y>
                  </location>
                  <height>21</height>
                  <width>214</width>
                  <tabindex>1</tabindex>
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
                  <height>15</height>
                  <width>517</width>
                  <anchor>Top Left Right</anchor>
                  <caption>General Parameters  </caption>
                </line>
              </controls>
            </tabpage>
            <tabpage name="CUSUM">
              <location>
                <x>4</x>
                <y>22</y>
              </location>
              <height>766</height>
              <width>545</width>
              <tabindex>3</tabindex>
              <visible>false</visible>
              <caption>Cumulative Sum</caption>
              <controls>
                <prompt name="SMPromptTargetValue">
                  <location>
                    <x>29</x>
                    <y>58</y>
                  </location>
                  <height>21</height>
                  <width>240</width>
                  <tabindex>7</tabindex>
                  <caption>Target Value</caption>
                  <property>TargetCusum</property>
                  <propertylength>10</propertylength>
                  <mandatory>true</mandatory>
                  <viewname />
                  <DataSource>EntityCuSumChartType</DataSource>
                </prompt>
                <prompt name="SMPromptUseMeanValue">
                  <location>
                    <x>275</x>
                    <y>58</y>
                  </location>
                  <height>21</height>
                  <width>104</width>
                  <tabindex>8</tabindex>
                  <caption>Use Mean Value</caption>
                  <property>CuSumUseMeanValue</property>
                  <captionwidth>90</captionwidth>
                  <viewname />
                  <DataSource>EntityCuSumChartType</DataSource>
                </prompt>
                <prompt name="SMPromptDecisionSlope">
                  <location>
                    <x>29</x>
                    <y>154</y>
                  </location>
                  <height>21</height>
                  <width>350</width>
                  <tabindex>11</tabindex>
                  <caption>Decision Slope</caption>
                  <property>YMinChartB</property>
                  <mandatory>true</mandatory>
                  <viewname />
                  <DataSource>EntityCuSumChartType</DataSource>
                </prompt>
                <prompt name="SMPromptDecisionInterval">
                  <location>
                    <x>29</x>
                    <y>122</y>
                  </location>
                  <height>21</height>
                  <width>350</width>
                  <tabindex>10</tabindex>
                  <caption>Decision Interval</caption>
                  <property>YMinChartA</property>
                  <mandatory>true</mandatory>
                  <viewname />
                  <DataSource>EntityCuSumChartType</DataSource>
                </prompt>
                <prompt name="SMPromptDecisionPt">
                  <location>
                    <x>29</x>
                    <y>90</y>
                  </location>
                  <height>21</height>
                  <width>350</width>
                  <tabindex>9</tabindex>
                  <caption>Decision Point</caption>
                  <property>SubgroupSizeWanted</property>
                  <mandatory>true</mandatory>
                  <viewname />
                  <DataSource>EntityCuSumChartType</DataSource>
                </prompt>
                <prompt name="SMPromptTestLength">
                  <location>
                    <x>29</x>
                    <y>26</y>
                  </location>
                  <height>21</height>
                  <width>240</width>
                  <tabindex>6</tabindex>
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
              <height>766</height>
              <width>545</width>
              <tabindex>4</tabindex>
              <visible>false</visible>
              <caption>Process Capability</caption>
              <controls>
                <panel name="Panel1">
                  <location>
                    <x>30</x>
                    <y>162</y>
                  </location>
                  <height>253</height>
                  <width>467</width>
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
                        <y>155</y>
                      </location>
                      <height>63</height>
                      <width>463</width>
                      <tabindex>2</tabindex>
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
                          <width>226</width>
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
                      <height>91</height>
                      <width>463</width>
                      <tabindex>1</tabindex>
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
                            <y>49</y>
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
                            <y>21</y>
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
                      <width>463</width>
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
                            <y>21</y>
                          </location>
                          <height>20</height>
                          <width>226</width>
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
                    <x>217</x>
                    <y>134</y>
                  </location>
                  <height>19</height>
                  <width>126</width>
                  <tabindex>5</tabindex>
                  <enabled>false</enabled>
                  <caption>MLP Limits</caption>
                  <property>SpecType</property>
                  <datasource>EntityProcCapChartType</datasource>
                  <value>3</value>
                  <radiogroupindex>1</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="RadioButtonPCUserLimits">
                  <location>
                    <x>30</x>
                    <y>134</y>
                  </location>
                  <height>19</height>
                  <width>124</width>
                  <tabindex>4</tabindex>
                  <caption>User Limits</caption>
                  <property>SpecType</property>
                  <datasource>EntityProcCapChartType</datasource>
                  <value>1</value>
                  <radiogroupindex>1</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <label name="Label4">
                  <location>
                    <x>30</x>
                    <y>109</y>
                  </location>
                  <height>20</height>
                  <width>150</width>
                  <tabindex>3</tabindex>
                  <caption>Specification Type</caption>
                </label>
                <line name="Line3">
                  <location>
                    <x>30</x>
                    <y>93</y>
                  </location>
                  <height>15</height>
                  <width>467</width>
                  <tabindex>2</tabindex>
                  <anchor>Top Left Right</anchor>
                </line>
                <prompt name="SMPromptPCNumOfCells">
                  <location>
                    <x>30</x>
                    <y>60</y>
                  </location>
                  <height>21</height>
                  <width>251</width>
                  <tabindex>1</tabindex>
                  <caption>Number of Cells</caption>
                  <property>NumberOfCells</property>
                  <mandatory>true</mandatory>
                  <viewname />
                  <DataSource>EntityProcCapChartType</DataSource>
                </prompt>
                <prompt name="SMPromptPCTestLength">
                  <location>
                    <x>30</x>
                    <y>26</y>
                  </location>
                  <height>21</height>
                  <width>251</width>
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
              <height>766</height>
              <width>545</width>
              <tabindex>5</tabindex>
              <visible>false</visible>
              <caption>EWMA</caption>
              <controls>
                <PromptStringBrowseDefinition name="PromptStringBrowseEwmaMLP">
                  <location>
                    <x>297</x>
                    <y>159</y>
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
                    <x>12</x>
                    <y>248</y>
                  </location>
                  <height>127</height>
                  <width>517</width>
                  <tabindex>13</tabindex>
                  <anchor>Top Left Right</anchor>
                  <caption>  Display Options</caption>
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
                        <y>93</y>
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
                        <y>69</y>
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
                        <y>45</y>
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
                    <x>296</x>
                    <y>206</y>
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
                    <x>296</x>
                    <y>183</y>
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
                    <y>206</y>
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
                    <y>183</y>
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
                    <y>160</y>
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
                  <width>517</width>
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
                  <width>517</width>
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
                  <width>517</width>
                  <anchor>Top Left Right</anchor>
                  <caption>General Parameters  </caption>
                </line>
              </controls>
            </tabpage>
          </tabpages>
        </tabcontrol>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>