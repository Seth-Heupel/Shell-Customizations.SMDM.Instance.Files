<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="DataItemLinkPage">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="DataItemLinkPage" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="" />
        <FIELD name="TYPE" value="PAGE" />
        <FIELD name="DESCRIPTION" value="Generic Page to add links to Data Items." />
        <FIELD name="TITLE" value="Data Item Links" />
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
        <FIELD name="PAGE_EXTENSION" value="DataItemLinkPage" />
      </RECORD>
    </TABLE>
    <PAGES />
  </DATA>
  <DEFINITION><![CDATA[<?xml version="1.0" encoding="utf-16"?>
<interface xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://www.thermo.com/informatics/xmlns/interface/1.0">
  <forms>
    <form name="FormDefinition1">
      <caption>General</caption>
      <components>
        <entityBrowseDefinition name="DataItemLinkBrowse">
          <query>DataItemLinkQuery</query>
          <entity>DM_DATA_ITEM_LINK</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns>
            <EntityBrowseColumnDefinition name="DataItemColumn">
              <Title>Data Item</Title>
              <Width>100</Width>
              <Column>DmDataItem</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="LinkedByColumn">
              <Title>Linked By</Title>
              <Width>75</Width>
              <Column>LinkedBy</Column>
            </EntityBrowseColumnDefinition>
            <EntityBrowseColumnDefinition name="LinkedOnColumn">
              <Title>Linked On</Title>
              <Width>75</Width>
              <Column>LinkedOn</Column>
            </EntityBrowseColumnDefinition>
          </ExplorerColumns>
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>No</ShowRemoved>
        </entityBrowseDefinition>
        <dataquery name="DataItemLinkQuery">
          <entity>DM_DATA_ITEM_LINK</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>RecordKey0</property>
              <operand>Equals</operand>
              <value />
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
      </components>
      <controls>
        <explorergridcontrol name="DataItemLinkGrid">
          <location>
            <x>9</x>
            <y>34</y>
          </location>
          <height>357</height>
          <width>382</width>
          <tabindex>1</tabindex>
          <dock>Fill</dock>
          <Browse>DataItemLinkBrowse</Browse>
          <multipleselection>false</multipleselection>
          <allowdragoutside>false</allowdragoutside>
        </explorergridcontrol>
        <ToolBarDefinition name="ToolBar">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>25</height>
          <width>382</width>
          <dock>Top</dock>
          <caption>ToolBar1</caption>
          <Buttons>
            <ToolBarButtonDefinition name="AddLinkButton">
              <location />
              <tooltip>Add new link</tooltip>
              <sizemode>Normal</sizemode>
              <begingroup>false</begingroup>
              <alignment>Left</alignment>
              <normaliconname>DM_LINK_ADD</normaliconname>
              <canappearpressed>false</canappearpressed>
              <ispressed>false</ispressed>
            </ToolBarButtonDefinition>
            <ToolBarButtonDefinition name="RemoveLinkButton">
              <location />
              <tooltip>Remove link</tooltip>
              <sizemode>Normal</sizemode>
              <begingroup>false</begingroup>
              <alignment>Left</alignment>
              <normaliconname>DM_LINK_DELETE</normaliconname>
              <canappearpressed>false</canappearpressed>
              <ispressed>false</ispressed>
            </ToolBarButtonDefinition>
            <ToolBarButtonDefinition name="DisplayDataItemButton">
              <location />
              <tooltip>Display the Data Item</tooltip>
              <sizemode>Normal</sizemode>
              <begingroup>true</begingroup>
              <alignment>Left</alignment>
              <normaliconname>INT_DISPLAY</normaliconname>
              <canappearpressed>false</canappearpressed>
              <ispressed>false</ispressed>
            </ToolBarButtonDefinition>
            <ToolBarButtonDefinition name="ViewNeutralButton">
              <location />
              <tooltip>View Neutral File</tooltip>
              <sizemode>Normal</sizemode>
              <begingroup>false</begingroup>
              <alignment>Left</alignment>
              <normaliconname>VIEW</normaliconname>
              <canappearpressed>false</canappearpressed>
              <ispressed>false</ispressed>
            </ToolBarButtonDefinition>
            <ToolBarButtonDefinition name="SaveNeutralButton">
              <location />
              <tooltip>Save Neutral File</tooltip>
              <sizemode>Normal</sizemode>
              <begingroup>false</begingroup>
              <alignment>Left</alignment>
              <normaliconname>INT_SAVE</normaliconname>
              <canappearpressed>false</canappearpressed>
              <ispressed>false</ispressed>
            </ToolBarButtonDefinition>
            <ToolBarButtonDefinition name="DisplayDataPackageButton">
              <location />
              <tooltip>Display Data Package</tooltip>
              <sizemode>Normal</sizemode>
              <begingroup>true</begingroup>
              <alignment>Left</alignment>
              <normaliconname>INT_DISPLAY</normaliconname>
              <canappearpressed>false</canappearpressed>
              <ispressed>false</ispressed>
            </ToolBarButtonDefinition>
            <ToolBarButtonDefinition name="DownloadFilesButton">
              <location />
              <tooltip>Download Data Package Files</tooltip>
              <sizemode>Normal</sizemode>
              <begingroup>false</begingroup>
              <alignment>Left</alignment>
              <normaliconname>DM_DOWNLOAD_RAWFILES</normaliconname>
              <canappearpressed>false</canappearpressed>
              <ispressed>false</ispressed>
            </ToolBarButtonDefinition>
          </Buttons>
        </ToolBarDefinition>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>