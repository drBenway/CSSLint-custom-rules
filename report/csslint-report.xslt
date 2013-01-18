<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
  <style>
    body{
      font: arial,helvetica,sans-serif;
      font-size: 12px;
      color: #666666;
      margin: 0px;
      padding: 0px;
    }
    table { 
      margin: 10px auto; 
      border: 1px solid #666;
    }
    table td { 
      padding: 5px 10px; 
    }
    tr:nth-child(odd) td { 
      background-color: #def; 
    }
    .file{
      background: #666; 
      text-align:left; 
      color: #fff; 
      padding: 5px 10px;
    }

    .warning {
    background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAIsSURBVDjLpVNLSJQBEP7+h6uu62vLVAJDW1KQTMrINQ1vPQzq1GOpa9EppGOHLh0kCEKL7JBEhVCHihAsESyJiE4FWShGRmauu7KYiv6Pma+DGoFrBQ7MzGFmPr5vmDFIYj1mr1WYfrHPovA9VVOqbC7e/1rS9ZlrAVDYHig5WB0oPtBI0TNrUiC5yhP9jeF4X8NPcWfopoY48XT39PjjXeF0vWkZqOjd7LJYrmGasHPCCJbHwhS9/F8M4s8baid764Xi0Ilfp5voorpJfn2wwx/r3l77TwZUvR+qajXVn8PnvocYfXYH6k2ioOaCpaIdf11ivDcayyiMVudsOYqFb60gARJYHG9DbqQFmSVNjaO3K2NpAeK90ZCqtgcrjkP9aUCXp0moetDFEeRXnYCKXhm+uTW0CkBFu4JlxzZkFlbASz4CQGQVBFeEwZm8geyiMuRVntzsL3oXV+YMkvjRsydC1U+lhwZsWXgHb+oWVAEzIwvzyVlk5igsi7DymmHlHsFQR50rjl+981Jy1Fw6Gu0ObTtnU+cgs28AKgDiy+Awpj5OACBAhZ/qh2HOo6i+NeA73jUAML4/qWux8mt6NjW1w599CS9xb0mSEqQBEDAtwqALUmBaG5FV3oYPnTHMjAwetlWksyByaukxQg2wQ9FlccaK/OXA3/uAEUDp3rNIDQ1ctSk6kHh1/jRFoaL4M4snEMeD73gQx4M4PsT1IZ5AfYH68tZY7zv/ApRMY9mnuVMvAAAAAElFTkSuQmCC);
    background-repeat: no-repeat;
    background-position: left center; 
    padding-left: 25px;
     }

    .error{ 
    background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJPSURBVDjLpZPLS5RhFMYfv9QJlelTQZwRb2OKlKuINuHGLlBEBEOLxAu46oL0F0QQFdWizUCrWnjBaDHgThCMoiKkhUONTqmjmDp2GZ0UnWbmfc/ztrC+GbM2dXbv4ZzfeQ7vefKMMfifyP89IbevNNCYdkN2kawkCZKfSPZTOGTf6Y/m1uflKlC3LvsNTWArr9BT2LAf+W73dn5jHclIBFZyfYWU3or7T4K7AJmbl/yG7EtX1BQXNTVCYgtgbAEAYHlqYHlrsTEVQWr63RZFuqsfDAcdQPrGRR/JF5nKGm9xUxMyr0YBAEXXHgIANq/3ADQobD2J9fAkNiMTMSFb9z8ambMAQER3JC1XttkYGGZXoyZEGyTHRuBuPgBTUu7VSnUAgAUAWutOV2MjZGkehgYUA6O5A0AlkAyRnotiX3MLlFKduYCqAtuGXpyH0XQmOj+TIURt51OzURTYZdBKV2UBSsOIcRp/TVTT4ewK6idECAihtUKOArWcjq/B8tQ6UkUR31+OYXP4sTOdisivrkMyHodWejlXwcC38Fvs8dY5xaIId89VlJy7ACpCNCFCuOp8+BJ6A631gANQSg1mVmOxxGQYRW2nHMha4B5WA3chsv22T5/B13AIicWZmNZ6cMchTXUe81Okzz54pLi0uQWp+TmkZqMwxsBV74Or3od4OISPr0e3SHa3PX0f3HXKofNH/UIG9pZ5PeUth+CyS2EMkEqs4fPEOBJLsyske48/+xD8oxcAYPzs4QaS7RR2kbLTTOTQieczfzfTv8QPldGvTGoF6/8AAAAASUVORK5CYII=);
    background-repeat: no-repeat;
     background-position: left center; 
     padding-left: 25px;
    }

  .logo{
  margin: 0px;
  padding: 5px 0px 5px 55px;
  height: 25px;
  font-size: 16px;
  clear:both;
  background-color: #2D2D2D;
  background-image: url(data:image/png;base64,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);
  background-repeat: no-repeat;
  }
  .logo a{
   color: #BBBBBB;
   font-size: 20px;
   text-decoration: none;
  }

  .center-content{
  margin: auto;
  width: 800px;
  }
  .legend{
    background-color: #999;
    color: black;
    font-size: 12px;
  }
    }
  </style>
  </head>
  <body>
<h1 class="logo"><a href="https://github.com/drBenway/CSSLint-custom-rules">  drBenway / CSSLint-custom-rules</a></h1>
    <div class="center-content">
  <br />
    <table cellpadding="0" cellspacing="0">
      <xsl:for-each select="lint/file">
    <tr>
    <th colspan="5" class="file"><xsl:value-of select="@name"/></th>
    </tr>
          <tr class="legend">
        <th>Line</th>
        <th>Char</th>
    <th>Reason</th>
    <th>Source</th>
      </tr>
      <xsl:for-each select="issue">
          <tr>
          <td><xsl:value-of select="@line"/></td>
          <td><xsl:value-of select="@char"/></td>
          <td>
        <xsl:attribute name="class">
              <xsl:value-of select="@severity"/>
        </xsl:attribute>
        <xsl:value-of select="@reason"/></td>
          <td><pre class="highlight"><xsl:value-of select="@evidence"/></pre></td>
          </tr>
      </xsl:for-each>
      </xsl:for-each>
    </table>
    <p style="text-align: center">
      <a href="https://github.com/stubbornella/csslint/wiki/Rules">CSSLint rule sets</a> - <a href="https://github.com/drBenway/CSSLint-custom-rules/wiki/custom-rulesets">custom rule sets</a>
    </p>
    </div>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
