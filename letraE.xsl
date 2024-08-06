<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/films">
    <html>
      <body>
        <xsl:variable name="minLength">
          <xsl:for-each select="film[@rating='G']">
            <xsl:sort select="@length" data-type="number" order="ascending"/>
            <xsl:if test="position() = 1">
              <xsl:value-of select="@length"/>
            </xsl:if>
          </xsl:for-each>
        </xsl:variable>
        
        <ul>
          <xsl:for-each select="film[@rating='G' and @length = $minLength]">
            <li>
              <xsl:value-of select="@title"/>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
