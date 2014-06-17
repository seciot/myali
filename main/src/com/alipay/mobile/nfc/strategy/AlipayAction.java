package com.alipay.mobile.nfc.strategy;

import android.net.Uri;
import android.text.TextUtils;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.SchemeService;

public class AlipayAction
{
  private static String a = "NFC/AlipayAction";
  private SchemeService b;

  public AlipayAction(MicroApplicationContext paramMicroApplicationContext)
  {
    this.b = ((SchemeService)paramMicroApplicationContext.findServiceByInterface(SchemeService.class.getName()));
  }

  public final void a(String paramString)
  {
    int i;
    if ((TextUtils.isEmpty(paramString)) || (!paramString.contains("alipayaction/")) || (paramString.startsWith("alipayaction/")) || (paramString.endsWith("alipayaction/")))
    {
      i = 1;
      if (i == 0)
        break label46;
    }
    label46: String[] arrayOfString;
    do
    {
      return;
      i = 0;
      break;
      arrayOfString = paramString.split("alipayaction/");
    }
    while (arrayOfString.length <= 1);
    String str = arrayOfString[1];
    new StringBuilder("cmd:").append(str).toString();
    Uri localUri;
    if (str.startsWith("startapp?"))
      localUri = Uri.parse("alipays://platformapi/" + str);
    while (true)
    {
      this.b.process(localUri);
      return;
      boolean bool = str.startsWith("openurl?");
      localUri = null;
      if (bool)
        localUri = Uri.parse("alipays://platformapi/" + str);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.strategy.AlipayAction
 * JD-Core Version:    0.6.2
 */