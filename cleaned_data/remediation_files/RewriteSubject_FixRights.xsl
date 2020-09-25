<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.og/2001/XMLSchema"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns="http://www.loc.gov/mods/v3"
    xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd"
    exclude-result-prefixes="xs"
    xpath-default-namespace="http://www.loc.gov/mods/v3"
    version="2.0">
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="text()">
        <xsl:value-of select="normalize-space(.)"/>
    </xsl:template>
    
    <xsl:template match="subject"/>

    <xsl:template match="abstract"/>

    <xsl:template match="relatedItem[@displayLabel='Collection']"/>

    <xsl:template match="accessCondition"/>
    
    <xsl:template match='mods'>
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
            <subject authority="naf" valueURI="http://id.loc.gov/authorities/names/n50061043">
                <name>
                    <namePart>Insurance Company of North America</namePart>
                </name>
            </subject>
            <subject authority="lcsh" valueURI="http://id.loc.gov/authorities/subjects/sh85067049">
                <topic>Insurance companies</topic>
            </subject>
            <subject authority="naf" valueURI="http://id.loc.gov/authorities/names/n78095330">
                <geographic>United States</geographic>
            </subject>
            <relatedItem displayLabel="Collection" type="host">
                <titleInfo>
                    <title>Insurance Company of North America Records</title>
                </titleInfo>
                <identifier>MS-1184</identifier>
            </relatedItem>
            <accessCondition type="use and reproduction" xlink:href="http://rightsstatements.org/vocab/NoC-US/1.0/">No Copyright - United States</accessCondition>
        </xsl:copy>
    </xsl:template>
    
    <xsl:strip-space elements="*"/>
</xsl:stylesheet>