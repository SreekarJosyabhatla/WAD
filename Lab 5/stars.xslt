<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Stars XML Data</title>
        <style>
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th, td {
            padding: 8px;
            border: 1px solid #ddd;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
          tr:hover {
            background-color: #f5f5f5;
          }
        </style>
      </head>
      <body>
        <h1>Stars XML Data</h1>
        <table>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Type</th>
            <th>Age</th>
            <th>Distance</th>
            <th>Constellation</th>
          </tr>
          <xsl:apply-templates select="Stars/star" />
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="star">
    <tr>
      <td><xsl:value-of select="id"/></td>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="type"/></td>
      <td><xsl:value-of select="age"/></td>
      <td><xsl:value-of select="distance"/></td>
      <td><xsl:value-of select="constellation"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
