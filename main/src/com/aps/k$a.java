package com.aps;

import org.json.JSONObject;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

class k$a extends DefaultHandler
{
  public c a = new c();
  private String c = "";

  private k$a(k paramk)
  {
  }

  public void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    this.c = String.valueOf(paramArrayOfChar, paramInt1, paramInt2);
  }

  public void endElement(String paramString1, String paramString2, String paramString3)
  {
    if (paramString2.equals("retype"))
      this.a.c(this.c);
    while (true)
    {
      if (this.a.j() == null)
        this.a.a(new JSONObject());
      try
      {
        if (paramString2.equals("eab"))
          this.a.j().put(paramString2, this.c);
        label164: label227: 
        do
        {
          while (true)
          {
            while (true)
            {
              while (true)
              {
                while (true)
                {
                  return;
                  if (paramString2.equals("adcode"))
                  {
                    this.a.f(this.c);
                    break;
                  }
                  if (paramString2.equals("citycode"))
                  {
                    this.a.d(this.c);
                    break;
                  }
                  if (!paramString2.equals("radius"))
                    break label164;
                  try
                  {
                    this.a.a(Float.valueOf(this.c).floatValue());
                  }
                  catch (Exception localException5)
                  {
                    n.a(localException5);
                    this.a.a(3891.0F);
                  }
                }
                break;
                if (!paramString2.equals("cenx"))
                  break label227;
                try
                {
                  this.c = m.a(Double.valueOf(this.c), "#.000000");
                  this.a.a(Double.valueOf(this.c).doubleValue());
                }
                catch (Exception localException4)
                {
                  n.a(localException4);
                  this.a.a(0.0D);
                }
              }
              break;
              if (!paramString2.equals("ceny"))
                break label290;
              try
              {
                this.c = m.a(Double.valueOf(this.c), "#.000000");
                this.a.b(Double.valueOf(this.c).doubleValue());
              }
              catch (Exception localException3)
              {
                n.a(localException3);
                this.a.b(0.0D);
              }
            }
            break;
            if (paramString2.equals("desc"))
            {
              this.a.e(this.c);
              break;
            }
            if (paramString2.equals("country"))
            {
              this.a.g(this.c);
              break;
            }
            if (paramString2.equals("province"))
            {
              this.a.h(this.c);
              break;
            }
            if (paramString2.equals("city"))
            {
              this.a.i(this.c);
              break;
            }
            if (paramString2.equals("road"))
            {
              this.a.j(this.c);
              break;
            }
            if (paramString2.equals("street"))
            {
              this.a.k(this.c);
              break;
            }
            if (paramString2.equals("poiname"))
            {
              this.a.l(this.c);
              break;
            }
            if (!paramString2.equals("BIZ"))
              break;
            if (this.a.j() == null)
              this.a.a(new JSONObject());
            try
            {
              this.a.j().put("BIZ", this.c);
            }
            catch (Exception localException1)
            {
            }
          }
          break;
          if (paramString2.equals("ctl"))
          {
            this.a.j().put(paramString2, this.c);
            return;
          }
          if (paramString2.equals("suc"))
          {
            this.a.j().put(paramString2, this.c);
            return;
          }
        }
        while (!paramString2.equals("spa"));
        label290: this.a.j().put(paramString2, this.c);
        return;
      }
      catch (Exception localException2)
      {
      }
    }
  }

  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    this.c = "";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.k.a
 * JD-Core Version:    0.6.2
 */