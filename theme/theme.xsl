<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:css="http://namespaces.plone.org/diazo/css" xmlns:dv="http://namespaces.plone.org/diazo" xmlns:dyn="http://exslt.org/dynamic" xmlns:esi="http://www.edge-delivery.org/esi/1.0" xmlns:exsl="http://exslt.org/common" xmlns:str="http://exslt.org/strings" xmlns:xhtml="http://www.w3.org/1999/xhtml" version="1.0" exclude-result-prefixes="exsl str css dv dyn xhtml esi">

<xsl:param name="path"/>


    <xsl:variable name="normalized_path"><xsl:value-of select="$path"/><xsl:if test="substring($path, string-length($path)) != '/'">/</xsl:if></xsl:variable>

    <xsl:output method="xml" indent="no" omit-xml-declaration="yes" media-type="text/html" encoding="UTF-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="text()">
        <!-- Filter out quoted &#13; -->
        <xsl:value-of select="str:replace(., '&#13;&#10;', '&#10;')"/>
    </xsl:template>

    <xsl:template match="style/text()|script/text()">
        <xsl:value-of select="str:replace(., '&#13;&#10;', '&#10;')" disable-output-escaping="yes"/>
    </xsl:template>

    <xsl:template match="/html/@xmlns|/html/@*[local-name()='xml:lang']">
        <!-- Filter out -->
    </xsl:template>

    <xsl:template match="*" mode="before-content"/>
    <xsl:template match="*" mode="before-content-children"/>
    <xsl:template match="*" mode="after-content"/>
    <xsl:template match="*" mode="after-content-children"/>
    <xsl:template match="*" mode="replace-content">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="." mode="before-content-children"/>
            <xsl:apply-templates select="node()"/>
            <xsl:apply-templates select="." mode="after-content-children"/>
        </xsl:copy>
    </xsl:template>


    <xsl:template match="/"><xsl:apply-templates select="." mode="r1"/></xsl:template>

    <!--THEME r1: https://www.tandj.net/~simkintr/reloading-->
    <xsl:template match="/" mode="r1"><html lang="en-us"><xsl:text>

    
    
    
    
    


</xsl:text><head><xsl:text>
    </xsl:text><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/><xsl:text>

    
        </xsl:text><base href="https://www.tandj.net/~simkintr/reloading"/><xsl:comment>[if lt IE 7]&gt;&lt;/base&gt;&lt;![endif]</xsl:comment><xsl:text>
    

    
        </xsl:text><meta content="A placeholder page for Django apps" name="description"/><xsl:text>

  
    </xsl:text><style type="text/css"><xsl:variable name="tag_text">@import url(https://www.tandj.net/%7Esimkintr/portal_css/simkintr/reset-cachekey-be62ebb6a6a6989787b9dba4e7414423.css);</xsl:variable><xsl:value-of select="$tag_text" disable-output-escaping="yes"/></style><xsl:text>

  
  
    </xsl:text><script type="text/javascript" src="https://www.tandj.net/%7Esimkintr/portal_javascripts/simkintr/resourceplone.app.jquery-cachekey-9b74e326b0f447c565e55627a2c88667.js"/><xsl:text>


</xsl:text><xsl:apply-templates select="//title"/><xsl:text>
        
    </xsl:text><link rel="canonical" href="https://www.tandj.net/%7Esimkintr/reloading"/><xsl:text>

    </xsl:text><link rel="shortcut icon" type="image/x-icon" href="https://www.tandj.net/%7Esimkintr/favicon.ico"/><xsl:text>
    </xsl:text><link rel="apple-touch-icon" href="https://www.tandj.net/%7Esimkintr/touch_icon.png"/><xsl:text>






    </xsl:text><link rel="search" href="https://www.tandj.net/%7Esimkintr/@@search" title="Search this site"/><xsl:text>



        
        
        
        
        

        </xsl:text><meta name="viewport" content="width=device-width, initial-scale=0.6666, maximum-scale=1.0, minimum-scale=0.6666"/><xsl:text>
        </xsl:text><meta name="generator" content="Plone - http://plone.org"/><xsl:text>
    
</xsl:text></head><xsl:text>

</xsl:text><body data-portal-url="https://www.tandj.net/%7Esimkintr" class="template-document_view portaltype-document site-simkintr section-reloading userrole-anonymous" dir="ltr" data-base-url="https://www.tandj.net/%7Esimkintr/reloading">

<div id="visual-portal-wrapper"><xsl:text>

        </xsl:text><div id="portal-top" class="row"><xsl:text>
</xsl:text><div class="cell width-full position-0"><xsl:text>
            </xsl:text><div id="portal-header"><xsl:text>
    </xsl:text><p class="hiddenStructure"><xsl:text>
  </xsl:text><a accesskey="2" href="https://www.tandj.net/~simkintr/reloading#content">Skip to content.</a><xsl:text> |

  </xsl:text><a accesskey="6" href="https://www.tandj.net/~simkintr/reloading#portal-globalnav">Skip to navigation</a><xsl:text>
</xsl:text></p><xsl:text>

</xsl:text><div id="portal-personaltools-wrapper"><xsl:text>

</xsl:text><p class="hiddenStructure">Personal tools</p><xsl:text>





</xsl:text></div><xsl:text>



</xsl:text><a id="portal-logo" title="Tim Simkins' Website" accesskey="1" href="https://www.tandj.net/%7Esimkintr"><xsl:text>
    </xsl:text><img src="https://www.tandj.net/%7Esimkintr/logo.png" alt="Tim Simkins' Website" title="Tim Simkins' Website" height="63" width="364"/></a><xsl:text>

</xsl:text></div><xsl:text>

</xsl:text></div><xsl:text>
        </xsl:text></div><xsl:text>
    </xsl:text><div id="portal-columns" class="row"><xsl:text>

        </xsl:text><div id="portal-column-content" class="cell width-13 position-3"><xsl:text>

            </xsl:text><div id="viewlet-above-content"><xsl:apply-templates select="//*[@id = 'portal-breadcrumbs']"/><xsl:text>
</xsl:text></div><xsl:text>

            
                </xsl:text><div class=""><xsl:text>

                    

                    

    </xsl:text><dl class="portalMessage info" id="kssPortalMessage" style="display:none"><xsl:text>
        </xsl:text><dt>Info</dt><xsl:text>
        </xsl:text><dd/><xsl:text>
    </xsl:text></dl><xsl:text>



                    
                        </xsl:text><xsl:apply-templates select="//*[@id = 'content']"/><xsl:text>
                    

                    
                </xsl:text></div><xsl:text>
            

            </xsl:text><div id="viewlet-below-content"><xsl:text>
</xsl:text></div><xsl:text>
        </xsl:text></div><xsl:text>

        
        </xsl:text><div id="portal-column-one" class="cell width-3 position-0"><xsl:text>
            
                
</xsl:text><div class="portletWrapper" data-portlethash="706c6f6e652e6c656674636f6c756d6e0a636f6e746578740a2f73696d6b696e74720a6e617669676174696f6e" id="portletwrapper-706c6f6e652e6c656674636f6c756d6e0a636f6e746578740a2f73696d6b696e74720a6e617669676174696f6e"><xsl:text>
</xsl:text><dl class="portlet portletNavigationTree"><xsl:text>

    </xsl:text><dt class="portletHeader hiddenStructure"><xsl:text>
        </xsl:text><span class="portletTopLeft"/><xsl:text>
        </xsl:text><a href="https://www.tandj.net/%7Esimkintr/sitemap" class="tile">Navigation</a><xsl:text>
        </xsl:text><span class="portletTopRight"/><xsl:text>
    </xsl:text></dt><xsl:text>

    </xsl:text><dd class="portletItem lastItem"><xsl:text>
        </xsl:text><ul class="navTree navTreeLevel0"><xsl:text>
            </xsl:text><li class="navTreeItem navTreeTopNode nav-section-tim-simkins-website"><xsl:text>
                </xsl:text><div><xsl:text>
                   </xsl:text><a href="https://www.tandj.net/%7Esimkintr" class="contenttype-plone-site" title=""><xsl:text>
                   
                   Home
                   
                   </xsl:text></a><xsl:text>
                </xsl:text></div><xsl:text>
            </xsl:text></li><xsl:text>
            



</xsl:text><li class="navTreeItem visualNoMarker navTreeFolderish section-news"><xsl:text>

    


        </xsl:text><a href="https://www.tandj.net/%7Esimkintr/news" class="state-published navTreeFolderish contenttype-folder" title=""><xsl:text>
            
            </xsl:text><span>News</span><xsl:text>
        </xsl:text></a><xsl:text>

        

    
</xsl:text></li><xsl:text>


</xsl:text><li class="navTreeItem visualNoMarker navTreeFolderish section-pictures"><xsl:text>

    


        </xsl:text><a href="https://www.tandj.net/%7Esimkintr/pictures" class="state-published navTreeFolderish contenttype-folder" title=""><xsl:text>
            
            </xsl:text><span>Pictures</span><xsl:text>
        </xsl:text></a><xsl:text>

        

    
</xsl:text></li><xsl:text>


</xsl:text><li class="navTreeItem visualNoMarker navTreeFolderish section-mustang"><xsl:text>

    


        </xsl:text><a href="https://www.tandj.net/%7Esimkintr/mustang" class="state-published navTreeFolderish contenttype-folder" title=""><xsl:text>
            
            </xsl:text><span>Mustang</span><xsl:text>
        </xsl:text></a><xsl:text>

        

    
</xsl:text></li><xsl:text>


</xsl:text><li class="navTreeItem visualNoMarker navTreeFolderish section-reloading"><xsl:text>

    


        </xsl:text><a href="https://www.tandj.net/%7Esimkintr/reloading" class="state-published navTreeFolderish contenttype-folder" title="This is data I've collected from various factory and reloaded ammunition. Disclaimer: These are my results, and are not guaranteed to be safe loads for your particular firearm or mine."><xsl:attribute name="class">state-published navTreeFolderish contenttype-folder <xsl:for-each select="//li[@class and contains(concat(' ', normalize-space(@class), ' '), ' section-reloading ')]//a"><xsl:value-of select="@class"/><xsl:if test="not(position() = last())"><xsl:text> </xsl:text></xsl:if></xsl:for-each></xsl:attribute><xsl:text>
            
            </xsl:text><span>Reloading Data</span><xsl:text>
        </xsl:text></a><xsl:text>

        

    
</xsl:text><xsl:apply-templates select="//li[@class and contains(concat(' ', normalize-space(@class), ' '), ' section-reloading ')]//ul"/></li><xsl:text>


</xsl:text><li class="navTreeItem visualNoMarker navTreeFolderish section-resume"><xsl:text>

    


        </xsl:text><a href="https://www.tandj.net/%7Esimkintr/resume" class="state-published navTreeFolderish contenttype-folder" title=""><xsl:text>
            
            </xsl:text><span>Resume</span><xsl:text>
        </xsl:text></a><xsl:text>

        

    
</xsl:text></li><xsl:text>




        </xsl:text></ul><xsl:text>
        </xsl:text><span class="portletBottomLeft"/><xsl:text>
        </xsl:text><span class="portletBottomRight"/><xsl:text>
    </xsl:text></dd><xsl:text>
</xsl:text></dl><xsl:text>

</xsl:text></div><xsl:text>

</xsl:text><div class="portletWrapper" data-portlethash="706c6f6e652e6c656674636f6c756d6e0a636f6e746578740a2f73696d6b696e74720a636f6e6e656374" id="portletwrapper-706c6f6e652e6c656674636f6c756d6e0a636f6e746578740a2f73696d6b696e74720a636f6e6e656374"><div class="portletStaticText portlet-static-connect"><xsl:text>
</xsl:text><dl class="connect"><xsl:text>
</xsl:text><dd><a class="external-link" href="https://twitter.com/simkintr">Twitter</a></dd><xsl:text>
</xsl:text><dd><a class="external-link" href="https://www.linkedin.com/pub/tim-simkins/2/a5/977">Linked In</a></dd></dl><xsl:text>
</xsl:text></div><xsl:text>

</xsl:text></div><xsl:text>




            
        </xsl:text></div><xsl:text>

        
        
    </xsl:text></div><xsl:text>


    </xsl:text><div id="portal-footer-wrapper" class="row"><xsl:text>
        </xsl:text><div class="cell width-full position-0"><xsl:text>
            </xsl:text><div id="portal-footer"><xsl:text>

    ©
    2020
    </xsl:text><a href="mailto:tim.simkins@tandj.net">Tim Simkins</a><xsl:text>

</xsl:text></div><xsl:text>

</xsl:text><script type="text/javascript"><xsl:variable name="tag_text">var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");  document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));</xsl:variable><xsl:value-of select="$tag_text" disable-output-escaping="yes"/></script><script type="text/javascript"><xsl:variable name="tag_text">var pageTracker = _gat._getTracker("UA-4683051-1");pageTracker._initData();pageTracker._trackPageview();</xsl:variable><xsl:value-of select="$tag_text" disable-output-escaping="yes"/></script><xsl:text>
        </xsl:text></div><xsl:text>
    </xsl:text></div><xsl:text>



</xsl:text></div>
</body><xsl:text>
</xsl:text></html>
</xsl:template>

<xsl:template match="//*[@id = 'home-breadcrumb']">
    <xsl:apply-templates select="." mode="before-content"/>
    <xsl:apply-templates select="." mode="replace-content"/>
    <xsl:apply-templates select="." mode="after-content"/>
</xsl:template>

<xsl:template match="//li[@class and contains(concat(' ', normalize-space(@class), ' '), ' section-reloading ')]//li[@class and contains(concat(' ', normalize-space(@class), ' '), ' hiddenStructure ')]">
    <xsl:apply-templates select="." mode="before-content"/>
    <xsl:apply-templates select="." mode="replace-content"/>
    <xsl:apply-templates select="." mode="after-content"/>
</xsl:template>



<xsl:template match="//*[@id = 'home-breadcrumb']" mode="replace-content">
        <a xmlns:diazo="http://namespaces.plone.org/diazo" href="https://www.tandj.net/~simkintr"> Home </a>
    </xsl:template>





<xsl:template match="//li[@class and contains(concat(' ', normalize-space(@class), ' '), ' section-reloading ')]//li[@class and contains(concat(' ', normalize-space(@class), ' '), ' hiddenStructure ')]" mode="replace-content">
<li xmlns:diazo="http://namespaces.plone.org/diazo" class="navTreeItem visualNoMarker">
    <a href="/~simkintr/reloading/notes" class="navTreeItem visualNoMarker">
        <span>Reloading Notes</span>
    </a>
</li>
    </xsl:template>



    <xsl:template mode="raw" match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates mode="raw" select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template mode="raw" match="text()">
        <!-- Filter out quoted &#13; -->
        <xsl:value-of select="str:replace(., '&#13;&#10;', '&#10;')"/>
    </xsl:template>
    <xsl:template mode="raw" match="style/text()|script/text()">
        <xsl:value-of select="str:replace(., '&#13;&#10;', '&#10;')" disable-output-escaping="yes"/>
    </xsl:template>
    <xsl:template mode="raw" match="/html/@xmlns|/html/@*[local-name()='xml:lang']">
        <!-- Filter out -->
    </xsl:template>
</xsl:stylesheet>
