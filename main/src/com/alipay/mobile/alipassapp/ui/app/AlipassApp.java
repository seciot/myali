package com.alipay.mobile.alipassapp.ui.app;

import android.os.Bundle;
import com.alipay.mobile.alipassapp.ui.AlipassDetailActivity_;
import com.alipay.mobile.alipassapp.ui.AlipassPreviewActivity_;
import com.alipay.mobile.alipassapp.ui.AlipassQueryCardActivity_;
import com.alipay.mobile.alipassapp.ui.MemberCardCurrentListActivity;
import com.alipay.mobile.alipassapp.ui.MemberCardDetailActivity_;
import com.alipay.mobile.alipassapp.ui.MemberCardObtainableListActivity;
import com.alipay.mobile.alipassapp.ui.TravelCurrentListActivity;
import com.alipay.mobile.alipassapp.ui.TravelPastListActivity;
import com.alipay.mobile.alipassapp.ui.VoucherCurrentListActivity;
import com.alipay.mobile.alipassapp.ui.VoucherPastListActivity;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public class AlipassApp extends ActivityApplication
{
  Bundle mParam;

  public Bundle getAppBundle()
  {
    return this.mParam;
  }

  public String getEntryClassName()
  {
    boolean bool;
    String str2;
    String str3;
    String str4;
    String str5;
    String str1;
    if (this.mParam != null)
    {
      String str6 = this.mParam.getString("b");
      String str7 = this.mParam.getString("p");
      String str8 = this.mParam.getString("path");
      String str9 = this.mParam.getString("tagfrom");
      String str10 = this.mParam.getString("has_past");
      bool = this.mParam.getBoolean("has_member_data", false);
      str2 = str10;
      str3 = str9;
      str4 = str7;
      str5 = str6;
      str1 = str8;
    }
    while (true)
    {
      if (str1 != null)
        return AlipassPreviewActivity_.class.getName();
      if (str4 != null)
      {
        if (("push".equalsIgnoreCase(str3)) && ("t".equalsIgnoreCase(str5)))
        {
          AlipayApplication localAlipayApplication4 = AlipayApplication.getInstance();
          BehaviourIdEnum localBehaviourIdEnum4 = BehaviourIdEnum.CLICKED;
          String[] arrayOfString4 = new String[2];
          arrayOfString4[0] = str4;
          arrayOfString4[1] = this.mParam.getString("tagid");
          AlipayLogAgent.writeLog(localAlipayApplication4, localBehaviourIdEnum4, "", "", "20000021", "", "travelItineraryDetails", "", "seePush", "", "", "", arrayOfString4);
          if ((!"push".equalsIgnoreCase(str3)) || (!"c".equalsIgnoreCase(str5)))
            break label387;
          AlipayApplication localAlipayApplication3 = AlipayApplication.getInstance();
          BehaviourIdEnum localBehaviourIdEnum3 = BehaviourIdEnum.CLICKED;
          String[] arrayOfString3 = new String[2];
          arrayOfString3[0] = str4;
          arrayOfString3[1] = this.mParam.getString("tagid");
          AlipayLogAgent.writeLog(localAlipayApplication3, localBehaviourIdEnum3, "", "", "20000030", "", "couponDetails", "", "seePush", "", "", "", arrayOfString3);
        }
        while (true)
        {
          if ((!"c".equalsIgnoreCase(str5)) && (!"t".equalsIgnoreCase(str5)))
            break label474;
          return AlipassDetailActivity_.class.getName();
          if ((!"todo".equalsIgnoreCase(str3)) || (!"t".equalsIgnoreCase(str5)))
            break;
          AlipayApplication localAlipayApplication1 = AlipayApplication.getInstance();
          BehaviourIdEnum localBehaviourIdEnum1 = BehaviourIdEnum.CLICKED;
          String[] arrayOfString1 = new String[2];
          arrayOfString1[0] = str4;
          arrayOfString1[1] = this.mParam.getString("tagid");
          AlipayLogAgent.writeLog(localAlipayApplication1, localBehaviourIdEnum1, "", "", "20000021", "", "travelItineraryDetails", "todoList", "seeTodo", "", "", "", arrayOfString1);
          break;
          label387: if (("todo".equalsIgnoreCase(str3)) && ("c".equalsIgnoreCase(str5)))
          {
            AlipayApplication localAlipayApplication2 = AlipayApplication.getInstance();
            BehaviourIdEnum localBehaviourIdEnum2 = BehaviourIdEnum.CLICKED;
            String[] arrayOfString2 = new String[2];
            arrayOfString2[0] = str4;
            arrayOfString2[1] = this.mParam.getString("tagid");
            AlipayLogAgent.writeLog(localAlipayApplication2, localBehaviourIdEnum2, "", "", "20000030", "", "couponDetails", "todoList", "seeTodo", "", "", "", arrayOfString2);
          }
        }
        label474: if ("m".equalsIgnoreCase(str5))
          return MemberCardDetailActivity_.class.getName();
        return MemberCardDetailActivity_.class.getName();
      }
      if ((str5 != null) && (str5.equalsIgnoreCase("c")))
      {
        AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "20000030", "myCouponList", "exploreHome", "myCoupon");
        if (Boolean.valueOf(str2).booleanValue())
          return VoucherPastListActivity.class.getName();
        return VoucherCurrentListActivity.class.getName();
      }
      if ("m".equals(str5))
      {
        if (bool)
          return MemberCardCurrentListActivity.class.getName();
        if (StringUtils.isNotBlank(this.mParam.getString("pid")))
          return AlipassQueryCardActivity_.class.getName();
        return MemberCardObtainableListActivity.class.getName();
      }
      if ((str5 != null) && (str5.equalsIgnoreCase("t")))
        AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "20000021", "myTravelList", "exploreHome", "myTravel");
      if (Boolean.valueOf(str2).booleanValue())
        return TravelPastListActivity.class.getName();
      return TravelCurrentListActivity.class.getName();
      bool = false;
      str1 = null;
      str2 = null;
      str3 = null;
      str4 = null;
      str5 = null;
    }
  }

  public String getParamByName(String paramString)
  {
    if (this.mParam != null)
      return this.mParam.getString(paramString);
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.mParam = paramBundle;
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    this.mParam = paramBundle;
    getMicroApplicationContext().startActivity(this, getEntryClassName());
  }

  protected void onStart()
  {
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.app.AlipassApp
 * JD-Core Version:    0.6.2
 */