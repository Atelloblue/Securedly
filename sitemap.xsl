<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Securedly Sitemap</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #ffffff;
            color: #000000;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
          }

          .container {
            text-align: center;
            max-width: 600px;
            width: 100%;
          }

          h1 {
            margin-bottom: 30px;
          }

          ul {
            list-style-type: none;
            padding: 0;
          }

          li {
            margin: 10px 0;
          }

          a {
            text-decoration: none;
            color: #6a0dad; /* purple */
            font-weight: 500;
          }

          a:hover {
            text-decoration: underline;
          }
        </style>
      </head>
      <body>
        <div class="container">
          <h1>Securedly Sitemap</h1>
          <ul>
            <xsl:for-each select="s:urlset/s:url">
              <li>
                <a href="{s:loc}">
                  <xsl:value-of select="s:loc"/>
                </a>
              </li>
            </xsl:for-each>
          </ul>
        </div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
