package com.alipay.mobilesecurity.biz.gw.service.auth.model.info;

public class PermPointInfo
{
  public boolean checked;
  public boolean optional;
  public int pointId;
  public String pointName;

  public int getPointId()
  {
    return this.pointId;
  }

  public String getPointName()
  {
    return this.pointName;
  }

  public boolean isChecked()
  {
    return this.checked;
  }

  public boolean isOptional()
  {
    return this.optional;
  }

  public void setChecked(boolean paramBoolean)
  {
    this.checked = paramBoolean;
  }

  public void setOptional(boolean paramBoolean)
  {
    this.optional = paramBoolean;
  }

  public void setPointId(int paramInt)
  {
    this.pointId = paramInt;
  }

  public void setPointName(String paramString)
  {
    this.pointName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.auth.model.info.PermPointInfo
 * JD-Core Version:    0.6.2
 */