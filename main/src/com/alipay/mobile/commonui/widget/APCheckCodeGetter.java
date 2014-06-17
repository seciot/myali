package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.string;

public class APCheckCodeGetter extends APRelativeLayout
  implements View.OnClickListener
{
  private APInputBox a;
  private APImageView b;
  private APImageView c;
  private APTextView d;
  private APRelativeLayout e;
  private AnimationDrawable f;
  private APCheckCodeGetter.CheckCodeGetCallback g;
  private boolean h = false;

  public APCheckCodeGetter(Context paramContext)
  {
    super(paramContext);
  }

  public APCheckCodeGetter(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(R.layout.ap_checkcode_geter_layout, this, true);
  }

  public APInputBox getCheckCodeInput()
  {
    return this.a;
  }

  public void onClick(View paramView)
  {
    startAnimation();
    if (this.g != null)
      this.g.onRefresh();
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.b = ((APImageView)findViewById(R.id.refreshImg));
    this.c = ((APImageView)findViewById(R.id.checkCodeImg));
    this.a = ((APInputBox)findViewById(R.id.checkCodeInputBox));
    this.e = ((APRelativeLayout)findViewById(R.id.checkCodeGetContainer));
    this.f = ((AnimationDrawable)this.b.getBackground());
    this.d = ((APTextView)findViewById(R.id.checkCodeTips));
    this.e.setOnClickListener(this);
  }

  public void setCheckCallback(APCheckCodeGetter.CheckCodeGetCallback paramCheckCodeGetCallback)
  {
    this.g = paramCheckCodeGetCallback;
  }

  public void setCheckCodeImg(Bitmap paramBitmap)
  {
    this.h = true;
    this.c.setImageBitmap(paramBitmap);
  }

  public void setCheckCodeImg(Drawable paramDrawable)
  {
    this.h = true;
    this.c.setImageDrawable(paramDrawable);
  }

  public void startAnimation()
  {
    if (!this.h)
    {
      this.d.setVisibility(0);
      this.d.setText(getResources().getString(R.string.checkCodeLoading));
    }
    if (this.f != null)
      this.f.start();
  }

  public void stopAnimation()
  {
    this.d.setVisibility(4);
    this.d.setText("");
    if (this.f != null)
      this.f.stop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APCheckCodeGetter
 * JD-Core Version:    0.6.2
 */