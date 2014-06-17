package com.alipay.mobile.onsitepay.utils;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.alipay.mobile.onsitepay.d;
import com.alipay.mobile.onsitepay.e;

public class GenericProgressView extends FrameLayout
{
  String TAG = "GenericProgressView";
  private ProgressBar a;
  private TextView b;
  private CharSequence c;
  private boolean d;
  private boolean e;

  public GenericProgressView(Context paramContext)
  {
    this(paramContext, null);
  }

  public GenericProgressView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public GenericProgressView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(e.q, this, true);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.a = ((ProgressBar)findViewById(16908301));
    this.b = ((TextView)findViewById(d.N));
    this.e = true;
    setMessage("加载中");
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
 * Qualified Name:     com.alipay.mobile.onsitepay.utils.GenericProgressView
 * JD-Core Version:    0.6.2
 */