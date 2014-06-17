package com.alipay.android.phone.home.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alipay.android.phone.openplatform.R.id;
import com.alipay.android.phone.openplatform.R.layout;

public class ActiveTopTips extends LinearLayout
{
  private ImageView a;
  private TextView b;
  private TextView c;
  private int d = 28;
  private int e = 28;

  public ActiveTopTips(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public ActiveTopTips(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(R.layout.m, this, true);
    this.a = ((ImageView)findViewById(R.id.p));
    this.b = ((TextView)findViewById(R.id.C));
    this.c = ((TextView)findViewById(R.id.B));
    setOrientation(1);
  }

  public void setData(String paramString1, String paramString2, String paramString3)
  {
    this.b.setText(paramString2);
    this.c.setText(paramString3);
  }

  public void setIcon(String paramString)
  {
  }

  public void setTipsText(String paramString)
  {
    this.b.setText(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.widget.ActiveTopTips
 * JD-Core Version:    0.6.2
 */