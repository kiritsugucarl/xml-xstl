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
                    background: url(background.jpg); 
                    background-size: cover;
                }

                .container
                {
                    transform: translate(-50%, -80%);
                    position: absolute;
                    top: 50%;
                    left: 50%;
                }

                h1, 
                h2
                {
                    text-align: center; 
                    color: #ede6e6;
                    font-size: 32px;
                    font-weight: bold;
                }

                table
                {
                    margin-left: auto; 
                    margin-right: auto; 
                    text-align: center;
                    background-color: #afafad;
                    width: 100%;
                }

                th
                {
                    color: #0f0f0f;
                    padding: 20px;
                    transition: 0.5s ease;
                    cursor: pointer;
                }

                td
                {
                    color: #414141;
                }

                .title-num:hover, 
                .title-hobby:hover
                {
                    background-color: #e8d0c3;
                }

                .title-name:hover, 
                .title-email:hover
                {
                    background-color: #e4bca1;
                }

                a
                {
                    color: #6B4F40;
                }

                a:hover
                {
                    color: #ede6e6;
                }

                .id, 
                .hobby 
                {
                    background-color: #e8d0c3;
                    color: #B47D6A;
                }

                .name, 
                .link
                {
                    background-color: #e4bca1;
                    color: #6B4F40;
                }

                .title-name, 
                .title-email, 
                .title-num, 
                .title-hobby
                {
                    background-color: #d99166;
                    color: #663B21;
                }

                tr 
                {
                    background-color: #c88b76;
                    font-size: 13px;
                }

                .title-top
                {
                    margin-top: 55%;
                }
            </style>

            
        </head>

            <body>
            <!-- Grouping -->
                <div class="container">
                <!-- title section -->
                    <table class = "title-top">
                        <th>
                            <h1>Assignment #1</h1>
                            <h2>Greil's Programmers</h2>
                        </th>
                    </table>

                    <!-- Display in Tables -->
                        <table border="0">
                            <!-- First table row [Headings/Titles] -->
                            <tr style="letter-spacing : 2px; font-size: 18px;">
                                <th class="title-num">Student Number</th>
                                <th class="title-name">Name</th>
                                <th class="title-hobby">Hobby</th>
                                <th class="title-email">Email</th>    
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
                                <td class="hobby" style="color:#B47D6A; padding: 10px;">
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