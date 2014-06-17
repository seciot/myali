package com.alipay.mobile.framework.service.impl;

import android.app.Activity;
import android.util.Pair;
import com.alipay.mobile.aspect.Advice;

class NFCServiceImpl$2
  implements Advice
{
  NFCServiceImpl$2(NFCServiceImpl paramNFCServiceImpl)
  {
  }

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
    if ((paramObject instanceof Activity))
    {
      if ((!paramString.equals("void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)")) && (!paramString.equals("void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)")))
        break label37;
      this.a.registerNFCMsgSender((Activity)paramObject);
    }
    label37: 
    do
    {
      return;
      if ((paramString.equals("void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()")) || (paramString.equals("void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()")))
      {
        this.a.enableForegroundDispatch((Activity)paramObject);
        return;
      }
    }
    while ((!paramString.equals("void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()")) && (!paramString.equals("void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onPause()")));
    this.a.disableForegroundDispatch((Activity)paramObject);
  }

  public Pair<Boolean, Object> onExecutionAround(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    return null;
  }

  public void onExecutionBefore(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.impl.NFCServiceImpl.2
 * JD-Core Version:    0.6.2
 */