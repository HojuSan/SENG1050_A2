<?xml version="1.0" encoding="UTF-8"?>

<!--Internal DTD-->
<!DOCTYPE recipes [
<!--+ one or more, * zero or more, ? zero or one-->
<!--must add two tags?-->
<!ELEMENT recipes (recipe+)>
    <!ATTLIST recipes type CDATA "Asian">
  <!ELEMENT recipe (chef?, origin, title, ingredients+, instructions+, time+,
  serves+, properties+, difficulty+, tastylevel+)>
  <!ELEMENT chef (givenname, surname)>  <!--attribute is nationality-->
    <!ATTLIST chef nationality CDATA "America">
  <!ELEMENT givenname (#PCDATA)>
  <!ELEMENT surname (#PCDATA)>
  <!ELEMENT nationality (#PCDATA)>
  <!ELEMENT origin (#PCDATA)>
  <!ELEMENT title (#PCDATA)>
  <!ELEMENT ingredients (main+, ingredient*)>
  <!ELEMENT main (#PCDATA)>
  <!ELEMENT ingredient (#PCDATA)>
  <!ELEMENT instructions (#PCDATA)>
  <!ELEMENT time (hours?, minutes?, seconds?)>
  <!ELEMENT hours (#PCDATA)>
  <!ELEMENT minutes (#PCDATA)>
  <!ELEMENT seconds (#PCDATA)>
  <!ELEMENT serves (#PCDATA)>
  <!ELEMENT properties (#PCDATA)>
  <!ELEMENT difficulty (#PCDATA)>
  <!ELEMENT tastylevel (#PCDATA)>
  <!ELEMENT url (#PCDATA)>
  <!ELEMENT img (#PCDATA)>
  <!ENTITY author "Juyong Kim">
  <!ENTITY copyright "c32244203">
  <!--<author>&author;&copyright;</author>-->
]>

<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">

        <xsl:for-each select="recipes/recipe">
            <div style="background-color:teal;color:white;padding:4px">
                <span style="font-weight:bold"><xsl:value-of select="title"/> - </span>
                <xsl:value-of select="main"/>
                </div>
            <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
                <p>
                <xsl:value-of select="instruction"/>
                <span style="font-style:italic"> (<xsl:value-of select="tastylevel"/> calories per serving)</span>
                </p>
            </div>
        </xsl:for-each>
    </body>
</html>

    <xsl:template match="/">
        <html>
            <body>
                <h2>Recipes</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>chef</th>
                        <th>origin</th>
                        <th>main</th>
                        <th>ingredients</th>
                        <th>instructions</th>
                        <th>time</th>
                        <th>serves</th>
                        <th>properties</th>
                        <th>difficulty</th>
                        <th>tastylevel</th>
                    </tr>

                    <xsl:for-each select="recipes/recipe">

                    <tr>
                        <td><xsl:value-of select="givenname"/></td>
                        <td><xsl:value-of select="origin"/></td>
                        <td><xsl:value-of select="main"/></td>
                        <td><xsl:value-of select="ingredient"/></td>
                        <td><xsl:value-of select="instructions"/></td>
                        <td><xsl:value-of select="time"/></td>
                        <td><xsl:value-of select="serves"/></td>
                        <td><xsl:value-of select="properties"/></td>
                        <td><xsl:value-of select="difficulty"/></td>
                        <td><xsl:value-of select="tastylevel"/></td>
                    </tr>

                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>