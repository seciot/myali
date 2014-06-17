package com.alipay.android.phone.nfd.nfdbiz.biz;

import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.view.View;
import com.alipay.android.phone.nfd.nfdbiz.model.TopBoardInfo;
import com.alipay.liveservice.common.service.rpc.LiveServiceRouterRpc;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.nfd.nfdbiz.IActiveTopBaordContainer;
import com.alipay.mobile.nfd.nfdbiz.ITopBoardStateCallBack;
import com.alipay.mobile.nfd.nfdbiz.service.WifiSnifferService;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class WifiSnifferServiceImpl extends WifiSnifferService
{
  public static final String MSG_ACTION_PUB_LONG_LINK = "com.alipay.longlink.TRANSFER_20000002";
  private static final String SP_KEY_ACTIVE_TEMPLATE = "nfdbiz_setting_active_template";
  private static final String SP_KEY_LIVESTATUS = "nfdbiz_setting_livestatus";
  private static final String SP_KEY_LOGO_URL = "nfdbiz_setting_logo_url";
  private static final String SP_KEY_SERVICE_DESC = "nfdbiz_setting_service_desc";
  private static final String SP_KEY_SERVICE_ID = "nfdbiz_setting_service_id";
  private static final String SP_KEY_SERVICE_NAME = "nfdbiz_setting_service_name";
  private static final String SP_KEY_STORE_NAME = "nfdbiz_setting_store_name";
  private static final String SP_KEY_TIMESTAMP = "nfdbiz_setting_timestamp";
  private static final String SP_NAME_NFDBIZ = "nfdbiz_setting";
  public static final String TAG = WifiSnifferServiceImpl.class.getName();
  private static final String TAG_BIZ = "bizType";
  private static final String TAG_LIVE_SERVICE = "liveservice";
  private static final String TAG_LONG_LINK = "payload";
  private List<TopBoardInfo> infoCacheBoardInfos;
  private LiveServiceRouterRpc liveServiceRouterRpc;
  private MicroApplicationContext microAppContext;
  private TopBoardInfo topBoardInfo = null;
  private WeakReference<IActiveTopBaordContainer> topBoardViewRef;

  public WifiSnifferServiceImpl()
  {
    init();
  }

  private String getUserId()
  {
    AuthService localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if ((localAuthService != null) && (localAuthService.getUserInfo() != null))
      return localAuthService.getUserInfo().getUserId();
    return null;
  }

  private void init()
  {
    this.infoCacheBoardInfos = new ArrayList();
  }

  private String initCityListFromLocal(int paramInt)
  {
    Object localObject = new String();
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(AlipayApplication.getInstance().getApplicationContext().getResources().openRawResource(paramInt)));
    try
    {
      while (true)
      {
        String str1 = localBufferedReader.readLine();
        if (str1 == null)
          break;
        String str2 = (String)localObject + str1;
        localObject = str2;
      }
    }
    catch (IOException localIOException)
    {
      localObject = null;
    }
    return localObject;
  }

  private void intLastState()
  {
    LogCatLog.i(TAG, "intLastState enter");
    if ((this.infoCacheBoardInfos != null) && (this.infoCacheBoardInfos.size() != 0))
    {
      TopBoardInfo localTopBoardInfo = (TopBoardInfo)this.infoCacheBoardInfos.get(-1 + this.infoCacheBoardInfos.size());
      if (localTopBoardInfo != null)
      {
        setTopBoardInfo(localTopBoardInfo);
        LogCatLog.i(TAG, "intLastState updateUI");
        updateUI();
        this.infoCacheBoardInfos.clear();
      }
    }
    SharedPreferences localSharedPreferences;
    long l;
    do
    {
      do
      {
        do
          return;
        while (this.topBoardInfo != null);
        localSharedPreferences = AlipayApplication.getInstance().getSharedPreferences("nfdbiz_setting", 0);
      }
      while (localSharedPreferences == null);
      this.topBoardInfo = new TopBoardInfo();
      l = localSharedPreferences.getLong("nfdbiz_setting_timestamp", 0L);
    }
    while (System.currentTimeMillis() - l > 86400000L);
    this.topBoardInfo.setACTIVE_TEMPLATE(localSharedPreferences.getString("nfdbiz_setting_active_template", ""));
    this.topBoardInfo.setLIVESTATUS(localSharedPreferences.getString("nfdbiz_setting_livestatus", "1"));
    this.topBoardInfo.setLOGO_URL(localSharedPreferences.getString("nfdbiz_setting_logo_url", ""));
    this.topBoardInfo.setSERVICE_NAME(localSharedPreferences.getString("nfdbiz_setting_service_name", ""));
    this.topBoardInfo.setSTORE_NAME(localSharedPreferences.getString("nfdbiz_setting_store_name", ""));
    this.topBoardInfo.setSERVICE_DESC(localSharedPreferences.getString("nfdbiz_setting_service_desc", ""));
    this.topBoardInfo.setSERVICE_ID(localSharedPreferences.getString("nfdbiz_setting_service_id", ""));
    updateUI();
  }

  private boolean isFromPotal()
  {
    boolean bool1 = false;
    try
    {
      SharedPreferences localSharedPreferences = AlipayApplication.getInstance().getSharedPreferences("wifisdk_setting", 0);
      String str1 = "";
      if (localSharedPreferences != null)
      {
        str1 = localSharedPreferences.getString("wifisdk_setting_success_public_id", "");
        LogCatLog.i(TAG, "serviceIdString:" + str1);
      }
      TopBoardInfo localTopBoardInfo = this.topBoardInfo;
      bool1 = false;
      if (localTopBoardInfo != null)
      {
        String str2 = this.topBoardInfo.getSERVICE_ID();
        bool1 = false;
        if (str2 != null)
        {
          LogCatLog.i(TAG, "getSERVICE_ID:" + this.topBoardInfo.getSERVICE_ID());
          boolean bool2 = TextUtils.isEmpty(str1);
          bool1 = false;
          if (!bool2)
          {
            boolean bool3 = this.topBoardInfo.getSERVICE_ID().endsWith(str1);
            bool1 = false;
            if (bool3)
            {
              bool1 = true;
              localSharedPreferences.edit().putString("wifisdk_setting_success_public_id", "");
            }
          }
        }
      }
      return bool1;
    }
    catch (Exception localException)
    {
    }
    return bool1;
  }

  private void onResume()
  {
    LogCatLog.i(TAG, "onResume enter");
    if (this.topBoardViewRef == null);
    while ((this.topBoardViewRef.get() == null) || (((IActiveTopBaordContainer)this.topBoardViewRef.get()).getView() == null) || (((IActiveTopBaordContainer)this.topBoardViewRef.get()).getView().getHandler() == null))
      return;
    ((IActiveTopBaordContainer)this.topBoardViewRef.get()).getView().getHandler().postDelayed(new e(this), 1000L);
  }

  private void openLiveServicePage(String paramString)
  {
    ((SchemeService)this.microAppContext.findServiceByInterface(SchemeService.class.getName())).process(Uri.parse(paramString));
  }

  private void refreshStateRecord()
  {
    if ((this.topBoardInfo != null) && (!TextUtils.isEmpty(this.topBoardInfo.getACTIVE_TEMPLATE())))
    {
      SharedPreferences localSharedPreferences = AlipayApplication.getInstance().getSharedPreferences("nfdbiz_setting", 0);
      if (localSharedPreferences != null)
      {
        long l = System.currentTimeMillis();
        localSharedPreferences.edit().putString("nfdbiz_setting_livestatus", this.topBoardInfo.getLIVESTATUS());
        localSharedPreferences.edit().putString("nfdbiz_setting_active_template", this.topBoardInfo.getACTIVE_TEMPLATE());
        localSharedPreferences.edit().putString("nfdbiz_setting_logo_url", this.topBoardInfo.getLOGO_URL());
        localSharedPreferences.edit().putString("nfdbiz_setting_service_name", this.topBoardInfo.getSERVICE_NAME());
        localSharedPreferences.edit().putString("nfdbiz_setting_store_name", this.topBoardInfo.getSTORE_NAME());
        localSharedPreferences.edit().putLong("nfdbiz_setting_timestamp", l);
        localSharedPreferences.edit().putString("nfdbiz_setting_service_desc", this.topBoardInfo.getSERVICE_DESC());
        localSharedPreferences.edit().putString("nfdbiz_setting_service_id", this.topBoardInfo.getSERVICE_ID());
      }
    }
  }

  public TopBoardInfo getTopBoardInfo()
  {
    return this.topBoardInfo;
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void regestLongLinkReserv()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.alipay.longlink.TRANSFER_20000002");
    LocalBroadcastManager.getInstance(AlipayApplication.getInstance().getApplicationContext()).registerReceiver(new WifiSnifferServiceImpl.InShopByWifiReceiver(this), localIntentFilter);
  }

  public void setActiveTopBaordView(IActiveTopBaordContainer paramIActiveTopBaordContainer)
  {
    LogCatLog.i(TAG, "setActiveTopBaordView enter");
    if (paramIActiveTopBaordContainer == null)
    {
      LogCatLog.i(TAG, "setActiveTopBaordView topBaordView == null");
      return;
    }
    LogCatLog.i(TAG, "setActiveTopBaordView topBaordView != null");
    this.topBoardViewRef = new WeakReference(paramIActiveTopBaordContainer);
    ((IActiveTopBaordContainer)this.topBoardViewRef.get()).setOnVisibleChangeListener(new f(this));
    ((IActiveTopBaordContainer)this.topBoardViewRef.get()).setOnBoardCLickListener(new g(this));
    this.microAppContext = AlipayApplication.getInstance().getMicroApplicationContext();
    this.liveServiceRouterRpc = ((LiveServiceRouterRpc)((RpcService)this.microAppContext.findServiceByInterface(RpcService.class.getName())).getRpcProxy(LiveServiceRouterRpc.class));
  }

  public void setTopBoardInfo(TopBoardInfo paramTopBoardInfo)
  {
    if (paramTopBoardInfo != null)
    {
      this.topBoardInfo = paramTopBoardInfo;
      refreshStateRecord();
    }
  }

  public void setTopBoardStateCallBack(ITopBoardStateCallBack paramITopBoardStateCallBack)
  {
    if ((this.topBoardViewRef != null) && (this.topBoardViewRef.get() != null))
      ((IActiveTopBaordContainer)this.topBoardViewRef.get()).setOnStateChangeListener(paramITopBoardStateCallBack);
  }

  public void updateUI()
  {
    if (this.topBoardInfo == null)
    {
      LogCatLog.i(TAG, "updateUI: topBoardInfo == null");
      return;
    }
    if (this.topBoardViewRef == null)
    {
      LogCatLog.i(TAG, "updateUI: topBoardViewRef == null");
      return;
    }
    if (this.topBoardViewRef.get() == null)
    {
      LogCatLog.i(TAG, "updateUI: topBoardViewRef.get() == null");
      return;
    }
    if ((this.topBoardInfo.getLIVESTATUS() != null) && (this.topBoardInfo.getLIVESTATUS().trim().equalsIgnoreCase("0")))
      if (isFromPotal())
      {
        ((IActiveTopBaordContainer)this.topBoardViewRef.get()).changeState(1);
        LogCatLog.i(TAG, "updateUI: 到店");
      }
    while (true)
    {
      ((IActiveTopBaordContainer)this.topBoardViewRef.get()).updateTopInfo(this.topBoardInfo.getLOGO_URL(), this.topBoardInfo.getSERVICE_NAME(), this.topBoardInfo.getSTORE_NAME());
      LogCatLog.i(TAG, "updateUI: finish");
      return;
      ((IActiveTopBaordContainer)this.topBoardViewRef.get()).changeState(2);
      break;
      ((IActiveTopBaordContainer)this.topBoardViewRef.get()).changeState(0);
      LogCatLog.i(TAG, "updateUI: 离店或getLIVESTATUS() == null");
      LogCatLog.i(TAG, "getACTIVE_TEMPLATE()：" + this.topBoardInfo.getACTIVE_TEMPLATE());
      LogCatLog.i(TAG, "getACTIVE_TYPE()：" + this.topBoardInfo.getACTIVE_TYPE());
      LogCatLog.i(TAG, "getLIVESTATUS()：" + this.topBoardInfo.getLIVESTATUS());
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.nfdbiz.biz.WifiSnifferServiceImpl
 * JD-Core Version:    0.6.2
 */