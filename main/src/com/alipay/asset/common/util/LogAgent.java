package com.alipay.asset.common.util;

import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.logagent.StorageManager;
import com.alipay.mobile.framework.AlipayApplication;

public class LogAgent
{
  public static void YWUC_ASSETS_C104()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C104", "clicked", "20000032", "balanceBaoTrade", "balanceBaoIndex", "balanceIcon", ""));
  }

  public static void YWUC_ASSETS_C105()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C105", "clicked", "20000032", "toYaoIndex", "balanceBaoIndex", "toYao", ""));
  }

  public static void YWUC_ASSETS_C106()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C106", "clicked", "20000032", "balanceBaoTradeIncome", "balanceBaoIndex", "incomeAmount", ""));
  }

  public static void YWUC_ASSETS_C107()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C107", "clicked", "20000032", "balanceBaoTrade", "balanceBaoIndex", "totalAmount", ""));
  }

  public static void YWUC_ASSETS_C108()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C108", "clicked", "20000032", "balanceBaoTradeIncome", "balanceBaoIndex", "income", ""));
  }

  public static void YWUC_ASSETS_C109()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C109", "clicked", "20000032", "balanceBaoTradeIncome", "balanceBaoIndex", "7thYearIncome", ""));
  }

  public static void YWUC_ASSETS_C110()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C110", "clicked", "20000032", "balanceBaoTradeIncome", "balanceBaoIndex", "weekIncome", ""));
  }

  public static void YWUC_ASSETS_C111()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C111", "clicked", "20000032", "balanceBaoTradeIncome", "balanceBaoIndex", "monthIncome", ""));
  }

  public static void YWUC_ASSETS_C112()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C112", "clicked", "20000032", "shareHomePage", "balanceBaoIndex", "shareBalanceBao", ""));
  }

  public static void YWUC_ASSETS_C113()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C113", "clicked", "20000032", "sendDeskBox", "balanceBaoIndex", "sendIcon", ""));
  }

  public static void YWUC_ASSETS_C114()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C114", "clicked", "20000032", "xiaoBaoHelp", "balanceBaoIndex", "onlineService", ""));
  }

  public static void YWUC_ASSETS_C116()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C116", "clicked", "20000032", "", "balanceBaoTradeIncome", "filterIcon", ""));
  }

  public static void YWUC_ASSETS_C117()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C117", "clicked", "20000032", "balanceBaoTradeIncome", "balanceBaoTradeIncome", "income", ""));
  }

  public static void YWUC_ASSETS_C118()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C118", "clicked", "20000032", "balanceBaoTradeIncome", "balanceBaoTradeIncome", "7thYearIncome", ""));
  }

  public static void YWUC_ASSETS_C119()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C119", "clicked", "20000032", "balanceBaoTradeIncome", "balanceBaoTradeIncome", "weekIncome", ""));
  }

  public static void YWUC_ASSETS_C120()
  {
    log(new LogAgent.LogItem("YWUC-ASSETS-C120", "clicked", "20000032", "balanceBaoTradeIncome", "balanceBaoTradeIncome", "monthIncome", ""));
  }

  public static void YWUC_ASSETS_C121(String paramString)
  {
    LogAgent.LogItem localLogItem = new LogAgent.LogItem("YWUC-ASSETS-C121", "clicked", "20000019", "hongBaoDetails", "hongBaoList", "seeHongBao", "");
    localLogItem.extParam1 = paramString;
    log(localLogItem);
  }

  public static void YWUC_ASSETS_C122(String paramString)
  {
    LogAgent.LogItem localLogItem = new LogAgent.LogItem("YWUC-ASSETS-C122", "clicked", "20000019", "", "hongBaoDetails", "useHongBao", "");
    localLogItem.extParam1 = paramString;
    log(localLogItem);
  }

  public static void YWUC_YEB_C11()
  {
    log(new LogAgent.LogItem("YWUC-YEB-C11", "clicked", "20000032", "", "balanceBaoIndex", "thousands", ""));
  }

  public static void YWUC_YEB_C12()
  {
    log(new LogAgent.LogItem("YWUC-YEB-C12", "clicked", "20000032", "", "balanceBaoIndex", "sevenCurve", ""));
  }

  public static void log(LogAgent.LogItem paramLogItem)
  {
    AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
    try
    {
      new StringBuilder("write log:").append(paramLogItem).toString();
      BehaviourIdEnum localBehaviourIdEnum = paramLogItem.behaviorID;
      String str1 = paramLogItem.behaviorStatus;
      String str2 = paramLogItem.appID;
      String str3 = paramLogItem.currentViewID;
      String str4 = paramLogItem.refViewID;
      String str5 = paramLogItem.seedID;
      String[] arrayOfString = new String[3];
      arrayOfString[0] = paramLogItem.extParam1;
      arrayOfString[1] = paramLogItem.extParam2;
      arrayOfString[2] = paramLogItem.extParam3;
      new StorageManager(localAlipayApplication, localBehaviourIdEnum, str1, null, str2, null, str3, str4, str5, null, null, null, arrayOfString).writeLog();
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("write log error:").append(localException.getLocalizedMessage()).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.asset.common.util.LogAgent
 * JD-Core Version:    0.6.2
 */