package com.alipay.mobile.alipassapp.biz.common.oldcoupon;

import android.graphics.Color;
import com.alipay.mobile.alipassapp.biz.model.f;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AlipassInfoA extends f
{
  AlipassInfoA.EvoucherInfo evoucherInfo;
  AlipassInfoA.FileInfo fileInfo;
  AlipassInfoA.Merchant merchant;
  AlipassInfoA.Platform platform;
  String status;
  AlipassInfoA.Style style;
  String tradeInfo;

  public static int resolveColor(String paramString)
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
          }
      }
    }
    return 0;
  }

  public AlipassInfoA.EvoucherInfo getEvoucherInfo()
  {
    return this.evoucherInfo;
  }

  public AlipassInfoA.FileInfo getFileInfo()
  {
    return this.fileInfo;
  }

  public AlipassInfoA.Merchant getMerchant()
  {
    return this.merchant;
  }

  public AlipassInfoA.Platform getPlatform()
  {
    return this.platform;
  }

  public String getStatus()
  {
    return this.status;
  }

  public AlipassInfoA.Style getStyle()
  {
    return this.style;
  }

  public String getTradeInfo()
  {
    return this.tradeInfo;
  }

  public void setEvoucherInfo(AlipassInfoA.EvoucherInfo paramEvoucherInfo)
  {
    this.evoucherInfo = paramEvoucherInfo;
  }

  public void setFileInfo(AlipassInfoA.FileInfo paramFileInfo)
  {
    this.fileInfo = paramFileInfo;
  }

  public void setMerchant(AlipassInfoA.Merchant paramMerchant)
  {
    this.merchant = paramMerchant;
  }

  public void setPlatform(AlipassInfoA.Platform paramPlatform)
  {
    this.platform = paramPlatform;
  }

  public void setStatus(String paramString)
  {
    this.status = paramString;
  }

  public void setStyle(AlipassInfoA.Style paramStyle)
  {
    this.style = paramStyle;
  }

  public void setTradeInfo(String paramString)
  {
    this.tradeInfo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.common.oldcoupon.AlipassInfoA
 * JD-Core Version:    0.6.2
 */