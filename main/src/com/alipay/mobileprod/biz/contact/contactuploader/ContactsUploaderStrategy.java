package com.alipay.mobileprod.biz.contact.contactuploader;

public class ContactsUploaderStrategy
{
  private int a = 0;
  private boolean b = false;

  public int getUploadAllTimeInterval()
  {
    return this.a;
  }

  public boolean isAppend()
  {
    return this.b;
  }

  public void setAppend(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public void setUploadAllTimeInterval(int paramInt)
  {
    this.a = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.contact.contactuploader.ContactsUploaderStrategy
 * JD-Core Version:    0.6.2
 */