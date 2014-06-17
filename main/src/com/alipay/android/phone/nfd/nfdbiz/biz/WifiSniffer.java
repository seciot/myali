package com.alipay.android.phone.nfd.nfdbiz.biz;

import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Handler;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.alipay.android.phone.nfd.nfdbiz.model.TopBoardInfo;
import com.alipay.liveservice.common.service.rpc.LiveServiceRouterRpc;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.ImageLoaderService;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.nfd.nfdbiz.IActiveTopBaordView;
import com.alipay.mobile.nfd.nfdbiz.ITopBoardStateCallBack;
import com.alipay.mobile.nfd.nfdbiz.IWifiSniffer;
import java.util.ArrayList;
import java.util.List;

public class WifiSniffer
  implements IWifiSniffer
{
  public static final String MSG_ACTION_PUB_LONG_LINK = "com.alipay.longlink.TRANSFER_20000002";
  private static final String SP_KEY_ACTIVE_TEMPLATE = "nfdbiz_setting_active_template";
  private static final String SP_KEY_LIVESTATUS = "nfdbiz_setting_livestatus";
  private static final String SP_KEY_LOGO_URL = "nfdbiz_setting_logo_url";
  private static final String SP_KEY_SERVICE_DESC = "nfdbiz_setting_service_desc";
  private static final String SP_KEY_SERVICE_NAME = "nfdbiz_setting_service_name";
  private static final String SP_KEY_STORE_NAME = "nfdbiz_setting_store_name";
  private static final String SP_KEY_TIMESTAMP = "nfdbiz_setting_timestamp";
  private static final String SP_NAME_NFDBIZ = "nfdbiz_setting";
  public static final String TAG = WifiSniffer.class.getName();
  private static final String TAG_BIZ = "bizType";
  private static final String TAG_LIVE_SERVICE = "liveservice";
  private static final String TAG_LONG_LINK = "payload";
  private static TopBoardInfo topBoardInfo = new TopBoardInfo();
  private Handler handler = new Handler();
  private ImageLoaderService imageLoaderService;
  private List<TopBoardInfo> infoCacheBoardInfos = new ArrayList();
  private LiveServiceRouterRpc liveServiceRouterRpc;
  private MicroApplicationContext microAppContext;
  private IActiveTopBaordView topBaordView;
  private ITopBoardStateCallBack topBoardStateCallBack;

  public WifiSniffer(IActiveTopBaordView paramIActiveTopBaordView)
  {
    this.topBaordView = paramIActiveTopBaordView;
    this.microAppContext = AlipayApplication.getInstance().getMicroApplicationContext();
    this.liveServiceRouterRpc = ((LiveServiceRouterRpc)((RpcService)this.microAppContext.findServiceByInterface(RpcService.class.getName())).getRpcProxy(LiveServiceRouterRpc.class));
    this.imageLoaderService = ((ImageLoaderService)this.microAppContext.findServiceByInterface(ImageLoaderService.class.getName()));
    this.topBaordView.setOnVisibleChangeListener(new a(this));
    this.topBaordView.setOnBoardCLickListener(new b(this));
  }

  private String getUserId()
  {
    AuthService localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if ((localAuthService != null) && (localAuthService.getUserInfo() != null))
      return localAuthService.getUserInfo().getUserId();
    return null;
  }

  private void intLastState()
  {
    if (this.infoCacheBoardInfos.size() != 0)
    {
      TopBoardInfo localTopBoardInfo = (TopBoardInfo)this.infoCacheBoardInfos.get(-1 + this.infoCacheBoardInfos.size());
      if (localTopBoardInfo != null)
      {
        topBoardInfo = localTopBoardInfo;
        updateUI();
      }
      this.infoCacheBoardInfos.clear();
    }
    SharedPreferences localSharedPreferences;
    long l;
    do
    {
      do
      {
        do
          return;
        while (!TextUtils.isEmpty(topBoardInfo.getACTIVE_TEMPLATE()));
        localSharedPreferences = AlipayApplication.getInstance().getSharedPreferences("nfdbiz_setting", 0);
      }
      while (localSharedPreferences == null);
      l = localSharedPreferences.getLong("nfdbiz_setting_timestamp", 0L);
    }
    while (System.currentTimeMillis() - l > 86400000L);
    topBoardInfo.setACTIVE_TEMPLATE(localSharedPreferences.getString("nfdbiz_setting_active_template", ""));
    topBoardInfo.setLIVESTATUS(localSharedPreferences.getString("nfdbiz_setting_livestatus", "1"));
    topBoardInfo.setLOGO_URL(localSharedPreferences.getString("nfdbiz_setting_logo_url", ""));
    topBoardInfo.setSERVICE_NAME(localSharedPreferences.getString("nfdbiz_setting_service_name", ""));
    topBoardInfo.setSTORE_NAME(localSharedPreferences.getString("nfdbiz_setting_store_name", ""));
    topBoardInfo.setSERVICE_DESC(localSharedPreferences.getString("nfdbiz_setting_service_desc", ""));
  }

  private void onResume()
  {
    this.handler.postDelayed(new c(this), 1000L);
  }

  private void openLiveServicePage(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addCategory("android.intent.category.DEFAULT");
    localIntent.setData(Uri.parse(paramString));
    this.microAppContext.startActivity(this.microAppContext.findTopRunningApp(), localIntent);
  }

  private static void refreshStateRecord()
  {
    if ((topBoardInfo != null) && (!TextUtils.isEmpty(topBoardInfo.getACTIVE_TEMPLATE())))
    {
      SharedPreferences localSharedPreferences = AlipayApplication.getInstance().getSharedPreferences("nfdbiz_setting", 0);
      if (localSharedPreferences != null)
      {
        long l = System.currentTimeMillis();
        localSharedPreferences.edit().putString("nfdbiz_setting_livestatus", topBoardInfo.getLIVESTATUS());
        localSharedPreferences.edit().putString("nfdbiz_setting_active_template", topBoardInfo.getACTIVE_TEMPLATE());
        localSharedPreferences.edit().putString("nfdbiz_setting_logo_url", topBoardInfo.getLOGO_URL());
        localSharedPreferences.edit().putString("nfdbiz_setting_service_name", topBoardInfo.getSERVICE_NAME());
        localSharedPreferences.edit().putString("nfdbiz_setting_store_name", topBoardInfo.getSTORE_NAME());
        localSharedPreferences.edit().putLong("nfdbiz_setting_timestamp", l);
        localSharedPreferences.edit().putString("nfdbiz_setting_service_desc", topBoardInfo.getSERVICE_DESC());
      }
    }
  }

  public TopBoardInfo getTopBoardInfo()
  {
    return topBoardInfo;
  }

  public void regestLongLinkReserv()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.alipay.longlink.TRANSFER_20000002");
    LocalBroadcastManager.getInstance(AlipayApplication.getInstance().getApplicationContext()).registerReceiver(new WifiSniffer.InShopByWifiReceiver(this), localIntentFilter);
  }

  public void setActiveTopBaordView(IActiveTopBaordView paramIActiveTopBaordView)
  {
    this.topBaordView = paramIActiveTopBaordView;
  }

  public void setTopBoardInfo(TopBoardInfo paramTopBoardInfo)
  {
    if (paramTopBoardInfo != null)
    {
      topBoardInfo = paramTopBoardInfo;
      refreshStateRecord();
    }
  }

  public void setTopBoardStateCallBack(ITopBoardStateCallBack paramITopBoardStateCallBack)
  {
    this.topBoardStateCallBack = paramITopBoardStateCallBack;
  }

  public void updateUI()
  {
    if (topBoardInfo == null)
      return;
    if (topBoardInfo.getLIVESTATUS().equals("0"))
      this.topBaordView.changeState(2);
    while (true)
    {
      this.topBaordView.updateTopInfo(topBoardInfo.getLOGO_URL(), topBoardInfo.getSERVICE_NAME(), topBoardInfo.getSTORE_NAME());
      return;
      this.topBaordView.changeState(0);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.nfdbiz.biz.WifiSniffer
 * JD-Core Version:    0.6.2
 */