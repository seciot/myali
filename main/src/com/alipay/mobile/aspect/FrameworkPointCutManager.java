package com.alipay.mobile.aspect;

import android.text.TextUtils;
import com.alipay.mobile.aspect.advice.ActivityPerformanceAdvice;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FrameworkPointCutManager
{
  private static final String a = FrameworkPointCutManager.class.getSimpleName();
  private static FrameworkPointCutManager b;
  private Map<String, List<Advice>> c = new HashMap();

  private FrameworkPointCutManager()
  {
    registerPointCutAdvice(new String[] { "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)", "void com.alipay.mobile.framework.app.ui.BaseActivity.onWindowFocusChanged(boolean)", "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)", "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onWindowFocusChanged(boolean)" }, new ActivityPerformanceAdvice());
  }

  public static void createInstance()
  {
    if (b == null)
      b = new FrameworkPointCutManager();
  }

  public static FrameworkPointCutManager getInstance()
  {
    createInstance();
    return b;
  }

  public List<Advice> getAdviceOnPointCut(String paramString)
  {
    List localList = (List)this.c.get(paramString);
    new StringBuilder("getAdviceOnJoinPoint:").append(paramString).append(",size:").append(localList).toString();
    return localList;
  }

  public void registerPointCutAdvice(String paramString, Advice paramAdvice)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramAdvice == null))
      return;
    List localList = (List)this.c.get(paramString);
    if (localList == null)
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramAdvice);
      this.c.put(paramString, localArrayList);
      new StringBuilder("registerPointCutAdvice put:").append(paramAdvice).append("@").append(paramString).toString();
      return;
    }
    localList.add(paramAdvice);
    new StringBuilder("registerPointCutAdvice add:").append(paramAdvice).append("@").append(paramString).toString();
  }

  public void registerPointCutAdvice(String[] paramArrayOfString, Advice paramAdvice)
  {
    int i;
    if (paramArrayOfString != null)
      i = paramArrayOfString.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      registerPointCutAdvice(paramArrayOfString[j], paramAdvice);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.aspect.FrameworkPointCutManager
 * JD-Core Version:    0.6.2
 */