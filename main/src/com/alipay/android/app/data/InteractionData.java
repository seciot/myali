package com.alipay.android.app.data;

import java.util.ArrayList;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;

public class InteractionData
{
  private Header[] a = null;
  private String b = null;
  private String c = null;

  public final ArrayList a()
  {
    ArrayList localArrayList;
    if ((this.a == null) || (this.a.length == 0))
      localArrayList = null;
    while (true)
    {
      return localArrayList;
      localArrayList = new ArrayList();
      for (Header localHeader : this.a)
        localArrayList.add(new BasicHeader(localHeader.getName(), localHeader.getValue()));
    }
  }

  public final void a(String paramString)
  {
    this.b = paramString;
  }

  public final void a(Header[] paramArrayOfHeader)
  {
    this.a = paramArrayOfHeader;
  }

  public final String b()
  {
    return this.b;
  }

  public final void b(String paramString)
  {
    this.c = paramString;
  }

  public final String c()
  {
    return this.c;
  }

  public final void d()
  {
    this.c = null;
    this.b = null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.InteractionData
 * JD-Core Version:    0.6.2
 */