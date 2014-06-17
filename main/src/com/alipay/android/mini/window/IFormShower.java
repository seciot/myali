package com.alipay.android.mini.window;

import android.content.Intent;
import com.alipay.android.app.sys.IDispose;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.event.OnFormEventListener;
import java.util.List;

public abstract interface IFormShower extends IDispose
{
  public abstract void a();

  public abstract void a(OnFormEventListener paramOnFormEventListener);

  public abstract void a(IUIForm paramIUIForm, int paramInt);

  public abstract void a(String paramString);

  public abstract void a(String paramString1, String paramString2, String paramString3, ActionType[] paramArrayOfActionType1, String paramString4, ActionType[] paramArrayOfActionType2);

  public abstract void a(String paramString1, String paramString2, List paramList);

  public abstract void a(String[] paramArrayOfString);

  public abstract void a_(Intent paramIntent);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.IFormShower
 * JD-Core Version:    0.6.2
 */