<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
  
  <xsl:template match="ite">
    <instituto>
      <nombre><xsl:value-of select="@nombre" /></nombre>
      <web><xsl:value-of select="@web" /></web>
      <empresa><xsl:value-of select="empresa" /></empresa>
      <telefono><xsl:value-of select="telefono" /></telefono>
      <personal>
        <xsl:apply-templates select="profesores/profesor" />
      </personal>
      <director>
        <xsl:apply-templates select="director" />
      </director>
      <jefe_estudios>
        <xsl:apply-templates select="jefe_estudios" />
      </jefe_estudios>
      <ciclos>
        <xsl:apply-templates select="ciclos/ciclo" />
      </ciclos>
    </instituto>
  </xsl:template>
  
  <xsl:template match="profesor">
    <profesor>
      <xsl:attribute name="id"><xsl:value-of select="id" /></xsl:attribute>
      <xsl:value-of select="nombre" />
    </profesor>
  </xsl:template>
  
  <xsl:template match="director">
    <nombre><xsl:value-of select="nombre" /></nombre>
    <despacho><xsl:value-of select="despacho" /></despacho>
  </xsl:template>
  
  <xsl:template match="jefe_estudios">
    <nombre><xsl:value-of select="nombre" /></nombre>
    <despacho><xsl:value-of select="despacho" /></despacho>
  </xsl:template>
  
  <xsl:template match="ciclo">
    <ciclo>
      <xsl:attribute name="id"><xsl:value-of select="@id" /></xsl:attribute>
      <nombre><xsl:value-of select="nombre" /></nombre>
      <grado><xsl:value-of select="grado" /></grado>
      <decretoTitulo año="{decretoTitulo/@año}" />
    </ciclo>
  </xsl:template>
  
</xsl:stylesheet>
