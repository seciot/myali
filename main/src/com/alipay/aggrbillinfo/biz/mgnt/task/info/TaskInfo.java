package com.alipay.aggrbillinfo.biz.mgnt.task.info;

import com.alipay.aggrbillinfo.biz.mgnt.email.info.EmailAssociateBankInfo;
import com.alipay.aggrbillinfo.common.service.facade.model.ToString;
import java.util.ArrayList;
import java.util.List;

public class TaskInfo extends ToString
{
  public ActionInfo action;
  public List<EmailAssociateBankInfo> banks = new ArrayList();
  public String email;
  public String emailaccid;
  public String num;
  public String ratio;
  public String step;
  public String taskID;
  public String time;

  public ActionInfo getAction()
  {
    return this.action;
  }

  public List<EmailAssociateBankInfo> getBanks()
  {
    return this.banks;
  }

  public String getEmail()
  {
    return this.email;
  }

  public String getEmailaccid()
  {
    return this.emailaccid;
  }

  public String getNum()
  {
    return this.num;
  }

  public String getRatio()
  {
    return this.ratio;
  }

  public String getStep()
  {
    return this.step;
  }

  public String getTaskID()
  {
    return this.taskID;
  }

  public String getTime()
  {
    return this.time;
  }

  public void setAction(ActionInfo paramActionInfo)
  {
    this.action = paramActionInfo;
  }

  public void setBanks(List<EmailAssociateBankInfo> paramList)
  {
    this.banks = paramList;
  }

  public void setEmail(String paramString)
  {
    this.email = paramString;
  }

  public void setEmailaccid(String paramString)
  {
    this.emailaccid = paramString;
  }

  public void setNum(String paramString)
  {
    this.num = paramString;
  }

  public void setRatio(String paramString)
  {
    this.ratio = paramString;
  }

  public void setStep(String paramString)
  {
    this.step = paramString;
  }

  public void setTaskID(String paramString)
  {
    this.taskID = paramString;
  }

  public void setTime(String paramString)
  {
    this.time = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.task.info.TaskInfo
 * JD-Core Version:    0.6.2
 */