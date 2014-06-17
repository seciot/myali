package com.alipay.mobile.common.logagent;

public enum BehaviourIdEnum
{
  private String a;

  static
  {
    CLICKED = new BehaviourIdEnum("CLICKED", 1, "clicked");
    OPENPAGE = new BehaviourIdEnum("OPENPAGE", 2, "openPage");
    LONGCLICKED = new BehaviourIdEnum("LONGCLICKED", 3, "longClicked");
    DYNAMICLOADTOCHECK = new BehaviourIdEnum("DYNAMICLOADTOCHECK", 4, "dynamicLoadToCheck");
    AUTO_CLICKED = new BehaviourIdEnum("AUTO_CLICKED", 5, "auto_clicked");
    AUTO_OPENPAGE = new BehaviourIdEnum("AUTO_OPENPAGE", 6, "auto_openPage");
    SUBMITED = new BehaviourIdEnum("SUBMITED", 7, "submited");
    BIZLAUNCHED = new BehaviourIdEnum("BIZLAUNCHED", 8, "bizLaunched");
    ERROR = new BehaviourIdEnum("ERROR", 9, "error");
    EXCEPTION = new BehaviourIdEnum("EXCEPTION", 10, "exception");
    SETGESTURE = new BehaviourIdEnum("SETGESTURE", 11, "setGesture");
    CHECKGESTURE = new BehaviourIdEnum("CHECKGESTURE", 12, "checkGesture");
    SLIDED = new BehaviourIdEnum("SLIDED", 13, "slided");
    MONITOR = new BehaviourIdEnum("MONITOR", 14, "monitor");
    MONITORPERF = new BehaviourIdEnum("MONITORPERF", 15, "monitorPerf");
    BehaviourIdEnum[] arrayOfBehaviourIdEnum = new BehaviourIdEnum[16];
    arrayOfBehaviourIdEnum[0] = NONE;
    arrayOfBehaviourIdEnum[1] = CLICKED;
    arrayOfBehaviourIdEnum[2] = OPENPAGE;
    arrayOfBehaviourIdEnum[3] = LONGCLICKED;
    arrayOfBehaviourIdEnum[4] = DYNAMICLOADTOCHECK;
    arrayOfBehaviourIdEnum[5] = AUTO_CLICKED;
    arrayOfBehaviourIdEnum[6] = AUTO_OPENPAGE;
    arrayOfBehaviourIdEnum[7] = SUBMITED;
    arrayOfBehaviourIdEnum[8] = BIZLAUNCHED;
    arrayOfBehaviourIdEnum[9] = ERROR;
    arrayOfBehaviourIdEnum[10] = EXCEPTION;
    arrayOfBehaviourIdEnum[11] = SETGESTURE;
    arrayOfBehaviourIdEnum[12] = CHECKGESTURE;
    arrayOfBehaviourIdEnum[13] = SLIDED;
    arrayOfBehaviourIdEnum[14] = MONITOR;
    arrayOfBehaviourIdEnum[15] = MONITORPERF;
  }

  private BehaviourIdEnum(String arg3)
  {
    Object localObject;
    this.a = localObject;
  }

  public static BehaviourIdEnum convert(String paramString)
  {
    for (BehaviourIdEnum localBehaviourIdEnum : values())
      if (localBehaviourIdEnum.a.equals(paramString))
        return localBehaviourIdEnum;
    return NONE;
  }

  public final String getDes()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logagent.BehaviourIdEnum
 * JD-Core Version:    0.6.2
 */