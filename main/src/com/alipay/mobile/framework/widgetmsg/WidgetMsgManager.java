package com.alipay.mobile.framework.widgetmsg;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.widgetmsg.dao.WidgetMsgDao;
import com.alipay.mobile.framework.widgetmsg.dao.WidgetMsgDao.WidgetMsgCountInfo;
import com.alipay.mobile.framework.widgetmsg.model.JsonWidgetMsgs;
import com.alipay.mobileapp.biz.rpc.widgetmsg.UserWidgetMsgService;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class WidgetMsgManager
{
  private static WidgetMsgManager a;
  private static String h = "WidgetMsgManager";
  private MicroApplicationContext b = AlipayApplication.getInstance().getMicroApplicationContext();
  private UserWidgetMsgService c = (UserWidgetMsgService)((RpcService)this.b.findServiceByInterface(RpcService.class.getName())).getRpcProxy(UserWidgetMsgService.class);
  private String d;
  private WidgetMsgDao e = new WidgetMsgDao(this.b.getApplicationContext());
  private List<WeakReference<WidgetMsgFlag>> f = new ArrayList();
  private SharedPreferences g;
  private Handler i = new WidgetMsgManager.4(this);

  private static JsonWidgetMsgs a(String paramString)
  {
    try
    {
      JsonWidgetMsgs localJsonWidgetMsgs = (JsonWidgetMsgs)JSONObject.parseObject(paramString, JsonWidgetMsgs.class);
      return localJsonWidgetMsgs;
    }
    catch (JSONException localJSONException)
    {
    }
    return null;
  }

  private boolean a(WidgetMsgFlag paramWidgetMsgFlag)
  {
    Iterator localIterator = this.f.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      if ((localWeakReference != null) && (localWeakReference.get() != null))
        return localWeakReference.get() == paramWidgetMsgFlag;
    }
    return false;
  }

  public static WidgetMsgManager getInstance()
  {
    if (a == null)
      a = new WidgetMsgManager();
    return a;
  }

  public void ackClick(String paramString)
  {
    LogCatLog.v(h, "ackClick,id=" + paramString);
    int j = -1 + this.f.size();
    if (j >= 0)
    {
      WeakReference localWeakReference = (WeakReference)this.f.get(j);
      if ((localWeakReference == null) || (localWeakReference.get() == null))
        this.f.remove(j);
      while (true)
      {
        j--;
        break;
        WidgetMsgFlag localWidgetMsgFlag = (WidgetMsgFlag)localWeakReference.get();
        if ((localWidgetMsgFlag != null) && ((paramString == null) || (paramString.equals(localWidgetMsgFlag.getWidgetId()))))
          localWidgetMsgFlag.ackClick();
      }
    }
  }

  public void cachedTaskIdAndMsgIdRequestUpdateWidgetMsg(String paramString)
  {
    if (this.d != null)
    {
      this.g = this.b.getApplicationContext().getSharedPreferences(this.d + "redpoint", 0);
      this.g.edit().putString(paramString, paramString).commit();
    }
    requestUpdateWidgetMsg();
  }

  public void doWidgetMsgRefresh(String paramString)
  {
    LogCatLog.v(h, "doWidgetMsgRefresh");
    int j = -1 + this.f.size();
    if (j >= 0)
    {
      WeakReference localWeakReference = (WeakReference)this.f.get(j);
      if ((localWeakReference == null) || (localWeakReference.get() == null))
        this.f.remove(j);
      while (true)
      {
        j--;
        break;
        WidgetMsgFlag localWidgetMsgFlag = (WidgetMsgFlag)localWeakReference.get();
        if ((localWidgetMsgFlag != null) && ((paramString == null) || (paramString.equals(localWidgetMsgFlag.getWidgetId()))))
        {
          WidgetMsgDao.WidgetMsgCountInfo localWidgetMsgCountInfo = this.e.getWidgetMsgCountInfoById(this.d, localWidgetMsgFlag.getWidgetId());
          if (localWidgetMsgCountInfo != null)
          {
            localWidgetMsgFlag.setMsgStyle(localWidgetMsgCountInfo.msgStyle);
            localWidgetMsgFlag.setNeedAck(localWidgetMsgCountInfo.needAck);
            localWidgetMsgFlag.setMsgCount(localWidgetMsgCountInfo.temporaryMsgCount, localWidgetMsgCountInfo.persistenceCount, localWidgetMsgCountInfo.descendantCount);
          }
          else
          {
            localWidgetMsgFlag.reset();
          }
        }
      }
    }
  }

  public WidgetMsgDao.WidgetMsgCountInfo getWidgetMsgCountInfo(String paramString)
  {
    return this.e.getWidgetMsgCountInfoById(this.d, paramString);
  }

  public void registerWidgetView(WidgetMsgFlag paramWidgetMsgFlag)
  {
    if (paramWidgetMsgFlag != null)
    {
      LogCatLog.v(h, "registerWidgetView:" + paramWidgetMsgFlag.getWidgetId());
      if (!a(paramWidgetMsgFlag))
      {
        WeakReference localWeakReference = new WeakReference(paramWidgetMsgFlag);
        this.f.add(localWeakReference);
      }
      doWidgetMsgRefresh(paramWidgetMsgFlag.getWidgetId());
    }
  }

  public void removeWidgetMsg(String paramString)
  {
    LogCatLog.v(h, "removeTemporaryWidgetMsg:" + paramString);
    new Thread(new WidgetMsgManager.3(this, paramString)).start();
  }

  public void requestUpdateWidgetMsg()
  {
    LogCatLog.v(h, "requestUpdateWidgetMsg");
    new Thread(new WidgetMsgManager.1(this)).start();
  }

  public void setUserId(String paramString)
  {
    this.d = paramString;
  }

  public void unRegisterWidgetView(WidgetMsgFlag paramWidgetMsgFlag)
  {
    if (paramWidgetMsgFlag != null)
    {
      LogCatLog.v(h, "unregisterWidgetView:" + paramWidgetMsgFlag.getWidgetId());
      int j = -1 + this.f.size();
      if (j >= 0)
      {
        WeakReference localWeakReference = (WeakReference)this.f.get(j);
        if ((localWeakReference == null) || (localWeakReference.get() == null))
          this.f.remove(j);
        while (true)
        {
          j--;
          break;
          if (localWeakReference.get() == paramWidgetMsgFlag)
            this.f.remove(j);
        }
      }
    }
  }

  public void updateWidgetMsg(String paramString)
  {
    LogCatLog.v(h, "updateWidgetMsg");
    new Thread(new WidgetMsgManager.2(this, paramString)).start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetmsg.WidgetMsgManager
 * JD-Core Version:    0.6.2
 */