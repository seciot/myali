package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Html;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import com.alipay.mobile.ui.R.drawable;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.styleable;

public class APFlowTipView extends APLinearLayout
{
  public static final int TYPE_EMPTY = 17;
  public static final int TYPE_NETWORK_ERROR = 16;
  public static final int TYPE_WARNING = 18;
  private APButton a;
  private APTextView b;
  private APImageView c;
  private int d;

  public APFlowTipView(Context paramContext)
  {
    super(paramContext);
  }

  public APFlowTipView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(R.layout.ap_flow_tip_view, this, true);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.FlowTipView);
    this.d = localTypedArray.getInt(0, 16);
    localTypedArray.recycle();
    setOrientation(1);
  }

  public APButton getActionButton()
  {
    return this.a;
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.a = ((APButton)findViewById(R.id.action));
    this.b = ((APTextView)findViewById(R.id.tips));
    this.c = ((APImageView)findViewById(R.id.icon));
    resetFlowTipType(this.d);
  }

  public void resetFlowTipType(int paramInt)
  {
    this.d = paramInt;
    switch (this.d)
    {
    default:
      return;
    case 16:
      this.c.setImageResource(R.drawable.flow_network_signals);
      return;
    case 17:
      this.c.setImageResource(R.drawable.flow_empty);
      return;
    case 18:
    }
    this.c.setImageResource(R.drawable.flow_warning);
  }

  public void setAction(String paramString, View.OnClickListener paramOnClickListener)
  {
    this.a.setText(paramString);
    this.a.setOnClickListener(paramOnClickListener);
    this.a.setVisibility(0);
  }

  public void setNoAction()
  {
    this.a.setVisibility(8);
  }

  public void setTips(String paramString)
  {
    this.b.setText(Html.fromHtml(paramString));
    this.b.setVisibility(0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APFlowTipView
 * JD-Core Version:    0.6.2
 */