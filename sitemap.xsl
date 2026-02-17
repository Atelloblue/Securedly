<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Securedly Sitemap</title>
        <meta name="robots" content="noindex, follow"/>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #ffffff;
            color: #000000;
            margin: 40px;
            line-height: 1.6;
          }

          h1 {
            margin-bottom: 20px;
          }

          ul {
            list-style-type: none;
            padding-left: 0;
          }

          li {
            margin: 10px 0;
          }

          a {
            color: #6a0dad;
            text-decoration: none;
            word-break: break-all;
          }

          a:hover {
            text-decoration: underline;
          }

          .priority {
            color: #555;
            font-size: 0.9em;
            margin-left: 10px;
          }
        </style>
      </head>
      <body>
        <h1>Securedly Sitemap</h1>
        <ul>
          <xsl:for-each select="s:urlset/s:url">
            <li>
              <a href="{s:loc}">
                <xsl:value-of select="s:loc"/>
              </a>

              <xsl:if test="s:priority">
                <span class="priority">
                  (Priority: <xsl:value-of select="s:priority"/>)
                </span>
              </xsl:if>

            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
