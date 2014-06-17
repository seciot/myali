package com.alipay.android.app.data;

import android.text.TextUtils;
import com.alipay.android.app.script.IDataScriptable;
import com.alipay.android.app.script.IDocumentScriptable;
import com.alipay.android.app.script.INetworkScriptable;
import com.alipay.android.app.script.IPhoneScriptable;
import com.alipay.android.app.script.ITidScriptable;
import com.alipay.android.app.script.IUpdateScriptable;
import com.alipay.android.app.script.IWindowScriptable;
import com.alipay.android.lib.plusin.script.IScriptEventable;
import com.alipay.android.lib.plusin.script.IScriptExcutor;

public class LuaExcutor
  implements IScriptExcutor
{
  private LuaExcuteAdapter a = new LuaExcuteAdapter();
  private IDataScriptable b;
  private IDocumentScriptable c;
  private INetworkScriptable d;
  private IPhoneScriptable e;
  private IUpdateScriptable f;
  private IWindowScriptable g;
  private ITidScriptable h;

  public final void a(IScriptEventable paramIScriptEventable)
  {
    if (paramIScriptEventable == null);
    do
    {
      return;
      if ((paramIScriptEventable instanceof IDataScriptable))
        this.b = ((IDataScriptable)paramIScriptEventable);
      if ((paramIScriptEventable instanceof IDocumentScriptable))
        this.c = ((IDocumentScriptable)paramIScriptEventable);
      if ((paramIScriptEventable instanceof INetworkScriptable))
        this.d = ((INetworkScriptable)paramIScriptEventable);
      if ((paramIScriptEventable instanceof IPhoneScriptable))
        this.e = ((IPhoneScriptable)paramIScriptEventable);
      if ((paramIScriptEventable instanceof IUpdateScriptable))
        this.f = ((IUpdateScriptable)paramIScriptEventable);
      if ((paramIScriptEventable instanceof IWindowScriptable))
        this.g = ((IWindowScriptable)paramIScriptEventable);
    }
    while (!(paramIScriptEventable instanceof ITidScriptable));
    this.h = ((ITidScriptable)paramIScriptEventable);
  }

  public final void a(String paramString)
  {
    if ((this.a == null) || (TextUtils.isEmpty(paramString)))
      return;
    IDataScriptable localIDataScriptable;
    IDocumentScriptable localIDocumentScriptable;
    label33: INetworkScriptable localINetworkScriptable;
    label43: IPhoneScriptable localIPhoneScriptable;
    label53: IUpdateScriptable localIUpdateScriptable;
    label63: IWindowScriptable localIWindowScriptable;
    if (this.b == null)
    {
      localIDataScriptable = null;
      if (this.c != null)
        break label112;
      localIDocumentScriptable = null;
      if (this.d != null)
        break label120;
      localINetworkScriptable = null;
      if (this.e != null)
        break label129;
      localIPhoneScriptable = null;
      if (this.f != null)
        break label138;
      localIUpdateScriptable = null;
      if (this.g != null)
        break label147;
      localIWindowScriptable = null;
      label73: if (this.h != null)
        break label156;
    }
    label129: label138: label147: label156: for (ITidScriptable localITidScriptable = null; ; localITidScriptable = this.h)
    {
      this.a.excuteLuaString(paramString, localIDataScriptable, localIDocumentScriptable, localINetworkScriptable, localIPhoneScriptable, localIUpdateScriptable, localIWindowScriptable, localITidScriptable);
      return;
      localIDataScriptable = this.b;
      break;
      label112: localIDocumentScriptable = this.c;
      break label33;
      label120: localINetworkScriptable = this.d;
      break label43;
      localIPhoneScriptable = this.e;
      break label53;
      localIUpdateScriptable = this.f;
      break label63;
      localIWindowScriptable = this.g;
      break label73;
    }
  }

  public final void a(String paramString, Object[] paramArrayOfObject)
  {
    if ((this.a == null) || (TextUtils.isEmpty(paramString)))
      return;
    IDataScriptable localIDataScriptable;
    IDocumentScriptable localIDocumentScriptable;
    label34: INetworkScriptable localINetworkScriptable;
    label44: IPhoneScriptable localIPhoneScriptable;
    label54: IUpdateScriptable localIUpdateScriptable;
    label64: IWindowScriptable localIWindowScriptable;
    if (this.b == null)
    {
      localIDataScriptable = null;
      if (this.c != null)
        break label116;
      localIDocumentScriptable = null;
      if (this.d != null)
        break label125;
      localINetworkScriptable = null;
      if (this.e != null)
        break label134;
      localIPhoneScriptable = null;
      if (this.f != null)
        break label143;
      localIUpdateScriptable = null;
      if (this.g != null)
        break label152;
      localIWindowScriptable = null;
      label74: if (this.h != null)
        break label161;
    }
    label134: label143: label152: label161: for (ITidScriptable localITidScriptable = null; ; localITidScriptable = this.h)
    {
      this.a.excuteLuaFunction(paramString, null, paramArrayOfObject, localIDataScriptable, localIDocumentScriptable, localINetworkScriptable, localIPhoneScriptable, localIUpdateScriptable, localIWindowScriptable, localITidScriptable);
      return;
      localIDataScriptable = this.b;
      break;
      label116: localIDocumentScriptable = this.c;
      break label34;
      label125: localINetworkScriptable = this.d;
      break label44;
      localIPhoneScriptable = this.e;
      break label54;
      localIUpdateScriptable = this.f;
      break label64;
      localIWindowScriptable = this.g;
      break label74;
    }
  }

  public void dispose()
  {
    this.a.close();
    if (this.e != null)
      this.e.dispose();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.LuaExcutor
 * JD-Core Version:    0.6.2
 */