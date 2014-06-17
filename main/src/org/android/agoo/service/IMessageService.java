package org.android.agoo.service;

import android.os.IInterface;

public abstract interface IMessageService extends IInterface
{
  public abstract boolean ping();

  public abstract void probe();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.android.agoo.service.IMessageService
 * JD-Core Version:    0.6.2
 */