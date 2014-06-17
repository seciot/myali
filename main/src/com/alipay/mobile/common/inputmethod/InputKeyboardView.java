package com.alipay.mobile.common.inputmethod;

import android.content.Context;
import android.inputmethodservice.Keyboard;
import android.inputmethodservice.KeyboardView;
import android.inputmethodservice.KeyboardView.OnKeyboardActionListener;
import android.util.AttributeSet;
import android.widget.EditText;

public abstract class InputKeyboardView extends KeyboardView
{
  protected EditText mEditText;

  public InputKeyboardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public InputKeyboardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public void focusIn(EditText paramEditText)
  {
    this.mEditText = paramEditText;
    show();
  }

  public void focusOut()
  {
    this.mEditText = null;
    hide();
  }

  public boolean focusWith(EditText paramEditText)
  {
    return this.mEditText == paramEditText;
  }

  protected abstract Keyboard getInputKeyboard();

  protected abstract KeyboardView.OnKeyboardActionListener getKeyboardActionListener();

  protected abstract void hide();

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    setKeyboard(getInputKeyboard());
    setOnKeyboardActionListener(getKeyboardActionListener());
  }

  protected abstract void show();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.inputmethod.InputKeyboardView
 * JD-Core Version:    0.6.2
 */