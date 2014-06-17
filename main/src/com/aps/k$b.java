package com.aps;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

class k$b extends DefaultHandler
{
  public String a = "";
  private boolean c = false;

  private k$b(k paramk)
  {
  }

  public void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (this.c)
      this.a = String.valueOf(paramArrayOfChar, paramInt1, paramInt2);
  }

  public void endElement(String paramString1, String paramString2, String paramString3)
  {
    if (paramString2.equals("sres"))
      this.c = false;
  }

  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    if (paramString2.equals("sres"))
      this.c = true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.k.b
 * JD-Core Version:    0.6.2
 */