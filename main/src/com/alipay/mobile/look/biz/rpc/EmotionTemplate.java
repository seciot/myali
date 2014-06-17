package com.alipay.mobile.look.biz.rpc;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class EmotionTemplate extends ToString
  implements Serializable
{
  private static final long serialVersionUID = -1505697585399491801L;
  public String displayName = null;
  public List<Emotion> emotions = new ArrayList();
  public String iconPath = null;
  public String name = null;
  public boolean newed = false;
  public int order = 0;
  public String templateID = null;
  public boolean viewed = true;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.look.biz.rpc.EmotionTemplate
 * JD-Core Version:    0.6.2
 */