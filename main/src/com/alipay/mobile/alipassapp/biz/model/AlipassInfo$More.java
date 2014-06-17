package com.alipay.mobile.alipassapp.biz.model;

import java.io.Serializable;
import java.util.List;

public final class AlipassInfo$More
  implements Serializable
{
  public static final String PAGE_TYPE_1 = "1";
  private static final long serialVersionUID = 1L;
  String appId;
  String endDate;
  AlipassInfo.First first;
  String lable;
  List<String> list;
  List<AlipassInfo.Operation.OperationString> operation;
  String pageType;
  String params;
  List<AlipassInfo.Second> second;
  String startDate;
  String title;
  String url;

  public final String getAppId()
  {
    return this.appId;
  }

  public final String getEndDate()
  {
    return this.endDate;
  }

  public final AlipassInfo.First getFirst()
  {
    return this.first;
  }

  public final String getLable()
  {
    return this.lable;
  }

  public final List<String> getList()
  {
    return this.list;
  }

  public final List<AlipassInfo.Operation.OperationString> getOperation()
  {
    return this.operation;
  }

  public final String getPageType()
  {
    return this.pageType;
  }

  public final String getParams()
  {
    return this.params;
  }

  public final List<AlipassInfo.Second> getSecond()
  {
    return this.second;
  }

  public final String getStartDate()
  {
    return this.startDate;
  }

  public final String getTitle()
  {
    return this.title;
  }

  public final String getUrl()
  {
    return this.url;
  }

  public final void setAppId(String paramString)
  {
    this.appId = paramString;
  }

  public final void setEndDate(String paramString)
  {
    this.endDate = paramString;
  }

  public final void setFirst(AlipassInfo.First paramFirst)
  {
    this.first = paramFirst;
  }

  public final void setLable(String paramString)
  {
    this.lable = paramString;
  }

  public final void setList(List<String> paramList)
  {
    this.list = paramList;
  }

  public final void setOperation(List<AlipassInfo.Operation.OperationString> paramList)
  {
    this.operation = paramList;
  }

  public final void setPageType(String paramString)
  {
    this.pageType = paramString;
  }

  public final void setParams(String paramString)
  {
    this.params = paramString;
  }

  public final void setSecond(List<AlipassInfo.Second> paramList)
  {
    this.second = paramList;
  }

  public final void setStartDate(String paramString)
  {
    this.startDate = paramString;
  }

  public final void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.model.AlipassInfo.More
 * JD-Core Version:    0.6.2
 */