package com.alipay.mobile.common.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;

public class ExtInformationView extends LinearLayout
{
  private TextView a;
  private ImageView b;

  public ExtInformationView(Context paramContext)
  {
    super(paramContext);
    LayoutInflater.from(paramContext).inflate(R.layout.ext_information_view, this, true);
  }

  public ExtInformationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(R.layout.ext_information_view, this, true);
  }

  public ExtInformationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(R.layout.ext_information_view, this, true);
  }

  public ImageView getIconView()
  {
    return this.b;
  }

  public TextView getInformationView()
  {
    return this.a;
  }

  protected void onFinishInflate()
  {
    this.b = ((ImageView)findViewById(R.id.icon));
    this.a = ((TextView)findViewById(R.id.information));
  }

  public void setIcon(int paramInt)
  {
    this.b.setImageResource(paramInt);
  }

  public void setIcon(Drawable paramDrawable)
  {
    this.b.setImageDrawable(paramDrawable);
  }

  public void setInformation(int paramInt)
  {
    this.a.setText(paramInt);
  }

  public void setInformation(String paramString)
  {
    this.a.setText(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.ExtInformationView
 * JD-Core Version:    0.6.2
 */