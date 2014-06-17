package com.alipay.android.app.data;

import com.alipay.android.app.script.IDataScriptable;
import com.alipay.android.app.script.IDocumentScriptable;
import com.alipay.android.app.script.INetworkScriptable;
import com.alipay.android.app.script.IPhoneScriptable;
import com.alipay.android.app.script.ITidScriptable;
import com.alipay.android.app.script.IUpdateScriptable;
import com.alipay.android.app.script.IWindowScriptable;

public class LuaNativeHelper
{
  private int a = native_create_context();
  private LuaNativeObjectCache b;

  static
  {
    System.loadLibrary("msplua");
  }

  public final void a()
  {
    native_destroy_context(this.a);
    this.a = 0;
    if (this.b != null)
    {
      this.b.a();
      this.b = null;
    }
  }

  public final void a(IDataScriptable paramIDataScriptable)
  {
    native_set_data(this.a, paramIDataScriptable);
  }

  public final void a(IDocumentScriptable paramIDocumentScriptable)
  {
    native_set_doc(this.a, paramIDocumentScriptable);
  }

  public final void a(INetworkScriptable paramINetworkScriptable)
  {
    native_set_network(this.a, paramINetworkScriptable);
  }

  public final void a(IPhoneScriptable paramIPhoneScriptable)
  {
    native_set_phone(this.a, paramIPhoneScriptable);
  }

  public final void a(ITidScriptable paramITidScriptable)
  {
    native_set_tid(this.a, paramITidScriptable);
  }

  public final void a(IUpdateScriptable paramIUpdateScriptable)
  {
    native_set_update(this.a, paramIUpdateScriptable);
  }

  public final void a(IWindowScriptable paramIWindowScriptable)
  {
    native_set_win(this.a, paramIWindowScriptable);
  }

  public final void a(String paramString)
  {
    native_execute_script(this.a, paramString);
  }

  public final void a(String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    native_execute_function(this.a, paramString1, paramString2, paramArrayOfObject);
  }

  native int native_create_context();

  native void native_destroy_context(int paramInt);

  native void native_execute_function(int paramInt, String paramString1, String paramString2, Object[] paramArrayOfObject);

  native void native_execute_script(int paramInt, String paramString);

  native void native_set_data(int paramInt, IDataScriptable paramIDataScriptable);

  native void native_set_doc(int paramInt, IDocumentScriptable paramIDocumentScriptable);

  native void native_set_network(int paramInt, INetworkScriptable paramINetworkScriptable);

  native void native_set_phone(int paramInt, IPhoneScriptable paramIPhoneScriptable);

  native void native_set_tid(int paramInt, ITidScriptable paramITidScriptable);

  native void native_set_update(int paramInt, IUpdateScriptable paramIUpdateScriptable);

  native void native_set_win(int paramInt, IWindowScriptable paramIWindowScriptable);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.LuaNativeHelper
 * JD-Core Version:    0.6.2
 */