package com.alipay.android.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.R.string;

public class CustomListViewFooter extends LinearLayout
{
  public static final int STATE_HIDE = 4;
  public static final int STATE_LOADING = 2;
  public static final int STATE_NORMAL = 0;
  public static final int STATE_NO_MORE = 3;
  public static final int STATE_READY = 1;
  private Context a;
  private View b;
  private View c;
  private TextView d;

  public CustomListViewFooter(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public CustomListViewFooter(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    this.a = paramContext;
    LinearLayout localLinearLayout = (LinearLayout)LayoutInflater.from(this.a).inflate(R.layout.af, null);
    addView(localLinearLayout);
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    this.b = localLinearLayout.findViewById(R.id.aH);
    this.c = localLinearLayout.findViewById(R.id.aJ);
    this.d = ((TextView)localLinearLayout.findViewById(R.id.aI));
  }

  public int getBottomMargin()
  {
    return ((LinearLayout.LayoutParams)this.b.getLayoutParams()).bottomMargin;
  }

  public void hide()
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.b.getLayoutParams();
    localLayoutParams.height = 0;
    this.b.setLayoutParams(localLayoutParams);
  }

  public void loading()
  {
    this.d.setVisibility(8);
    this.c.setVisibility(0);
  }

  public void normal()
  {
    this.d.setVisibility(0);
    this.c.setVisibility(8);
  }

  public void setBottomMargin(int paramInt)
  {
    if (paramInt < 0)
      return;
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.b.getLayoutParams();
    localLayoutParams.bottomMargin = paramInt;
    this.b.setLayoutParams(localLayoutParams);
  }

  public void setState(int paramInt)
  {
    this.d.setVisibility(4);
    this.c.setVisibility(4);
    switch (paramInt)
    {
    default:
      this.d.setVisibility(0);
      this.d.setText(R.string.G);
      return;
    case 1:
      this.d.setVisibility(0);
      this.d.setText(R.string.H);
      return;
    case 2:
      this.c.setVisibility(0);
      return;
    case 3:
    }
    this.d.setVisibility(0);
    this.d.setText(R.string.F);
  }

  public void show()
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.b.getLayoutParams();
    localLayoutParams.height = -2;
    this.b.setLayoutParams(localLayoutParams);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.CustomListViewFooter
 * JD-Core Version:    0.6.2
 */