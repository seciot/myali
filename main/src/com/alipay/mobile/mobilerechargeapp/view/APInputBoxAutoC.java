package com.alipay.mobile.mobilerechargeapp.view;

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
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APImageButton;
import com.alipay.mobile.commonui.widget.APLineGroupItemInterface;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.mobilerechargeapp.R.id;
import com.alipay.mobile.mobilerechargeapp.R.layout;
import com.alipay.mobile.ui.R.dimen;
import com.alipay.mobile.ui.R.drawable;
import com.alipay.mobile.ui.R.styleable;
import java.util.ArrayList;
import java.util.Iterator;

public class APInputBoxAutoC extends APRelativeLayout
  implements View.OnFocusChangeListener, APLineGroupItemInterface
{
  public static final int DARK = 17;
  private static final int DEFUALT_TITLE_CHAR_NUM = 4;
  public static final int NORMAL = 16;
  private int bgGroup = 16;
  private int bgType;
  private TextWatcher iTextWatcher = new a(this);
  private boolean isNeedShowClearButton = true;
  private View.OnClickListener mCleanButtonListener;
  private APImageButton mClearButton;
  private View.OnFocusChangeListener mFouchesChangeListener;
  private APEditText mInputContent;
  private APTextView mInputName;
  private APFormatter mTextFormatter = null;
  private ArrayList mValidators = new ArrayList();
  private APTextView m_right_text;

  public APInputBoxAutoC(Context paramContext)
  {
    this(paramContext, null);
  }

  public APInputBoxAutoC(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    inflateLayout(paramContext);
    this.mInputContent = ((APEditText)findViewById(R.id.j));
    this.mInputName = ((APTextView)findViewById(R.id.k));
    this.mClearButton = ((APImageButton)findViewById(R.id.BundlesManagerImpl));
    this.m_right_text = ((APTextView)findViewById(R.id.F));
    float f1 = paramContext.getResources().getDimension(R.dimen.defaultFontSize);
    int i = -16777216;
    int j = 1;
    int k = -1;
    int m = getResources().getColor(com.alipay.mobile.ui.R.color.colorccc);
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
      i = localTypedArray.getColor(10, -16777216);
      j = localTypedArray.getInt(12, 1);
      k = localTypedArray.getInt(17, -1);
      str1 = localTypedArray.getString(5);
      m = localTypedArray.getColor(6, getResources().getColor(com.alipay.mobile.ui.R.color.colorccc));
      bool = localTypedArray.getBoolean(16, false);
      this.bgType = localTypedArray.getInt(1, 4);
      this.bgGroup = localTypedArray.getInt(0, 16);
      localTypedArray.recycle();
    }
    while (true)
    {
      setInputName(str2);
      setInputNameTextSize(f2);
      setInputTextSize(f1);
      setInputTextColor(i);
      setInputType(j);
      setLength(k);
      setHint(str1);
      setHintTextColor(m);
      setApprerance(bool);
      afterInflate();
      return;
      f2 = f1;
      bool = false;
      str1 = null;
      str2 = null;
    }
  }

  private void addClearListener()
  {
    this.mClearButton.setOnClickListener(new c(this));
  }

  private void afterInflate()
  {
    addTextChangedListener(this.iTextWatcher);
    addClearListener();
    switch (this.bgType)
    {
    default:
      setItemPositionStyle(16);
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      this.mInputContent.setOnFocusChangeListener(this);
      setOnTouchListener(new b(this));
      return;
      setItemPositionStyle(17);
      continue;
      setItemPositionStyle(19);
      continue;
      setItemPositionStyle(18);
    }
  }

  public void addTextChangedListener(TextWatcher paramTextWatcher)
  {
    if (this.mInputContent != null)
      this.mInputContent.addTextChangedListener(paramTextWatcher);
  }

  public void addValidator(APValidator paramAPValidator)
  {
    this.mValidators.add(paramAPValidator);
  }

  public void clearValidator()
  {
    this.mValidators.clear();
  }

  public APImageButton getClearButton()
  {
    return this.mClearButton;
  }

  public APEditText getEtContent()
  {
    return this.mInputContent;
  }

  public APTextView getInputName()
  {
    return this.mInputName;
  }

  public String getInputedText()
  {
    return this.mInputContent.getText().toString();
  }

  public APTextView getRightTextView()
  {
    return this.m_right_text;
  }

  protected void inflateLayout(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(R.layout.AppBundle, this, true);
  }

  public boolean isNeedShowClearButton()
  {
    return this.isNeedShowClearButton;
  }

  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (this.mInputContent.getText().length() == 0);
    for (boolean bool = true; ; bool = false)
    {
      onInputTextStatusChanged(bool, paramBoolean);
      if (this.mFouchesChangeListener != null)
        this.mFouchesChangeListener.onFocusChange(paramView, paramBoolean);
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
    Typeface localTypeface = this.mInputContent.getTypeface();
    if (paramBoolean)
    {
      this.mInputContent.setTypeface(localTypeface, 1);
      return;
    }
    this.mInputContent.setTypeface(localTypeface, 0);
  }

  public void setCleanButtonListener(View.OnClickListener paramOnClickListener)
  {
    this.mCleanButtonListener = paramOnClickListener;
  }

  protected void setClearButtonVisiable(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.isNeedShowClearButton))
    {
      this.mClearButton.setVisibility(0);
      return;
    }
    this.mClearButton.setVisibility(8);
  }

  public void setHint(String paramString)
  {
    if ((paramString != null) && (!"".equals(paramString)))
      this.mInputContent.setHint(paramString);
  }

  public void setHintTextColor(int paramInt)
  {
    this.mInputContent.setHintTextColor(paramInt);
  }

  public void setInputErrorState(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.mInputName.setTextColor(getResources().getColor(com.alipay.mobile.mobilerechargeapp.R.color.c));
      return;
    }
    this.mInputName.setTextColor(getResources().getColor(com.alipay.mobile.mobilerechargeapp.R.color.a));
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
      this.mInputName.setText(str);
      this.mInputName.setVisibility(0);
      return;
    }
    this.mInputName.setText("");
    this.mInputName.setVisibility(8);
  }

  public void setInputNameTextSize(float paramFloat)
  {
    if (paramFloat > 0.0F)
      this.mInputName.setTextSize(0, paramFloat);
  }

  public void setInputTextColor(int paramInt)
  {
    this.mInputContent.setTextColor(paramInt);
  }

  public void setInputTextSize(float paramFloat)
  {
    if (paramFloat > 0.0F)
      this.mInputContent.setTextSize(0, paramFloat);
  }

  public void setInputType(int paramInt)
  {
    this.mInputContent.setInputType(paramInt);
  }

  public void setItemPositionStyle(int paramInt)
  {
    if (16 == this.bgGroup)
      switch (paramInt)
      {
      default:
        setBackgroundResource(R.drawable.input_normal);
      case 17:
      case 19:
      case 18:
      }
    while (17 != this.bgGroup)
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
      APEditText localAPEditText = this.mInputContent;
      InputFilter[] arrayOfInputFilter = new InputFilter[1];
      arrayOfInputFilter[0] = new InputFilter.LengthFilter(paramInt);
      localAPEditText.setFilters(arrayOfInputFilter);
      return;
    }
    this.mInputContent.setFilters(new InputFilter[0]);
  }

  public void setNeedShowClearButton(boolean paramBoolean)
  {
    this.isNeedShowClearButton = paramBoolean;
  }

  public void setOnEditorActionListener(TextView.OnEditorActionListener paramOnEditorActionListener)
  {
    if (this.mInputContent != null)
      this.mInputContent.setOnEditorActionListener(paramOnEditorActionListener);
  }

  public void setOnFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    if (this.mInputContent != null)
      this.mFouchesChangeListener = paramOnFocusChangeListener;
  }

  public void setText(CharSequence paramCharSequence)
  {
    this.mInputContent.setText(paramCharSequence);
    Editable localEditable = this.mInputContent.getText();
    if ((localEditable instanceof Spannable))
      Selection.setSelection((Spannable)localEditable, localEditable.length());
  }

  public void setTextFormatter(APFormatter paramAPFormatter)
  {
    this.mTextFormatter = paramAPFormatter;
  }

  public void setVisualStyle(int paramInt)
  {
  }

  public boolean validate()
  {
    Iterator localIterator = this.mValidators.iterator();
    while (localIterator.hasNext())
      if (!((APValidator)localIterator.next()).validate(getInputedText()))
        return false;
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.view.APInputBoxAutoC
 * JD-Core Version:    0.6.2
 */