package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.inputmethod.InputMethodManager;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.styleable;

public class APSearchBar extends APRelativeLayout
{
  private APEditText a;
  private APLinearLayout b;
  private APImageView c;
  private APLinearLayout d;
  private APTextView e;
  private boolean f = false;
  private int g = 0;
  private boolean h = false;
  private APRelativeLayout i;
  private APRelativeLayout j;

  public APSearchBar(Context paramContext)
  {
    super(paramContext);
  }

  public APSearchBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(R.layout.ap_search_bar, this, true);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SearchBar);
    this.g = localTypedArray.getInteger(0, -1);
    this.h = localTypedArray.getBoolean(1, false);
  }

  public APLinearLayout getmSearchBarButton()
  {
    return this.b;
  }

  public APImageView getmSearchBarIcon()
  {
    return this.c;
  }

  public APEditText getmSearchBarInputBox()
  {
    return this.a;
  }

  protected void onFinishInflate()
  {
    this.a = ((APEditText)findViewById(R.id.search_bar_inputbox));
    this.b = ((APLinearLayout)findViewById(R.id.search_bar_button));
    this.b.setEnabled(false);
    this.c = ((APImageView)findViewById(R.id.search_bar_icon));
    this.d = ((APLinearLayout)findViewById(R.id.btn_search_bar_clear));
    this.e = ((APTextView)findViewById(R.id.search_bar_button_text));
    this.i = ((APRelativeLayout)findViewById(R.id.search_bar_inputbox_layout));
    this.j = ((APRelativeLayout)findViewById(R.id.search_bar_inputbox_layout_target));
    APTextView localAPTextView = (APTextView)findViewById(R.id.search_bar_search_btn_target);
    APEditText localAPEditText = (APEditText)findViewById(R.id.search_bar_inputbox_target);
    APSearchBar.1 local1 = new APSearchBar.1(this);
    localAPTextView.setOnClickListener(local1);
    localAPEditText.setOnClickListener(local1);
    setTextChaged();
    setClearBtnClick();
    setLength();
    if (!this.h)
      showSearchButton();
    if (this.h)
    {
      this.j.setVisibility(0);
      this.i.setVisibility(8);
    }
  }

  public boolean searchButtonisActivity()
  {
    return this.f;
  }

  protected void setClearBtnClick()
  {
    this.d.setOnClickListener(new APSearchBar.3(this));
  }

  public void setLength()
  {
    if (this.g >= 0)
    {
      APEditText localAPEditText = this.a;
      InputFilter[] arrayOfInputFilter = new InputFilter[1];
      arrayOfInputFilter[0] = new InputFilter.LengthFilter(this.g);
      localAPEditText.setFilters(arrayOfInputFilter);
      return;
    }
    this.a.setFilters(new InputFilter[0]);
  }

  protected void setTextChaged()
  {
    this.a.addTextChangedListener(new APSearchBar.2(this));
  }

  public void setmSearchBarButton(APLinearLayout paramAPLinearLayout)
  {
    this.b = paramAPLinearLayout;
  }

  public void setmSearchBarIcon(APImageView paramAPImageView)
  {
    this.c = paramAPImageView;
  }

  public void setmSearchBarInputBox(APEditText paramAPEditText)
  {
    this.a = paramAPEditText;
  }

  public void showSearchButton()
  {
    this.j.setVisibility(8);
    this.i.setVisibility(0);
    this.a.requestFocus();
  }

  public void toggleSoftInput()
  {
    ((InputMethodManager)this.a.getContext().getSystemService("input_method")).toggleSoftInput(0, 2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APSearchBar
 * JD-Core Version:    0.6.2
 */