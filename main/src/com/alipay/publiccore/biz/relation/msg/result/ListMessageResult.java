package com.alipay.publiccore.biz.relation.msg.result;

import com.alipay.publiccore.common.service.facade.model.result.PublicResult;
import java.util.List;

public class ListMessageResult extends PublicResult
{
  public List<MessageInfo> messages;
  public String publicId;
  public Integer total;
  public String userId;

  public List<MessageInfo> getMessages()
  {
    return this.messages;
  }

  public String getPublicId()
  {
    return this.publicId;
  }

  public Integer getTotal()
  {
    return this.total;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setMessages(List<MessageInfo> paramList)
  {
    this.messages = paramList;
  }

  public void setPublicId(String paramString)
  {
    this.publicId = paramString;
  }

  public void setTotal(Integer paramInteger)
  {
    this.total = paramInteger;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.result.ListMessageResult
 * JD-Core Version:    0.6.2
 */