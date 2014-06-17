package com.alipay.mobile.phonecashier.service.util;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.alipay.android.app.pay.MainActivity;
import com.alipay.android.app.pay.TransContainer;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.mini.window.MiniPayActivity;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierOrder;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierOrderExp;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class PhoneCashierUtil
{
  public static String a(PhoneCashierOrder paramPhoneCashierOrder, String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString1))
      return paramString1;
    String str1 = paramPhoneCashierOrder.getBizSubType();
    String str2 = paramPhoneCashierOrder.getBizType();
    String str3 = paramPhoneCashierOrder.getOrderNo();
    String str4 = paramPhoneCashierOrder.getOrderToken();
    String str5 = paramPhoneCashierOrder.getPartnerID();
    String str6 = paramPhoneCashierOrder.getTotalFee();
    String str7 = paramPhoneCashierOrder.getOutTradeNumber();
    String str8 = paramPhoneCashierOrder.getCallbackUrl();
    String str9 = paramPhoneCashierOrder.getBizContext();
    String str10 = paramPhoneCashierOrder.getBizIdentity();
    String str11 = paramPhoneCashierOrder.getUserId();
    String str12 = paramPhoneCashierOrder.getTradeFrom();
    String str13 = paramPhoneCashierOrder.getForbidChannel();
    String str14 = paramPhoneCashierOrder.getOpType();
    String str15 = paramPhoneCashierOrder.getAssignedChannel();
    String str16 = paramPhoneCashierOrder.getActivity();
    String str17 = paramPhoneCashierOrder.getAmount();
    String str18 = paramPhoneCashierOrder.getBlackChannelList();
    String str19;
    String str26;
    if (TextUtils.equals(str1, "barcode_prepay"))
    {
      String str46 = "" + "biz_sub_type=\"" + str1 + "\"";
      String str47 = str46 + "&";
      String str48 = str47 + "extern_token=\"" + paramString2 + "\"";
      String str49 = str48 + "&";
      String str50 = str49 + "app_name=\"alipay\"";
      String str51 = str50 + "&";
      String str52 = str51 + "biz_type=\"" + str2 + "\"";
      String str53 = str52 + "&";
      str19 = str53 + "trade_no=\"" + str3 + "\"";
      if (true == paramPhoneCashierOrder.isShowBizResultPage())
      {
        String str27 = str19 + "&";
        str19 = str27 + "display_pay_result=\"false\"";
      }
      if (!TextUtils.equals(str2, "pcr"))
        break label1974;
      str26 = str19 + "&";
    }
    label533: label1960: label1967: label1974: for (String str21 = str26 + "total_fee=\"" + str6 + "\""; ; str21 = str19)
    {
      String str25;
      if ((paramPhoneCashierOrder instanceof PhoneCashierOrderExp))
      {
        String str24 = ((PhoneCashierOrderExp)paramPhoneCashierOrder).getBizcontext();
        if (str24 != null)
        {
          if ((str21 == null) || (str21.length() <= 0))
            break label1960;
          str25 = str21 + "&";
          str21 = str25 + "bizcontext" + "=\"" + str24 + "\"";
        }
      }
      String str22;
      if ((paramPhoneCashierOrder instanceof PhoneCashierOrderExp))
      {
        Map localMap = ((PhoneCashierOrderExp)paramPhoneCashierOrder).getAppenv();
        if (localMap != null)
        {
          str22 = localMap.toString().replace('{', ' ').replace('}', ' ').replaceAll("\"", "").replaceAll(",", "^").replaceAll(" ", "");
          if ((str21 == null) || (str21.length() <= 0))
            break label1967;
        }
      }
      for (String str23 = str21 + "&"; ; str23 = "")
      {
        str21 = str23 + "appenv" + "=\"" + str22 + "\"";
        return str21;
        str19 = "" + "app_name=\"alipay\"";
        String str45;
        if (!TextUtils.isEmpty(str3))
        {
          str45 = str19 + "&";
          if ((str2 == null) || (!str2.equals("peer_pay")))
            break label1925;
        }
        for (str19 = str45 + "biz_no=\"" + str3 + "\""; ; str19 = str45 + "trade_no=\"" + str3 + "\"")
        {
          if (!TextUtils.isEmpty(str4))
          {
            String str44 = str19 + "&";
            str19 = str44 + "ordertoken=\"" + str4 + "\"";
          }
          if (!TextUtils.isEmpty(paramString2))
          {
            String str43 = str19 + "&";
            str19 = str43 + "extern_token=\"" + paramString2 + "\"";
          }
          if (!TextUtils.isEmpty(str5))
          {
            String str42 = str19 + "&";
            str19 = str42 + "partner=\"" + str5 + "\"";
          }
          if (!TextUtils.isEmpty(str7))
          {
            String str41 = str19 + "&";
            str19 = str41 + "out_trade_no=\"" + str7 + "\"";
          }
          if (!TextUtils.isEmpty(str8))
          {
            String str40 = str19 + "&";
            str19 = str40 + "call_back_url=\"" + str8 + "\"";
          }
          if (!TextUtils.isEmpty(str9))
          {
            String str39 = str19 + "&";
            str19 = str39 + "bizcontext=\"" + str9 + "\"";
          }
          if (TextUtils.equals(str1, "MOA_DIRECT"))
          {
            String str38 = str19 + "&";
            str19 = str38 + "deliver_mobile=\"" + paramPhoneCashierOrder.getDeliverMobile() + "\"";
          }
          if (!TextUtils.isEmpty(str2))
          {
            String str37 = str19 + "&";
            str19 = str37 + "biz_type=\"" + str2 + "\"";
          }
          if (!TextUtils.isEmpty(str1))
          {
            String str36 = str19 + "&";
            str19 = str36 + "biz_sub_type=\"" + str1 + "\"";
          }
          if (!TextUtils.isEmpty(str10))
          {
            String str35 = str19 + "&";
            str19 = str35 + "biz_identity=\"" + str10 + "\"";
          }
          if (!TextUtils.isEmpty(str11))
          {
            String str34 = str19 + "&";
            str19 = str34 + "user_id=\"" + str11 + "\"";
          }
          if (!TextUtils.isEmpty(str12))
          {
            String str33 = str19 + "&";
            str19 = str33 + "trade_from=\"" + str12 + "\"";
          }
          if (!TextUtils.isEmpty(str13))
          {
            String str32 = str19 + "&";
            str19 = str32 + "forbid_channel=\"" + str13 + "\"";
          }
          if (!TextUtils.isEmpty(str14))
          {
            String str31 = str19 + "&";
            str19 = str31 + "op_type=\"" + str14 + "\"";
          }
          if (!TextUtils.isEmpty(str15))
          {
            String str30 = str19 + "&";
            str19 = str30 + "assigned_channel=\"" + str15 + "\"";
          }
          if (!TextUtils.isEmpty(str16))
          {
            String str29 = str19 + "&";
            str19 = str29 + "activity=\"" + str16 + "\"";
          }
          if (!TextUtils.isEmpty(str17))
          {
            String str28 = str19 + "&";
            str19 = str28 + "amount=\"" + str17 + "\"";
          }
          if (TextUtils.isEmpty(str18))
            break;
          String str20 = str19 + "&";
          str19 = str20 + "black_channel_list=\"" + str18 + "\"";
          break;
        }
        str25 = "";
        break label533;
      }
    }
  }

  public static JSONObject a(String paramString1, String paramString2)
  {
    int i = 0;
    JSONObject localJSONObject = new JSONObject();
    try
    {
      String[] arrayOfString1 = paramString1.split(paramString2);
      while (i < arrayOfString1.length)
      {
        String[] arrayOfString2 = arrayOfString1[i].split("=");
        localJSONObject.put(arrayOfString2[0], arrayOfString1[i].substring(1 + arrayOfString2[0].length()));
        i++;
      }
    }
    catch (Exception localException)
    {
    }
    return localJSONObject;
  }

  public static void a(int paramInt, String paramString)
  {
    LocalBroadcastManager localLocalBroadcastManager = LocalBroadcastManager.getInstance(AlipayApplication.getInstance());
    Intent localIntent = new Intent("com.alipay.android.app.remove.current.payTask");
    localIntent.putExtra("pid", paramInt);
    localIntent.putExtra("externalInfo", paramString);
    localLocalBroadcastManager.sendBroadcast(localIntent);
  }

  public static boolean a()
  {
    ActivityManager localActivityManager = (ActivityManager)GlobalContext.a().b().getSystemService("activity");
    if ((localActivityManager != null) && (localActivityManager.getRunningTasks(1) != null) && (localActivityManager.getRunningTasks(1).size() > 0))
    {
      ActivityManager.RunningTaskInfo localRunningTaskInfo = (ActivityManager.RunningTaskInfo)localActivityManager.getRunningTasks(1).get(0);
      if (localRunningTaskInfo != null)
      {
        String str = localRunningTaskInfo.topActivity.getClass().getCanonicalName();
        if ((!TextUtils.isEmpty(str)) && ((str.equals(MainActivity.class.getCanonicalName())) || (str.equals(MiniPayActivity.class.getCanonicalName())) || (str.equals(TransContainer.class.getCanonicalName()))))
          return true;
      }
    }
    return false;
  }

  public static JSONObject b(String paramString1, String paramString2)
  {
    int i = 0;
    JSONObject localJSONObject = new JSONObject();
    try
    {
      String[] arrayOfString1 = paramString1.split(paramString2);
      while (i < arrayOfString1.length)
      {
        String[] arrayOfString2 = arrayOfString1[i].split("=\"");
        localJSONObject.put(arrayOfString2[0], arrayOfString1[i].substring(2 + arrayOfString2[0].length()));
        i++;
      }
    }
    catch (Exception localException)
    {
    }
    return localJSONObject;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.phonecashier.service.util.PhoneCashierUtil
 * JD-Core Version:    0.6.2
 */