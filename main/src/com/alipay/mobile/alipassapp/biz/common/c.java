package com.alipay.mobile.alipassapp.biz.common;

import com.alipay.mobile.alipassapp.biz.common.oldcoupon.AlipassInfoA;
import com.alipay.mobile.alipassapp.biz.common.oldcoupon.AlipassInfoA.Barcode;
import com.alipay.mobile.alipassapp.biz.common.oldcoupon.AlipassInfoA.Einfo;
import com.alipay.mobile.alipassapp.biz.common.oldcoupon.AlipassInfoA.EvoucherInfo;
import com.alipay.mobile.alipassapp.biz.common.oldcoupon.AlipassInfoA.FileInfo;
import com.alipay.mobile.alipassapp.biz.common.oldcoupon.AlipassInfoA.Locations;
import com.alipay.mobile.alipassapp.biz.common.oldcoupon.AlipassInfoA.Merchant;
import com.alipay.mobile.alipassapp.biz.common.oldcoupon.AlipassInfoA.Platform;
import com.alipay.mobile.alipassapp.biz.common.oldcoupon.AlipassInfoA.Style;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationString;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class c
{
  public static AlipassInfo a(a parama, String paramString, AlipassInfoA paramAlipassInfoA, AlipassInfo paramAlipassInfo)
  {
    int i = 0;
    AlipassInfo.AliPassBaseInfo localAliPassBaseInfo = new AlipassInfo.AliPassBaseInfo();
    paramAlipassInfo.setPassBaseInfo(localAliPassBaseInfo);
    localAliPassBaseInfo.setType(paramAlipassInfoA.getEvoucherInfo().getType());
    localAliPassBaseInfo.setChildType(paramAlipassInfoA.getEvoucherInfo().getProduct());
    if ((paramAlipassInfoA.getFileInfo() != null) && (paramAlipassInfoA.getFileInfo().getSerialNumber() != null))
      localAliPassBaseInfo.setSerialNumber(paramAlipassInfoA.getFileInfo().getSerialNumber().toString());
    if (paramAlipassInfoA.getPlatform() != null)
      localAliPassBaseInfo.setPartnerId(paramAlipassInfoA.getPlatform().getChannelID());
    localAliPassBaseInfo.setLogoText(paramAlipassInfoA.getMerchant().getMname());
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(new AlipassInfo.EinfoFields("", null, "可使用", ""));
    localAliPassBaseInfo.setHeadFields(localArrayList1);
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new AlipassInfo.EinfoFields("", "", paramAlipassInfoA.getEvoucherInfo().getTitle(), ""));
    paramAlipassInfo.setPrimaryFields(localArrayList2);
    ArrayList localArrayList3 = new ArrayList();
    localArrayList3.add(new AlipassInfo.EinfoFields("", "有效期至：", paramAlipassInfoA.getEvoucherInfo().getEndDate().split(" ")[0], ""));
    paramAlipassInfo.setSecondaryFields(localArrayList3);
    AlipassInfo.DisplayInfo localDisplayInfo = new AlipassInfo.DisplayInfo();
    if (!paramString.endsWith(".alipass"))
      paramString = paramString + ".alipass";
    File localFile1 = new File(parama.a(paramString));
    if (localFile1.exists())
    {
      File[] arrayOfFile = localFile1.listFiles();
      int j = arrayOfFile.length;
      if (i < j)
      {
        File localFile2 = arrayOfFile[i];
        if (localFile2.getName().contains("logo"))
          localDisplayInfo.setLogo(localFile2.getPath());
        while (true)
        {
          i++;
          break;
          if (localFile2.getName().contains("strip"))
          {
            localDisplayInfo.setStrip(localFile2.getPath());
            paramAlipassInfo.setPrimaryFields(null);
          }
        }
      }
    }
    localDisplayInfo.setBackgroundColor(paramAlipassInfoA.getStyle().getBackgroundColorString());
    localAliPassBaseInfo.setDisplayInfo(localDisplayInfo);
    ArrayList localArrayList4 = new ArrayList();
    Iterator localIterator1 = paramAlipassInfoA.getEvoucherInfo().geteInfo().getBarcodeList().iterator();
    while (localIterator1.hasNext())
    {
      AlipassInfoA.Barcode localBarcode = (AlipassInfoA.Barcode)localIterator1.next();
      if ((localBarcode.getMessage() != null) && (localBarcode.getMessage().trim().length() > 0) && (("qrcode".equals(localBarcode.getFormat())) || ("barcode".equals(localBarcode.getFormat()))))
        localArrayList4.add(new AlipassInfo.Operation.OperationString(localBarcode.getAltText(), localBarcode.getFormat(), localBarcode.getMessageEncoding(), localBarcode.getMessage()));
    }
    if (localArrayList4.size() == 0)
      localArrayList4.add(new AlipassInfo.Operation.OperationString("", "stamp", "", paramAlipassInfoA.getStatus()));
    paramAlipassInfo.setOperation(localArrayList4);
    ArrayList localArrayList5 = new ArrayList();
    List localList = paramAlipassInfoA.getEvoucherInfo().getLocations();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramAlipassInfoA.getMerchant().getMname()).append('\n');
    Iterator localIterator2 = localList.iterator();
    while (localIterator2.hasNext())
    {
      AlipassInfoA.Locations localLocations = (AlipassInfoA.Locations)localIterator2.next();
      localStringBuilder.append(localLocations.getAddr()).append('\n').append(localLocations.getTel()).append("\n\n");
    }
    localStringBuilder.delete(-2 + localStringBuilder.length(), localStringBuilder.length());
    localArrayList5.add(new AlipassInfo.EinfoFields("", "优惠详情", paramAlipassInfoA.getEvoucherInfo().getDescription(), ""));
    localArrayList5.add(new AlipassInfo.EinfoFields("", "可用门店", localStringBuilder.toString(), ""));
    localArrayList5.add(new AlipassInfo.EinfoFields("", "免责申明", paramAlipassInfoA.getEvoucherInfo().getDisclaimer(), ""));
    paramAlipassInfo.setBackFields(localArrayList5);
    return paramAlipassInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.common.c
 * JD-Core Version:    0.6.2
 */