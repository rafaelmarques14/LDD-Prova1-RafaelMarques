<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/films">
    <html>
      <body>
        <table border="1">
          <thead>
            <tr>
              <th>Rating</th>
              <th>Quantity</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>G</td>
              <td><xsl:value-of select="count(/films/film[@rating='G'])"/></td>
            </tr>
            <tr>
              <td>NC-17</td>
              <td><xsl:value-of select="count(/films/film[@rating='NC-17'])"/></td>
            </tr>
            <tr>
              <td>PG</td>
              <td><xsl:value-of select="count(/films/film[@rating='PG'])"/></td>
            </tr>
            <tr>
              <td>PG-13</td>
              <td><xsl:value-of select="count(/films/film[@rating='PG-13'])"/></td>
            </tr>
            <tr>
              <td>R</td>
              <td><xsl:value-of select="count(/films/film[@rating='R'])"/></td>
            </tr>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
