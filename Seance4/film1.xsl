<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" />

  <xsl:template match="/FILMS">
  <html>

    <head>
      <title>Film</title>
    </head>

        <body>

            <h1>List des films de ma base</h1>
            <ul>
                <xsl:apply-templates select="./Film" />
            </ul>
                
        </body>
    </html>
</xsl:template>

<xsl:template match="Film">
    <li>
        <xsl:value-of select="Titre" />
    </li>
  </xsl:template>

</xsl:stylesheet>