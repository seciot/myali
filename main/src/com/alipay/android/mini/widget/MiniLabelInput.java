package com.alipay.android.mini.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alipay.android.app.R.drawable;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.R.styleable;

public class MiniLabelInput extends LinearLayout
{
  private LinearLayout a;
  private CustomEditText b;
  private TextView c;
  private Drawable d;
  private String e;
  private CustomEditText.OnIconClickListener f;
  private String g;
  private boolean h;
  private int i;

  public MiniLabelInput(Context paramContext)
  {
    this(paramContext, null);
  }

  public MiniLabelInput(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(R.layout.C, this, true);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.AppBundle);
    this.e = localTypedArray.getString(0);
    this.d = localTypedArray.getDrawable(1);
    this.g = localTypedArray.getString(2);
    this.h = localTypedArray.getBoolean(3, false);
    this.i = localTypedArray.getInteger(4, 0);
    localTypedArray.recycle();
    onFinishInflate();
  }

  private void a()
  {
    this.b.removeIcon();
    if (this.d != null)
      this.b.setOnIconClickListener(this.d, this.f);
  }

  public void addTextWatcher(TextWatcher paramTextWatcher)
  {
    this.b.addTextChangedListener(paramTextWatcher);
  }

  public void clearDefaultIcon()
  {
    this.d = null;
  }

  public String getInputText()
  {
    Editable localEditable = this.b.getText();
    if (localEditable.length() == 0)
      return "";
    return localEditable.toString().replaceAll(" ", "");
  }

  public CustomEditText getInputView()
  {
    return this.b;
  }

  public TextView getLabelView()
  {
    return this.c;
  }

  public void initIconListener()
  {
    Drawable localDrawable = this.b.getContext().getResources().getDrawable(R.drawable.y);
    this.b.initOnIconClickListener(localDrawable, new g(this));
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.f = null;
    this.a = ((LinearLayout)findViewById(R.id.ad));
    this.c = ((TextView)findViewById(R.id.af));
    this.b = ((CustomEditText)findViewById(R.id.ae));
    if (!TextUtils.isEmpty(this.e))
      this.c.setText(this.e);
    if (this.d != null)
      a();
    if (!TextUtils.isEmpty(this.g))
      this.b.setHint(this.g);
    if (this.h)
    {
      this.b.setInputType(128);
      this.b.setInputType(129);
    }
    if (this.i > 0)
    {
      CustomEditText localCustomEditText = this.b;
      InputFilter[] arrayOfInputFilter = new InputFilter[1];
      arrayOfInputFilter[0] = new InputFilter.LengthFilter(this.i);
      localCustomEditText.setFilters(arrayOfInputFilter);
    }
    this.a.setOnClickListener(new d(this));
    this.b.addTextChangedListener(new e(this));
    this.b.setOnFocusChangeListener(new f(this));
  }

  public void setInputDisable()
  {
    this.b.setEnabled(false);
  }

  public void setInputEnable()
  {
    this.b.setEnabled(true);
  }

  public void setInputHint(String paramString)
  {
    this.b.setHint(paramString);
  }

  public void setInputLength(int paramInt)
  {
    if (paramInt > 0)
    {
      CustomEditText localCustomEditText = this.b;
      InputFilter[] arrayOfInputFilter = new InputFilter[1];
      arrayOfInputFilter[0] = new InputFilter.LengthFilter(paramInt);
      localCustomEditText.setFilters(arrayOfInputFilter);
    }
  }

  public void setInputText(String paramString)
  {
    this.b.setText(paramString);
  }

  public void setInputType(int paramInt)
  {
    this.b.setInputType(paramInt);
  }

  public void setLabel(String paramString)
  {
    this.c.setText(paramString);
  }

  public void setOnIconClickListener(CustomEditText.OnIconClickListener paramOnIconClickListener)
  {
    this.f = paramOnIconClickListener;
    a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.MiniLabelInput
 * JD-Core Version:    0.6.2
 */