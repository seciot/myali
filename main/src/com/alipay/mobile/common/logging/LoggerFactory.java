package com.alipay.mobile.common.logging;

import java.util.ArrayList;
import java.util.List;

public class LoggerFactory
{
  private static List a = new ArrayList();

  public static Logger getLogger(String paramString)
  {
    Logger localLogger = new Logger(paramString);
    a.add(localLogger);
    return localLogger;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logging.LoggerFactory
 * JD-Core Version:    0.6.2
 */