<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html style="font-family: Verdana;"> <!-- Declaration of basic font -->
        <head>
            <title>Assignment #1</title>

            <style>
                body
                {
                    background-color: #ede2e1; 
                    background: url(bg.jfif); 
                    background-size: cover;
                }

                .container
                {
                    transform: translate(-50%, -80%);
                    position: absolute;
                    top: 50%;
                    left: 50%;
                }

                h1, h2
                {
                    text-align: center; color: #faf7f0;
                }

                table
                {
                    margin-left: auto; 
                    margin-right: auto; 
                    text-align: center;
                    background: url(bg.webp);
                }

                th
                {
                    padding: 20px;
                    transition: 0.5s ease;
                    cursor: pointer;
                }

                th:hover
                {
                    background-color: #D05B5B;
                }

                a:hover
                {
                    color: green;
                }
            </style>

            
        </head>

            <body>
            <!-- Grouping -->
                <div class="container">
                <!-- title section -->
                    <h1>Assignment #1</h1>
                    <h2>Greil's Programmers </h2>
                    <!-- Display in Tables -->
                        <table border="1">
                            <!-- First table row [Headings/Titles] -->
                            <tr style="letter-spacing : 2px; font-size: 18px;">
                                <th>Student Number</th>
                                <th>Name</th>
                                <th>Hobby</th>
                                <th>Email</th>    
                            </tr>



                        <!-- Iterate through the xml data -->
                        <xsl:for-each select="Assignment/student">
                            <tr>
                                <td class="id" style = "padding: 10px;">
                                    <i> <!-- Make it italic -->
                                        <xsl:value-of select = "@id"/>
                                    </i>
                                </td>
                                <td class="name" style = "padding: 10px;">
                                    <xsl:value-of select="name"/>
                                </td>
                                <td class="hobby" style="color:#ff0000; padding: 10px;">
                                    <xsl:value-of select="hobbies"/>
                                </td>
                                <td class="link" style = "padding: 10px;">
                                    <!-- fetch the link -->
                                    <xsl:variable name="hyperlink"><xsl:value-of select="email"/></xsl:variable>
                                    <a style="text-decoration: none;" href="mailto:{$hyperlink}"><xsl:value-of select="email"/></a>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>