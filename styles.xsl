<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html style="font-family: Verdana;">
            <body style="
            background-color: #ede2e1; 
            background: url(bg-1.jpg); 
            background-size: cover;
            ">
                <div style="
                transform: translate(-50%, -80%);
                position: absolute;
                top: 50%;
                left: 50%;
                ">
                    <h1 style="text-align: center; color: #faf7f0;">Assignment #1</h1>
                    <h2 style="text-align: center; color: #faf7f0;">Greil's Programmers </h2>
                        <table border="1" style="
                        margin-left: auto; 
                        margin-right: auto; 
                        text-align: center;
                        background: url(bg.webp);
                        ">
                            <tr style="letter-spacing : 2px; font-size: 18px;">
                                <th style = "padding: 20px;">Student Number</th>
                                <th style = "padding: 20px;">Name</th>
                                <th style = "padding: 20px;">Hobby</th>    
                            </tr>

                            <xsl:for-each select="Assignment/student">
                                <tr>
                                    <td style = "padding: 10px;">
                                        <i>
                                            <xsl:value-of select = "@id"/>
                                        </i>
                                    </td>
                                    <td style = "padding: 10px;">
                                        <xsl:value-of select="name"/>
                                    </td>
                                    <td style="color:#ff0000; padding: 10px;">
                                        <xsl:value-of select="hobbies"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>