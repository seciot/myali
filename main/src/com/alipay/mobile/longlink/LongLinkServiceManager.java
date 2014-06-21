package com.alipay.mobile.longlink;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import com.alipay.mobile.longlink.c.a;
import com.alipay.mobile.longlink.service.LongLinkService;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public final class LongLinkServiceManager
{
  private static final String LOGTAG = a.getBundle(LongLinkServiceManager.class);
  private static LongLinkServiceManager instance;
  private ConcurrentHashMap mAppPktHanlderMap;
  private PacketHanlder mComPktHanlder;
  private Context mContext;
  private boolean mIsServiceBound;
  private ILongLinkPacketNotifer mPacketNotifer = new d(this);
  private ILongLinkService mService;
  private ServiceConnection mServiceConn = new c(this);

  private LongLinkServiceManager(Context paramContext)
  {
    this.mContext = paramContext;
  }

  private void clearAppHanlderMap()
  {
    if ((this.mAppPktHanlderMap != null) && (!this.mAppPktHanlderMap.isEmpty()))
      this.mAppPktHanlderMap.clear();
    a.a(3, LOGTAG, "clearAppHanlderMap is done.");
  }

  public static LongLinkServiceManager getInstance(Context paramContext)
  {
    try
    {
      if (instance == null)
        instance = new LongLinkServiceManager(paramContext);
      LongLinkServiceManager localLongLinkServiceManager = instance;
      return localLongLinkServiceManager;
    }
    finally
    {
    }
  }

  private boolean onAppHanlder(JSONObject paramJSONObject)
  {
    String str1 = paramJSONObject.optString("appId");
    String str2 = paramJSONObject.optString("payload");
    boolean bool;
    if ((str1 != null) && (str1.length() > 0))
    {
      a.a(3, LOGTAG, "onAppHanlder appId=" + str1);
      if ((this.mAppPktHanlderMap != null) && (this.mAppPktHanlderMap.containsKey(str1)))
      {
        PacketHanlder localPacketHanlder = (PacketHanlder)this.mAppPktHanlderMap.get(str1);
        if (localPacketHanlder != null)
        {
          localPacketHanlder.processPacket(str1, str2);
          a.a(3, LOGTAG, "onAppHanlder processPacket done. ");
          bool = true;
        }
      }
    }
    while (true)
    {
      a.a(3, LOGTAG, "onAppHanlder is done. ret=" + bool);
      return bool;
      bool = false;
      continue;
      bool = false;
      continue;
      bool = false;
    }
  }

  private void onCommonHanlder(JSONObject paramJSONObject)
  {
    String str1 = paramJSONObject.optString("appId");
    String str2 = paramJSONObject.optString("payload");
    if ((str1 != null) && (str1.length() > 0))
    {
      a.a(3, LOGTAG, "onCommonHanlder appId=" + str1);
      if (this.mComPktHanlder != null)
      {
        this.mComPktHanlder.processPacket(str1, str2);
        a.a(3, LOGTAG, "mComPktHanlder processPacket done. ");
      }
    }
  }

  private void setPacketListener(ILongLinkPacketNotifer paramILongLinkPacketNotifer)
  {
    if (this.mService != null);
    try
    {
      this.mService.a(paramILongLinkPacketNotifer);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public final void bindService(PacketHanlder paramPacketHanlder)
  {
    if (this.mService == null)
    {
      this.mContext.getApplicationContext().bindService(new Intent(this.mContext, LongLinkService.class), this.mServiceConn, 1);
      registerCommonFunc(paramPacketHanlder);
      this.mAppPktHanlderMap = new ConcurrentHashMap();
      a.a(3, LOGTAG, "LongLinkServiceManager bindService done.");
      return;
    }
    a.a(2, LOGTAG, "LongLinkServiceManager mService is null.");
  }

  public final boolean isConnected()
  {
    ILongLinkService localILongLinkService = this.mService;
    boolean bool1 = false;
    if (localILongLinkService != null);
    try
    {
      boolean bool2 = this.mService.c();
      bool1 = bool2;
      a.a(3, LOGTAG, "isConnected ret=" + bool1);
      return bool1;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        localRemoteException.printStackTrace();
        bool1 = false;
      }
    }
  }

  public final void registerAppAppHanlder(String paramString, PacketHanlder paramPacketHanlder)
  {
    if (this.mAppPktHanlderMap != null)
    {
      a.a(4, LOGTAG, "registerAppAppHanlder the size is " + this.mAppPktHanlderMap.size());
      if ((paramString != null) && (paramString.length() > 0) && (paramPacketHanlder != null))
      {
        this.mAppPktHanlderMap.put(paramString, paramPacketHanlder);
        a.a(3, LOGTAG, "registerAppAppHanlder is done.");
        return;
      }
      a.a(2, LOGTAG, "registerAppAppHanlder params are invalid. AppId=" + paramString);
      return;
    }
    a.a(2, LOGTAG, "registerAppAppHanlder mAppPktHanlderMap is null.");
  }

  public final void registerCommonFunc(PacketHanlder paramPacketHanlder)
  {
    this.mComPktHanlder = paramPacketHanlder;
    setPacketListener(this.mPacketNotifer);
    a.a(3, LOGTAG, "registerCommonFunc set packetHandler done.");
  }

  public final void sendPacketUplink(String paramString1, String paramString2)
  {
    if (this.mService != null)
      try
      {
        a.a(3, LOGTAG, "sendPacketUplink is called. appId=" + paramString1 + ", appData=" + paramString2);
        JSONObject localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("appId", paramString1);
          localJSONObject.put("payload", paramString2);
          this.mService.a(localJSONObject.toString());
          return;
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
          a.a(2, LOGTAG, "sendPacketUplink get bizData failed.");
          return;
        }
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
        a.a(2, LOGTAG, "sendPacketUplink failed.");
      }
  }

  public final void setAppUserInfo(String paramString1, String paramString2, String paramString3)
  {
    if (this.mService != null);
    try
    {
      a.a(3, LOGTAG, "setAppUserInfo is called. userId=" + paramString1 + ", loginTime=" + paramString3);
      this.mService.a(paramString1, paramString2, paramString3);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public final void setDebugMode(boolean paramBoolean)
  {
    a.a = paramBoolean;
    a.a();
  }

  public final void setLinkAddr(String paramString1, int paramInt, String paramString2)
  {
    if (this.mService != null);
    try
    {
      a.a(3, LOGTAG, "setLinkAddr is called. host=" + paramString1 + ", port=" + paramInt + ", sslFlag=" + paramString2);
      this.mService.a(paramString1, paramInt, paramString2);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public final void startLink()
  {
    if (this.mService != null)
      try
      {
        a.a(3, LOGTAG, "startLink will be called.");
        if (this.mService.c())
        {
          a.a(3, LOGTAG, "LongLink is still working...");
          return;
        }
        this.mService.a();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
  }

  public final void stopLink()
  {
    if (this.mService != null);
    try
    {
      a.a(3, LOGTAG, "stopLink will be called.");
      this.mService.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  public final void unBindService()
  {
    if (this.mService != null);
    try
    {
      this.mService.b();
      clearAppHanlderMap();
      this.mComPktHanlder = null;
      if (this.mIsServiceBound)
      {
        this.mContext.getApplicationContext().unbindService(this.mServiceConn);
        this.mIsServiceBound = false;
      }
      this.mContext.getApplicationContext().stopService(new Intent(this.mContext, LongLinkService.class));
      this.mService = null;
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }

  public final void unRegisterAppAppHanlder(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
    {
      a.a(3, LOGTAG, "unRegisterAppAppHanlder Enter... AppId=" + paramString);
      if ((this.mAppPktHanlderMap != null) && (this.mAppPktHanlderMap.containsKey(paramString)))
      {
        this.mAppPktHanlderMap.remove(paramString);
        a.a(3, LOGTAG, "unRegisterAppAppHanlder is done.");
        return;
      }
      a.a(2, LOGTAG, "unRegisterAppAppHanlder AppId is not exist.");
      return;
    }
    a.a(2, LOGTAG, "unRegisterAppAppHanlder params are invalid. AppId=" + paramString);
  }

  public final void unRegisterCommonFunc()
  {
    this.mComPktHanlder = null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.LongLinkServiceManager
 * JD-Core Version:    0.6.2
 */