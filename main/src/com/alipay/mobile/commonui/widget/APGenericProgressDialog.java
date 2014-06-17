package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.os.Bundle;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;

public class APGenericProgressDialog extends APAlertDialog
{
  private ProgressBar a;
  private TextView b;
  private CharSequence c;
  private boolean d;
  private boolean e;

  public APGenericProgressDialog(Context paramContext)
  {
    super(paramContext);
  }

  public APGenericProgressDialog(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.generic_progress_dialog);
    this.a = ((ProgressBar)findViewById(16908301));
    this.b = ((TextView)findViewById(R.id.message));
    this.b.setText(this.c);
    if ((this.c == null) || ("".equals(this.c)))
      this.b.setVisibility(8);
    ProgressBar localProgressBar = this.a;
    if (this.e);
    for (int i = 0; ; i = 8)
    {
      localProgressBar.setVisibility(i);
      setIndeterminate(this.d);
      return;
    }
  }

  public void setIndeterminate(boolean paramBoolean)
  {
    if (this.a != null)
    {
      this.a.setIndeterminate(paramBoolean);
      return;
    }
    this.d = paramBoolean;
  }

  public void setMessage(CharSequence paramCharSequence)
  {
    this.c = paramCharSequence;
  }

  public void setProgressVisiable(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APGenericProgressDialog
 * JD-Core Version:    0.6.2
 */