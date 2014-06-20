package com.alipay.android.phone.publicplatform.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.android.phone.publicplatform.home.PublicHomeWidgetGroup;
import com.alipay.mobile.android.main.publichome.PublicHomeView_;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.publicsvc.home.proguard.a.b;
import com.alipay.publiccore.client.result.OfficialHomeListResult;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EReceiver;
import java.util.List;
import java.util.Timer;

@EReceiver
public class PublicHomeWidgetGroupReceiver extends BroadcastReceiver
{
  public static final String TAG = "PublicHomeWidgetGroupReceiver";
  private AuthService a;
  private Timer b;
  private long c = 10000L;
  private boolean d = true;
  private boolean e = false;
  private String f = null;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (this.a == null)
      this.a = ((AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    String str1 = paramIntent.getAction();
    new StringBuilder("public home widget receivce message").append(str1).toString();
    if (StringUtils.equals("com.alipay.mobile.intent.action.UPDATETODOLIST", str1))
      if (paramIntent.getBooleanExtra("refreshNow", false))
        reload(true);
    while (true)
    {
      return;
      this.e = true;
      return;
      if (StringUtils.equals("com.alipay.mobile.basebiz.TRADE_STATUS_CHANGED", str1))
      {
        reload(false);
        return;
      }
      if ("com.alipay.security.login".equals(str1))
      {
        UserInfo localUserInfo3 = this.a.getUserInfo();
        if (localUserInfo3 != null)
        {
          if ((this.f != null) && (!StringUtils.equals(this.f, localUserInfo3.getUserId())))
          {
            new StringBuilder("switchAccount Login ").append(this.f).append("->").append(localUserInfo3.getUserId()).toString();
            com.alipay.mobile.publicsvc.home.proguard.h.a.a().notifyMsgCountUpdate();
            if (PublicHomeWidgetGroup.publicHomeViewHolder != null)
            {
              List localList = com.alipay.mobile.publicsvc.home.proguard.h.a.a().queryUserFollowAccountFromLocal(localUserInfo3.getUserId(), false);
              PublicHomeWidgetGroup.publicHomeViewHolder.reloadPublichomeList(localList);
            }
          }
          this.f = localUserInfo3.getUserId();
          this.d = true;
          reload(false);
        }
      }
      else if ("com.alipay.security.logout".equals(str1))
      {
        this.d = false;
        if (this.b != null)
          this.b.cancel();
      }
      else
      {
        if ("com.alipay.mobile.android.main.publichome.add".equals(str1))
        {
          reload(true);
          return;
        }
        if ("com.alipay.mobile.android.main.publichome.remove".equals(str1))
        {
          String str8 = paramIntent.getStringExtra("objectId");
          UserInfo localUserInfo2 = this.a.getUserInfo();
          if ((localUserInfo2 != null) && (StringUtils.isNotBlank(str8)))
          {
            com.alipay.mobile.publicsvc.home.proguard.h.a.a().removeLocalFollow(localUserInfo2.getUserId(), str8);
            if (PublicHomeWidgetGroup.publicHomeViewHolder != null)
              PublicHomeWidgetGroup.publicHomeViewHolder.removeBundle(str8);
          }
        }
        else
        {
          String str3;
          String str4;
          String str5;
          String str6;
          String str7;
          if ("com.alipay.mobile.android.main.publichome.sorttimeupdate".equals(str1))
          {
            str3 = paramIntent.getStringExtra("objectId");
            str4 = paramIntent.getStringExtra("msgTime");
            str5 = paramIntent.getStringExtra("msgDesc");
            str6 = paramIntent.getStringExtra("thirdAccount");
            str7 = paramIntent.getStringExtra("lastOperateTime");
            if (str5 == null)
              str5 = "";
            if (str6 == null)
              str6 = "";
            if (str4 == null)
              str4 = "0";
          }
          try
          {
            long l1 = Long.valueOf(str4).longValue();
            Long localLong = Long.valueOf(str7);
            UserInfo localUserInfo1 = this.a.getUserInfo();
            if (localUserInfo1 != null)
            {
              if ((StringUtils.isNotBlank(str3)) && (localUserInfo1 != null))
              {
                if (localLong == null)
                  break label547;
                com.alipay.mobile.publicsvc.home.proguard.h.a.a().a(localUserInfo1.getUserId(), str3, str6, l1, str5, localLong.longValue());
              }
              while (true)
              {
                com.alipay.mobile.publicsvc.home.proguard.h.a.a().updateUnReadMsgCount(localUserInfo1.getUserId(), str3, 0);
                if (PublicHomeWidgetGroup.publicHomeViewHolder == null)
                  break;
                if (localLong == null)
                  break label570;
                PublicHomeView_ localPublicHomeView_ = PublicHomeWidgetGroup.publicHomeViewHolder;
                long l2 = localLong.longValue();
                localPublicHomeView_.updatePublicObject(str3, l1, str5, str6, 0, l2);
                return;
                label547: com.alipay.mobile.publicsvc.home.proguard.h.a.a().updateThirdPartyLastMsg(localUserInfo1.getUserId(), str3, str6, l1, str5);
              }
              label570: PublicHomeWidgetGroup.publicHomeViewHolder.updatePublicObject(str3, l1, str5, str6, 0);
              return;
              if ("com.alipay.mobile.android.main.publichome.refresh".equals(str1))
              {
                reload(true);
                return;
              }
              if (StringUtils.equals("notifyHomeRefresh", str1))
              {
                reload(true);
                return;
              }
              if (StringUtils.equals("com.alipay.mobile.LAUNCHER_TAB_CHANGED", str1))
              {
                String str2 = paramIntent.getStringExtra("data");
                if ((this.e) && (StringUtils.equals(str2, "20000101")))
                  reload(false);
                this.e = false;
                return;
              }
            }
          }
          catch (NumberFormatException localNumberFormatException)
          {
          }
        }
      }
    }
  }

  @Background
  protected void reload(boolean paramBoolean)
  {
    com.alipay.mobile.publicsvc.home.proguard.a.a.a(new b("YWUC-GZPT-C36", "none", "public", "publicIndexList", "", "ppmainAutoRefresh", ""));
    OfficialHomeListResult localOfficialHomeListResult = com.alipay.mobile.publicsvc.home.proguard.h.a.a().queryUserFollowAccountFromRemote();
    if (this.d)
    {
      if (this.b != null)
        this.b.cancel();
      this.b = new Timer();
      this.b.schedule(new a(this), this.c);
      this.d = false;
    }
    if ((localOfficialHomeListResult != null) && (localOfficialHomeListResult.resultCode == 200))
    {
      List localList = com.alipay.mobile.publicsvc.home.proguard.h.a.a().syncFollowAccountInfoToLocal(localOfficialHomeListResult);
      if (PublicHomeWidgetGroup.publicHomeViewHolder != null)
      {
        if (paramBoolean)
          PublicHomeWidgetGroup.publicHomeViewHolder.scrollToTop();
        PublicHomeWidgetGroup.publicHomeViewHolder.reloadPublichomeList(localList);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.receiver.PublicHomeWidgetGroupReceiver
 * JD-Core Version:    0.6.2
 */