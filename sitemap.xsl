<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Securedly Sitemap</title>
        <style>
          body { font-family: Arial, sans-serif; line-height: 1.6; margin: 20px; }
          h1 { color: #2E8B57; }
          ul { list-style-type: none; padding-left: 0; }
          li { margin: 5px 0; }
          a { text-decoration: none; color: #1a0dab; }
          a:hover { text-decoration: underline; }
          small { color: #555; }
        </style>
      </head>
      <body>
        <h1>Securedly Sitemap</h1>
        <ul>
          <xsl:for-each select="urlset/url">
            <li>
              <a href="{loc}"><xsl:value-of select="loc"/></a>
              <xsl:if test="lastmod">
                <br/><small>Last modified: <xsl:value-of select="lastmod"/></small>
              </xsl:if>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
