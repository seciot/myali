package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.styleable;

public class APBankNoIconTableView extends APRelativeLayout
  implements View.OnClickListener
{
  private String a;
  private String b;
  private String c;
  private APTextView d;
  private Boolean e;
  private APTextView f;
  private APTextView g;

  public APBankNoIconTableView(Context paramContext)
  {
    this(paramContext, null);
  }

  public APBankNoIconTableView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public APBankNoIconTableView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(R.layout.ap_bank_no_icon_table_view, this, true);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.noIconTableview);
    this.a = localTypedArray.getString(2);
    this.b = localTypedArray.getString(3);
    this.c = localTypedArray.getString(0);
    this.e = Boolean.valueOf(localTypedArray.getBoolean(1, false));
    localTypedArray.recycle();
  }

  public APTextView getCenterTv()
  {
    return this.g;
  }

  public Boolean getIsClickable()
  {
    return this.e;
  }

  public APTextView getLeftTv()
  {
    return this.d;
  }

  public APTextView getRightTv()
  {
    return this.f;
  }

  public void onClick(View paramView)
  {
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.d = ((APTextView)findViewById(R.id.left_txt));
    this.f = ((APTextView)findViewById(R.id.right_txt));
    this.g = ((APTextView)findViewById(R.id.center_txt));
    if (this.a != null)
    {
      if (this.a != null)
        while (this.a.length() < 4)
          this.a += "　";
      this.d.setText(this.a);
    }
    if (this.b != null)
      this.f.setText(this.b);
    if (this.c != null)
    {
      for (int i = 0; i < 2; i++)
        this.c += "　";
      this.g.setText(this.c);
    }
  }

  public void setCenterTv(APTextView paramAPTextView)
  {
    this.g = paramAPTextView;
  }

  public void setIsClickable(Boolean paramBoolean)
  {
    this.e = paramBoolean;
  }

  public void setLeftTv(APTextView paramAPTextView)
  {
    this.d = paramAPTextView;
  }

  public void setRightTv(APTextView paramAPTextView)
  {
    this.f = paramAPTextView;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APBankNoIconTableView
 * JD-Core Version:    0.6.2
 */