<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="InterfaceMgtReport">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="InterfaceMgtReport" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="SAMPLE_POINT" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="Interface Mgt Report" />
        <FIELD name="TITLE" value="Interface Mgt Report" />
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
      <height>525</height>
      <width>558</width>
      <caption>General</caption>
      <components>
        <entityBrowseDefinition name="EntityBrowseSamplePoint">
          <entity>SAMPLE_POINT</entity>
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
      </components>
      <controls>
        <splitter name="Splitter3">
          <location>
            <x>545</x>
            <y>177</y>
          </location>
          <height>339</height>
          <width>4</width>
          <tabindex>30</tabindex>
          <dock>Left</dock>
          <anchor>None</anchor>
          <position>266</position>
        </splitter>
        <panel name="Panel4">
          <location>
            <x>279</x>
            <y>177</y>
          </location>
          <height>339</height>
          <width>266</width>
          <tabindex>29</tabindex>
          <dock>Left</dock>
          <caption>Panel4</caption>
        </panel>
        <splitter name="Splitter2">
          <location>
            <x>275</x>
            <y>177</y>
          </location>
          <height>339</height>
          <width>4</width>
          <tabindex>27</tabindex>
          <dock>Left</dock>
          <anchor>None</anchor>
          <position>266</position>
        </splitter>
        <panel name="Panel2">
          <location>
            <x>9</x>
            <y>177</y>
          </location>
          <height>339</height>
          <width>266</width>
          <tabindex>26</tabindex>
          <dock>Left</dock>
          <caption>Panel2</caption>
          <controls>
            <unboundgridcontrol name="GridSamplePoint">
              <location>
                <x>3</x>
              </location>
              <height>339</height>
              <width>262</width>
              <tabindex>1</tabindex>
              <anchor>Top Bottom Left</anchor>
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
                  <width>20</width>
                  <caption>Select S Point</caption>
                  <readonly>false</readonly>
                  <datatype>Boolean</datatype>
                  <showbutton>false</showbutton>
                </GridColumnDefinition>
                <GridColumnDefinition name="SamplePoint">
                  <location />
                  <width>100</width>
                  <caption>Sample Point</caption>
                  <readonly>false</readonly>
                  <datatype>Text</datatype>
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
            <y>173</y>
          </location>
          <height>4</height>
          <width>540</width>
          <tabindex>25</tabindex>
          <dock>Top</dock>
          <anchor>None</anchor>
          <position>164</position>
        </splitter>
        <panel name="Panel1">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>164</height>
          <width>540</width>
          <tabindex>24</tabindex>
          <dock>Top</dock>
          <caption>Panel1</caption>
          <controls>
            <ProgressBarDefinition name="ProgressBarGenerate">
              <location>
                <x>30</x>
                <y>135</y>
              </location>
              <height>18</height>
              <width>100</width>
              <tabindex>27</tabindex>
              <caption>ProgressBar1</caption>
              <propertylength>0</propertylength>
              <style>Broken</style>
              <minimum>0</minimum>
              <maximum>100</maximum>
              <step>1</step>
              <orientation>Horizontal</orientation>
              <showpercent>false</showpercent>
              <shownumber>true</shownumber>
            </ProgressBarDefinition>
            <groupbox name="GroupBoxOutput">
              <location>
                <x>13</x>
                <y>87</y>
              </location>
              <height>41</height>
              <tabindex>26</tabindex>
              <caption>Output</caption>
              <padding>
                <All>3</All>
                <Bottom>3</Bottom>
                <Left>3</Left>
                <Right>3</Right>
                <Top>3</Top>
              </padding>
              <controls>
                <radiobutton name="rdoCsv">
                  <location>
                    <x>123</x>
                    <y>16</y>
                  </location>
                  <height>19</height>
                  <width>58</width>
                  <tabindex>2</tabindex>
                  <caption>Csv</caption>
                  <propertylength>0</propertylength>
                  <readonly>false</readonly>
                  <value />
                  <radiogroupindex>1</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="rdoExcel">
                  <location>
                    <x>59</x>
                    <y>16</y>
                  </location>
                  <height>19</height>
                  <width>58</width>
                  <tabindex>1</tabindex>
                  <caption>Excel</caption>
                  <propertylength>0</propertylength>
                  <readonly>false</readonly>
                  <value />
                  <radiogroupindex>1</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
                <radiobutton name="rdoPdf">
                  <location>
                    <x>6</x>
                    <y>16</y>
                  </location>
                  <height>19</height>
                  <width>46</width>
                  <caption>Pdf</caption>
                  <propertylength>0</propertylength>
                  <defaultvalue xsi:type="xsd:string" />
                  <readonly>false</readonly>
                  <value />
                  <radiogroupindex>1</radiogroupindex>
                  <CheckAlign>Left</CheckAlign>
                </radiobutton>
              </controls>
            </groupbox>
            <DateEditDefinition name="DateTo">
              <location>
                <x>13</x>
                <y>32</y>
              </location>
              <height>20</height>
              <width>217</width>
              <tabindex>25</tabindex>
              <caption>Date To</caption>
              <propertylength>0</propertylength>
              <captionwidth>70</captionwidth>
              <readonly>false</readonly>
              <value>2014-11-19T09:32:19.5156808-08:00</value>
              <edittime>true</edittime>
            </DateEditDefinition>
            <DateEditDefinition name="DateFrom">
              <location>
                <x>13</x>
                <y>6</y>
              </location>
              <height>20</height>
              <width>217</width>
              <tabindex>24</tabindex>
              <caption>Date From</caption>
              <propertylength>0</propertylength>
              <captionwidth>70</captionwidth>
              <readonly>false</readonly>
              <value>2014-11-19T09:31:28.707281-08:00</value>
              <edittime>true</edittime>
            </DateEditDefinition>
            <ButtonEditDefinition name="ButtonExit">
              <location>
                <x>425</x>
                <y>3</y>
              </location>
              <height>23</height>
              <width>67</width>
              <tabindex>9</tabindex>
              <anchor>Bottom Right</anchor>
              <caption>Exit</caption>
              <imageAlign>Left</imageAlign>
              <size>
                <Width>0</Width>
                <Height>0</Height>
              </size>
            </ButtonEditDefinition>
            <ButtonEditDefinition name="ButtonGenerate">
              <location>
                <x>13</x>
                <y>58</y>
              </location>
              <height>23</height>
              <width>88</width>
              <tabindex>7</tabindex>
              <anchor>Bottom Left</anchor>
              <tooltip>Generate Report and Close Form </tooltip>
              <caption>Generate</caption>
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