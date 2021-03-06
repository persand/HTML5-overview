<?xml version="1.0" encoding="UTF-8"?>
<!-- This XSLT transforms https://github.com/dret/HTML5-overview into a jekyll site. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:output name="markdown" method="text" encoding="UTF-8"/>
    <xsl:output name="markup" method="xhtml" encoding="UTF-8" omit-xml-declaration="yes"/>
    <xsl:variable name="post-dir" select="'_posts'"/>
    <xsl:variable name="status-index" select="( 'PER'                            , 'REC'            , 'PR'                      , 'CR'                       , 'WD'            , 'NOTE' , 'other', 'abandoned' )"/>
    <xsl:variable name="status-title" select="( 'Proposed Edited Recommendation' , 'Recommendation' , 'Proposed Recommendation' , 'Candidate Recommendation' , 'Working Draft' , 'Note' , 'Other', 'Abandoned' )"/>
    <!-- -->
    <xsl:template match="/">
        <xsl:result-document href="_includes/specs.html" format="markup">
            <div class="specs">
                <p>
                    <xsl:text>Currently this site tracks </xsl:text>
                    <xsl:value-of select="count(//specs/spec)"/>
                    <xsl:text> specifications, </xsl:text>
                    <xsl:value-of select="count(//specs/spec[@status = ('WD','CR','PER','PR','REC','other')])"/>
                    <xsl:text> of which are active, while the remaining </xsl:text>
                    <xsl:value-of select="count(//specs/spec[@status = ('NOTE', 'abandoned')])"/>
                    <xsl:text> have been abandoned. </xsl:text>
                    <xsl:value-of select="count(//specs/spec[@status = ('WD','CR','PER','PR','REC','NOTE')])"/>
                    <xsl:text> are W3C specifications, and the remaining </xsl:text>
                    <xsl:value-of select="count(//specs/spec[@status = ('other','abandoned')])"/>
                    <xsl:text> are published/developed elsewhere. Two separate lists are published here:</xsl:text>
                    <ul>
                        <li>
                            <a href="current">
                                <xsl:value-of select="count(//specs/spec[@status = ('WD','CR','PER','PR','REC','other')])"/>
                                <xsl:text> current specifications</xsl:text>
                            </a>
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="count(//specs/spec[@status = ('WD','CR','PER','PR','REC')])"/>
                            <xsl:text> W3C, </xsl:text>
                            <xsl:value-of select="count(//specs/spec[@status = ('other')])"/>
                            <xsl:text> other)</xsl:text>
                        </li>
                        <li>
                            <a href="abandoned">
                                <xsl:value-of select="count(//specs/spec[@status = ('NOTE','abandoned')])"/>
                                <xsl:text> abandoned specifications</xsl:text>
                            </a>
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="count(//specs/spec[@status = ('NOTE')])"/>
                            <xsl:text> W3C, </xsl:text>
                            <xsl:value-of select="count(//specs/spec[@status = ('abandoned')])"/>
                            <xsl:text> other)</xsl:text>
                        </li>
                    </ul>
                </p>
            </div>
        </xsl:result-document>
        <xsl:result-document href="current.md" format="markdown">
            <xsl:text>---&#xa;</xsl:text>
            <xsl:text>layout:      page&#xa;</xsl:text>
            <xsl:text>category:    specs&#xa;</xsl:text>
            <xsl:text>title:       "Current HTML5 Specifications"&#xa;</xsl:text>
            <xsl:text>short_title: "Current Specs"&#xa;</xsl:text>
            <xsl:text>permalink:   /current&#xa;</xsl:text>
            <xsl:text>&#xa;</xsl:text>
            <xsl:text>---&#xa;&#xa;</xsl:text>
            <xsl:text>This is a list of all </xsl:text>
            <xsl:value-of select="count(//specs/spec[@status = ('WD','CR','PER','PR','REC','other')])"/>
            <xsl:text> current HTML5 specs, first [</xsl:text>
            <xsl:value-of select="count(//specs/spec[@status = ('WD','CR','PER','PR','REC')])"/>
            <xsl:text> W3C TR](#TR) (grouped by status), and then [</xsl:text>
            <xsl:value-of select="count(//specs/spec[@status = ('other')])"/>
            <xsl:text> others](#others):

## &lt;a name="TR"/>W3C TR Specifications (</xsl:text>
            <xsl:value-of select="count(//specs/spec[@status = ('WD','CR','PER','PR','REC')])"/>
            <xsl:text> Specs)&#xa;</xsl:text>
            <xsl:for-each-group select="//specs/spec" group-by="@status">
                <xsl:sort select="index-of($status-index, current-grouping-key())"/>
                <xsl:choose>
                    <xsl:when test="@status ne 'NOTE' and @status ne 'abandoned'">
                        <xsl:call-template name="generate-section"/>
                    </xsl:when>
                    <xsl:when test="@status eq 'NOTE'">
                        <xsl:result-document href="abandoned.md" format="markdown">
                            <xsl:text>---&#xa;</xsl:text>
                            <xsl:text>layout:      page&#xa;</xsl:text>
                            <xsl:text>category:    specs&#xa;</xsl:text>
                            <xsl:text>title:       "Abandoned HTML5 Specifications"&#xa;</xsl:text>
                            <xsl:text>short_title: "Abandoned Specs"&#xa;</xsl:text>
                            <xsl:text>permalink:   /abandoned&#xa;</xsl:text>
                            <xsl:text>&#xa;</xsl:text>
                            <xsl:text>---&#xa;&#xa;</xsl:text>
                            <xsl:text>This is a list of [W3C](http://www.w3.org/ "World Wide Web Consortium") HTML5 [NOTE documents](http://www.w3.org/2014/Process-20140801/#rec-advance "W3C Technical Reports"), which are documents that are no longer under development by the W3C, and other abandoned HTML5 specifications. Please keep in mind that [W3C NOTE documents have no official standing and often represent outdated or abandoned work](http://www.w3.org/2014/Process-20140801/#maturity-levels).&#xa;&#xa;</xsl:text>
                            <xsl:call-template name="generate-section"/>
                            <xsl:for-each-group select="//specs/spec[@status eq 'abandoned']" group-by="@status">
                                <xsl:call-template name="generate-section"/>
                            </xsl:for-each-group>
                        </xsl:result-document>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each-group>
        </xsl:result-document>
        <xsl:for-each select="//spec[@status = ('WD','CR','PER','PR','REC','NOTE')]">
            <xsl:result-document href="spec/{@id}.html" format="markup">
                <xsl:text>---&#xa;</xsl:text>
                <xsl:text>layout:   page&#xa;</xsl:text>
                <xsl:text>category: spec&#xa;</xsl:text>
                <xsl:text>title:    "</xsl:text>
                <xsl:value-of select="replace(title/text(), '&#34;', '&amp;#34;')"/>
                <xsl:text>"&#xa;</xsl:text>
                <xsl:text>---&#xa;&#xa;</xsl:text>
                <table cellpadding="5">
                    <tr>
                        <th valign="top" align="right"><em>Current&#160;Status:</em></th>
                        <td>
                            <xsl:value-of select="$status-title[index-of($status-index, current()/@status)]"/>
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="@status"/>
                            <xsl:text>)</xsl:text>
                        </td>
                    </tr>
                    <tr>
                        <th valign="top" align="right"><em>Canonical&#160;URI:</em></th>
                        <td>
                            <code>
                                <a href="http://www.w3.org/TR/{@id}">
                                    <xsl:text>http://www.w3.org/TR/</xsl:text>
                                    <xsl:value-of select="@id"/>
                                </a>
                            </code>
                        </td>
                    </tr>
                    <tr>
                        <th valign="top" align="right"><em>Abstract:</em></th>
                        <td>
                            <xsl:value-of select="abstract/text()"/>
                        </td>
                    </tr>
                </table>
                <br/>
                <hr/>
                <br/>
                <h3 id="history">
                    <q>
                        <xsl:value-of select="title/text()"/>
                    </q>
                    <xsl:text> Updates:</xsl:text>
                </h3>
                <ul>
                    <xsl:text>&#xa;{% for post in site.posts %}&#xa;</xsl:text>
                    <xsl:text>{% if post.tags contains "</xsl:text>
                    <xsl:value-of select="@id"/>
                    <xsl:text>" %}</xsl:text>
                    <li>
                        <a href="{{{{ post.url | prepend: site.baseurl }}}}">{{ post.date | date: "%b %-d, %Y" }}: {{ post.title }}</a>
                    </li>
                    <xsl:text>&#xa;{% endif %}&#xa;</xsl:text>
                    <xsl:text>{% endfor %}</xsl:text>
                </ul>
            </xsl:result-document>
        </xsl:for-each>
        <xsl:for-each select="//log/entry">
            <xsl:variable name="date" select="format-date(@date, '[Y0001]-[M01]-[D01]')"/>
            <xsl:result-document href="{$post-dir}/{$date}-update.md" format="markdown">
                <xsl:text>---&#xa;</xsl:text>
                <xsl:text>layout: post&#xa;</xsl:text>
                <xsl:text>title:  "</xsl:text>
                <xsl:apply-templates select="node()" mode="md-title"/>
                <xsl:text>"&#xa;</xsl:text>
                <xsl:text>date:   </xsl:text>
                <xsl:value-of select="$date"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:text>tags:   [ </xsl:text>
                <xsl:for-each select=".//a[starts-with(@href, 'http://www.w3.org/TR/')]">
                    <xsl:value-of select="substring-before(substring-after(@href, 'http://www.w3.org/TR/'), '/')"/>
                    <xsl:if test="position() ne last()">
                        <xsl:text> , </xsl:text>
                    </xsl:if>
                </xsl:for-each>
                <xsl:text> ]&#xa;</xsl:text>
                <xsl:text>---&#xa;&#xa;</xsl:text>
                <xsl:apply-templates select="node()"/>
                <xsl:text>&#xa;&#xa;</xsl:text>
            </xsl:result-document>
        </xsl:for-each>
        <xsl:for-each select="//log/rename">
            <xsl:variable name="date" select="format-date(@date, '[Y0001]-[M01]-[D01]')"/>
            <xsl:result-document href="{$post-dir}/{$date}-update.md" format="markdown">
                <xsl:text>---&#xa;</xsl:text>
                <xsl:text>layout: post&#xa;</xsl:text>
                <xsl:text>title:  "renamed \"</xsl:text>
                <xsl:value-of select="old/@title"/>
                <xsl:text> (</xsl:text>
                <xsl:value-of select="old/@id"/>
                <xsl:text>)\" to \"</xsl:text>
                <xsl:value-of select="new/@title"/>
                <xsl:text> (</xsl:text>
                <xsl:value-of select="new/@id"/>
                <xsl:text>)\""&#xa;</xsl:text>
                <xsl:text>date:   </xsl:text>
                <xsl:value-of select="$date"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:text>tags:   [ </xsl:text>
                <xsl:value-of select="old/@id"/>
                <xsl:text> , </xsl:text>
                <xsl:value-of select="new/@id"/>
                <xsl:text> ]&#xa;</xsl:text>
                <xsl:text>---&#xa;&#xa;</xsl:text>
                <xsl:text>renamed "[</xsl:text>
                <xsl:value-of select="old/@title"/>
                <xsl:text> (`</xsl:text>
                <xsl:value-of select="old/@id"/>
                <xsl:text>`)](/spec/</xsl:text>
                <xsl:value-of select="old/@id"/>
                <xsl:text>)" to "[</xsl:text>
                <xsl:value-of select="new/@title"/>
                <xsl:text> (`</xsl:text>
                <xsl:value-of select="new/@id"/>
                <xsl:text>`)](/spec/</xsl:text>
                <xsl:value-of select="new/@id"/>
                <xsl:text>)"&#xa;&#xa;</xsl:text>
            </xsl:result-document>
            <xsl:if test="new/@id ne old/@id">
                <xsl:result-document href="spec/{old/@id}.html" format="markup">
                    <xsl:text>---&#xa;</xsl:text>
                    <xsl:text>layout:   page&#xa;</xsl:text>
                    <xsl:text>category: spec&#xa;</xsl:text>
                    <xsl:text>title:    "</xsl:text>
                    <xsl:value-of select="old/@title"/>
                    <xsl:text>"&#xa;</xsl:text>
                    <xsl:text>---&#xa;&#xa;</xsl:text>
                    <p>Old name/id for <a href="{new/@id}"><xsl:value-of select="new/@title"/> (<code><xsl:value-of select="new/@id"/></code>)</a>.</p>
                    <br/>
                    <hr/>
                    <br/>
                    <h3 id="history">
                        <q>
                            <xsl:value-of select="old/@title"/>
                        </q>
                        <xsl:text> Updates:</xsl:text>
                    </h3>
                    <ul>
                        <xsl:text>&#xa;{% for post in site.posts %}&#xa;</xsl:text>
                        <xsl:text>{% if post.tags contains "</xsl:text>
                        <xsl:value-of select="old/@id"/>
                        <xsl:text>" %}</xsl:text>
                        <li>
                            <a href="{{{{ post.url | prepend: site.baseurl }}}}">{{ post.date | date: "%b %-d, %Y" }}: {{ post.title }}</a>
                        </li>
                        <xsl:text>&#xa;{% endif %}&#xa;</xsl:text>
                        <xsl:text>{% endfor %}</xsl:text>
                    </ul>
                </xsl:result-document>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="a">
        <xsl:text>"[</xsl:text>
        <xsl:value-of select=".//text()"/>
        <xsl:text>](</xsl:text>
        <xsl:choose>
            <xsl:when test="starts-with(@href, 'http://www.w3.org/TR/')">
                <xsl:text>/spec/</xsl:text>
                <xsl:value-of select="substring-before(substring-after(@href, 'http://www.w3.org/TR/'), '/')"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="@href"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>)"</xsl:text>
    </xsl:template>
    <xsl:template match="a" mode="md-title">
        <xsl:text>\"</xsl:text>
        <xsl:variable name="apos" select='"&apos;"'/>
        <xsl:value-of select="replace(string-join(.//text()), '&#34;', $apos)"/>
        <xsl:text>\"</xsl:text>
    </xsl:template>
    <xsl:template name="generate-section">
        <xsl:choose>
            <xsl:when test="current-grouping-key() eq 'other'">
                <xsl:text>&#xa;## &lt;a name="others"/>Non-W3C Specifications (</xsl:text>
            </xsl:when>
            <xsl:when test="current-grouping-key() eq 'abandoned'">
                <xsl:text>&#xa;### Abandoned Specifications (</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>&#xa;### &lt;a name="</xsl:text>
                <xsl:value-of select="current-grouping-key()"/>
                <xsl:text>"/></xsl:text>
                <xsl:value-of select="$status-title[index-of($status-index, current-grouping-key())]"/>
                <xsl:text>s (</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="count(current-group())"/>
        <xsl:text> Specs)&#xa;&#xa;</xsl:text>
        <xsl:for-each select="current-group()">
            <xsl:sort select="title/text()"/>
            <xsl:text>* [</xsl:text>
            <xsl:value-of select="title/text()"/>
            <xsl:text>](</xsl:text>
            <xsl:if test="current-grouping-key() ne 'other'">
                <xsl:text>spec/</xsl:text>
            </xsl:if>
            <xsl:value-of select="@id"/>
            <xsl:text>)</xsl:text>
            <xsl:if test="exists(@ed)">
                <xsl:text> ([ED](</xsl:text>
                <xsl:value-of select="@ed"/>
                <xsl:text> "Editor's Draft"))</xsl:text>
            </xsl:if>
            <xsl:text>&#xa;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>