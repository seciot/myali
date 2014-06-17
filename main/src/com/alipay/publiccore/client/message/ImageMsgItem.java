package com.alipay.publiccore.client.message;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;

public class ImageMsgItem extends ToString
  implements Serializable
{
  public String actionName = null;
  public String actionParam = null;
  public String actionType = null;
  public String authType = null;
  public String image = null;
  public String text = null;
  public String title = null;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.message.ImageMsgItem
 * JD-Core Version:    0.6.2
 */