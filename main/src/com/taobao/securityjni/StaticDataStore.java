package com.taobao.securityjni;

import android.content.ContextWrapper;
import com.taobao.securityjni.impl.CImplStaticData;
import com.taobao.securityjni.intelface.IAttachImpl;
import com.taobao.securityjni.intelface.IStaticData;
import com.taobao.securityjni.tools.DataContext;

public class StaticDataStore
  implements IAttachImpl, IStaticData
{
  private IStaticData a = null;

  public StaticDataStore(ContextWrapper paramContextWrapper)
  {
    this.a = new CImplStaticData(paramContextWrapper);
  }

  public StaticDataStore(ContextWrapper paramContextWrapper, IStaticData paramIStaticData)
  {
    if (paramIStaticData == null)
    {
      this.a = new CImplStaticData(paramContextWrapper);
      return;
    }
    this.a = paramIStaticData;
  }

  public void AttachImplObject(Object paramObject)
  {
    if ((paramObject != null) && ((paramObject instanceof IStaticData)))
      this.a = ((IStaticData)paramObject);
  }

  public String getAppKey()
  {
    return getAppKey(new DataContext(0, null));
  }

  public String getAppKey(DataContext paramDataContext)
  {
    return this.a.getAppKey(paramDataContext);
  }

  public String getExtraData(String paramString)
  {
    return this.a.getExtraData(paramString);
  }

  public String getMMPid()
  {
    return this.a.getMMPid();
  }

  public String getTtid()
  {
    return this.a.getTtid();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.StaticDataStore
 * JD-Core Version:    0.6.2
 */