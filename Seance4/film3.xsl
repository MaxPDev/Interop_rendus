<?xml version='1.0' encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" encoding="UTF-8" indent="yes" />

  <xsl:template match="/FILMS">
    <html>

      <head>
        <title>Film</title>
      </head>

      <body>

        <h1>List des <xsl:value-of select="count(./Film)"/> films de ma base</h1>
        <table border="1">
          <tbody>
            <tr>
              <td>
                <strong>N°</strong>
              </td>
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
              <td>
                <strong>Affichage</strong>
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
        <b><xsl:value-of select="position()" /></b>
      </td>
      <td>
        <b><xsl:value-of select="Titre" /></b>
      </td>
      <td>
        <xsl:apply-templates select="Realisateur"/>
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
      <td>
        <a>
          <xsl:attribute name="href">
              <xsl:value-of select="@Affiche"/>
          </xsl:attribute>
          <img width="70">
              <xsl:attribute name="src">
                  <xsl:value-of select="@Affiche"/>
              </xsl:attribute>
          </img>
        </a>
      </td>
    </tr>

  </xsl:template>

  <xsl:template match="Realisateur">
    <b><xsl:value-of select="./Nom"/></b>
    <xsl:text> </xsl:text>
    <xsl:value-of select="./Prenom"/>
    <br/>
   </xsl:template>

</xsl:stylesheet>

<!-- 
<xsl:text>   </xsl:text>
<a href="{@Affiche}"></a> -->