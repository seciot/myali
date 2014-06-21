package com.alipay.mobile.alipassapp.biz.common;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AppInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationApp;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationImg;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationString;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationText;
import java.util.ArrayList;
import java.util.List;

public final class b
{
  public static AlipassInfo a(JSONObject paramJSONObject, AlipassInfo paramAlipassInfo)
  {
    AlipassInfo.AliPassBaseInfo localAliPassBaseInfo = new AlipassInfo.AliPassBaseInfo();
    localAliPassBaseInfo.setDisplayInfo(new AlipassInfo.DisplayInfo());
    paramAlipassInfo.setPassBaseInfo(localAliPassBaseInfo);
    ArrayList localArrayList = new ArrayList();
    paramAlipassInfo.setOperation(localArrayList);
    JSONArray localJSONArray1;
    int i;
    if (paramJSONObject != null)
    {
      JSONObject localJSONObject1 = paramJSONObject.getJSONObject("evoucherInfo");
      if (localJSONObject1 != null)
      {
        String str2 = localJSONObject1.getString("type");
        paramAlipassInfo.getPassBaseInfo().setType(str2);
        String str3 = localJSONObject1.getString("product");
        paramAlipassInfo.getPassBaseInfo().setChildType(str3);
        JSONObject localJSONObject6 = localJSONObject1.getJSONObject("einfo");
        if (localJSONObject6 != null)
        {
          localAliPassBaseInfo.setLogoText(localJSONObject6.getString("logoText"));
          localAliPassBaseInfo.setSecondLogoText(localJSONObject6.getString("secondLogoText"));
          JSONArray localJSONArray2 = localJSONObject6.getJSONArray("headFields");
          if (localJSONArray2 != null)
            localAliPassBaseInfo.setHeadFields(v(localJSONArray2.toString(), AlipassInfo.EinfoFields.class));
          JSONArray localJSONArray3 = localJSONObject6.getJSONArray("primaryFields");
          if (localJSONArray3 != null)
            paramAlipassInfo.setPrimaryFields(v(localJSONArray3.toString(), AlipassInfo.EinfoFields.class));
          JSONArray localJSONArray4 = localJSONObject6.getJSONArray("secondaryFields");
          if (localJSONArray4 != null)
            paramAlipassInfo.setSecondaryFields(v(localJSONArray4.toString(), AlipassInfo.EinfoFields.class));
          JSONArray localJSONArray5 = localJSONObject6.getJSONArray("auxiliaryFields");
          if (localJSONArray5 != null)
            paramAlipassInfo.setAuxiliaryFields(v(localJSONArray5.toString(), AlipassInfo.EinfoFields.class));
          JSONArray localJSONArray6 = localJSONObject6.getJSONArray("backFields");
          if (localJSONArray6 != null)
            paramAlipassInfo.setBackFields(v(localJSONArray6.toString(), AlipassInfo.EinfoFields.class));
        }
        localJSONArray1 = localJSONObject1.getJSONArray("operation");
        if (localJSONArray1 != null)
          i = 0;
      }
    }
    while (true)
    {
      if (i < localJSONArray1.size());
      try
      {
        JSONObject localJSONObject7 = (JSONObject)localJSONArray1.get(i);
        String str4 = localJSONObject7.getString("format");
        if ("text".equals(str4))
        {
          localArrayList.add(d(localJSONObject7.toString(), AlipassInfo.Operation.OperationText.class));
        }
        else if ("app".equals(str4))
        {
          localArrayList.add(d(localJSONObject7.toString(), AlipassInfo.Operation.OperationApp.class));
        }
        else if (("barcode".equals(str4)) || ("qrcode".equals(str4)) || ("stamp".equals(str4)) || ("url".equals(str4)) || ("wave".equals(str4)))
        {
          localArrayList.add(d(localJSONObject7.toString(), AlipassInfo.Operation.OperationString.class));
        }
        else if ("img".equals(str4))
        {
          localArrayList.add(d(localJSONObject7.toString(), AlipassInfo.Operation.OperationImg.class));
          break label605;
          JSONObject localJSONObject2 = paramJSONObject.getJSONObject("fileInfo");
          if (localJSONObject2 != null)
          {
            localAliPassBaseInfo.setSerialNumber(String.valueOf(localJSONObject2.get("serialNumber")));
            localAliPassBaseInfo.setFormatVersion(String.valueOf(localJSONObject2.get("formatVersion")));
          }
          JSONObject localJSONObject3 = paramJSONObject.getJSONObject("platform");
          if (localJSONObject3 != null)
            localAliPassBaseInfo.setPartnerId(String.valueOf(localJSONObject3.get("channelID")));
          JSONObject localJSONObject4 = paramJSONObject.getJSONObject("appInfo");
          if (localJSONObject4 != null)
            paramAlipassInfo.setAppInfo((AlipassInfo.AppInfo)d(localJSONObject4.toString(), AlipassInfo.AppInfo.class));
          JSONObject localJSONObject5 = paramJSONObject.getJSONObject("style");
          if (localJSONObject5 != null)
          {
            String str1 = localJSONObject5.getString("backgroundColor");
            localAliPassBaseInfo.getDisplayInfo().setBackgroundColor(str1);
          }
          return paramAlipassInfo;
        }
        label605: i++;
      }
      catch (Throwable localThrowable)
      {
        break label605;
      }
    }
  }

  public static final <T> List<T> a(String paramString, Class<T> paramClass)
  {
    try
    {
      List localList = JSON.parseArray(paramString, paramClass);
      return localList;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return new ArrayList();
  }

  public static final <T> T b(String paramString, Class<T> paramClass)
  {
    try
    {
      Object localObject2 = JSON.parseObject(paramString, paramClass);
      return localObject2;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      try
      {
        Object localObject1 = paramClass.newInstance();
        return localObject1;
      }
      catch (InstantiationException localInstantiationException)
      {
        localInstantiationException.printStackTrace();
        return null;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localIllegalAccessException.printStackTrace();
      }
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.common.b
 * JD-Core Version:    0.6.2
 */