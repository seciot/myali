package com.alipay.android.mini.window;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.event.MiniEventArgs;
import com.alipay.android.mini.event.OnFormEventListener;
import com.alipay.android.mini.util.UIPropUtil;
import com.alipay.android.mini.widget.MiniProgressDialog;
import java.lang.ref.WeakReference;
import java.util.List;

public class MiniPayActivity extends BaseActivity
  implements IFormShower
{
  private WeakReference b;
  private MiniProgressDialog c;
  private Dialog d;
  private OnResultReceived e;

  private void b()
  {
    a();
    if (this.d != null)
      this.d.dismiss();
  }

  public final void a()
  {
    if (this.c != null)
      this.c.dismiss();
    this.c = null;
  }

  public final void a(OnFormEventListener paramOnFormEventListener)
  {
    this.b = new WeakReference(paramOnFormEventListener);
  }

  public final void a(IUIForm paramIUIForm, int paramInt)
  {
    if (!super.isFinishing())
    {
      ViewGroup localViewGroup = (ViewGroup)findViewById(R.id.C);
      localViewGroup.setVisibility(8);
      paramIUIForm.a(this, localViewGroup);
      if ((paramInt != 6) && (paramInt != 7) && (paramInt != 10) && (paramInt != -10))
      {
        localViewGroup.setVisibility(0);
        UIPropUtil.a(this, 0);
        getWindow().setLayout(-1, -1);
        b();
      }
    }
  }

  public final void a(String paramString)
  {
    runOnUiThread(new p(this, this, paramString));
  }

  public final void a(String paramString1, String paramString2, String paramString3, ActionType[] paramArrayOfActionType1, String paramString4, ActionType[] paramArrayOfActionType2)
  {
    if (isFinishing())
      return;
    runOnUiThread(new l(this, paramString1, paramArrayOfActionType1, paramArrayOfActionType2, paramString2, paramString3, paramString4));
  }

  public final void a(String paramString1, String paramString2, List paramList)
  {
    if (isFinishing())
      return;
    runOnUiThread(new q(this, paramString1, paramString2, paramList));
  }

  public final void a(ActionType[] paramArrayOfActionType)
  {
    int i = paramArrayOfActionType.length;
    for (int j = 0; j < i; j++)
    {
      ActionType localActionType = paramArrayOfActionType[j];
      ((OnFormEventListener)this.b.get()).a(this, new MiniEventArgs(localActionType));
    }
  }

  public final void a(String[] paramArrayOfString)
  {
    if (isFinishing())
      return;
    runOnUiThread(new o(this, paramArrayOfString));
  }

  public final void a_(Intent paramIntent)
  {
    super.startActivity(paramIntent);
  }

  public void dispose()
  {
    finish();
    UIPropUtil.b = -1;
    UIPropUtil.a = -1;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt2 == -1) && (this.e != null))
    {
      String str = paramIntent.getStringExtra("cardNumber");
      OnResultReceived localOnResultReceived = this.e;
      new String[] { str };
      localOnResultReceived.a();
    }
  }

  public void onBackPressed()
  {
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (2 == paramConfiguration.orientation)
      GuideWindow.a().a(this);
    super.onConfigurationChanged(paramConfiguration);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    super.getWindow().setBackgroundDrawable(null);
    super.getWindow().getDecorView().setBackgroundResource(0);
    super.getWindow().setLayout(-1, -1);
    View localView = getWindow().getDecorView();
    if (Build.VERSION.SDK_INT > 11)
      localView.setLayerType(1, null);
    localView.setBackgroundColor(getResources().getColor(17170445));
    localView.setContentDescription(" mini pay activity decorView");
    super.getWindow().getAttributes().gravity = 1;
    super.setContentView(R.layout.d);
    a(paramBundle);
  }

  protected void onDestroy()
  {
    a();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.a != 0) && (this.b != null) && (this.b.get() != null))
    {
      MiniEventArgs localMiniEventArgs = new MiniEventArgs(ActionType.j);
      if (!((OnFormEventListener)this.b.get()).a(this, localMiniEventArgs))
        return super.onKeyDown(paramInt, paramKeyEvent);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.MiniPayActivity
 * JD-Core Version:    0.6.2
 */