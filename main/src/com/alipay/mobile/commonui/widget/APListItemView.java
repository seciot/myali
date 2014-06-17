package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import com.alipay.mobile.ui.R.id;
import java.lang.ref.WeakReference;

public class APListItemView extends APAbsTableView
{
  public static int NEW_FLAG_TYPE_IMAGE = 2;
  public static int NEW_FLAG_TYPE_TEXT = 1;
  private View a;
  private WeakReference b;
  private int c;

  public APListItemView(Context paramContext)
  {
    super(paramContext);
  }

  public APListItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public void attachNewFlagView(View paramView)
  {
    this.a = paramView;
    this.b = new WeakReference(this.mIconImageView);
    addView(paramView);
    this.c = R.id.table_iconView;
    intNewFlagViewLayout();
  }

  public View getNewFlagView()
  {
    return this.a;
  }

  void intNewFlagViewLayout()
  {
    int i = -((RelativeLayout.LayoutParams)findViewById(this.c).getLayoutParams()).rightMargin - ((APImageView)this.a).getDrawable().getMinimumWidth() / 2;
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(15);
    localLayoutParams.addRule(1, this.c);
    localLayoutParams.setMargins(i, 0, 0, 0);
    this.a.setLayoutParams(localLayoutParams);
    this.a.setPadding(0, 0, 0, ((View)this.b.get()).getLayoutParams().height);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    if (this.a != null)
      intNewFlagViewLayout();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APListItemView
 * JD-Core Version:    0.6.2
 */