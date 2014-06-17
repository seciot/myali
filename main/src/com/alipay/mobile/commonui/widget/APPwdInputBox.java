package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.mobile.common.utils.DensityUtil;
import com.alipay.mobile.ui.R.drawable;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import java.util.HashMap;
import java.util.Map;

public class APPwdInputBox extends APBasePwdInputBox
{
  private APLinearLayout a;
  private APEditText b;
  private APBasePwdInputBox.PWDInputListener2 c;
  private Map d = new HashMap();
  private String e = "";
  private int f = 0;

  public APPwdInputBox(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public APPwdInputBox(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(R.layout.ap_pwd_input, this, true);
    this.a = ((APLinearLayout)findViewById(R.id.mini_linSimplePwdComponent));
    this.b = ((APEditText)findViewById(R.id.mini_spwd_input));
    this.b.requestFocus();
    this.a.setOnClickListener(new APPwdInputBox.1(this));
    this.b.addTextChangedListener(new APPwdInputBox.2(this));
  }

  private void a(View paramView)
  {
    paramView.postDelayed(new APPwdInputBox.3(this, paramView), 500L);
  }

  public void callInputMethod()
  {
    this.b.requestFocus();
    a(this.b);
  }

  public void clearInput()
  {
    this.b.setText("");
    this.b.requestFocus();
    a(this.b);
  }

  public void clearPwd()
  {
    this.d.clear();
    this.f = 0;
  }

  public void clearPwdByIndex(int paramInt)
  {
    this.d.remove(Integer.valueOf(paramInt));
    this.f = (paramInt - 1);
  }

  public APEditText getEditText()
  {
    return this.b;
  }

  public String getInputedPwd(int paramInt)
  {
    Map localMap = this.d;
    if (paramInt == -1)
      paramInt = this.f;
    return (String)localMap.get(Integer.valueOf(paramInt));
  }

  protected void setPointView(int paramInt)
  {
    int i = 0;
    int j = DensityUtil.dip2px(getContext(), 10.0F);
    int k = this.a.getWidth();
    int m = getContext().getResources().getDrawable(R.drawable.black_point_in_pwdview).getMinimumWidth();
    int n = (k - j) / (m + j);
    if (this.a.getChildCount() < paramInt)
    {
      APImageView localAPImageView = new APImageView(getContext());
      LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams1.gravity = 1;
      localLayoutParams1.setMargins(j, 0, 0, 0);
      localAPImageView.setLayoutParams(localLayoutParams1);
      localAPImageView.setBackgroundResource(R.drawable.black_point_in_pwdview);
      this.a.addView(localAPImageView);
      if (this.b.getText().toString().length() >= n)
      {
        int i1 = (k - j) / paramInt - j;
        while (i < this.a.getChildCount())
        {
          LinearLayout.LayoutParams localLayoutParams2 = (LinearLayout.LayoutParams)this.a.getChildAt(i).getLayoutParams();
          localLayoutParams2.height = i1;
          localLayoutParams2.width = i1;
          this.a.getChildAt(i).setLayoutParams(localLayoutParams2);
          i++;
        }
      }
    }
    else
    {
      int i2 = 0;
      label217: if (i2 < this.a.getChildCount())
      {
        if (i2 >= paramInt)
          break label254;
        this.a.getChildAt(i2).setVisibility(0);
      }
      while (true)
      {
        i2++;
        break label217;
        break;
        label254: this.a.getChildAt(i2).setVisibility(8);
      }
    }
  }

  public void setPwdInputListener(APBasePwdInputBox.PWDInputListener2 paramPWDInputListener2)
  {
    this.c = paramPWDInputListener2;
  }

  public void setPwdText(String paramString)
  {
    this.b.setText(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APPwdInputBox
 * JD-Core Version:    0.6.2
 */