package com.alipay.android.widgets.asset.widget;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class WidgetActionStrategyFactory
{
  private static WidgetActionStrategyFactory a = null;
  private Map<String, IWidgetActionStrategy> b = new HashMap();
  private DefaultWidgetActionStrategy c;
  private boolean d = false;

  private WidgetActionStrategyFactory(Context paramContext)
  {
    this.c = new DefaultWidgetActionStrategy(paramContext);
    this.b.put("50000010", new AccountInfoWidgetActionStrategy(paramContext));
    DefaultShowWidgetActionStrategy localDefaultShowWidgetActionStrategy = new DefaultShowWidgetActionStrategy(paramContext);
    this.b.put("50000030", localDefaultShowWidgetActionStrategy);
    this.b.put("50000031", localDefaultShowWidgetActionStrategy);
    this.b.put("50000032", localDefaultShowWidgetActionStrategy);
    this.b.put("50000035", localDefaultShowWidgetActionStrategy);
  }

  public static WidgetActionStrategyFactory a(Context paramContext)
  {
    if (a == null)
      a = new WidgetActionStrategyFactory(paramContext);
    return a;
  }

  public final IWidgetActionStrategy a(String paramString)
  {
    Object localObject = (IWidgetActionStrategy)this.b.get(paramString);
    if (localObject == null)
      localObject = this.c;
    return localObject;
  }

  public final void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
    this.c.a(this.d);
    Iterator localIterator = this.b.entrySet().iterator();
    while (localIterator.hasNext())
      ((IWidgetActionStrategy)((Map.Entry)localIterator.next()).getValue()).a(this.d);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.widget.WidgetActionStrategyFactory
 * JD-Core Version:    0.6.2
 */