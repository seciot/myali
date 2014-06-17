package com.alipay.trobot.external;

import android.util.Log;
import com.alipay.test.ui.core.EventObject;
import com.alipay.test.ui.core.IMesssageHandle;

public class DefaultMesssageHandler
  implements IMesssageHandle
{
  private static DefaultMesssageHandler mTestProxy;
  private String TAG = "trobotexternalinterface";
  public IMesssageHandle handler;

  public static DefaultMesssageHandler getInstance()
  {
    if (mTestProxy == null)
      mTestProxy = new DefaultMesssageHandler();
    return mTestProxy;
  }

  public IMesssageHandle getHandler()
  {
    return this.handler;
  }

  public void onChangeEvent(EventObject paramEventObject, Object[] paramArrayOfObject)
  {
    if (this.handler != null)
      new Thread(new DefaultMesssageHandler.1(this, paramEventObject, paramArrayOfObject)).start();
  }

  public void registeMesssageHandler(IMesssageHandle paramIMesssageHandle)
  {
    this.handler = paramIMesssageHandle;
    Log.v(this.TAG, "registeMesssageHandler ");
  }

  public void unRegisteMesssageHandler()
  {
    this.handler = null;
    Log.v(this.TAG, "unRegisteMesssageHandler ");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.trobot.external.DefaultMesssageHandler
 * JD-Core Version:    0.6.2
 */