package com.alipay.mobile.onsitepay.utils;

import com.alipay.kabaoprod.biz.financial.account.result.SecurityAccountQrCodeInfoResult;
import com.alipay.mobile.security.accountmanager.AccountInfo.bean.SecurityQrCodeShowResult;
import java.util.Map;

public final class a
{
  public static int a(SecurityQrCodeShowResult paramSecurityQrCodeShowResult)
  {
    int i = 0;
    if (paramSecurityQrCodeShowResult != null)
    {
      SecurityAccountQrCodeInfoResult localSecurityAccountQrCodeInfoResult = paramSecurityQrCodeShowResult.getAccountQrCodeInfoResult();
      i = 0;
      if (localSecurityAccountQrCodeInfoResult != null)
      {
        Map localMap = paramSecurityQrCodeShowResult.getAccountQrCodeInfoResult().getExtraInfo();
        i = 0;
        if (localMap != null)
        {
          String str = (String)paramSecurityQrCodeShowResult.getAccountQrCodeInfoResult().getExtraInfo().get("shareSwitch");
          i = 0;
          if (str != null)
          {
            byte[] arrayOfByte = str.getBytes();
            int j = -1 + arrayOfByte.length;
            int k = arrayOfByte.length;
            int m = 0;
            int n = j;
            int i1 = 0;
            if (m < k)
            {
              if ((0xFF & arrayOfByte[m]) == 49);
              for (int i2 = 1; ; i2 = 0)
              {
                int i3 = i2 << n * 4;
                n--;
                i1 |= i3 & 0x1111111;
                new StringBuilder(" j is 0x shareType").append(i1).toString();
                m++;
                break;
              }
            }
            i = i1;
          }
        }
      }
    }
    return i & 0x1111111;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.utils.a
 * JD-Core Version:    0.6.2
 */