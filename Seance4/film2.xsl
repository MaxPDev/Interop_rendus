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
        <table border="1">
          <tbody>
            <tr>
              <td>
                <strong>Titre</strong>
              </td>
              <td>
                <strong>Réalisateur</strong>
              </td>
              <td>
                <strong>Pays</strong>
              </td>
              <td>
                <strong>Genre</strong>
              </td>
              <td>
                <strong>Durée</strong>
              </td>
            </tr>
            <xsl:apply-templates select="./Film" />
          </tbody>
        </table>

      </body>
    </html>
  </xsl:template>

  <xsl:template match="Film">
    <tr>
      <td>
        <b><xsl:value-of select="Titre" /></b>
      </td>
      <td>
        <xsl:value-of select="Realisateur/Nom" />
      </td>
      <td>
        <xsl:value-of select="Pays" />
      </td>
      <td>
        <xsl:value-of select="Genre" />
      </td>
      <td>
        <em><xsl:value-of select="Duree" /></em>
      </td>
    </tr>

  </xsl:template>

</xsl:stylesheet>