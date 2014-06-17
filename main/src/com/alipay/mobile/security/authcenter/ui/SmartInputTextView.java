package com.alipay.mobile.security.authcenter.ui;

import android.content.Context;
import android.text.Editable;
import android.util.AttributeSet;
import android.widget.AutoCompleteTextView;
import com.alipay.mobile.security.authcenter.a.c;

public class SmartInputTextView extends AutoCompleteTextView
{
  private int a = 0;
  private c b;
  private boolean c = true;

  public SmartInputTextView(Context paramContext)
  {
    super(paramContext);
  }

  public SmartInputTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public SmartInputTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public void dismissDropDown()
  {
    super.dismissDropDown();
    if (this.b != null);
  }

  public boolean enoughToFilter()
  {
    boolean bool1 = this.c;
    boolean bool2 = false;
    if (bool1)
    {
      int i = getText().length();
      int j = this.a;
      bool2 = false;
      if (i >= j)
        bool2 = true;
    }
    return bool2;
  }

  public int getThreshold()
  {
    return this.a;
  }

  public void registerDismissDropDownListener(c paramc)
  {
    this.b = paramc;
  }

  public void setAutoComplete(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public void setThreshold(int paramInt)
  {
    if (paramInt < 0)
      paramInt = 0;
    this.a = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.SmartInputTextView
 * JD-Core Version:    0.6.2
 */