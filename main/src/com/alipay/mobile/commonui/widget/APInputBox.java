package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.widget.TextView.OnEditorActionListener;
import com.alipay.mobile.commonui.inputfomatter.APFormatter;
import com.alipay.mobile.commonui.validator.APValidator;
import com.alipay.mobile.ui.R.color;
import com.alipay.mobile.ui.R.dimen;
import com.alipay.mobile.ui.R.drawable;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.styleable;
import java.util.ArrayList;
import java.util.Iterator;

public class APInputBox extends APRelativeLayout
  implements View.OnFocusChangeListener, APLineGroupItemInterface
{
  public static final int DARK = 17;
  public static final int NORMAL = 16;
  private APEditText a;
  private APImageButton b;
  private APTextView c;
  private boolean d = true;
  private int e;
  private int f = 16;
  private View.OnClickListener g;
  private APFormatter h = null;
  private ArrayList i = new ArrayList();
  private View.OnFocusChangeListener j;

  public APInputBox(Context paramContext)
  {
    this(paramContext, null);
  }

  public APInputBox(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    inflateLayout(paramContext);
    this.a = ((APEditText)findViewById(R.id.content));
    this.c = ((APTextView)findViewById(R.id.contentName));
    this.b = ((APImageButton)findViewById(R.id.clearButton));
    float f1 = paramContext.getResources().getDimension(R.dimen.defaultFontSize);
    int k = -16777216;
    int m = 1;
    int n = -1;
    int i1 = getResources().getColor(R.color.colorccc);
    String str2;
    float f2;
    String str1;
    boolean bool;
    if (paramAttributeSet != null)
    {
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.genericInputBox);
      str2 = localTypedArray.getString(8);
      f2 = localTypedArray.getDimension(9, f1);
      f1 = localTypedArray.getDimension(11, f1);
      k = localTypedArray.getColor(10, -16777216);
      m = localTypedArray.getInt(12, 1);
      n = localTypedArray.getInt(17, -1);
      str1 = localTypedArray.getString(5);
      i1 = localTypedArray.getColor(6, getResources().getColor(R.color.colorccc));
      bool = localTypedArray.getBoolean(16, false);
      this.e = localTypedArray.getInt(1, 4);
      this.f = localTypedArray.getInt(0, 16);
      localTypedArray.recycle();
    }
    while (true)
    {
      setInputName(str2);
      setInputNameTextSize(f2);
      setInputTextSize(f1);
      setInputTextColor(k);
      setInputType(m);
      setLength(n);
      setHint(str1);
      setHintTextColor(i1);
      setApprerance(bool);
      addTextChangedListener(new APInputBox.1(this));
      this.b.setOnClickListener(new APInputBox.3(this));
      switch (this.e)
      {
      default:
        setItemPositionStyle(16);
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        this.a.setOnFocusChangeListener(this);
        setOnTouchListener(new APInputBox.2(this));
        return;
        setItemPositionStyle(17);
        continue;
        setItemPositionStyle(19);
        continue;
        setItemPositionStyle(18);
      }
      f2 = f1;
      bool = false;
      str1 = null;
      str2 = null;
    }
  }

  public void addTextChangedListener(TextWatcher paramTextWatcher)
  {
    if (this.a != null)
      this.a.addTextChangedListener(paramTextWatcher);
  }

  public void addValidator(APValidator paramAPValidator)
  {
    this.i.add(paramAPValidator);
  }

  public void clearValidator()
  {
    this.i.clear();
  }

  public APImageButton getClearButton()
  {
    return this.b;
  }

  public APEditText getEtContent()
  {
    return this.a;
  }

  public APTextView getInputName()
  {
    return this.c;
  }

  public String getInputedText()
  {
    return this.a.getText().toString();
  }

  protected void inflateLayout(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(R.layout.ap_inputbox, this, true);
  }

  public boolean isNeedShowClearButton()
  {
    return this.d;
  }

  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (this.a.getText().length() == 0);
    for (boolean bool = true; ; bool = false)
    {
      onInputTextStatusChanged(bool, paramBoolean);
      if (this.j != null)
        this.j.onFocusChange(paramView, paramBoolean);
      return;
    }
  }

  protected void onInputTextStatusChanged(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((!paramBoolean1) && (paramBoolean2))
    {
      setClearButtonVisiable(true);
      return;
    }
    setClearButtonVisiable(false);
  }

  public void setApprerance(boolean paramBoolean)
  {
    Typeface localTypeface = this.a.getTypeface();
    if (paramBoolean)
    {
      this.a.setTypeface(localTypeface, 1);
      return;
    }
    this.a.setTypeface(localTypeface, 0);
  }

  public void setCleanButtonListener(View.OnClickListener paramOnClickListener)
  {
    this.g = paramOnClickListener;
  }

  protected void setClearButtonVisiable(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.d))
    {
      this.b.setVisibility(0);
      return;
    }
    this.b.setVisibility(8);
  }

  public void setHint(String paramString)
  {
    if ((paramString != null) && (!"".equals(paramString)))
      this.a.setHint(paramString);
  }

  public void setHintTextColor(int paramInt)
  {
    this.a.setHintTextColor(paramInt);
  }

  public void setInputErrorState(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.c.setTextColor(getResources().getColor(R.color.colorRed));
      return;
    }
    this.c.setTextColor(getResources().getColor(R.color.colorBlack));
  }

  public void setInputName(String paramString)
  {
    setInputName(paramString, 4);
  }

  public void setInputName(String paramString, int paramInt)
  {
    if ((paramString != null) && (!"".equals(paramString)))
    {
      for (String str = paramString.trim(); str.length() < paramInt; str = str + "　");
      this.c.setText(str);
      this.c.setVisibility(0);
      return;
    }
    this.c.setText("");
    this.c.setVisibility(8);
  }

  public void setInputNameTextSize(float paramFloat)
  {
    if (paramFloat > 0.0F)
      this.c.setTextSize(0, paramFloat);
  }

  public void setInputTextColor(int paramInt)
  {
    this.a.setTextColor(paramInt);
  }

  public void setInputTextSize(float paramFloat)
  {
    if (paramFloat > 0.0F)
      this.a.setTextSize(0, paramFloat);
  }

  public void setInputType(int paramInt)
  {
    this.a.setInputType(paramInt);
  }

  public void setItemPositionStyle(int paramInt)
  {
    if (16 == this.f)
      switch (paramInt)
      {
      default:
        setBackgroundResource(R.drawable.input_normal);
      case 17:
      case 19:
      case 18:
      }
    while (17 != this.f)
    {
      return;
      setBackgroundResource(R.drawable.input_top_normal);
      return;
      setBackgroundResource(R.drawable.input_center_normal);
      return;
      setBackgroundResource(R.drawable.input_bottom_normal);
      return;
    }
    switch (paramInt)
    {
    default:
      setBackgroundResource(R.drawable.input_normal_dark);
      return;
    case 17:
      setBackgroundResource(R.drawable.input_top_dark);
      return;
    case 19:
      setBackgroundResource(R.drawable.input_center_dark);
      return;
    case 18:
    }
    setBackgroundResource(R.drawable.input_bottom_dark);
  }

  public void setLength(int paramInt)
  {
    if (paramInt >= 0)
    {
      APEditText localAPEditText = this.a;
      InputFilter[] arrayOfInputFilter = new InputFilter[1];
      arrayOfInputFilter[0] = new InputFilter.LengthFilter(paramInt);
      localAPEditText.setFilters(arrayOfInputFilter);
      return;
    }
    this.a.setFilters(new InputFilter[0]);
  }

  public void setNeedShowClearButton(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public void setOnEditorActionListener(TextView.OnEditorActionListener paramOnEditorActionListener)
  {
    if (this.a != null)
      this.a.setOnEditorActionListener(paramOnEditorActionListener);
  }

  public void setOnFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    if (this.a != null)
      this.j = paramOnFocusChangeListener;
  }

  public void setText(CharSequence paramCharSequence)
  {
    this.a.setText(paramCharSequence);
    Editable localEditable = this.a.getText();
    if ((localEditable instanceof Spannable))
      Selection.setSelection((Spannable)localEditable, localEditable.length());
  }

  public void setTextFormatter(APFormatter paramAPFormatter)
  {
    this.h = paramAPFormatter;
  }

  public void setVisualStyle(int paramInt)
  {
  }

  public boolean validate()
  {
    Iterator localIterator = this.i.iterator();
    while (localIterator.hasNext())
      if (!((APValidator)localIterator.next()).validate(getInputedText()))
        return false;
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APInputBox
 * JD-Core Version:    0.6.2
 */