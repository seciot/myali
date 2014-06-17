package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;

class APSearchBar$3
  implements View.OnClickListener
{
  APSearchBar$3(APSearchBar paramAPSearchBar)
  {
  }

  public void onClick(View paramView)
  {
    APSearchBar.access$200(this.this$0).setText("");
    ((InputMethodManager)APSearchBar.access$200(this.this$0).getContext().getSystemService("input_method")).showSoftInput(APSearchBar.access$200(this.this$0), 1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APSearchBar.3
 * JD-Core Version:    0.6.2
 */