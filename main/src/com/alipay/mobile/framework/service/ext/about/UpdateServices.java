package com.alipay.mobile.framework.service.ext.about;

import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class UpdateServices extends ExternalService
{
  public abstract void checkUpdate(String paramString);

  public abstract void update(UpdateInfo paramUpdateInfo);

  public abstract void update(String paramString);

  public abstract void update(String paramString, boolean paramBoolean);

  public abstract void updateImmediately();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.about.UpdateServices
 * JD-Core Version:    0.6.2
 */