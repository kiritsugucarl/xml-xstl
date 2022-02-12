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
                            <tr style="letter-spacing : 2px;">
                                <th>Student Number</th>
                                <th>Name</th>
                                <th>Hobby</th>    
                            </tr>

                            <xsl:for-each select="Assignment/student">
                                <tr>
                                    <td>
                                        <i>
                                            <xsl:value-of select = "@id"/>
                                        </i>
                                    </td>
                                    <td>
                                        <xsl:value-of select="name"/>
                                    </td>
                                    <td style="color:#ff0000;">
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