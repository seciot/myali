package com.alipay.mobile.alipassapp.biz.model;

import android.graphics.Color;
import com.alipay.kabaoprod.core.model.model.PassInfo;
import com.alipay.mobile.alipassapp.biz.common.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AlipassInfo extends f
{
  public static final String OPERATION_TYPE_APP = "app";
  public static final String OPERATION_TYPE_BARCODE = "barcode";
  public static final String OPERATION_TYPE_DBARCODE = "dbarcode";
  public static final String OPERATION_TYPE_DQRCODE = "dqrcode";
  public static final String OPERATION_TYPE_DWAVE = "dwave";
  public static final String OPERATION_TYPE_IMG = "img";
  public static final String OPERATION_TYPE_QRCODE = "qrcode";
  public static final String OPERATION_TYPE_STAMP = "stamp";
  public static final String OPERATION_TYPE_TEXT = "text";
  public static final String OPERATION_TYPE_URL = "url";
  public static final String OPERATION_TYPE_WAVE = "wave";
  private AlipassInfo.AppInfo appInfo;
  private List<AlipassInfo.EinfoFields> auxiliaryFields;
  private List<AlipassInfo.EinfoFields> backFields;
  private String bizType;
  private List<AlipassInfo.Operation> operation = new ArrayList();
  private AlipassInfo.AliPassBaseInfo passBaseInfo;
  private String passFrom;
  private String passName;
  private List<AlipassInfo.EinfoFields> primaryFields;
  private String remindSupport;
  private List<AlipassInfo.EinfoFields> secondaryFields;
  private String shareSuport;
  private String trendUrl = null;

  public AlipassInfo()
  {
  }

  public AlipassInfo(PassInfo paramPassInfo)
  {
    if (paramPassInfo == null);
    while (true)
    {
      return;
      this.primaryFields = b.a(paramPassInfo.getPrimaryFields(), AlipassInfo.EinfoFields.class);
      this.secondaryFields = b.a(paramPassInfo.getSecondaryFields(), AlipassInfo.EinfoFields.class);
      this.auxiliaryFields = b.a(paramPassInfo.getAuxiliaryFields(), AlipassInfo.EinfoFields.class);
      this.backFields = b.a(paramPassInfo.getBackFields(), AlipassInfo.EinfoFields.class);
      this.appInfo = ((AlipassInfo.AppInfo)b.b(paramPassInfo.getAppInfo(), AlipassInfo.AppInfo.class));
      this.passName = paramPassInfo.getPassName();
      this.passFrom = paramPassInfo.getPassFrom();
      this.remindSupport = paramPassInfo.getRemindSupport();
      this.shareSuport = paramPassInfo.getShareSuport();
      this.trendUrl = paramPassInfo.getTrendUrl();
      this.passBaseInfo = new AlipassInfo.AliPassBaseInfo(paramPassInfo.getPassBaseInfo());
      try
      {
        if (paramPassInfo.getOperations() != null)
        {
          JSONArray localJSONArray = new JSONArray(paramPassInfo.getOperations());
          for (int i = 0; i < localJSONArray.length(); i++)
          {
            JSONObject localJSONObject = (JSONObject)localJSONArray.get(i);
            String str = localJSONObject.optString("format");
            if ("text".equals(str))
            {
              this.operation.add(b.b(localJSONObject.toString(), AlipassInfo.Operation.OperationText.class));
              if (("1".equals(this.passBaseInfo.getFormatVersion())) && (((AlipassInfo.Operation.OperationText)this.operation.get(-1 + this.operation.size())).getMessage() == null))
                this.operation.removeBundle(-1 + this.operation.size());
            }
            else if ("app".equals(str))
            {
              this.operation.add(b.b(localJSONObject.toString(), AlipassInfo.Operation.OperationApp.class));
              if (("1".equals(this.passBaseInfo.getFormatVersion())) && (((AlipassInfo.Operation.OperationApp)this.operation.get(-1 + this.operation.size())).getMessage() == null))
                this.operation.removeBundle(-1 + this.operation.size());
            }
            else if (("barcode".equalsIgnoreCase(str)) || ("qrcode".equalsIgnoreCase(str)) || ("stamp".equalsIgnoreCase(str)) || ("url".equalsIgnoreCase(str)) || ("wave".equalsIgnoreCase(str)) || ("dbarcode".equalsIgnoreCase(str)) || ("dqrcode".equalsIgnoreCase(str)) || ("dwave".equalsIgnoreCase(str)))
            {
              this.operation.add(b.b(localJSONObject.toString(), AlipassInfo.Operation.OperationString.class));
              if (("1".equals(this.passBaseInfo.getFormatVersion())) && (((AlipassInfo.Operation.OperationString)this.operation.get(-1 + this.operation.size())).getMessage() == null))
                this.operation.removeBundle(-1 + this.operation.size());
            }
            else if ("img".equalsIgnoreCase(str))
            {
              this.operation.add(b.b(localJSONObject.toString(), AlipassInfo.Operation.OperationImg.class));
            }
          }
        }
      }
      catch (JSONException localJSONException)
      {
      }
    }
  }

  public static int resolveColor(String paramString, int paramInt)
  {
    if ((paramString != null) && (paramString.length() > 0))
    {
      Matcher localMatcher = Pattern.compile("\\(.*\\)").matcher(paramString);
      if (localMatcher.find())
      {
        List localList = Arrays.asList(localMatcher.group().split("\\(|,|\\)"));
        if ((localList != null) && (localList.size() == 4))
          try
          {
            int i = Color.rgb(Integer.parseInt(((String)localList.get(1)).trim()), Integer.parseInt(((String)localList.get(2)).trim()), Integer.parseInt(((String)localList.get(3)).trim()));
            return i;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            if (paramInt == 0)
              return Color.rgb(50, 135, 167);
            if (paramInt == 1)
              return Color.rgb(220, 220, 220);
            return Color.rgb(50, 135, 167);
          }
      }
    }
    if (paramInt == 0)
      return Color.rgb(50, 135, 167);
    if (paramInt == 1)
      return Color.rgb(220, 220, 220);
    return Color.rgb(50, 135, 167);
  }

  public AlipassInfo.AppInfo getAppInfo()
  {
    return this.appInfo;
  }

  public List<AlipassInfo.EinfoFields> getAuxiliaryFields()
  {
    return this.auxiliaryFields;
  }

  public List<AlipassInfo.EinfoFields> getBackFields()
  {
    return this.backFields;
  }

  public String getBizType()
  {
    return this.bizType;
  }

  public List<AlipassInfo.Operation> getOperation()
  {
    return this.operation;
  }

  public AlipassInfo.AliPassBaseInfo getPassBaseInfo()
  {
    return this.passBaseInfo;
  }

  public String getPassFrom()
  {
    return this.passFrom;
  }

  public String getPassName()
  {
    return this.passName;
  }

  public List<AlipassInfo.EinfoFields> getPrimaryFields()
  {
    return this.primaryFields;
  }

  public String getRemindSupport()
  {
    return this.remindSupport;
  }

  public List<AlipassInfo.EinfoFields> getSecondaryFields()
  {
    return this.secondaryFields;
  }

  public String getShareSuport()
  {
    return this.shareSuport;
  }

  public String getTrendUrl()
  {
    return this.trendUrl;
  }

  public void setAppInfo(AlipassInfo.AppInfo paramAppInfo)
  {
    this.appInfo = paramAppInfo;
  }

  public void setAuxiliaryFields(List<AlipassInfo.EinfoFields> paramList)
  {
    this.auxiliaryFields = paramList;
  }

  public void setBackFields(List<AlipassInfo.EinfoFields> paramList)
  {
    this.backFields = paramList;
  }

  public void setBizType(String paramString)
  {
    this.bizType = paramString;
  }

  public void setOperation(List<AlipassInfo.Operation> paramList)
  {
    this.operation = paramList;
  }

  public void setPassBaseInfo(AlipassInfo.AliPassBaseInfo paramAliPassBaseInfo)
  {
    this.passBaseInfo = paramAliPassBaseInfo;
  }

  public void setPassFrom(String paramString)
  {
    this.passFrom = paramString;
  }

  public void setPassName(String paramString)
  {
    this.passName = paramString;
  }

  public void setPrimaryFields(List<AlipassInfo.EinfoFields> paramList)
  {
    this.primaryFields = paramList;
  }

  public void setRemindSupport(String paramString)
  {
    this.remindSupport = paramString;
  }

  public void setSecondaryFields(List<AlipassInfo.EinfoFields> paramList)
  {
    this.secondaryFields = paramList;
  }

  public void setShareSuport(String paramString)
  {
    this.shareSuport = paramString;
  }

  public void setTrendUrl(String paramString)
  {
    this.trendUrl = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.model.AlipassInfo
 * JD-Core Version:    0.6.2
 */