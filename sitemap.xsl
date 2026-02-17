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
          }

          h1 {
            margin-bottom: 20px;
          }

          table {
            width: 100%;
            border-collapse: collapse;
          }

          th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
          }

          th {
            background-color: #f4f4f4;
          }

          tr:nth-child(even) {
            background-color: #fafafa;
          }

          a {
            color: #6a0dad;
            text-decoration: none;
            word-break: break-all;
          }

          a:hover {
            text-decoration: underline;
          }

          .muted {
            color: #888;
            font-size: 0.9em;
          }
        </style>
      </head>
      <body>
        <h1>Securedly Sitemap</h1>

        <table>
          <tr>
            <th>URL</th>
            <th>Priority</th>
            <th>Last Modified</th>
          </tr>

          <xsl:for-each select="s:urlset/s:url">
            <tr>
              <td>
                <a href="{s:loc}">
                  <xsl:value-of select="s:loc"/>
                </a>
              </td>

              <td>
                <xsl:choose>
                  <xsl:when test="s:priority">
                    <xsl:value-of select="s:priority"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <span class="muted">—</span>
                  </xsl:otherwise>
                </xsl:choose>
              </td>

              <td>
                <xsl:choose>
                  <xsl:when test="s:lastmod">
                    <xsl:value-of select="s:lastmod"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <span class="muted">—</span>
                  </xsl:otherwise>
                </xsl:choose>
              </td>

            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
