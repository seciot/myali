package com.alipay.mobile.framework.service.ext.openplatform.domain;

import com.alipay.mobile.framework.service.ext.openplatform.AppUtils;
import com.j256.ormlite.field.DatabaseField;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class AppEntity
{
  public static final String COL_APPID = "appId";

  @DatabaseField
  private boolean alipayApp;

  @DatabaseField(index=true, unique=true)
  private String appId;

  @DatabaseField
  private String autoStatus;

  @DatabaseField
  private boolean canDelete;

  @DatabaseField
  private String desc;

  @DatabaseField
  private boolean display;

  @DatabaseField
  private String downloadUrl;

  @DatabaseField
  private String extra;

  @DatabaseField
  private String iconUrl;

  @DatabaseField(generatedId=true)
  private int id;

  @DatabaseField
  private String installerType;

  @DatabaseField
  private boolean isRecommend = false;

  @DatabaseField
  private String labelContent;

  @DatabaseField
  private String md5;

  @DatabaseField
  private String minSupportAppVersionCode;

  @DatabaseField
  private String minSupportClientVersion;

  @DatabaseField
  private String minSupportOsVersion;

  @DatabaseField
  private String minSupportSdkVersion;

  @DatabaseField
  private String name;

  @DatabaseField
  private boolean needAuth = false;

  @DatabaseField
  private boolean needAutoAuth = false;

  @DatabaseField
  private String packageName;

  @DatabaseField
  private int rank = 0;

  @DatabaseField
  private String schemeUri;

  @DatabaseField
  private int size;

  @DatabaseField
  private String slogan;

  @DatabaseField
  private String status;

  @DatabaseField
  private String tipsType;

  @DatabaseField
  private String version;

  @DatabaseField
  private String widgetId;

  public AppEntity()
  {
  }

  public AppEntity(boolean paramBoolean1, String paramString1, String paramString2, boolean paramBoolean2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt, String paramString7, String paramString8, String paramString9)
  {
    this.alipayApp = paramBoolean1;
    this.appId = paramString1;
    this.desc = paramString2;
    this.display = paramBoolean2;
    this.downloadUrl = paramString3;
    this.iconUrl = paramString4;
    this.installerType = paramString5;
    this.name = paramString6;
    this.size = paramInt;
    this.slogan = paramString7;
    this.status = paramString8;
    this.version = paramString9;
  }

  public AppEntity(boolean paramBoolean1, String paramString1, String paramString2, boolean paramBoolean2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt, String paramString7, String paramString8, String paramString9, String paramString10)
  {
    this.alipayApp = paramBoolean1;
    this.appId = paramString1;
    this.desc = paramString2;
    this.display = paramBoolean2;
    this.downloadUrl = paramString3;
    this.iconUrl = paramString4;
    this.installerType = paramString5;
    this.name = paramString6;
    this.size = paramInt;
    this.slogan = paramString7;
    this.status = paramString8;
    this.version = paramString9;
    this.packageName = paramString10;
  }

  public String getAppId()
  {
    return this.appId;
  }

  public String getAutoStatus()
  {
    return this.autoStatus;
  }

  public String getDesc()
  {
    return this.desc;
  }

  public String getDownloadUrl()
  {
    return this.downloadUrl;
  }

  public Map<String, String> getExtra()
  {
    Object localObject = new HashMap();
    if ((this.extra != null) && (!"".equals(this.extra)));
    try
    {
      localJSONObject = new JSONObject(this.extra);
      if (localJSONObject != null)
        localObject = AppUtils.jsonToMap(localJSONObject);
      return localObject;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        JSONObject localJSONObject = null;
    }
  }

  public String getIconUrl()
  {
    return this.iconUrl;
  }

  public int getId()
  {
    return this.id;
  }

  public String getInstallerType()
  {
    return this.installerType;
  }

  public String getLabelContent()
  {
    return this.labelContent;
  }

  public String getMd5()
  {
    return this.md5;
  }

  public String getMinSupportAppVersionCode()
  {
    return this.minSupportAppVersionCode;
  }

  public String getMinSupportClientVersion()
  {
    return this.minSupportClientVersion;
  }

  public String getMinSupportOsVersion()
  {
    return this.minSupportOsVersion;
  }

  public String getMinSupportSdkVersion()
  {
    return this.minSupportSdkVersion;
  }

  public String getName()
  {
    return this.name;
  }

  public String getPackageName()
  {
    return this.packageName;
  }

  public int getRank()
  {
    return this.rank;
  }

  public String getSchemeUri()
  {
    return this.schemeUri;
  }

  public int getSize()
  {
    return this.size;
  }

  public String getSlogan()
  {
    return this.slogan;
  }

  public String getStatus()
  {
    return this.status;
  }

  public String getTipsType()
  {
    return this.tipsType;
  }

  public String getVersion()
  {
    return this.version;
  }

  public String getWidgetId()
  {
    return this.widgetId;
  }

  public boolean isAlipayApp()
  {
    return this.alipayApp;
  }

  public boolean isAutoAuthorize()
  {
    return this.needAutoAuth;
  }

  public boolean isCanDelete()
  {
    return this.canDelete;
  }

  public boolean isDisplay()
  {
    return this.display;
  }

  public boolean isNeedAuthorize()
  {
    return this.needAuth;
  }

  public boolean isRecommend()
  {
    return this.isRecommend;
  }

  public void setAlipayApp(boolean paramBoolean)
  {
    this.alipayApp = paramBoolean;
  }

  public void setAppId(String paramString)
  {
    this.appId = paramString;
  }

  public void setAutoAuthorize(boolean paramBoolean)
  {
    this.needAutoAuth = paramBoolean;
  }

  public void setAutoStatus(String paramString)
  {
    this.autoStatus = paramString;
  }

  public void setCanDelete(boolean paramBoolean)
  {
    this.canDelete = paramBoolean;
  }

  public void setDesc(String paramString)
  {
    this.desc = paramString;
  }

  public void setDisplay(boolean paramBoolean)
  {
    this.display = paramBoolean;
  }

  public void setDownloadUrl(String paramString)
  {
    this.downloadUrl = paramString;
  }

  public void setExtra(Map<String, String> paramMap)
  {
    if (paramMap != null)
      this.extra = AppUtils.mapToJson(paramMap);
  }

  public void setIconUrl(String paramString)
  {
    this.iconUrl = paramString;
  }

  public void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public void setInstallerType(String paramString)
  {
    this.installerType = paramString;
  }

  public void setLabelContent(String paramString)
  {
    this.labelContent = paramString;
  }

  public void setMd5(String paramString)
  {
    this.md5 = paramString;
  }

  public void setMinSupportAppVersionCode(String paramString)
  {
    this.minSupportAppVersionCode = paramString;
  }

  public void setMinSupportClientVersion(String paramString)
  {
    this.minSupportClientVersion = paramString;
  }

  public void setMinSupportOsVersion(String paramString)
  {
    this.minSupportOsVersion = paramString;
  }

  public void setMinSupportSdkVersion(String paramString)
  {
    this.minSupportSdkVersion = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setNeedAuthorize(boolean paramBoolean)
  {
    this.needAuth = paramBoolean;
  }

  public void setPackageName(String paramString)
  {
    this.packageName = paramString;
  }

  public void setRank(int paramInt)
  {
    this.rank = paramInt;
  }

  public void setRecommend(boolean paramBoolean)
  {
    this.isRecommend = paramBoolean;
  }

  public void setSchemeUri(String paramString)
  {
    this.schemeUri = paramString;
  }

  public void setSize(int paramInt)
  {
    this.size = paramInt;
  }

  public void setSlogan(String paramString)
  {
    this.slogan = paramString;
  }

  public void setStatus(String paramString)
  {
    this.status = paramString;
  }

  public void setTipsType(String paramString)
  {
    this.tipsType = paramString;
  }

  public void setVersion(String paramString)
  {
    this.version = paramString;
  }

  public void setWidgetId(String paramString)
  {
    this.widgetId = paramString;
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("appId:" + this.appId + ",");
    localStringBuffer.append("name:" + this.name + ",");
    localStringBuffer.append("installerType:" + this.installerType + ",");
    localStringBuffer.append("needAuth:" + this.needAuth);
    return localStringBuffer.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.domain.AppEntity
 * JD-Core Version:    0.6.2
 */