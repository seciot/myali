package com.alipay.publiccore.client.message;

import java.io.Serializable;
import java.util.List;

public class ImageMsgEntry extends BaseMsgEntry
  implements Serializable
{
  public List<ImageMsgItem> articles = null;
  public String createTime = null;
  public String publicId = null;
  public String showType = null;
  public String toUserId = null;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.message.ImageMsgEntry
 * JD-Core Version:    0.6.2
 */