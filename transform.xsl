<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
    <xsl:output method="html" encoding="UTF-8"/> 
    <xsl:template match="/"> 
        <html> 
            <head> 
                <title>Employee Information</title> 
                <style> 
                    table { 
                        width: 100%; 
                        border-collapse: collapse; 
                        background color:lightgreen; 
                    } 
                    table, th, td { 
                        border: 1px solid black; 
                    } 
                    th, td { 
                        padding: 8px; 
                        text-align: left; 
                         
                    } 
                </style> 
            </head> 
            <body> 
                <h1>Employee Information</h1> 
                <table> 
                    <tr> 
                        <th>ID</th> 
                        <th>Name</th> 
                        <th>Designation</th> 
                        <th>Department</th> 
                        <th>Salary</th> 
                    </tr> 
                    <xsl:for-each select="employees/employee"> 
                        <tr> 
                            <td><xsl:value-of select="id"/></td> 
                            <td><xsl:value-of select="name"/></td> 
                            <td><xsl:value-of select="designation"/></td> 
                            <td><xsl:value-of select="department"/></td> 
                            <td><xsl:value-of select="salary"/></td> 
                        </tr> 
                    </xsl:for-each> 
                </table> 
            </body> 
        </html> 
    </xsl:template> 
</xsl:stylesheet>