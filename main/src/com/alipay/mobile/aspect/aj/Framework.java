package com.alipay.mobile.aspect.aj;

import a.a.a.c;
import a.a.a.e;
import android.util.Pair;
import com.alipay.mobile.aspect.Advice;
import com.alipay.mobile.aspect.FrameworkPointCutManager;
import com.alipay.mobile.common.logging.LogCatLog;
import java.util.Iterator;
import java.util.List;

public class Framework
{
  static
  {
    try
    {
      ajc$perSingletonInstance = new Framework();
      return;
    }
    catch (Throwable localThrowable)
    {
      a = localThrowable;
    }
  }

  public static Framework aspectOf()
  {
    if (ajc$perSingletonInstance == null)
      throw new c("com_alipay_mobile_aspect_aj_Framework", a);
    return ajc$perSingletonInstance;
  }

  public static boolean hasAspect()
  {
    return ajc$perSingletonInstance != null;
  }

  public Object ajc$around$com_alipay_mobile_aspect_aj_Framework$1$587f8199(a.a.b.a.a parama, a.a.a.a parama1)
  {
    String str1 = parama1.d().toString();
    Object localObject1 = parama1.a();
    Object localObject2 = parama1.b();
    Object[] arrayOfObject = parama1.c();
    String str2 = parama1.e();
    int i;
    int j;
    if ("method-execution".equals(str2))
    {
      i = 1;
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut kind:" + str2);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut pointCut:" + str1);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut this:" + localObject1);
      if (arrayOfObject != null)
        j = arrayOfObject.length;
    }
    List localList;
    for (int k = 0; ; k++)
    {
      if (k >= j)
      {
        localList = FrameworkPointCutManager.getInstance().getAdviceOnPointCut(str1);
        if (localList != null)
          break label221;
        localObject3 = ajc$around$com_alipay_mobile_aspect_aj_Framework$1$587f8199proceed(parama);
        return localObject3;
        if ("method-call".equals(str2))
        {
          i = 0;
          break;
        }
        return ajc$around$com_alipay_mobile_aspect_aj_Framework$1$587f8199proceed(parama);
      }
      Object localObject4 = arrayOfObject[k];
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut args:" + localObject4);
    }
    label221: Iterator localIterator = localList.iterator();
    boolean bool = false;
    Object localObject3 = null;
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (bool)
          break;
        return ajc$around$com_alipay_mobile_aspect_aj_Framework$1$587f8199proceed(parama);
      }
      Advice localAdvice = (Advice)localIterator.next();
      if (localAdvice != null)
      {
        if (i != 0)
        {
          localAdvice.onExecutionBefore(str1, localObject1, arrayOfObject);
          label290: if (!bool)
            if (i == 0)
              break label374;
        }
        label374: for (Pair localPair = localAdvice.onExecutionAround(str1, localObject1, arrayOfObject); ; localPair = localAdvice.onCallAround(str1, localObject2, arrayOfObject))
        {
          if (localPair != null)
          {
            bool = ((Boolean)localPair.first).booleanValue();
            localObject3 = localPair.second;
          }
          if (i == 0)
            break label391;
          localAdvice.onExecutionAfter(str1, localObject1, arrayOfObject);
          break;
          localAdvice.onCallBefore(str1, localObject2, arrayOfObject);
          break label290;
        }
        label391: localAdvice.onCallAfter(str1, localObject2, arrayOfObject);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.aspect.aj.Framework
 * JD-Core Version:    0.6.2
 */