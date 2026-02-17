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
            margin: 8px 0;
          }

          a {
            color: #6a0dad; /* purple */
            text-decoration: none;
            word-break: break-all;
          }

          a:hover {
            text-decoration: underline;
          }
        </style>
      </head>
      <body>
        <h1>Securedly Sitemap</h1>
        <p>This sitemap contains the publicly accessible URLs for Securedly.</p>
        <ul>
          <xsl:for-each select="s:urlset/s:url">
            <li>
              <a href="{s:loc}">
                <xsl:value-of select="s:loc"/>
              </a>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
