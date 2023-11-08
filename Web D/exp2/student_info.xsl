<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="style.css"/>
            </head>
            <body>
                <xsl:apply-templates select="studentInformation/student"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="student">
        <div class="student">
            <div class="name">
                <xsl:value-of select="name"/>
            </div>
            <div class="age">
                Age: <xsl:value-of select="age"/>
            </div>
            <div class="gender">
                Gender: <xsl:value-of select="gender"/>
            </div>
            <div class="address">
                <xsl:value-of select="address/street"/>, <xsl:value-of select="address/city"/>, <xsl:value-of select="address/state"/> - <xsl:value-of select="address/zipcode"/>
            </div>
            <div class="contact">
                Email: <xsl:value-of select="contact/email"/><br/>
                Phone: <xsl:value-of select="contact/phone"/>
            </div>
            <div class="courses">
                <xsl:apply-templates select="courses/course"/>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="course">
        <div class="course">
            <span class="course-name">
                <xsl:value-of select="name"/>
            </span>
            - Grade: <xsl:value-of select="grade"/>
        </div>
    </xsl:template>

</xsl:stylesheet>
