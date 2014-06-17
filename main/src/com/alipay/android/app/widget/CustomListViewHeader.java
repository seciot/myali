package com.alipay.android.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.R.string;

public class CustomListViewHeader extends LinearLayout
{
  public static final int STATE_NORMAL = 0;
  public static final int STATE_READY = 1;
  public static final int STATE_REFRESHING = 2;
  private LinearLayout a;
  private ImageView b;
  private ProgressBar c;
  private TextView d;
  private int e = 0;
  private Animation f;
  private Animation g;
  private final int h = 180;

  public CustomListViewHeader(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public CustomListViewHeader(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, 0);
    this.a = ((LinearLayout)LayoutInflater.from(paramContext).inflate(R.layout.ag, null));
    addView(this.a, localLayoutParams);
    setGravity(80);
    this.b = ((ImageView)findViewById(R.id.aK));
    this.d = ((TextView)findViewById(R.id.aM));
    this.c = ((ProgressBar)findViewById(R.id.aN));
    this.f = new RotateAnimation(0.0F, -180.0F, 1, 0.5F, 1, 0.5F);
    this.f.setDuration(180L);
    this.f.setFillAfter(true);
    this.g = new RotateAnimation(-180.0F, 0.0F, 1, 0.5F, 1, 0.5F);
    this.g.setDuration(180L);
    this.g.setFillAfter(true);
  }

  public int getVisiableHeight()
  {
    return this.a.getHeight();
  }

  public void setState(int paramInt)
  {
    if (paramInt == this.e)
      return;
    if (paramInt == 2)
    {
      this.b.clearAnimation();
      this.b.setVisibility(4);
      this.c.setVisibility(0);
      switch (paramInt)
      {
      default:
      case 0:
      case 1:
      case 2:
      }
    }
    while (true)
    {
      this.e = paramInt;
      return;
      this.b.setVisibility(0);
      this.c.setVisibility(4);
      break;
      if (this.e == 1)
        this.b.startAnimation(this.g);
      if (this.e == 2)
        this.b.clearAnimation();
      this.d.setText(R.string.J);
      continue;
      if (this.e != 1)
      {
        this.b.clearAnimation();
        this.b.startAnimation(this.f);
        this.d.setText(R.string.K);
        continue;
        this.d.setText(R.string.I);
      }
    }
  }

  public void setVisiableHeight(int paramInt)
  {
    if (paramInt < 0)
      paramInt = 0;
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.a.getLayoutParams();
    localLayoutParams.height = paramInt;
    this.a.setLayoutParams(localLayoutParams);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.CustomListViewHeader
 * JD-Core Version:    0.6.2
 */