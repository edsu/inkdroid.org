<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/opml">
	<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
            <head>
                <title>Ed's Podcast Subscriptions</title>
                <style type="text/css">
                    body {
                        margin: 5% 10% 5% 10%;
                        font-size: 14pt;
                        font-family: 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif;
                    }
                    ul {
                        margin: 10px;
                    }
                    li {
                      margin-left: 10px;
                      margin-bottom: 10px;
                    }
                    @media(prefers-color-scheme: dark) {
                      body {
                        background-color: black;
                        color: white;
                      }
                      a {
                        color: #33ff00;
                      }
                      a:hover {
                        color: #33ff00;
                      }
                    }
 		</style>
	    </head>
	    <body>
                <h1>Ed's Podcast Subscriptions 🎧</h1>
                <p>
                    This is a list of the podcasts I listen to on my Android phone with the <a href="https://antennapod.org/">AntennaPod</a> open source app. I occassionally export the OPML file and drop it here as a backup, and to share them with you too! If you'd like to share yours export your OPML and adapt my <a href="style.xsl">XSL stylesheet</a>.
                </p>
                <p><time><xsl:value-of select="head/dateCreated"/></time></p>
		<xsl:apply-templates select="body/outline"/>
	    </body>
	</html>
    </xsl:template>
    <xsl:template match="outline" xmlns="http://www.w3.org/1999/xhtml">
	<xsl:choose>
	    <xsl:when test="@type">
		<xsl:choose>
		    <xsl:when test="@xmlUrl">
			<li>
			    <a href="{@htmlUrl}"><xsl:value-of select="@text"/></a>
			</li>
		    </xsl:when>
		    <xsl:otherwise>
			<li>
			    <a href="{@url}"><xsl:value-of select="@text"/></a>
			</li>
		    </xsl:otherwise>
		</xsl:choose>
	    </xsl:when>
	    <xsl:otherwise>
		<details open="open">
		    <summary>
			<xsl:value-of select="@text"/>
		    </summary>
		    <ul>
			<xsl:apply-templates select="outline"/>
		    </ul>
		</details>
	    </xsl:otherwise>
	</xsl:choose>
    </xsl:template>
</xsl:stylesheet>
