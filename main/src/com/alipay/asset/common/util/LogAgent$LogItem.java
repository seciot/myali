package com.alipay.asset.common.util;

import com.alipay.mobile.common.logagent.BehaviourIdEnum;

public class LogAgent$LogItem
{
  public String appID;
  public BehaviourIdEnum behaviorID;
  public String behaviorStatus;
  public String caseID;
  public String currentViewID;
  public String extParam1;
  public String extParam2;
  public String extParam3;
  public String refViewID;
  public String seedID;

  public LogAgent$LogItem(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this.caseID = paramString1;
    this.behaviorID = BehaviourIdEnum.convert(paramString2);
    this.appID = paramString3;
    this.currentViewID = paramString4;
    this.refViewID = paramString5;
    this.seedID = paramString6;
    this.behaviorStatus = paramString7;
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("caseId:" + this.caseID + ",");
    localStringBuffer.append("behaviorID:" + this.behaviorID + ",");
    localStringBuffer.append("appId:" + this.appID + ",");
    localStringBuffer.append("currentViewID:" + this.currentViewID + ",");
    localStringBuffer.append("refViewID:" + this.refViewID + ",");
    localStringBuffer.append("seedId:" + this.seedID + ",");
    localStringBuffer.append("behaviorStatus:" + this.behaviorStatus + ",");
    localStringBuffer.append("extParam1:" + this.extParam1 + ",");
    localStringBuffer.append("extParam2:" + this.extParam2 + ",");
    localStringBuffer.append("extParam3:" + this.extParam3);
    return localStringBuffer.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.asset.common.util.LogAgent.LogItem
 * JD-Core Version:    0.6.2
 */