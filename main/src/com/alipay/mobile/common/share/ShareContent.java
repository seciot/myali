package com.alipay.mobile.common.share;

import java.io.Serializable;

public class ShareContent
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String content;
  private String extData;
  private byte[] image;
  private String imgUrl;
  private String title;
  private String url;

  public String getContent()
  {
    return this.content;
  }

  public String getExtData()
  {
    return this.extData;
  }

  public byte[] getImage()
  {
    return this.image;
  }

  public String getImgUrl()
  {
    return this.imgUrl;
  }

  public String getTitle()
  {
    return this.title;
  }

  public String getUrl()
  {
    return this.url;
  }

  public void setContent(String paramString)
  {
    this.content = paramString;
  }

  public void setExtData(String paramString)
  {
    this.extData = paramString;
  }

  public void setImage(byte[] paramArrayOfByte)
  {
    this.image = paramArrayOfByte;
  }

  public void setImgUrl(String paramString)
  {
    this.imgUrl = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("content=").append(this.content).append(",url=").append(this.url).append(",image=");
    if (this.image != null);
    for (int i = this.image.length; ; i = 0)
      return i + ",title=" + this.title + ",imgUrl=" + this.imgUrl;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.share.ShareContent
 * JD-Core Version:    0.6.2
 */