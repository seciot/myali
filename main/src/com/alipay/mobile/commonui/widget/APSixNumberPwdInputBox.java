package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.mobile.ui.R.drawable;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.styleable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class APSixNumberPwdInputBox extends APBasePwdInputBox
{
  public static final int DARK = 17;
  public static final int NORMAL = 16;
  private String a = "SixCharPwdInputView";
  private String b;
  private List c;
  private APEditText d;
  private APLinearLayout e;
  private Map f = new HashMap();
  private int g = 0;
  private APBasePwdInputBox.PWDInputListener2 h;
  private APSixNumberPwdInputBox.PWDInputListener i;
  private boolean j;
  private int k = 16;
  private List l;

  public APSixNumberPwdInputBox(Context paramContext)
  {
    super(paramContext);
    this.b = "";
    a(paramContext);
  }

  public APSixNumberPwdInputBox(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    TypedArray localTypedArray = null;
    try
    {
      localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.sixCharInputBox);
      this.j = localTypedArray.getBoolean(1, true);
      this.k = localTypedArray.getInt(0, 16);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    finally
    {
      if (localTypedArray != null)
        localTypedArray.recycle();
    }
  }

  private void a(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(R.layout.ap_six_number_pwd_input, this, true);
    setData(this);
  }

  private void a(View paramView)
  {
    paramView.postDelayed(new APSixNumberPwdInputBox.3(this, paramView), 500L);
  }

  public void addSpwdInputWatcher(TextWatcher paramTextWatcher)
  {
    this.d.addTextChangedListener(paramTextWatcher);
  }

  public void callInputMethod()
  {
    this.d.requestFocus();
    a(this.d);
  }

  public void clearInput()
  {
    this.d.setText("");
    this.d.requestFocus();
    a(this.d);
  }

  public void clearPwd()
  {
    this.f.clear();
    this.g = 0;
  }

  public void clearPwdByIndex(int paramInt)
  {
    this.f.remove(Integer.valueOf(paramInt));
    this.g = (paramInt - 1);
  }

  public APEditText getEditText()
  {
    return this.d;
  }

  public String getInputValue()
  {
    return this.b;
  }

  public APEditText getInputView()
  {
    return this.d;
  }

  public String getInputedPwd(int paramInt)
  {
    Map localMap = this.f;
    if (paramInt == -1)
      paramInt = this.g;
    return (String)localMap.get(Integer.valueOf(paramInt));
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    if ((this.j) && (getVisibility() == 0))
      callInputMethod();
    if (16 != this.k)
      setBgtype(this.k);
  }

  public void setBgtype(int paramInt)
  {
    int n;
    switch (this.k)
    {
    default:
      n = 0;
      if (n >= this.l.size())
        return;
      if (n == 0)
        ((View)this.l.get(n)).setBackgroundResource(R.drawable.six_no_bg_left);
      break;
    case 17:
    }
    while (true)
    {
      n++;
      break;
      int m = 0;
      if (m >= this.l.size())
        return;
      if (m == 0)
        ((View)this.l.get(m)).setBackgroundResource(R.drawable.six_no_bg_left_dark);
      while (true)
      {
        m++;
        break;
        if (m == -1 + this.l.size())
          ((View)this.l.get(m)).setBackgroundResource(R.drawable.six_no_bg_right_dark);
        else
          ((View)this.l.get(m)).setBackgroundResource(R.drawable.six_no_bg_midle_dark);
      }
      if (n == -1 + this.l.size())
        ((View)this.l.get(n)).setBackgroundResource(R.drawable.six_no_bg_right);
      else
        ((View)this.l.get(n)).setBackgroundResource(R.drawable.six_no_bg_midle);
    }
  }

  protected void setData(APLinearLayout paramAPLinearLayout)
  {
    this.e = ((APLinearLayout)paramAPLinearLayout.findViewById(R.id.mini_linSimplePwdComponent));
    this.l = new ArrayList();
    this.l.add(paramAPLinearLayout.findViewById(R.id.mini_spwd_rl_1));
    this.l.add(paramAPLinearLayout.findViewById(R.id.mini_spwd_rl_2));
    this.l.add(paramAPLinearLayout.findViewById(R.id.mini_spwd_rl_3));
    this.l.add(paramAPLinearLayout.findViewById(R.id.mini_spwd_rl_4));
    this.l.add(paramAPLinearLayout.findViewById(R.id.mini_spwd_rl_5));
    this.l.add(paramAPLinearLayout.findViewById(R.id.mini_spwd_rl_6));
    APImageView localAPImageView1 = (APImageView)paramAPLinearLayout.findViewById(R.id.mini_spwd_iv_1);
    APImageView localAPImageView2 = (APImageView)paramAPLinearLayout.findViewById(R.id.mini_spwd_iv_2);
    APImageView localAPImageView3 = (APImageView)paramAPLinearLayout.findViewById(R.id.mini_spwd_iv_3);
    APImageView localAPImageView4 = (APImageView)paramAPLinearLayout.findViewById(R.id.mini_spwd_iv_4);
    APImageView localAPImageView5 = (APImageView)paramAPLinearLayout.findViewById(R.id.mini_spwd_iv_5);
    APImageView localAPImageView6 = (APImageView)paramAPLinearLayout.findViewById(R.id.mini_spwd_iv_6);
    this.c = new ArrayList();
    this.c.add(localAPImageView1);
    this.c.add(localAPImageView2);
    this.c.add(localAPImageView3);
    this.c.add(localAPImageView4);
    this.c.add(localAPImageView5);
    this.c.add(localAPImageView6);
    this.d = ((APEditText)paramAPLinearLayout.findViewById(R.id.mini_spwd_input));
    this.d.requestFocus();
    this.e.setOnClickListener(new APSixNumberPwdInputBox.1(this));
    this.d.addTextChangedListener(new APSixNumberPwdInputBox.2(this));
  }

  public void setPwdInputListener(APBasePwdInputBox.PWDInputListener2 paramPWDInputListener2)
  {
    this.h = paramPWDInputListener2;
  }

  public void setPwdInputListener(APSixNumberPwdInputBox.PWDInputListener paramPWDInputListener)
  {
    this.i = paramPWDInputListener;
  }

  public void setPwdText(String paramString)
  {
    this.d.setText(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox
 * JD-Core Version:    0.6.2
 */