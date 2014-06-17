package com.alipay.mobilesecurity.a.a;

import android.net.Uri;
import android.text.TextUtils;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobilesecurity.taobao.sso.util.TaobaoSsoLoginUtils;

public final class a
{
  public static boolean a(Uri paramUri)
  {
    boolean bool1 = false;
    boolean bool3;
    if (paramUri != null)
    {
      boolean bool2 = TextUtils.isEmpty(paramUri.toString());
      bool1 = false;
      if (!bool2)
        if (!TaobaoSsoLoginUtils.isTaobaoSsoLogin(paramUri))
        {
          if (paramUri == null)
            break label71;
          String str = paramUri.toString();
          if (StringUtils.isBlank(str))
            break label66;
          bool3 = str.trim().startsWith("alipays://platformapi/startapp?appId=20000044");
        }
    }
    while (true)
    {
      bool1 = false;
      if (bool3)
        bool1 = true;
      return bool1;
      label66: bool3 = false;
      continue;
      label71: bool3 = false;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.a.a.a
 * JD-Core Version:    0.6.2
 */