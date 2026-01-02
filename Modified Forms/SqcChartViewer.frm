<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="SqcChartViewer">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="SqcChartViewer" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="SQCWIN_HEADER" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="Display the charts defined in the sqc.net chart templates" />
        <FIELD name="TITLE" value="Chart" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="" />
        <FIELD name="FILE_EXTENSION" value="" />
        <FIELD name="FORM_XML" value="" />
        <FIELD name="CATEGORY" value="GENERAL" />
        <FIELD name="DEFAULT_ICON" value="SQC_CHART" />
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
    <form name="formDefnChartViewer">
      <height>788</height>
      <width>1159</width>
      <caption>General</caption>
      <components>
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
            <EntityBrowseColumnDefinition name="EbcPointName">
              <Title>Point Name</Title>
              <Width>50</Width>
              <Column>PointName</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EbcPointDate">
              <Title>Sampled Date</Title>
              <Width>60</Width>
              <Column>PointDate</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EbcPointValue">
              <Title>Point Value</Title>
              <Width>50</Width>
              <Column>PointValue</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EbcSampleId">
              <Title>Sample Id</Title>
              <Width>65</Width>
              <Column>SampleId</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EbcPointExcluded">
              <Title>Point Excluded</Title>
              <Width>40</Width>
              <Column>Bad</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EbcSubgroupIndex">
              <Title>Subgroup Index</Title>
              <Width>50</Width>
              <Column>SubgroupNumber</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EbcSubgroupExcluded">
              <Title>Subgroup Excluded</Title>
              <Width>40</Width>
              <Column>SubgroupExcluded</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="EbcPointComments">
              <Title>Point Comments</Title>
              <Width>120</Width>
              <Column>Comments</Column>
            </EntityBrowseColumnDefinition>
          </ExplorerColumns>
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
      </components>
      <controls>
        <label name="LabelChartTitle">
          <location>
            <x>207</x>
            <y>4</y>
          </location>
          <height>24</height>
          <width>940</width>
          <tabindex>18</tabindex>
          <anchor>Top Left Right</anchor>
          <font>
            <size>9</size>
            <style>Bold</style>
          </font>
          <textalign>BottomCenter</textalign>
        </label>
        <panel name="PanelMain">
          <location>
            <x>9</x>
            <y>34</y>
          </location>
          <height>742</height>
          <width>1138</width>
          <tabindex>17</tabindex>
          <anchor>Top Bottom Left Right</anchor>
          <caption>Panel2</caption>
          <margin>
            <All>-1</All>
            <Bottom>1</Bottom>
            <Left>1</Left>
            <Right>1</Right>
            <Top>1</Top>
          </margin>
          <controls>
            <panel name="Panel4Charts">
              <location>
                <x>192</x>
              </location>
              <height>613</height>
              <width>946</width>
              <tabindex>19</tabindex>
              <dock>Fill</dock>
              <caption>Panel3</caption>
              <controls>
                <panel name="Panel4PairedCharts">
                  <location>
                    <x>1</x>
                    <y>2</y>
                  </location>
                  <height>604</height>
                  <width>937</width>
                  <tabindex>19</tabindex>
                  <anchor>Top Bottom Left Right</anchor>
                  <visible>false</visible>
                  <caption>Panel4</caption>
                  <controls>
                    <XYChart name="XYChartBottom">
                      <location>
                        <y>292</y>
                      </location>
                      <height>312</height>
                      <width>937</width>
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
                    <splitter name="Splitter2">
                      <location>
                        <y>288</y>
                      </location>
                      <height>4</height>
                      <width>937</width>
                      <tabindex>1</tabindex>
                      <dock>Top</dock>
                      <anchor>None</anchor>
                      <position>288</position>
                    </splitter>
                    <XYChart name="XYChartTop">
                      <location />
                      <height>288</height>
                      <width>937</width>
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
                <XYChart name="XYChartMain">
                  <location>
                    <x>2</x>
                    <y>3</y>
                  </location>
                  <height>604</height>
                  <width>936</width>
                  <tabindex>6</tabindex>
                  <anchor>Top Bottom Left Right</anchor>
                  <caption>XYChartMain</caption>
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
            <splitter name="Splitter1">
              <location>
                <x>192</x>
                <y>613</y>
              </location>
              <height>4</height>
              <width>946</width>
              <tabindex>20</tabindex>
              <dock>Bottom</dock>
              <anchor>None</anchor>
              <position>125</position>
            </splitter>
            <panel name="PanelGrid">
              <location>
                <x>192</x>
                <y>617</y>
              </location>
              <height>125</height>
              <width>946</width>
              <tabindex>19</tabindex>
              <dock>Bottom</dock>
              <caption>Panel3</caption>
              <padding>
                <All>-1</All>
                <Bottom>2</Bottom>
                <Left>6</Left>
                <Right>6</Right>
                <Top>2</Top>
              </padding>
              <controls>
                <explorergridcontrol name="ExplorerGridResults">
                  <location>
                    <x>6</x>
                    <y>2</y>
                  </location>
                  <height>121</height>
                  <width>934</width>
                  <tabindex>21</tabindex>
                  <dock>Fill</dock>
                  <caption>Results</caption>
                  <Browse>EntityBrowseResults</Browse>
                  <showdefaultmenu>false</showdefaultmenu>
                  <allowfindpanel>false</allowfindpanel>
                  <allowdragoutside>false</allowdragoutside>
                </explorergridcontrol>
              </controls>
            </panel>
            <panel name="Panel1">
              <location />
              <height>742</height>
              <width>192</width>
              <tabindex>11</tabindex>
              <dock>Left</dock>
              <caption>PanelLeft</caption>
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
                <ToolBoxDefinition name="ToolBoxLeft">
                  <location>
                    <x>2</x>
                    <y>2</y>
                  </location>
                  <height>644</height>
                  <width>188</width>
                  <tabindex>1</tabindex>
                  <dock>Fill</dock>
                  <caption>ToolBox1</caption>
                  <groups>
                    <ToolBoxGroupDefinition name="ToolBoxGroupCharts">
                      <location />
                      <tooltip>Selected Charts</tooltip>
                      <caption>Selected Charts</caption>
                      <items />
                    </ToolBoxGroupDefinition>
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
                        <ToolBoxItemDefinition name="ToolBoxItemViewSubgroups">
                          <location />
                          <tooltip>View Subgroups</tooltip>
                          <caption>View Subgroups</caption>
                          <iconname>SQC_SUBGROUP_VIEW</iconname>
                          <command>OPTION_VIEW_SUBGROUPS</command>
                        </ToolBoxItemDefinition>
                        <ToolBoxItemDefinition name="ToolBoxItemViewReport">
                          <location />
                          <tooltip>View Report for a selected report template.</tooltip>
                          <caption>View Report</caption>
                          <iconname>SQC_REPORT</iconname>
                          <command>OPTION_VIEW_REPORT</command>
                        </ToolBoxItemDefinition>
                        <ToolBoxItemDefinition name="ToolBoxItemViewConfig">
                          <location />
                          <tooltip>View configuration for the selected chart type.</tooltip>
                          <caption>View Configuration</caption>
                          <iconname>SQC_VIEW_CONFIG</iconname>
                          <command>OPTION_VIEW_CONFIG</command>
                        </ToolBoxItemDefinition>
                        <ToolBoxItemDefinition name="ToolBoxItemViewSql">
                          <location />
                          <tooltip>View Criteria SQL Text</tooltip>
                          <caption>View Criteria SQL Text</caption>
                          <iconname>SQC_VIEW_CRITERIA</iconname>
                          <command>OPTION_VIEW_SQL</command>
                        </ToolBoxItemDefinition>
                        <ToolBoxItemDefinition name="ToolBoxItemRefresh">
                          <location />
                          <enabled>false</enabled>
                          <tooltip>Refresh chart</tooltip>
                          <caption>Refresh</caption>
                          <iconname>INT_REFRESH</iconname>
                          <command>OPTION_VIEW_REFRESH</command>
                        </ToolBoxItemDefinition>
                        <ToolBoxItemDefinition name="ToolBoxItemPrev">
                          <location />
                          <tooltip>View Previous Segment of Data</tooltip>
                          <caption>View Previous Segment</caption>
                          <iconname>SQC_SEGMENT_PREV</iconname>
                          <command>OPTION_VIEW_PREV</command>
                        </ToolBoxItemDefinition>
                        <ToolBoxItemDefinition name="ToolBoxItemNext">
                          <location />
                          <tooltip>View Next Segment of Data</tooltip>
                          <caption>View Next Segment</caption>
                          <iconname>SQC_SEGMENT_NEXT</iconname>
                          <command>OPTION_VIEW_NEXT</command>
                        </ToolBoxItemDefinition>
                      </items>
                    </ToolBoxGroupDefinition>
                  </groups>
                </ToolBoxDefinition>
                <panel name="Panel2">
                  <location>
                    <x>2</x>
                    <y>646</y>
                  </location>
                  <height>94</height>
                  <width>188</width>
                  <dock>Bottom</dock>
                  <caption>Panel2</caption>
                  <controls>
                    <SpinEditDefinition name="SpinEditInterval">
                      <location>
                        <x>5</x>
                        <y>25</y>
                      </location>
                      <height>20</height>
                      <width>150</width>
                      <tabindex>3</tabindex>
                      <tooltip>Refresh Time Interval</tooltip>
                      <caption>Interval (min)</caption>
                      <captionwidth>90</captionwidth>
                      <defaultvalue xsi:type="xsd:int">5</defaultvalue>
                      <updatestate>false</updatestate>
                      <maxValue>60</maxValue>
                      <minValue>1</minValue>
                    </SpinEditDefinition>
                    <label name="LabelLastRefreshed">
                      <location>
                        <x>5</x>
                        <y>68</y>
                      </location>
                      <height>20</height>
                      <width>179</width>
                      <tabindex>2</tabindex>
                      <anchor>Bottom Left Right</anchor>
                      <caption>LabelLastRefreshed</caption>
                    </label>
                    <label name="LabelLref">
                      <location>
                        <x>5</x>
                        <y>49</y>
                      </location>
                      <height>15</height>
                      <width>179</width>
                      <tabindex>1</tabindex>
                      <anchor>Bottom Left Right</anchor>
                      <caption>Last Refreshed:</caption>
                    </label>
                    <CheckEdit name="CheckEditAutoRefresh">
                      <location>
                        <x>5</x>
                        <y>4</y>
                      </location>
                      <height>21</height>
                      <width>179</width>
                      <anchor>Top Left Right</anchor>
                      <tooltip>If checked, viewer will be refreshed for the time interval specified below.</tooltip>
                      <caption>Auto-Refresh</caption>
                      <defaultvalue xsi:type="xsd:boolean">false</defaultvalue>
                      <updatestate>false</updatestate>
                      <CheckAlign>Left</CheckAlign>
                    </CheckEdit>
                  </controls>
                </panel>
              </controls>
            </panel>
          </controls>
        </panel>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>