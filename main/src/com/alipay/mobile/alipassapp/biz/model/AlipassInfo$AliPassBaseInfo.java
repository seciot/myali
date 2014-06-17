package com.alipay.mobile.alipassapp.biz.model;

import android.annotation.SuppressLint;
import com.alipay.kabaoprod.core.model.model.PassBaseInfo;
import com.alipay.mobile.alipassapp.biz.common.b;
import java.text.SimpleDateFormat;
import java.util.List;

public final class AlipassInfo$AliPassBaseInfo
{
  public static final String CHILDTYPE_MEMBERCARD = "memberCard";
  public static final String CHILDTYPE_MFUNDCARD = "mFundCard";
  private String childType;
  private String displayData;
  private AlipassInfo.DisplayInfo displayInfo;
  private String endDate;
  private String formatVersion;
  private String gmtModified;
  private String headData;
  private List<AlipassInfo.EinfoFields> headFields;
  private boolean isLazyParse = false;
  private int isreaded;
  private String logoText;
  private String partnerId;
  private String passId;
  private String secondLogoText;
  private String serialNumber;
  private String status;
  private String type;

  public AlipassInfo$AliPassBaseInfo()
  {
  }

  public AlipassInfo$AliPassBaseInfo(PassBaseInfo paramPassBaseInfo)
  {
    this(paramPassBaseInfo, false);
  }

  @SuppressLint({"SimpleDateFormat"})
  public AlipassInfo$AliPassBaseInfo(PassBaseInfo paramPassBaseInfo, boolean paramBoolean)
  {
    if (paramPassBaseInfo != null)
    {
      this.passId = paramPassBaseInfo.passId;
      this.type = paramPassBaseInfo.type;
      this.childType = paramPassBaseInfo.childType;
      this.logoText = paramPassBaseInfo.logoText;
      this.secondLogoText = paramPassBaseInfo.secondLogoText;
      this.formatVersion = paramPassBaseInfo.formatVersion;
      this.status = paramPassBaseInfo.status;
      this.serialNumber = paramPassBaseInfo.serialNumber;
      this.partnerId = paramPassBaseInfo.partnerId;
      this.isLazyParse = paramBoolean;
      if (!this.isLazyParse)
        break label157;
      this.displayData = paramPassBaseInfo.displayInfo;
      this.headData = paramPassBaseInfo.headFields;
    }
    while (true)
    {
      this.gmtModified = paramPassBaseInfo.gmtModified;
      if (paramPassBaseInfo.endDate != null);
      try
      {
        this.endDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(paramPassBaseInfo.endDate);
        this.isreaded = paramPassBaseInfo.isreaded;
        return;
        label157: this.displayInfo = ((AlipassInfo.DisplayInfo)b.b(paramPassBaseInfo.displayInfo, AlipassInfo.DisplayInfo.class));
        this.headFields = b.a(paramPassBaseInfo.headFields, AlipassInfo.EinfoFields.class);
      }
      catch (Exception localException)
      {
        while (true)
          this.endDate = null;
      }
    }
  }

  public final void CheckLazyParse()
  {
    if (this.isLazyParse)
    {
      this.displayInfo = ((AlipassInfo.DisplayInfo)b.b(this.displayData, AlipassInfo.DisplayInfo.class));
      this.displayData = null;
      this.headFields = b.a(this.headData, AlipassInfo.EinfoFields.class);
      this.headData = null;
      this.isLazyParse = false;
    }
  }

  public final String getChildType()
  {
    return this.childType;
  }

  public final AlipassInfo.DisplayInfo getDisplayInfo()
  {
    if (this.displayInfo == null)
      this.displayInfo = new AlipassInfo.DisplayInfo();
    return this.displayInfo;
  }

  public final String getEndDate()
  {
    return this.endDate;
  }

  public final String getFormatVersion()
  {
    return this.formatVersion;
  }

  public final String getGmtModified()
  {
    return this.gmtModified;
  }

  public final List<AlipassInfo.EinfoFields> getHeadFields()
  {
    return this.headFields;
  }

  public final int getIsreaded()
  {
    return this.isreaded;
  }

  public final String getLogoText()
  {
    return this.logoText;
  }

  public final String getPartnerId()
  {
    return this.partnerId;
  }

  public final String getPassId()
  {
    return this.passId;
  }

  public final String getSecondLogoText()
  {
    return this.secondLogoText;
  }

  public final String getSerialNumber()
  {
    return this.serialNumber;
  }

  public final String getStatus()
  {
    return this.status;
  }

  public final String getType()
  {
    return this.type;
  }

  public final void setChildType(String paramString)
  {
    this.childType = paramString;
  }

  public final void setDisplayInfo(AlipassInfo.DisplayInfo paramDisplayInfo)
  {
    this.displayInfo = paramDisplayInfo;
  }

  public final void setEndDate(String paramString)
  {
    this.endDate = paramString;
  }

  public final void setFormatVersion(String paramString)
  {
    this.formatVersion = paramString;
  }

  public final void setGmtModified(String paramString)
  {
    this.gmtModified = paramString;
  }

  public final void setHeadFields(List<AlipassInfo.EinfoFields> paramList)
  {
    this.headFields = paramList;
  }

  public final void setIsreaded(int paramInt)
  {
    this.isreaded = paramInt;
  }

  public final void setLogoText(String paramString)
  {
    this.logoText = paramString;
  }

  public final void setPartnerId(String paramString)
  {
    this.partnerId = paramString;
  }

  public final void setPassId(String paramString)
  {
    this.passId = paramString;
  }

  public final void setSecondLogoText(String paramString)
  {
    this.secondLogoText = paramString;
  }

  public final void setSerialNumber(String paramString)
  {
    this.serialNumber = paramString;
  }

  public final void setStatus(String paramString)
  {
    this.status = paramString;
  }

  public final void setType(String paramString)
  {
    this.type = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo
 * JD-Core Version:    0.6.2
 */