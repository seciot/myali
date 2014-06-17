package com.alipay.mobile.aspect.advice;

import android.util.Pair;
import com.alipay.mobile.aspect.Advice;
import com.alipay.mobile.common.logagent.AlipayLogAgent;

public class ActivityPerformanceAdvice
  implements Advice
{
  boolean drawFlag = true;

  public void onCallAfter(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public Pair<Boolean, Object> onCallAround(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    return null;
  }

  public void onCallBefore(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public void onExecutionAfter(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public Pair<Boolean, Object> onExecutionAround(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    return null;
  }

  public void onExecutionBefore(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    if (("void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)".equals(paramString)) || ("void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)".equals(paramString)))
    {
      AlipayLogAgent.writeLog(AlipayLogAgent.actionCtx, AlipayLogAgent.ACTION_STATUS_RENDER + "_start");
      this.drawFlag = true;
    }
    if ((("void com.alipay.mobile.framework.app.ui.BaseActivity.onWindowFocusChanged(boolean)".equals(paramString)) || ("void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onWindowFocusChanged(boolean)".equals(paramString))) && (paramArrayOfObject != null) && (paramArrayOfObject.length == 1) && (((Boolean)paramArrayOfObject[0]).booleanValue()))
    {
      if (this.drawFlag)
        AlipayLogAgent.writeLog(AlipayLogAgent.actionCtx, AlipayLogAgent.ACTION_STATUS_RENDER + "_end");
      this.drawFlag = false;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.aspect.advice.ActivityPerformanceAdvice
 * JD-Core Version:    0.6.2
 */