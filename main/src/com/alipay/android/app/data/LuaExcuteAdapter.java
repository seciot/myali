package com.alipay.android.app.data;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.pay.GlobalConstant;
import com.alipay.android.app.script.IDataScriptable;
import com.alipay.android.app.script.IDocumentScriptable;
import com.alipay.android.app.script.ILoadingScriptable;
import com.alipay.android.app.script.INetworkScriptable;
import com.alipay.android.app.script.IPhoneScriptable;
import com.alipay.android.app.script.ITidScriptable;
import com.alipay.android.app.script.IUpdateScriptable;
import com.alipay.android.app.script.IWindowScriptable;
import com.alipay.android.app.script.LuaException;
import com.alipay.android.app.util.LogUtils;
import java.lang.ref.WeakReference;

public class LuaExcuteAdapter
  implements IDataScriptable, IDocumentScriptable, INetworkScriptable, IPhoneScriptable, ITidScriptable, IUpdateScriptable, IWindowScriptable
{
  private WeakReference mData;
  private WeakReference mDoc;
  private Handler mHandler = new Handler(Looper.getMainLooper());
  private LuaNativeHelper mLuaHelper;
  private int mLuaLength = 0;
  private WeakReference mNetwork;
  private WeakReference mPhone;
  private WeakReference mTid;
  private WeakReference mUpdate;
  private WeakReference mWindow;

  private void initScriptable(IDataScriptable paramIDataScriptable, IDocumentScriptable paramIDocumentScriptable, INetworkScriptable paramINetworkScriptable, IPhoneScriptable paramIPhoneScriptable, IUpdateScriptable paramIUpdateScriptable, IWindowScriptable paramIWindowScriptable, ITidScriptable paramITidScriptable)
  {
    if (paramIDataScriptable != null)
    {
      this.mData = new WeakReference(paramIDataScriptable);
      if (paramIDocumentScriptable == null)
        break label203;
      this.mDoc = new WeakReference(paramIDocumentScriptable);
      label32: if (paramINetworkScriptable == null)
        break label211;
      this.mNetwork = new WeakReference(paramINetworkScriptable);
      label48: if (paramIPhoneScriptable == null)
        break label219;
      this.mPhone = new WeakReference(paramIPhoneScriptable);
      label66: if (paramIUpdateScriptable == null)
        break label227;
      this.mUpdate = new WeakReference(paramIUpdateScriptable);
      label84: if (paramIWindowScriptable == null)
        break label235;
      this.mWindow = new WeakReference(paramIWindowScriptable);
      label102: if (paramITidScriptable == null)
        break label243;
    }
    label203: label211: label219: label227: label235: label243: for (this.mTid = new WeakReference(paramITidScriptable); ; this.mTid = null)
    {
      if (this.mLuaHelper == null)
      {
        this.mLuaHelper = new LuaNativeHelper();
        this.mLuaHelper.getBundle(this);
        this.mLuaHelper.getBundle(this);
        this.mLuaHelper.getBundle(this);
        this.mLuaHelper.getBundle(this);
        this.mLuaHelper.getBundle(this);
        this.mLuaHelper.getBundle(this);
        this.mLuaHelper.getBundle(this);
      }
      return;
      this.mData = null;
      break;
      this.mDoc = null;
      break label32;
      this.mNetwork = null;
      break label48;
      this.mPhone = null;
      break label66;
      this.mUpdate = null;
      break label84;
      this.mWindow = null;
      break label102;
    }
  }

  public void alert(String paramString1, String paramString2)
  {
    new StringBuilder("alert(").append(paramString1).append(",").append(paramString2).append(")").toString();
    LogUtils.c();
    alert(paramString1, paramString2, null);
  }

  public void alert(String paramString1, String paramString2, String paramString3)
  {
    new StringBuilder("alert(").append(paramString1).append(",").append(paramString2).append(",").append(paramString3).append(")").toString();
    LogUtils.c();
    this.mHandler.post(new m(this, paramString1, paramString2, paramString3));
  }

  public void allowback(String paramString1, String paramString2)
  {
    this.mHandler.post(new t(this, paramString1, paramString2));
  }

  public String attr(String paramString)
  {
    new StringBuilder("attr(").append(paramString).append(")").toString();
    LogUtils.c();
    if ((this.mDoc != null) && (this.mDoc.get() != null))
      try
      {
        String str = ((IDocumentScriptable)this.mDoc.get()).attr(paramString);
        return str;
      }
      catch (Exception localException)
      {
        MonitorThread.a().e(localException, "attr");
        LogUtils.a(localException);
      }
    return null;
  }

  public void attr(String paramString1, String paramString2)
  {
    new StringBuilder("attr(").append(paramString1).append(", ").append(paramString2).append(")").toString();
    LogUtils.c();
    this.mHandler.post(new s(this, paramString1, paramString2));
  }

  public String cache(String paramString)
  {
    if ((this.mDoc != null) && (this.mDoc.get() != null))
      try
      {
        String str = ((IDocumentScriptable)this.mDoc.get()).cache(paramString);
        return str;
      }
      catch (Exception localException)
      {
        MonitorThread.a().e(localException, "cache");
        LogUtils.a(localException);
      }
    return null;
  }

  public void cache(String paramString1, String paramString2)
  {
    if ((this.mDoc != null) && (this.mDoc.get() != null));
    try
    {
      ((IDocumentScriptable)this.mDoc.get()).cache(paramString1, paramString2);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "cache");
      LogUtils.a(localException);
    }
  }

  public void call(String paramString)
  {
    new StringBuilder("call(").append(paramString).append(")").toString();
    LogUtils.c();
    if ((this.mPhone != null) && (this.mPhone.get() != null));
    try
    {
      ((IPhoneScriptable)this.mPhone.get()).call(paramString);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "call");
      LogUtils.a(localException);
    }
  }

  public String checkInput()
  {
    LogUtils.c();
    if ((this.mDoc != null) && (this.mDoc.get() != null))
      try
      {
        String str = ((IDocumentScriptable)this.mDoc.get()).checkInput();
        return str;
      }
      catch (Exception localException)
      {
        MonitorThread.a().e(localException, "checkInput");
        LogUtils.a(localException);
      }
    return "true";
  }

  public void close()
  {
    try
    {
      this.mLuaLength = 0;
      if (this.mLuaHelper != null)
        this.mLuaHelper.a();
      this.mLuaHelper = null;
      label24: LogUtils.h();
      return;
    }
    catch (Exception localException)
    {
      break label24;
    }
  }

  public void confirm(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    new StringBuilder("confirm(").append(paramString1).append(",").append(paramString2).append(", ").append(paramString3).append(", ").append(paramString4).append(", ").append(paramString5).append(", ").append(paramString6).append(", ").append(paramString7).append(")").toString();
    LogUtils.c();
    this.mHandler.post(new n(this, paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7));
  }

  public void delete()
  {
    LogUtils.c();
    if ((this.mData != null) && (this.mData.get() != null));
    try
    {
      ((IWindowScriptable)this.mData.get()).delete();
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "delete");
      LogUtils.a(localException);
    }
  }

  public void delete(String paramString)
  {
    new StringBuilder("delete(").append(paramString).append(")").toString();
    LogUtils.c();
    if ((this.mData != null) && (this.mData.get() != null));
    try
    {
      ((IWindowScriptable)this.mData.get()).delete(paramString);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "delete");
      LogUtils.a(localException);
    }
  }

  public void dismiss()
  {
    LogUtils.c();
    this.mHandler.post(new q(this));
  }

  public void dispose()
  {
  }

  public void doUpdate(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    new StringBuilder("doUpdate(").append(paramString1).append(", ").append(paramString2).append(", ").append(paramString3).append(", ").append(paramString4).append(")").toString();
    LogUtils.c();
    if ((this.mUpdate != null) && (this.mUpdate.get() != null));
    try
    {
      ((IUpdateScriptable)this.mUpdate.get()).doUpdate(paramString1, paramString2, paramString3, paramString4);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "doUpdate");
      LogUtils.a(localException);
    }
  }

  public void event(String paramString1, String paramString2, String paramString3)
  {
    new StringBuilder("event(").append(paramString1).append(", ").append(paramString2).append(", ").append(paramString3).append(")").toString();
    LogUtils.c();
    if ((this.mDoc != null) && (this.mDoc.get() != null));
    try
    {
      ((IDocumentScriptable)this.mDoc.get()).event(paramString1, paramString2, paramString3);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "event");
      LogUtils.a(localException);
    }
  }

  protected void excuteLuaFunction(String paramString1, String paramString2, Object[] paramArrayOfObject, IDataScriptable paramIDataScriptable, IDocumentScriptable paramIDocumentScriptable, INetworkScriptable paramINetworkScriptable, IPhoneScriptable paramIPhoneScriptable, IUpdateScriptable paramIUpdateScriptable, IWindowScriptable paramIWindowScriptable, ITidScriptable paramITidScriptable)
  {
    if (TextUtils.isEmpty(paramString1));
    while (this.mLuaLength == 0)
      return;
    System.currentTimeMillis();
    try
    {
      initScriptable(paramIDataScriptable, paramIDocumentScriptable, paramINetworkScriptable, paramIPhoneScriptable, paramIUpdateScriptable, paramIWindowScriptable, paramITidScriptable);
      if ((paramArrayOfObject != null) && (paramArrayOfObject.length > 0) && (GlobalConstant.DEBUG))
        for (int i = 0; i < paramArrayOfObject.length; i++)
        {
          new StringBuilder("params[").append(i).append("] = ").append(paramArrayOfObject[i]).toString();
          LogUtils.c();
        }
      this.mLuaHelper.a(paramString1, paramString2, paramArrayOfObject);
      System.currentTimeMillis();
      MonitorThread.a();
      MonitorThread.c();
      return;
    }
    catch (LuaException localLuaException)
    {
      while (true)
        MonitorThread.a().e(localLuaException, paramString2);
    }
    catch (Exception localException)
    {
      while (true)
      {
        MonitorThread.a().e(localException, paramString1);
        LogUtils.g();
        localException.getMessage();
        LogUtils.i();
      }
    }
  }

  protected void excuteLuaString(String paramString, IDataScriptable paramIDataScriptable, IDocumentScriptable paramIDocumentScriptable, INetworkScriptable paramINetworkScriptable, IPhoneScriptable paramIPhoneScriptable, IUpdateScriptable paramIUpdateScriptable, IWindowScriptable paramIWindowScriptable, ITidScriptable paramITidScriptable)
  {
    if (TextUtils.isEmpty(paramString))
      return;
    System.currentTimeMillis();
    try
    {
      initScriptable(paramIDataScriptable, paramIDocumentScriptable, paramINetworkScriptable, paramIPhoneScriptable, paramIUpdateScriptable, paramIWindowScriptable, paramITidScriptable);
      this.mLuaHelper.a(paramString);
      this.mLuaLength += paramString.length();
      System.currentTimeMillis();
      MonitorThread.a();
      MonitorThread.c();
      return;
    }
    catch (LuaException localLuaException)
    {
      while (true)
        MonitorThread.a().e(localLuaException, paramString);
    }
    catch (Exception localException)
    {
      while (true)
      {
        MonitorThread.a().e(localException, paramString);
        LogUtils.g();
        localException.getMessage();
        LogUtils.i();
      }
    }
  }

  public void exit()
  {
    LogUtils.c();
    this.mHandler.post(new r(this));
  }

  public IDocumentScriptable getById(String paramString)
  {
    new StringBuilder("getById(").append(paramString).append(")").toString();
    LogUtils.c();
    if ((this.mDoc != null) && (this.mDoc.get() != null));
    try
    {
      IDocumentScriptable localIDocumentScriptable = ((IDocumentScriptable)this.mDoc.get()).getById(paramString);
      this = localIDocumentScriptable;
      return this;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "getById");
      LogUtils.a(localException);
    }
    return this;
  }

  public ILoadingScriptable getLoadingScriptable()
  {
    LogUtils.c();
    if ((this.mWindow != null) && (this.mWindow.get() != null))
      return ((IWindowScriptable)this.mWindow.get()).getLoadingScriptable();
    return null;
  }

  public ILoadingScriptable loading(int paramInt)
  {
    new StringBuilder("loading(").append(paramInt).append(")").toString();
    LogUtils.c();
    return loading(paramInt, null);
  }

  public ILoadingScriptable loading(int paramInt, String paramString)
  {
    new StringBuilder("loading(").append(paramInt).append(",").append(paramString).append(")").toString();
    LogUtils.c();
    return loading(paramInt, paramString, null);
  }

  public ILoadingScriptable loading(int paramInt, String paramString1, String paramString2)
  {
    new StringBuilder("loading(").append(paramInt).append(",").append(paramString1).append(",").append(paramString2).append(")").toString();
    LogUtils.c();
    this.mHandler.post(new j(this, paramInt, paramString1, paramString2));
    return getLoadingScriptable();
  }

  public void log(Object paramObject)
  {
    new StringBuilder("log(").append(paramObject).append(")").toString();
    LogUtils.c();
    try
    {
      paramObject.toString();
      LogUtils.h();
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "log");
    }
  }

  public void open(String paramString)
  {
    openWithCallback(null, paramString);
  }

  public void open(String[] paramArrayOfString)
  {
    openWithCallback(null, paramArrayOfString);
  }

  public void openWithCallback(String paramString1, String paramString2)
  {
    this.mHandler.post(new k(this, paramString1, paramString2));
  }

  public void openWithCallback(String paramString, String[] paramArrayOfString)
  {
    this.mHandler.post(new l(this, paramString, paramArrayOfString));
  }

  public void putSubmitData(String paramString1, String paramString2)
  {
    if ((this.mDoc != null) && (this.mDoc.get() != null));
    try
    {
      ((IDocumentScriptable)this.mDoc.get()).putSubmitData(paramString1, paramString2);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "attr");
      LogUtils.a(localException);
    }
  }

  public void readsms(String paramString1, int paramInt1, String paramString2, int paramInt2, String paramString3, String[] paramArrayOfString)
  {
    if ((this.mPhone != null) && (this.mPhone.get() != null));
    try
    {
      ((IPhoneScriptable)this.mPhone.get()).readsms(paramString1, paramInt1, paramString2, paramInt2, paramString3, paramArrayOfString);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "readsms");
      LogUtils.a(localException);
    }
  }

  public void request(String paramString1, String paramString2, String paramString3, String paramString4, String[] paramArrayOfString)
  {
    new StringBuilder("request(").append(paramString1).append(", ").append(paramString2).append(", ").append(paramString3).append(", ").append(paramString4).append(")").toString();
    LogUtils.c();
    if ((this.mNetwork != null) && (this.mNetwork.get() != null));
    try
    {
      ((INetworkScriptable)this.mNetwork.get()).request(paramString1, paramString2, paramString3, paramString4, paramArrayOfString);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "request");
      LogUtils.a(localException);
    }
  }

  public void reset()
  {
    LogUtils.c();
    if ((this.mTid != null) && (this.mTid.get() != null));
    try
    {
      ((ITidScriptable)this.mTid.get()).reset();
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "reset");
      LogUtils.a(localException);
    }
  }

  public void save(String paramString)
  {
    new StringBuilder("save(").append(paramString).append(")").toString();
    LogUtils.c();
    if ((this.mTid != null) && (this.mTid.get() != null));
    try
    {
      ((ITidScriptable)this.mTid.get()).save(paramString);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "save");
      LogUtils.a(localException);
    }
  }

  public void send(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String[] paramArrayOfString)
  {
    new StringBuilder("send(").append(paramString1).append(", ").append(paramString2).append(", ").append(paramString3).append(", ").append(paramString4).append(", ").append(paramString5).append(")").toString();
    LogUtils.c();
    if ((this.mNetwork != null) && (this.mNetwork.get() != null));
    try
    {
      ((INetworkScriptable)this.mNetwork.get()).send(paramString1, paramString2, paramString3, paramString4, paramString5, paramArrayOfString);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "send");
      LogUtils.a(localException);
    }
  }

  public void sendMsg(String paramString1, String paramString2)
  {
    new StringBuilder("sendMsg(").append(paramString1).append(", ").append(paramString2).append(")").toString();
    LogUtils.c();
    if ((this.mPhone != null) && (this.mPhone.get() != null));
    try
    {
      ((IPhoneScriptable)this.mPhone.get()).sendMsg(paramString1, paramString2);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "sendMsg");
      LogUtils.a(localException);
    }
  }

  public void style(String paramString1, String paramString2)
  {
    if ((this.mDoc != null) && (this.mDoc.get() != null));
    try
    {
      ((IDocumentScriptable)this.mDoc.get()).style(paramString1, paramString2);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "style");
      LogUtils.a(localException);
    }
  }

  public void submit()
  {
    LogUtils.c();
    submit(null);
  }

  public void submit(String paramString)
  {
    new StringBuilder("submit(").append(paramString).append(")").toString();
    LogUtils.c();
    this.mHandler.post(new o(this, paramString));
  }

  public void toast(String paramString)
  {
    new StringBuilder("toast(").append(paramString).append(")").toString();
    LogUtils.c();
    this.mHandler.post(new p(this, paramString));
  }

  public void write(String paramString1, String paramString2)
  {
    new StringBuilder("write(").append(paramString1).append(", ").append(paramString2).append(")").toString();
    LogUtils.c();
    if ((this.mData != null) && (this.mData.get() != null));
    try
    {
      ((IWindowScriptable)this.mData.get()).write(paramString1, paramString2);
      return;
    }
    catch (Exception localException)
    {
      MonitorThread.a().e(localException, "write");
      LogUtils.a(localException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.LuaExcuteAdapter
 * JD-Core Version:    0.6.2
 */