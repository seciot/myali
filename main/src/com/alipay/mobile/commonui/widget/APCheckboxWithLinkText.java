package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.CheckBox;
import android.widget.TextView;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.styleable;

public class APCheckboxWithLinkText extends APLinearLayout
{
  String checkBoxText;
  boolean checked;
  boolean enabled;
  String linkText;
  TextView linkTextView;
  CheckBox mCheckBox;

  public APCheckboxWithLinkText(Context paramContext)
  {
    super(paramContext);
  }

  public APCheckboxWithLinkText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(R.layout.checkbox_with_link_text, this);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.checkboxWithLinkText);
    this.checkBoxText = localTypedArray.getString(0);
    this.linkText = localTypedArray.getString(3);
    this.checked = localTypedArray.getBoolean(1, false);
    this.enabled = localTypedArray.getBoolean(2, true);
    localTypedArray.recycle();
  }

  public CheckBox getCheckBox()
  {
    return this.mCheckBox;
  }

  public String getLinkText()
  {
    return this.linkText;
  }

  public TextView getLinkTextView()
  {
    return this.linkTextView;
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.mCheckBox = ((CheckBox)findViewById(R.id.custom_check_box));
    this.linkTextView = ((TextView)findViewById(R.id.link_text));
    setCheckBoxText(this.checkBoxText);
    this.mCheckBox.setChecked(this.checked);
    this.mCheckBox.setEnabled(this.enabled);
  }

  public void setCheckBoxText(String paramString)
  {
    this.mCheckBox.setText(paramString);
  }

  public void setLinkText(String paramString)
  {
    this.linkText = paramString;
  }

  public void setMovementMethod()
  {
    this.linkTextView.setMovementMethod(LinkMovementMethod.getInstance());
  }

  public void setTextViewText(String paramString)
  {
    this.linkTextView.setText(Html.fromHtml(paramString));
  }

  public void setTextViewText(String paramString1, String paramString2)
  {
    this.linkTextView.setText(Html.fromHtml(this.linkText));
    setMovementMethod();
  }

  public void setTextViewUri(String paramString)
  {
    this.linkTextView.setText(Html.fromHtml(this.linkText));
    this.linkTextView.setOnClickListener(new APCheckboxWithLinkText.1(this));
    setMovementMethod();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APCheckboxWithLinkText
 * JD-Core Version:    0.6.2
 */