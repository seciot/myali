package com.alipay.mobile.command.model;

import java.util.HashMap;
import java.util.Map;

public enum TriggerTypeEnum
{
  private static Map<String, TriggerTypeEnum> cache;
  private final String type;

  static
  {
    int i = 0;
    TIME = new TriggerTypeEnum("TIME", 0, "1");
    LOGIN = new TriggerTypeEnum("LOGIN", 1, "2");
    USER_PRESENT = new TriggerTypeEnum("USER_PRESENT", 2, "3");
    PACKAGE_ADDED = new TriggerTypeEnum("PACKAGE_ADDED", 3, "4");
    ACTION_POWER_CONNECTED = new TriggerTypeEnum("ACTION_POWER_CONNECTED", 4, "5");
    CONNECTIVITY_CHANGE = new TriggerTypeEnum("CONNECTIVITY_CHANGE", 5, "6");
    PACKAGE_REMOVED = new TriggerTypeEnum("PACKAGE_REMOVED", 6, "7");
    NOTIFY = new TriggerTypeEnum("NOTIFY", 7, "8");
    API = new TriggerTypeEnum("API", 8, "9");
    PUSH = new TriggerTypeEnum("PUSH", 9, "10");
    TriggerTypeEnum[] arrayOfTriggerTypeEnum1 = new TriggerTypeEnum[10];
    arrayOfTriggerTypeEnum1[0] = TIME;
    arrayOfTriggerTypeEnum1[1] = LOGIN;
    arrayOfTriggerTypeEnum1[2] = USER_PRESENT;
    arrayOfTriggerTypeEnum1[3] = PACKAGE_ADDED;
    arrayOfTriggerTypeEnum1[4] = ACTION_POWER_CONNECTED;
    arrayOfTriggerTypeEnum1[5] = CONNECTIVITY_CHANGE;
    arrayOfTriggerTypeEnum1[6] = PACKAGE_REMOVED;
    arrayOfTriggerTypeEnum1[7] = NOTIFY;
    arrayOfTriggerTypeEnum1[8] = API;
    arrayOfTriggerTypeEnum1[9] = PUSH;
    $VALUES = arrayOfTriggerTypeEnum1;
    cache = new HashMap();
    TriggerTypeEnum[] arrayOfTriggerTypeEnum2 = values();
    int j = arrayOfTriggerTypeEnum2.length;
    while (i < j)
    {
      TriggerTypeEnum localTriggerTypeEnum = arrayOfTriggerTypeEnum2[i];
      cache.put(localTriggerTypeEnum.getType(), localTriggerTypeEnum);
      i++;
    }
  }

  private TriggerTypeEnum(String paramString)
  {
    this.type = paramString;
  }

  public static TriggerTypeEnum getOpTypeEnum(String paramString)
  {
    return (TriggerTypeEnum)cache.get(paramString);
  }

  public final String getType()
  {
    return this.type;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.TriggerTypeEnum
 * JD-Core Version:    0.6.2
 */