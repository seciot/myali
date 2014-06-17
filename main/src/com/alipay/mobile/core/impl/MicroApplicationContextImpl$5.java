package com.alipay.mobile.core.impl;

import android.text.TextUtils;
import java.io.File;
import java.io.FilenameFilter;

class MicroApplicationContextImpl$5
  implements FilenameFilter
{
  MicroApplicationContextImpl$5(MicroApplicationContextImpl paramMicroApplicationContextImpl)
  {
  }

  public boolean accept(File paramFile, String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (paramString.contains("webviewCache"));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.impl.MicroApplicationContextImpl.5
 * JD-Core Version:    0.6.2
 */