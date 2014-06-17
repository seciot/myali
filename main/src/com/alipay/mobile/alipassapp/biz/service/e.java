package com.alipay.mobile.alipassapp.biz.service;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassListResult;
import com.alipay.kabaoprod.core.model.model.PassBaseInfo;
import com.alipay.kabaoprod.core.model.model.PassInfo;
import com.alipay.kabaoprod.core.model.model.PassTimelineInfo;
import com.alipay.mobile.alipassapp.biz.common.b;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AppInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationImg;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationImg.MessageText;
import com.alipay.mobile.common.utils.ConnectionUtil;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.androidquery.AQuery;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class e extends d
{
  private static final String a = e.class.getSimpleName();
  private com.alipay.mobile.alipassapp.biz.a.a b;
  private com.alipay.mobile.alipassapp.biz.a c;
  private APImageView d;
  private com.alipay.mobile.alipassapp.biz.common.d e;
  private Long f = Long.valueOf(0L);

  private PassInfoResult a(String paramString1, String paramString2)
  {
    PassInfoResult localPassInfoResult = new PassInfoResult();
    try
    {
      localPassInfoResult = this.b.a(paramString1, paramString2);
      if ((localPassInfoResult != null) && (localPassInfoResult.success))
        return localPassInfoResult;
      localPassInfoResult = this.c.a(paramString1, true, false);
      if ((localPassInfoResult != null) && (localPassInfoResult.success))
      {
        this.b.a(localPassInfoResult, null, 0);
        return localPassInfoResult;
      }
    }
    catch (Exception localException)
    {
    }
    return localPassInfoResult;
  }

  private PassListResult a()
  {
    PassListResult localPassListResult1 = new PassListResult();
    try
    {
      this.f = this.e.b();
      PassListResult localPassListResult2 = this.b.e();
      return localPassListResult2;
    }
    catch (Exception localException)
    {
    }
    return localPassListResult1;
  }

  public final void a(boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences;
    while (true)
    {
      PassInfo localPassInfo1;
      PassBaseInfo localPassBaseInfo2;
      try
      {
        localSharedPreferences = getMicroApplicationContext().getApplicationContext().getSharedPreferences("alipass_setting", 0);
        if (paramBoolean)
        {
          long l1 = localSharedPreferences.getLong("interval", 3600L);
          long l2 = localSharedPreferences.getLong("last_previewload_time", 0L);
          if (System.currentTimeMillis() - l2 < l1 * 1000L)
            return;
        }
        PassListResult localPassListResult = a();
        if ((localPassListResult == null) || (!localPassListResult.success))
          return;
        List localList1 = localPassListResult.getPassTimelineList();
        if ((localList1 == null) || (localList1.size() <= 0))
          break;
        Iterator localIterator1 = localList1.iterator();
        if (!localIterator1.hasNext())
          break;
        List localList2 = ((PassTimelineInfo)localIterator1.next()).getPassList();
        if ((localList2 == null) || (localList2.size() == 0))
          continue;
        Iterator localIterator2 = localList2.iterator();
        if (localIterator2.hasNext())
        {
          PassBaseInfo localPassBaseInfo1 = (PassBaseInfo)localIterator2.next();
          if ((localPassBaseInfo1.passId != null) && (localPassBaseInfo1.gmtModified == null))
            continue;
          PassInfoResult localPassInfoResult = a(localPassBaseInfo1.passId, localPassBaseInfo1.gmtModified);
          if ((localPassInfoResult == null) || (!localPassInfoResult.success))
            return;
          localPassInfo1 = localPassInfoResult.getPassInfo();
          if ((localPassInfo1 != null) && (localPassInfo1.getOperations() != null))
            break label404;
          if (ConnectionUtil.getConnType(getMicroApplicationContext().getApplicationContext()) > 0)
            continue;
          PassInfo localPassInfo2 = localPassInfoResult.getPassInfo();
          if ((localPassInfo2 == null) || (localPassInfo2.getPassBaseInfo() == null))
            continue;
          localPassBaseInfo2 = localPassInfo2.getPassBaseInfo();
          if ((localPassBaseInfo2 != null) && (!StringUtils.isBlank(localPassBaseInfo2.displayInfo)))
            break label552;
          if ((localPassInfo2 == null) || (StringUtils.isBlank(localPassInfo2.getAppInfo())))
            continue;
          AlipassInfo.AppInfo localAppInfo = (AlipassInfo.AppInfo)b.b(localPassInfo2.getAppInfo(), AlipassInfo.AppInfo.class);
          if (!StringUtils.isNotBlank(localAppInfo.getIcon()))
            continue;
          ((AQuery)new AQuery(getMicroApplicationContext().getApplicationContext()).id(this.d)).image(localAppInfo.getIcon().trim());
          continue;
        }
        continue;
      }
      catch (Exception localException)
      {
        return;
      }
      try
      {
        label404: JSONArray localJSONArray = new JSONArray(localPassInfo1.getOperations());
        for (int i = 0; i < localJSONArray.length(); i++)
        {
          JSONObject localJSONObject = (JSONObject)localJSONArray.get(i);
          if ("img".equalsIgnoreCase(localJSONObject.optString("format")))
          {
            AlipassInfo.Operation.OperationImg localOperationImg = (AlipassInfo.Operation.OperationImg)b.b(localJSONObject.toString(), AlipassInfo.Operation.OperationImg.class);
            if ((localOperationImg.getMessage() != null) && (StringUtils.isNotBlank(localOperationImg.getMessage().getImg())))
              ((AQuery)new AQuery(getMicroApplicationContext().getApplicationContext()).id(this.d)).image(localOperationImg.getMessage().getImg().trim());
          }
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
      continue;
      label552: AlipassInfo.DisplayInfo localDisplayInfo = (AlipassInfo.DisplayInfo)b.b(localPassBaseInfo2.displayInfo, AlipassInfo.DisplayInfo.class);
      if (StringUtils.isNotBlank(localDisplayInfo.getLogo()))
        ((AQuery)new AQuery(getMicroApplicationContext().getApplicationContext()).id(this.d)).image(localDisplayInfo.getLogo().trim());
      if (StringUtils.isNotBlank(localDisplayInfo.getStrip()))
        ((AQuery)new AQuery(getMicroApplicationContext().getApplicationContext()).id(this.d)).image(localDisplayInfo.getStrip().trim());
      if (StringUtils.isNotBlank(localDisplayInfo.getExp()))
        ((AQuery)new AQuery(getMicroApplicationContext().getApplicationContext()).id(this.d)).image(localDisplayInfo.getExp().trim());
      if (StringUtils.isNotBlank(localDisplayInfo.getIcon()))
        ((AQuery)new AQuery(getMicroApplicationContext().getApplicationContext()).id(this.d)).image(localDisplayInfo.getIcon().trim());
    }
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    if (this.f == null);
    long l4;
    for (long l3 = 3600L; ; l3 = l4)
    {
      localEditor.putLong("interval", l3).commit();
      localSharedPreferences.edit().putLong("last_previewload_time", System.currentTimeMillis()).commit();
      return;
      l4 = this.f.longValue();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    if (this.b == null)
      this.b = new com.alipay.mobile.alipassapp.biz.a.a.a(getMicroApplicationContext().getApplicationContext());
    if (this.c == null)
      this.c = new com.alipay.mobile.alipassapp.biz.c.a(getMicroApplicationContext());
    if (this.d == null)
      this.d = new APImageView(getMicroApplicationContext().getApplicationContext());
    if (this.e == null)
      this.e = new com.alipay.mobile.alipassapp.biz.common.d(getMicroApplicationContext());
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.service.e
 * JD-Core Version:    0.6.2
 */