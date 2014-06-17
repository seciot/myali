package com.alipay.mobile.core.impl;

import a.a.a.a;
import a.a.a.e;
import a.a.b.b.b;
import android.os.Bundle;
import android.util.Pair;
import com.alipay.mobile.aspect.Advice;
import com.alipay.mobile.aspect.FrameworkPointCutManager;
import com.alipay.mobile.aspect.aj.Framework;
import com.alipay.mobile.common.logging.LogCatLog;
import java.util.Iterator;
import java.util.List;

class MicroApplicationContextImpl$2
  implements Runnable
{
  static
  {
    b localb = new b("MicroApplicationContextImpl.java", 2.class);
  }

  MicroApplicationContextImpl$2(MicroApplicationContextImpl paramMicroApplicationContextImpl, String paramString1, String paramString2, Bundle paramBundle)
  {
  }

  public void run()
  {
    MicroApplicationContextImpl localMicroApplicationContextImpl = this.this$0;
    String str1 = this.a;
    String str2 = this.b;
    Bundle localBundle = this.c;
    a locala = b.a(d, this, localMicroApplicationContextImpl, new Object[] { str1, str2, localBundle });
    Framework.aspectOf();
    String str3 = locala.d().toString();
    Object localObject1 = locala.a();
    Object localObject2 = locala.b();
    Object[] arrayOfObject = locala.c();
    String str4 = locala.e();
    int i;
    int k;
    label194: Iterator localIterator;
    boolean bool1;
    if ("method-execution".equals(str4))
    {
      i = 1;
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut kind:" + str4);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut pointCut:" + str3);
      LogCatLog.v("FrameworkPointCut", "FrameworkPointCut this:" + localObject1);
      if (arrayOfObject != null)
      {
        int j = arrayOfObject.length;
        k = 0;
        if (k < j)
          break label277;
      }
      List localList = FrameworkPointCutManager.getInstance().getAdviceOnPointCut(str3);
      if (localList != null)
      {
        localIterator = localList.iterator();
        bool1 = false;
      }
    }
    label277: Advice localAdvice;
    do
    {
      if (!localIterator.hasNext())
      {
        if (!bool1)
          localMicroApplicationContextImpl.doStartApp(str1, str2, localBundle);
        return;
        if ("method-call".equals(str4))
        {
          i = 0;
          break;
        }
        localMicroApplicationContextImpl.doStartApp(str1, str2, localBundle);
        return;
        Object localObject3 = arrayOfObject[k];
        LogCatLog.v("FrameworkPointCut", "FrameworkPointCut args:" + localObject3);
        k++;
        break label194;
      }
      localAdvice = (Advice)localIterator.next();
    }
    while (localAdvice == null);
    label347: Pair localPair;
    label372: boolean bool3;
    if (i != 0)
    {
      localAdvice.onExecutionBefore(str3, localObject1, arrayOfObject);
      if (bool1)
        break label479;
      if (i == 0)
        break label441;
      localPair = localAdvice.onExecutionAround(str3, localObject1, arrayOfObject);
      if (localPair == null)
        break label479;
      bool3 = ((Boolean)localPair.first).booleanValue();
    }
    label441: label479: for (boolean bool2 = bool3; ; bool2 = bool1)
    {
      if (i != 0)
      {
        localAdvice.onExecutionAfter(str3, localObject1, arrayOfObject);
        bool1 = bool2;
        break;
        localAdvice.onCallBefore(str3, localObject2, arrayOfObject);
        break label347;
        localPair = localAdvice.onCallAround(str3, localObject2, arrayOfObject);
        break label372;
      }
      localAdvice.onCallAfter(str3, localObject2, arrayOfObject);
      bool1 = bool2;
      break;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.impl.MicroApplicationContextImpl.2
 * JD-Core Version:    0.6.2
 */