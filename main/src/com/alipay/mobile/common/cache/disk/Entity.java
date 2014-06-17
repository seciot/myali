package com.alipay.mobile.common.cache.disk;

import java.text.SimpleDateFormat;

public class Entity
{
  private String a;
  private String b;
  private int c;
  private long d;
  private String e;
  private long f;
  private long g;
  private String h;
  protected String mGroup;

  public Entity(String paramString1, String paramString2, String paramString3, int paramInt, long paramLong1, String paramString4, long paramLong2, long paramLong3, String paramString5)
  {
    if (paramString1 == null)
    {
      this.a = "-";
      if (paramString2 != null)
        break label89;
      this.mGroup = "-";
      label24: if (paramString3 != null)
        break label97;
      this.b = "";
      label34: this.c = paramInt;
      this.d = paramLong1;
      if (paramString4 != null)
        break label105;
    }
    label89: label97: label105: for (this.e = ""; ; this.e = paramString4)
    {
      this.f = paramLong2;
      this.g = paramLong3;
      if (paramString5 != null)
        break label114;
      this.h = "";
      return;
      this.a = paramString1;
      break;
      this.mGroup = paramString2;
      break label24;
      this.b = paramString3;
      break label34;
    }
    label114: this.h = paramString5;
  }

  public boolean authenticate(String paramString)
  {
    if (this.a.equalsIgnoreCase("-"));
    do
    {
      return true;
      if (paramString == null)
        return false;
    }
    while (paramString.contains(this.a));
    return false;
  }

  public boolean expire()
  {
    return this.f + 1000L * this.g < System.currentTimeMillis();
  }

  public String getContentType()
  {
    return this.h;
  }

  public long getCreateTime()
  {
    return this.f;
  }

  public String getGroup()
  {
    return this.mGroup;
  }

  public String getOwner()
  {
    return this.a;
  }

  public String getPath()
  {
    return this.e;
  }

  public long getPeriod()
  {
    return this.g;
  }

  public long getSize()
  {
    return this.d;
  }

  public String getUrl()
  {
    return this.b;
  }

  public int getUsedTime()
  {
    return this.c;
  }

  public String toString()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    Object[] arrayOfObject = new Object[8];
    arrayOfObject[0] = this.b;
    arrayOfObject[1] = Integer.valueOf(this.c);
    arrayOfObject[2] = Long.valueOf(this.d);
    arrayOfObject[3] = this.e;
    arrayOfObject[4] = localSimpleDateFormat.format(Long.valueOf(this.f));
    arrayOfObject[5] = Long.valueOf(this.g);
    arrayOfObject[6] = this.h;
    arrayOfObject[7] = this.a;
    return String.format("url: %s usedTime: %d size: %d path: %s createTime:%s period: %d content-type: %s owner: %s", arrayOfObject);
  }

  public void use()
  {
    this.c = (1 + this.c);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.disk.Entity
 * JD-Core Version:    0.6.2
 */