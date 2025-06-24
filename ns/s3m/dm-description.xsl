<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    exclude-result-prefixes="xs rdf rdfs dc"
    version="2.0">

    <!-- 
      S3Model Data Model Stylesheet (Refactored)
      Author: Timothy W. Cook, with refactoring by Gemini
      Purpose: To display any S3Model Data Model schema in a readable HTML format.
      This version understands the modern S3Model architecture, including the
      compositional patterns for Clusters, Adapters, and structural types.
    -->

    <xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes"/>
    
    <!-- Key to cross-reference elements and their types -->
    <xsl:key name="type-to-element" match="xs:element[@substitutionGroup]" use="@type"/>
    <xsl:key name="name-to-complextype" match="xs:complexType" use="@name"/>

    <!-- Main template to build the HTML page -->
    <xsl:template match="/">
        <html>
            <head>
                <title>S3Model Data Model: <xsl:value-of select="//dc:title"/></title>
                <style>
                    body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol"; background-color: #f4f7f9; color: #333; margin: 0; padding: 2em; }
                    .container { max-width: 1200px; margin: auto; background-color: #fff; padding: 2em; border-radius: 8px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); }
                    h1, h2, h3 { color: #2c3e50; border-bottom: 2px solid #e0e0e0; padding-bottom: 10px; }
                    h1 { font-size: 2.5em; text-align: center; }
                    h2 { font-size: 2em; margin-top: 1.5em; }
                    h3 { font-size: 1.5em; margin-top: 1.5em; color: #34495e; border-bottom-style: dashed; }
                    table { width: 100%; border-collapse: collapse; margin-top: 1em; font-size: 0.95em; }
                    th, td { padding: 12px; text-align: left; border-bottom: 1px solid #ddd; }
                    th { background-color: #3498db; color: white; font-weight: bold; }
                    tr:nth-child(even) { background-color: #f2f2f2; }
                    tr:hover { background-color: #e8f4fd; }
                    p, li { line-height: 1.6; }
                    .code { font-family: 'Courier New', Courier, monospace; background-color: #ecf0f1; padding: 2px 5px; border-radius: 4px; }
                    .label { font-weight: bold; color: #2980b9; }
                    .note { font-style: italic; color: #7f8c8d; }
                    .semantic-links a { color: #2980b9; text-decoration: none; }
                    .semantic-links a:hover { text-decoration: underline; }
                </style>
            </head>
            <body>
                <div class="container">
                    <xsl:apply-templates select="//xs:complexType[@name=//xs:element[substring-after(@substitutionGroup, ':') = 'DM']/@type]"/>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <!-- Template for the root Data Model -->
    <xsl:template match="xs:complexType[.//xs:restriction/@base='s3m:DMType']">
        <h1>S3Model Data Model: <xsl:value-of select=".//xs:element[@name='label']/@fixed"/></h1>
        <p class="note"><xsl:value-of select="xs:annotation/xs:documentation"/></p>
        
        <h2>Metadata</h2>
        <xsl:call-template name="metadata-table">
             <xsl:with-param name="metadataNode" select="ancestor::xs:schema/xs:annotation/xs:appinfo/rdf:RDF/rdf:Description"/>
        </xsl:call-template>
        
        <h2>Data Model Structure</h2>
        <p>This section describes the main components of the data model.</p>
        <xsl:for-each select=".//xs:restriction/xs:sequence/xs:element">
            <xsl:if test="not(@name='label' or @name='dm-language' or @name='dm-encoding' or @name='current-state' or @name='creation_timestamp' or @name='instance_id' or @name='instance_version')">
                <xsl:call-template name="component-details">
                    <xsl:with-param name="element" select="."/>
                    <xsl:with-param name="level" select="1"/>
                </xsl:call-template>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!-- Generic template to render a component (called recursively) -->
    <xsl:template name="component-details">
        <xsl:param name="element"/>
        <xsl:param name="level"/>

        <xsl:variable name="componentType" select="key('name-to-complextype', $element/@type)"/>
        <xsl:variable name="baseType" select="$componentType//xs:restriction/@base"/>
        
        <h3>
            <xsl:value-of select="$element/@name"/>
            <span class="note">(<xsl:value-of select="substring-after($baseType, ':')"/>)</span>
        </h3>

        <p>
            <span class="label">Label:</span> <xsl:value-of select="$componentType//xs:element[@name='label']/@fixed"/><br/>
            <span class="label">Description:</span> <span class="note"><xsl:value-of select="$componentType/xs:annotation/xs:documentation"/></span><br/>
            <xsl:call-template name="render-semantic-links">
                <xsl:with-param name="componentNode" select="$componentType"/>
            </xsl:call-template>
        </p>

        <!-- If this is a Cluster, recurse and display its children -->
        <xsl:if test="substring-after($baseType, ':') = 'ClusterType'">
            <div style="margin-left: {$level * 2}em; border-left: 2px solid #bdc3c7; padding-left: 1em;">
                <xsl:for-each select="$componentType//xs:restriction/xs:sequence/xs:element[not(@name='label')]">
                    <!-- Find the element definition using the ref -->
                    <xsl:variable name="childElement" select="key('name-to-complextype', //xs:element[@name=current()/@ref]/@type)"/>
                    <xsl:call-template name="component-details">
                         <xsl:with-param name="element" select="//xs:element[@name=current()/@ref]"/>
                         <xsl:with-param name="level" select="$level + 1"/>
                    </xsl:call-template>
                </xsl:for-each>
            </div>
        </xsl:if>
    </xsl:template>

    <!-- Template for rendering RDF semantic links -->
    <xsl:template name="render-semantic-links">
        <xsl:param name="componentNode"/>
        <xsl:if test="$componentNode/xs:annotation/xs:appinfo/rdfs:Class/*[local-name() != 'subClassOf' and local-name() != 'label']">
            <span class="label">Semantic Links:</span>
            <div class="semantic-links" style="margin-left: 1em;">
                <xsl:for-each select="$componentNode/xs:annotation/xs:appinfo/rdfs:Class/*[local-name() != 'subClassOf' and local-name() != 'label']">
                    - <xsl:value-of select="local-name()"/>: 
                    <a href="{@rdf:resource}" target="_blank">
                        <xsl:value-of select="@rdf:resource"/>
                    </a>
                    <br/>
                </xsl:for-each>
            </div>
        </xsl:if>
    </xsl:template>

    <!-- Template for the metadata table -->
    <xsl:template name="metadata-table">
        <xsl:param name="metadataNode"/>
        <table>
            <tr><th>Property</th><th>Value</th></tr>
            <tr><td><b>Title</b></td><td><xsl:value-of select="$metadataNode/dc:title"/></td></tr>
            <tr><td><b>Identifier</b></td><td><span class="code"><xsl:value-of select="$metadataNode/dc:identifier"/></span></td></tr>
            <tr><td><b>Creator</b></td><td><xsl:value-of select="$metadataNode/dc:creator"/></td></tr>
            <tr>
                <td><b>Contributors</b></td>
                <td>
                    <xsl:for-each select="$metadataNode/dc:contributor">
                        <xsl:value-of select="."/><br/>
                    </xsl:for-each>
                </td>
            </tr>
            <tr><td><b>Date</b></td><td><xsl:value-of select="$metadataNode/dc:date"/></td></tr>
            <tr><td><b>Description</b></td><td><xsl:value-of select="$metadataNode/dc:description"/></td></tr>
            <tr><td><b>Rights</b></td><td><xsl:value-of select="$metadataNode/dc:rights"/></td></tr>
            <tr><td><b>Language</b></td><td><xsl:value-of select="$metadataNode/dc:language"/></td></tr>
        </table>
    </xsl:template>

</xsl:stylesheet>