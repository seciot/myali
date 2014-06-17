package com.qihoo360.contacts.service;

import android.os.IInterface;

public abstract interface ITxlUiService extends IInterface
{
  public abstract boolean isSmsGuardOpen();

  public abstract void openSmsGuardSetupUI();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.qihoo360.contacts.service.ITxlUiService
 * JD-Core Version:    0.6.2
 */