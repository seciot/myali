package com.alipay.android.mini.util;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.text.Editable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.ScrollView;
import com.alipay.android.app.R.id;
import com.alipay.android.mini.widget.CustomEditText;

public class CustomKeyboardhelper
  implements View.OnClickListener, View.OnTouchListener
{
  private CustomEditText a;
  private KeyboardUtil b;
  private ScrollView c;
  private Activity d;
  private Handler e;

  private void a()
  {
    this.a.requestFocus();
    int i = this.b.a();
    int j = this.d.findViewById(R.id.W).getHeight();
    this.c.getLayoutParams().height = (j - i);
    int k = this.a.getInputType();
    this.a.setInputType(0);
    this.b.b();
    this.a.setInputType(k);
    this.a.setSelection(this.a.length());
  }

  public void onClick(View paramView)
  {
    this.a.getEditableText().append("");
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1)
    {
      IBinder localIBinder = this.a.getWindowToken();
      Activity localActivity = this.d;
      CustomKeyboardhelper.2 local2 = new CustomKeyboardhelper.2(this, this.e);
      if (!((InputMethodManager)localActivity.getSystemService("input_method")).hideSoftInputFromWindow(localIBinder, 2, local2))
        a();
    }
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.CustomKeyboardhelper
 * JD-Core Version:    0.6.2
 */