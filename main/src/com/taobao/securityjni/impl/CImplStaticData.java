package com.taobao.securityjni.impl;

import android.content.ContextWrapper;
import com.taobao.securityjni.GlobalInit;
import com.taobao.securityjni.intelface.IStaticData;
import com.taobao.securityjni.tools.DataContext;
import com.taobao.securityjni.usertrack.a;

public class CImplStaticData extends SESecurity
  implements IStaticData
{
  private ContextWrapper context = null;

  public CImplStaticData(ContextWrapper paramContextWrapper)
  {
    this.context = paramContextWrapper;
  }

  private void InitGlobalData()
  {
    new GlobalInit().InitData(this.context);
  }

  private native byte[] getAppKeyByte(DataContext paramDataContext);

  private native byte[] getExtraDataByte(String paramString);

  private native byte[] getMMPidByte();

  private native byte[] getTtidByte();

  public String getAppKey(DataContext paramDataContext)
  {
    SOInitCheck();
    if (SOCredibleCheck(this.context))
      try
      {
        byte[] arrayOfByte = getAppKeyByte(paramDataContext);
        if (arrayOfByte != null)
        {
          String str = new String(arrayOfByte, "UTF-8");
          return str;
        }
      }
      catch (Throwable localThrowable)
      {
        a.a("getAppKey", localThrowable);
      }
    return null;
  }

  public String getExtraData(String paramString)
  {
    SOInitCheck();
    if (SOCredibleCheck(this.context))
      try
      {
        byte[] arrayOfByte = getExtraDataByte(paramString);
        if (arrayOfByte != null)
        {
          String str = new String(arrayOfByte, "UTF-8");
          return str;
        }
      }
      catch (Throwable localThrowable)
      {
        a.a("getExtraData", localThrowable);
      }
    return null;
  }

  public String getMMPid()
  {
    SOInitCheck();
    if (SOCredibleCheck(this.context))
      try
      {
        byte[] arrayOfByte = getMMPidByte();
        if (arrayOfByte != null)
        {
          String str = new String(arrayOfByte, "UTF-8");
          return str;
        }
      }
      catch (Throwable localThrowable)
      {
        a.a("getMMPid", localThrowable);
      }
    return null;
  }

  public String getTtid()
  {
    SOInitCheck();
    if (SOCredibleCheck(this.context))
      try
      {
        byte[] arrayOfByte = getTtidByte();
        if (arrayOfByte != null)
        {
          String str = new String(arrayOfByte, "UTF-8");
          return str;
        }
      }
      catch (Throwable localThrowable)
      {
        a.a("getTtid", localThrowable);
      }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.impl.CImplStaticData
 * JD-Core Version:    0.6.2
 */