package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import com.alipay.mobile.common.utils.DensityUtil;
import com.alipay.mobile.ui.R.id;

public class APExtTableView extends APAbsTableView
{
  public static int NEW_FLAG_TYPE_IMAGE = 2;
  public static int NEW_FLAG_TYPE_TEXT = 1;
  private View a;
  private View b;
  private int c;
  private boolean d = false;

  public APExtTableView(Context paramContext)
  {
    super(paramContext);
  }

  public APExtTableView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private void a()
  {
    if (this.a != null)
    {
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(1, this.c);
      localLayoutParams.addRule(15);
      this.a.setLayoutParams(localLayoutParams);
    }
  }

  private void b()
  {
    if (this.b != null)
    {
      int i = -((RelativeLayout.LayoutParams)findViewById(this.c).getLayoutParams()).rightMargin - ((ImageView)this.b).getDrawable().getMinimumWidth() / 2;
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(15);
      localLayoutParams.addRule(1, this.c);
      localLayoutParams.setMargins(i, 0, 0, 0);
      this.b.setLayoutParams(localLayoutParams);
      this.b.setPadding(0, 0, 0, getRightImageView().getLayoutParams().height);
    }
  }

  public void attachNewFlag2LeftText(View paramView)
  {
    this.a = paramView;
    addView(paramView);
    this.c = R.id.linearLayout1;
    a();
  }

  public void attachNewFlag2RightImage(View paramView)
  {
    this.b = paramView;
    addView(paramView);
    this.c = R.id.table_right_image;
    b();
  }

  public View getNewFlagView()
  {
    return this.a;
  }

  public View getRightNewFlagView()
  {
    return this.b;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.d)
    {
      int i = getWidth();
      int j = DensityUtil.dip2px(getContext(), 10.0F);
      int k = i - j * 2;
      if (this.mArrowImage.getVisibility() == 0)
        k = k - this.mArrowImage.getWidth() - j;
      if (this.mRightImageView.getVisibility() == 0)
        k = k - this.mRightImageView.getWidth() - j;
      if (this.mIconImageView.getVisibility() == 0)
        k = k - this.mIconImageView.getWidth() - j;
      if (this.mRightTextView.getVisibility() == 0)
        k = (int)(k - this.mRightTextView.getPaint().measureText(String.valueOf(this.mRightTextView.getText()))) - j;
      if (this.mIconImageView.getVisibility() == 0)
        k = k - this.mIconImageView.getWidth() - j;
      this.linearLayout.getLayoutParams().width = k;
      requestLayout();
      this.d = false;
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    a();
    b();
  }

  public void setAdjustRightTextAfterDraw(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APExtTableView
 * JD-Core Version:    0.6.2
 */